package com.itextpdf.kernel.pdf.tagutils;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfVersion;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.tagging.IStructureNode;
import com.itextpdf.kernel.pdf.tagging.PdfMcr;
import com.itextpdf.kernel.pdf.tagging.PdfNamespace;
import com.itextpdf.kernel.pdf.tagging.PdfObjRef;
import com.itextpdf.kernel.pdf.tagging.PdfStructElem;
import com.itextpdf.kernel.pdf.tagging.PdfStructTreeRoot;
import com.itextpdf.kernel.pdf.tagging.StandardNamespaces;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.shadow.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class TagStructureContext {
    private static final Set<String> ALLOWED_ROOT_TAG_ROLES;
    protected TagTreePointer autoTaggingPointer;
    private PdfDocument document;
    private PdfNamespace documentDefaultNamespace;
    private boolean forbidUnknownRoles;
    private Map<String, PdfNamespace> nameToNamespace;
    private Set<PdfDictionary> namespaces;
    private PdfStructElem rootTagElement;
    private PdfVersion tagStructureTargetVersion;
    private WaitingTagsManager waitingTagsManager;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add(StandardRoles.DOCUMENT);
        hashSet.add(StandardRoles.PART);
        hashSet.add(StandardRoles.ART);
        hashSet.add(StandardRoles.SECT);
        hashSet.add(StandardRoles.DIV);
        ALLOWED_ROOT_TAG_ROLES = Collections.unmodifiableSet(hashSet);
    }

    public TagStructureContext(PdfDocument pdfDocument) {
        this(pdfDocument, pdfDocument.getPdfVersion());
    }

    public TagStructureContext(PdfDocument pdfDocument, PdfVersion pdfVersion) {
        this.document = pdfDocument;
        if (!pdfDocument.isTagged()) {
            throw new PdfException(KernelExceptionMessageConstant.MUST_BE_A_TAGGED_DOCUMENT);
        }
        this.waitingTagsManager = new WaitingTagsManager();
        this.namespaces = new LinkedHashSet();
        this.nameToNamespace = new HashMap();
        this.tagStructureTargetVersion = pdfVersion;
        this.forbidUnknownRoles = true;
        if (targetTagStructureVersionIs2()) {
            initRegisteredNamespaces();
            setNamespaceForNewTagsBasedOnExistingRoot();
        }
    }

    public TagStructureContext setForbidUnknownRoles(boolean z) {
        this.forbidUnknownRoles = z;
        return this;
    }

    public PdfVersion getTagStructureTargetVersion() {
        return this.tagStructureTargetVersion;
    }

    public TagTreePointer getAutoTaggingPointer() {
        if (this.autoTaggingPointer == null) {
            this.autoTaggingPointer = new TagTreePointer(this.document);
        }
        return this.autoTaggingPointer;
    }

    public WaitingTagsManager getWaitingTagsManager() {
        return this.waitingTagsManager;
    }

    public PdfNamespace getDocumentDefaultNamespace() {
        return this.documentDefaultNamespace;
    }

    public TagStructureContext setDocumentDefaultNamespace(PdfNamespace pdfNamespace) {
        this.documentDefaultNamespace = pdfNamespace;
        return this;
    }

    public PdfNamespace fetchNamespace(String str) {
        PdfNamespace pdfNamespace = this.nameToNamespace.get(str);
        if (pdfNamespace != null) {
            return pdfNamespace;
        }
        PdfNamespace pdfNamespace2 = new PdfNamespace(str);
        this.nameToNamespace.put(str, pdfNamespace2);
        return pdfNamespace2;
    }

    public IRoleMappingResolver getRoleMappingResolver(String str) {
        return getRoleMappingResolver(str, null);
    }

    public IRoleMappingResolver getRoleMappingResolver(String str, PdfNamespace pdfNamespace) {
        if (targetTagStructureVersionIs2()) {
            return new RoleMappingResolverPdf2(str, pdfNamespace, getDocument());
        }
        return new RoleMappingResolver(str, getDocument());
    }

    public boolean checkIfRoleShallBeMappedToStandardRole(String str, PdfNamespace pdfNamespace) {
        return resolveMappingToStandardOrDomainSpecificRole(str, pdfNamespace) != null;
    }

    public IRoleMappingResolver resolveMappingToStandardOrDomainSpecificRole(String str, PdfNamespace pdfNamespace) {
        IRoleMappingResolver roleMappingResolver = getRoleMappingResolver(str, pdfNamespace);
        roleMappingResolver.resolveNextMapping();
        int i = 0;
        while (roleMappingResolver.currentRoleShallBeMappedToStandard()) {
            i++;
            if (i > 100) {
                LoggerFactory.getLogger((Class<?>) TagStructureContext.class).error(composeTooMuchTransitiveMappingsException(str, pdfNamespace));
                return null;
            }
            if (!roleMappingResolver.resolveNextMapping()) {
                return null;
            }
        }
        return roleMappingResolver;
    }

    public TagTreePointer removeAnnotationTag(PdfAnnotation pdfAnnotation) {
        PdfStructElem pdfStructElem;
        PdfObjRef pdfObjRefFindObjRefByStructParentIndex;
        PdfDictionary pdfObject = pdfAnnotation.getPdfObject();
        PdfNumber pdfNumber = (PdfNumber) pdfObject.get(PdfName.StructParent);
        if (pdfNumber == null || (pdfObjRefFindObjRefByStructParentIndex = this.document.getStructTreeRoot().findObjRefByStructParentIndex(pdfObject.getAsDictionary(PdfName.f3047P), pdfNumber.intValue())) == null) {
            pdfStructElem = null;
        } else {
            pdfStructElem = (PdfStructElem) pdfObjRefFindObjRefByStructParentIndex.getParent();
            pdfStructElem.removeKid(pdfObjRefFindObjRefByStructParentIndex);
        }
        pdfObject.remove(PdfName.StructParent);
        pdfObject.setModified();
        if (pdfStructElem != null) {
            return new TagTreePointer(this.document).setCurrentStructElem(pdfStructElem);
        }
        return null;
    }

    public TagTreePointer removeContentItem(PdfPage pdfPage, int i) {
        PdfMcr pdfMcrFindMcrByMcid = this.document.getStructTreeRoot().findMcrByMcid(pdfPage.getPdfObject(), i);
        if (pdfMcrFindMcrByMcid == null) {
            return null;
        }
        PdfStructElem pdfStructElem = (PdfStructElem) pdfMcrFindMcrByMcid.getParent();
        pdfStructElem.removeKid(pdfMcrFindMcrByMcid);
        return new TagTreePointer(this.document).setCurrentStructElem(pdfStructElem);
    }

    public TagStructureContext removePageTags(PdfPage pdfPage) {
        Collection<PdfMcr> pageMarkedContentReferences = this.document.getStructTreeRoot().getPageMarkedContentReferences(pdfPage);
        if (pageMarkedContentReferences != null) {
            for (PdfMcr pdfMcr : new ArrayList(pageMarkedContentReferences)) {
                removePageTagFromParent(pdfMcr, pdfMcr.getParent());
            }
        }
        return this;
    }

    public TagStructureContext flushPageTags(PdfPage pdfPage) {
        Collection<PdfMcr> pageMarkedContentReferences = this.document.getStructTreeRoot().getPageMarkedContentReferences(pdfPage);
        if (pageMarkedContentReferences != null) {
            Iterator<PdfMcr> it = pageMarkedContentReferences.iterator();
            while (it.hasNext()) {
                flushParentIfBelongsToPage((PdfStructElem) it.next().getParent(), pdfPage);
            }
        }
        return this;
    }

    public void normalizeDocumentRootTag() {
        IRoleMappingResolver iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole;
        boolean z = this.forbidUnknownRoles;
        this.forbidUnknownRoles = false;
        List<IStructureNode> kids = this.document.getStructTreeRoot().getKids();
        if (kids.size() > 0) {
            PdfStructElem pdfStructElem = (PdfStructElem) kids.get(0);
            iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole = resolveMappingToStandardOrDomainSpecificRole(pdfStructElem.getRole().getValue(), pdfStructElem.getNamespace());
        } else {
            iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole = null;
        }
        if (kids.size() == 1 && iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole != null && iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole.currentRoleIsStandard() && isRoleAllowedToBeRoot(iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole.getRole())) {
            this.rootTagElement = (PdfStructElem) kids.get(0);
        } else {
            this.document.getStructTreeRoot().getPdfObject().remove(PdfName.f3024K);
            this.rootTagElement = new RootTagNormalizer(this, this.rootTagElement, this.document).makeSingleStandardRootTag(kids);
        }
        this.forbidUnknownRoles = z;
    }

    public void prepareToDocumentClosing() {
        this.waitingTagsManager.removeAllWaitingStates();
        actualizeNamespacesInStructTreeRoot();
    }

    public PdfStructElem getPointerStructElem(TagTreePointer tagTreePointer) {
        return tagTreePointer.getCurrentStructElem();
    }

    public TagTreePointer createPointerForStructElem(PdfStructElem pdfStructElem) {
        return new TagTreePointer(pdfStructElem, this.document);
    }

    PdfStructElem getRootTag() {
        if (this.rootTagElement == null) {
            normalizeDocumentRootTag();
        }
        return this.rootTagElement;
    }

    PdfDocument getDocument() {
        return this.document;
    }

    void ensureNamespaceRegistered(PdfNamespace pdfNamespace) {
        if (pdfNamespace != null) {
            PdfDictionary pdfObject = pdfNamespace.getPdfObject();
            if (!this.namespaces.contains(pdfObject)) {
                this.namespaces.add(pdfObject);
            }
            this.nameToNamespace.put(pdfNamespace.getNamespaceName(), pdfNamespace);
        }
    }

    void throwExceptionIfRoleIsInvalid(AccessibilityProperties accessibilityProperties, PdfNamespace pdfNamespace) {
        PdfNamespace namespace = accessibilityProperties.getNamespace();
        if (namespace != null) {
            pdfNamespace = namespace;
        }
        throwExceptionIfRoleIsInvalid(accessibilityProperties.getRole(), pdfNamespace);
    }

    void throwExceptionIfRoleIsInvalid(String str, PdfNamespace pdfNamespace) {
        if (checkIfRoleShallBeMappedToStandardRole(str, pdfNamespace)) {
            return;
        }
        String strComposeInvalidRoleException = composeInvalidRoleException(str, pdfNamespace);
        if (this.forbidUnknownRoles) {
            throw new PdfException(strComposeInvalidRoleException);
        }
        LoggerFactory.getLogger((Class<?>) TagStructureContext.class).warn(strComposeInvalidRoleException);
    }

    boolean targetTagStructureVersionIs2() {
        return PdfVersion.PDF_2_0.compareTo(this.tagStructureTargetVersion) <= 0;
    }

    void flushParentIfBelongsToPage(PdfStructElem pdfStructElem, PdfPage pdfPage) {
        if (pdfStructElem.isFlushed() || this.waitingTagsManager.getObjForStructDict(pdfStructElem.getPdfObject()) != null || (pdfStructElem.getParent() instanceof PdfStructTreeRoot)) {
            return;
        }
        for (IStructureNode iStructureNode : pdfStructElem.getKids()) {
            if (iStructureNode instanceof PdfMcr) {
                PdfDictionary pageObject = ((PdfMcr) iStructureNode).getPageObject();
                if (!pageObject.isFlushed() && (pdfPage == null || !pageObject.equals(pdfPage.getPdfObject()))) {
                    return;
                }
            } else if (iStructureNode instanceof PdfStructElem) {
                return;
            }
        }
        IStructureNode parent = pdfStructElem.getParent();
        pdfStructElem.flush();
        if (parent instanceof PdfStructElem) {
            flushParentIfBelongsToPage((PdfStructElem) parent, pdfPage);
        }
    }

    private boolean isRoleAllowedToBeRoot(String str) {
        if (targetTagStructureVersionIs2()) {
            return StandardRoles.DOCUMENT.equals(str);
        }
        return ALLOWED_ROOT_TAG_ROLES.contains(str);
    }

    private void setNamespaceForNewTagsBasedOnExistingRoot() {
        String namespaceName;
        List<IStructureNode> kids = this.document.getStructTreeRoot().getKids();
        if (kids.size() > 0) {
            PdfStructElem pdfStructElem = (PdfStructElem) kids.get(0);
            IRoleMappingResolver iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole = resolveMappingToStandardOrDomainSpecificRole(pdfStructElem.getRole().getValue(), pdfStructElem.getNamespace());
            if (iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole == null || !iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole.currentRoleIsStandard()) {
                Logger logger = LoggerFactory.getLogger((Class<?>) TagStructureContext.class);
                if (pdfStructElem.getNamespace() != null) {
                    namespaceName = pdfStructElem.getNamespace().getNamespaceName();
                } else {
                    namespaceName = StandardNamespaces.getDefault();
                }
                logger.warn(MessageFormat.format(IoLogMessageConstant.EXISTING_TAG_STRUCTURE_ROOT_IS_NOT_STANDARD, pdfStructElem.getRole().getValue(), namespaceName));
            }
            if (iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole == null || !StandardNamespaces.PDF_1_7.equals(iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole.getNamespace().getNamespaceName())) {
                this.documentDefaultNamespace = fetchNamespace(StandardNamespaces.PDF_2_0);
                return;
            }
            return;
        }
        this.documentDefaultNamespace = fetchNamespace(StandardNamespaces.PDF_2_0);
    }

    private String composeInvalidRoleException(String str, PdfNamespace pdfNamespace) {
        return composeExceptionBasedOnNamespacePresence(str, pdfNamespace, "Role \"{0}\" is not mapped to any standard role.", "Role \"{0}\" in namespace {1} is not mapped to any standard role.");
    }

    private String composeTooMuchTransitiveMappingsException(String str, PdfNamespace pdfNamespace) {
        return composeExceptionBasedOnNamespacePresence(str, pdfNamespace, IoLogMessageConstant.CANNOT_RESOLVE_ROLE_TOO_MUCH_TRANSITIVE_MAPPINGS, IoLogMessageConstant.CANNOT_RESOLVE_ROLE_IN_NAMESPACE_TOO_MUCH_TRANSITIVE_MAPPINGS);
    }

    private void initRegisteredNamespaces() {
        for (PdfNamespace pdfNamespace : this.document.getStructTreeRoot().getNamespaces()) {
            this.namespaces.add(pdfNamespace.getPdfObject());
            this.nameToNamespace.put(pdfNamespace.getNamespaceName(), pdfNamespace);
        }
    }

    private void actualizeNamespacesInStructTreeRoot() {
        if (this.namespaces.size() > 0) {
            PdfStructTreeRoot structTreeRoot = getDocument().getStructTreeRoot();
            PdfArray namespacesObject = structTreeRoot.getNamespacesObject();
            LinkedHashSet linkedHashSet = new LinkedHashSet(this.namespaces);
            for (int i = 0; i < namespacesObject.size(); i++) {
                linkedHashSet.remove(namespacesObject.getAsDictionary(i));
            }
            Iterator it = linkedHashSet.iterator();
            while (it.hasNext()) {
                namespacesObject.add((PdfDictionary) it.next());
            }
            if (linkedHashSet.isEmpty()) {
                return;
            }
            structTreeRoot.setModified();
        }
    }

    private void removePageTagFromParent(IStructureNode iStructureNode, IStructureNode iStructureNode2) {
        if (iStructureNode2 instanceof PdfStructElem) {
            PdfStructElem pdfStructElem = (PdfStructElem) iStructureNode2;
            if (!pdfStructElem.isFlushed()) {
                pdfStructElem.removeKid(iStructureNode);
                PdfDictionary pdfObject = pdfStructElem.getPdfObject();
                if (this.waitingTagsManager.getObjForStructDict(pdfObject) == null && iStructureNode2.getKids().size() == 0 && !(pdfStructElem.getParent() instanceof PdfStructTreeRoot)) {
                    removePageTagFromParent(pdfStructElem, iStructureNode2.getParent());
                    PdfIndirectReference indirectReference = pdfObject.getIndirectReference();
                    if (indirectReference != null) {
                        indirectReference.setFree();
                        return;
                    }
                    return;
                }
                return;
            }
            if (iStructureNode instanceof PdfMcr) {
                throw new PdfException(KernelExceptionMessageConstant.CANNOT_REMOVE_TAG_BECAUSE_ITS_PARENT_IS_FLUSHED);
            }
        }
    }

    private String composeExceptionBasedOnNamespacePresence(String str, PdfNamespace pdfNamespace, String str2, String str3) {
        if (pdfNamespace == null) {
            return MessageFormat.format(str2, str);
        }
        String namespaceName = pdfNamespace.getNamespaceName();
        PdfIndirectReference indirectReference = pdfNamespace.getPdfObject().getIndirectReference();
        if (indirectReference != null) {
            namespaceName = namespaceName + " (" + Integer.toString(indirectReference.getObjNumber()) + StringUtils.SPACE + Integer.toString(indirectReference.getGenNumber()) + " obj)";
        }
        return MessageFormat.format(str3, str, namespaceName);
    }
}
