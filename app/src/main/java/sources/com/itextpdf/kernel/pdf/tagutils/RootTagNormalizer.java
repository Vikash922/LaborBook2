package com.itextpdf.kernel.pdf.tagutils;

import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.tagging.IStructureNode;
import com.itextpdf.kernel.pdf.tagging.PdfNamespace;
import com.itextpdf.kernel.pdf.tagging.PdfStructElem;
import com.itextpdf.kernel.pdf.tagging.StandardNamespaces;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.text.MessageFormat;
import java.util.Iterator;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class RootTagNormalizer {
    private TagStructureContext context;
    private PdfDocument document;
    private PdfStructElem rootTagElement;

    RootTagNormalizer(TagStructureContext tagStructureContext, PdfStructElem pdfStructElem, PdfDocument pdfDocument) {
        this.context = tagStructureContext;
        this.rootTagElement = pdfStructElem;
        this.document = pdfDocument;
    }

    PdfStructElem makeSingleStandardRootTag(List<IStructureNode> list) {
        this.document.getStructTreeRoot().makeIndirect(this.document);
        PdfStructElem pdfStructElem = this.rootTagElement;
        if (pdfStructElem == null) {
            createNewRootTag();
        } else {
            pdfStructElem.makeIndirect(this.document);
            this.document.getStructTreeRoot().addKid(this.rootTagElement);
            ensureExistingRootTagIsDocument();
        }
        addStructTreeRootKidsToTheRootTag(list);
        return this.rootTagElement;
    }

    private void createNewRootTag() {
        PdfNamespace documentDefaultNamespace = this.context.getDocumentDefaultNamespace();
        IRoleMappingResolver iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole = this.context.resolveMappingToStandardOrDomainSpecificRole(StandardRoles.DOCUMENT, documentDefaultNamespace);
        if (iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole == null || (iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole.currentRoleIsStandard() && !StandardRoles.DOCUMENT.equals(iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole.getRole()))) {
            logCreatedRootTagHasMappingIssue(documentDefaultNamespace, iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole);
        }
        this.rootTagElement = this.document.getStructTreeRoot().addKid(new PdfStructElem(this.document, PdfName.Document));
        if (this.context.targetTagStructureVersionIs2()) {
            this.rootTagElement.setNamespace(documentDefaultNamespace);
            this.context.ensureNamespaceRegistered(documentDefaultNamespace);
        }
    }

    private void ensureExistingRootTagIsDocument() {
        IRoleMappingResolver roleMappingResolver = this.context.getRoleMappingResolver(this.rootTagElement.getRole().getValue(), this.rootTagElement.getNamespace());
        boolean z = roleMappingResolver.currentRoleIsStandard() && StandardRoles.DOCUMENT.equals(roleMappingResolver.getRole());
        IRoleMappingResolver iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole = this.context.resolveMappingToStandardOrDomainSpecificRole(this.rootTagElement.getRole().getValue(), this.rootTagElement.getNamespace());
        boolean z2 = iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole != null && iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole.currentRoleIsStandard() && StandardRoles.DOCUMENT.equals(iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole.getRole());
        if (z && !z2) {
            logCreatedRootTagHasMappingIssue(this.rootTagElement.getNamespace(), iRoleMappingResolverResolveMappingToStandardOrDomainSpecificRole);
            return;
        }
        if (z2) {
            return;
        }
        PdfStructElem pdfStructElem = this.rootTagElement;
        wrapAllKidsInTag(pdfStructElem, pdfStructElem.getRole(), this.rootTagElement.getNamespace());
        this.rootTagElement.setRole(PdfName.Document);
        if (this.context.targetTagStructureVersionIs2()) {
            this.rootTagElement.setNamespace(this.context.getDocumentDefaultNamespace());
            TagStructureContext tagStructureContext = this.context;
            tagStructureContext.ensureNamespaceRegistered(tagStructureContext.getDocumentDefaultNamespace());
        }
    }

    private void addStructTreeRootKidsToTheRootTag(List<IStructureNode> list) {
        Iterator<IStructureNode> it = list.iterator();
        int size = 0;
        boolean z = true;
        while (it.hasNext()) {
            PdfStructElem pdfStructElem = (PdfStructElem) it.next();
            if (pdfStructElem.getPdfObject() == this.rootTagElement.getPdfObject()) {
                z = false;
            } else {
                boolean zEquals = PdfName.Document.equals(pdfStructElem.getRole());
                if (zEquals && pdfStructElem.getNamespace() != null && this.context.targetTagStructureVersionIs2()) {
                    String namespaceName = pdfStructElem.getNamespace().getNamespaceName();
                    zEquals = StandardNamespaces.PDF_1_7.equals(namespaceName) || StandardNamespaces.PDF_2_0.equals(namespaceName);
                }
                if (z) {
                    this.rootTagElement.addKid(size, pdfStructElem);
                    size += zEquals ? pdfStructElem.getKids().size() : 1;
                } else {
                    this.rootTagElement.addKid(pdfStructElem);
                }
                if (zEquals) {
                    removeOldRoot(pdfStructElem);
                }
            }
        }
    }

    private void wrapAllKidsInTag(PdfStructElem pdfStructElem, PdfName pdfName, PdfNamespace pdfNamespace) {
        int size = pdfStructElem.getKids().size();
        TagTreePointer tagTreePointer = new TagTreePointer(pdfStructElem, this.document);
        String value = pdfName.getValue();
        tagTreePointer.addTag(0, value);
        if (this.context.targetTagStructureVersionIs2()) {
            tagTreePointer.getProperties().setNamespace(pdfNamespace);
        }
        TagTreePointer tagTreePointer2 = new TagTreePointer(tagTreePointer);
        tagTreePointer.moveToParent();
        for (int i = 0; i < size; i++) {
            tagTreePointer.relocateKid(1, tagTreePointer2);
        }
    }

    private void removeOldRoot(PdfStructElem pdfStructElem) {
        new TagTreePointer(this.document).setCurrentStructElem(pdfStructElem).removeTag();
    }

    private void logCreatedRootTagHasMappingIssue(PdfNamespace pdfNamespace, IRoleMappingResolver iRoleMappingResolver) {
        String str;
        String str2;
        if (pdfNamespace != null && pdfNamespace.getNamespaceName() != null) {
            str = " in \"" + pdfNamespace.getNamespaceName() + "\" namespace";
        } else {
            str = "";
        }
        if (iRoleMappingResolver != null) {
            str2 = " to \"" + iRoleMappingResolver.getRole() + "\"";
            if (iRoleMappingResolver.getNamespace() != null && !StandardNamespaces.PDF_1_7.equals(iRoleMappingResolver.getNamespace().getNamespaceName())) {
                str2 = str2 + " in \"" + iRoleMappingResolver.getNamespace().getNamespaceName() + "\" namespace";
            }
        } else {
            str2 = " to not standard role";
        }
        LoggerFactory.getLogger((Class<?>) RootTagNormalizer.class).warn(MessageFormat.format(IoLogMessageConstant.CREATED_ROOT_TAG_HAS_MAPPING, str, str2));
    }
}
