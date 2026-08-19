package com.itextpdf.kernel.pdf.tagutils;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.tagging.IStructureNode;
import com.itextpdf.kernel.pdf.tagging.PdfMcr;
import com.itextpdf.kernel.pdf.tagging.PdfMcrDictionary;
import com.itextpdf.kernel.pdf.tagging.PdfMcrNumber;
import com.itextpdf.kernel.pdf.tagging.PdfNamespace;
import com.itextpdf.kernel.pdf.tagging.PdfObjRef;
import com.itextpdf.kernel.pdf.tagging.PdfStructElem;
import com.itextpdf.kernel.pdf.tagging.PdfStructTreeRoot;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class TagTreePointer {
    private static final String MCR_MARKER = "MCR";
    private PdfStream contentStream;
    private PdfNamespace currentNamespace;
    private PdfPage currentPage;
    private PdfStructElem currentStructElem;
    private int nextNewKidIndex = -1;
    private TagStructureContext tagStructureContext;

    public TagTreePointer(PdfDocument pdfDocument) {
        TagStructureContext tagStructureContext = pdfDocument.getTagStructureContext();
        this.tagStructureContext = tagStructureContext;
        setCurrentStructElem(tagStructureContext.getRootTag());
        setNamespaceForNewTags(this.tagStructureContext.getDocumentDefaultNamespace());
    }

    public TagTreePointer(TagTreePointer tagTreePointer) {
        this.tagStructureContext = tagTreePointer.tagStructureContext;
        setCurrentStructElem(tagTreePointer.getCurrentStructElem());
        this.currentPage = tagTreePointer.currentPage;
        this.contentStream = tagTreePointer.contentStream;
        this.currentNamespace = tagTreePointer.currentNamespace;
    }

    TagTreePointer(PdfStructElem pdfStructElem, PdfDocument pdfDocument) {
        this.tagStructureContext = pdfDocument.getTagStructureContext();
        setCurrentStructElem(pdfStructElem);
    }

    public TagTreePointer setPageForTagging(PdfPage pdfPage) {
        if (pdfPage.isFlushed()) {
            throw new PdfException(KernelExceptionMessageConstant.PAGE_ALREADY_FLUSHED);
        }
        this.currentPage = pdfPage;
        return this;
    }

    public PdfPage getCurrentPage() {
        return this.currentPage;
    }

    public TagTreePointer setContentStreamForTagging(PdfStream pdfStream) {
        this.contentStream = pdfStream;
        return this;
    }

    public PdfStream getCurrentContentStream() {
        return this.contentStream;
    }

    public TagStructureContext getContext() {
        return this.tagStructureContext;
    }

    public PdfDocument getDocument() {
        return this.tagStructureContext.getDocument();
    }

    public TagTreePointer setNamespaceForNewTags(PdfNamespace pdfNamespace) {
        this.currentNamespace = pdfNamespace;
        return this;
    }

    public PdfNamespace getNamespaceForNewTags() {
        return this.currentNamespace;
    }

    public TagTreePointer addTag(String str) {
        addTag(-1, str);
        return this;
    }

    public TagTreePointer addTag(int i, String str) {
        this.tagStructureContext.throwExceptionIfRoleIsInvalid(str, this.currentNamespace);
        setNextNewKidIndex(i);
        setCurrentStructElem(addNewKid(str));
        return this;
    }

    public TagTreePointer addTag(AccessibilityProperties accessibilityProperties) {
        addTag(-1, accessibilityProperties);
        return this;
    }

    public TagTreePointer addTag(int i, AccessibilityProperties accessibilityProperties) {
        this.tagStructureContext.throwExceptionIfRoleIsInvalid(accessibilityProperties, this.currentNamespace);
        setNextNewKidIndex(i);
        setCurrentStructElem(addNewKid(accessibilityProperties));
        return this;
    }

    public TagTreePointer addAnnotationTag(PdfAnnotation pdfAnnotation) {
        throwExceptionIfCurrentPageIsNotInited();
        PdfObjRef pdfObjRef = new PdfObjRef(pdfAnnotation, getCurrentStructElem(), getDocument().getNextStructParentIndex());
        if (!ensureElementPageEqualsKidPage(getCurrentStructElem(), this.currentPage.getPdfObject())) {
            ((PdfDictionary) pdfObjRef.getPdfObject()).put(PdfName.f3054Pg, this.currentPage.getPdfObject().getIndirectReference());
        }
        addNewKid(pdfObjRef);
        return this;
    }

    public TagTreePointer setNextNewKidIndex(int i) {
        if (i > -1) {
            this.nextNewKidIndex = i;
        }
        return this;
    }

    public TagTreePointer removeTag() {
        int i;
        PdfStructElem currentStructElem = getCurrentStructElem();
        IStructureNode parent = currentStructElem.getParent();
        if (parent instanceof PdfStructTreeRoot) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_REMOVE_DOCUMENT_ROOT_TAG);
        }
        List<IStructureNode> kids = currentStructElem.getKids();
        PdfStructElem pdfStructElem = (PdfStructElem) parent;
        if (pdfStructElem.isFlushed()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_REMOVE_TAG_BECAUSE_ITS_PARENT_IS_FLUSHED);
        }
        this.tagStructureContext.getWaitingTagsManager().removeWaitingState(this.tagStructureContext.getWaitingTagsManager().getObjForStructDict(currentStructElem.getPdfObject()));
        int iRemoveKid = pdfStructElem.removeKid(currentStructElem);
        PdfIndirectReference indirectReference = currentStructElem.getPdfObject().getIndirectReference();
        if (indirectReference != null) {
            indirectReference.setFree();
        }
        for (IStructureNode iStructureNode : kids) {
            if (iStructureNode instanceof PdfStructElem) {
                i = iRemoveKid + 1;
                pdfStructElem.addKid(iRemoveKid, (PdfStructElem) iStructureNode);
            } else {
                i = iRemoveKid + 1;
                pdfStructElem.addKid(iRemoveKid, prepareMcrForMovingToNewParent((PdfMcr) iStructureNode, pdfStructElem));
            }
            iRemoveKid = i;
        }
        currentStructElem.getPdfObject().clear();
        setCurrentStructElem(pdfStructElem);
        return this;
    }

    public TagTreePointer relocateKid(int i, TagTreePointer tagTreePointer) {
        if (getDocument() != tagTreePointer.getDocument()) {
            throw new PdfException(KernelExceptionMessageConstant.TAG_CANNOT_BE_MOVED_TO_THE_ANOTHER_DOCUMENTS_TAG_STRUCTURE);
        }
        if (getCurrentStructElem().isFlushed()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_RELOCATE_TAG_WHICH_PARENT_IS_ALREADY_FLUSHED);
        }
        if (isPointingToSameTag(tagTreePointer)) {
            int i2 = tagTreePointer.nextNewKidIndex;
            if (i == i2) {
                return this;
            }
            if (i < i2) {
                tagTreePointer.setNextNewKidIndex(i2 - 1);
            }
        }
        if (getCurrentStructElem().getKids().get(i) == null) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_RELOCATE_TAG_WHICH_IS_ALREADY_FLUSHED);
        }
        IStructureNode iStructureNodeRemoveKid = getCurrentStructElem().removeKid(i, true);
        if (iStructureNodeRemoveKid instanceof PdfStructElem) {
            tagTreePointer.addNewKid((PdfStructElem) iStructureNodeRemoveKid);
        } else if (iStructureNodeRemoveKid instanceof PdfMcr) {
            tagTreePointer.addNewKid(prepareMcrForMovingToNewParent((PdfMcr) iStructureNodeRemoveKid, tagTreePointer.getCurrentStructElem()));
        }
        return this;
    }

    public TagTreePointer relocate(TagTreePointer tagTreePointer) {
        if (getCurrentStructElem().getPdfObject() == this.tagStructureContext.getRootTag().getPdfObject()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_RELOCATE_ROOT_TAG);
        }
        if (getCurrentStructElem().isFlushed()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_RELOCATE_TAG_WHICH_IS_ALREADY_FLUSHED);
        }
        int indexInParentKidsList = getIndexInParentKidsList();
        if (indexInParentKidsList < 0) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_RELOCATE_TAG_WHICH_PARENT_IS_ALREADY_FLUSHED);
        }
        new TagTreePointer(this).moveToParent().relocateKid(indexInParentKidsList, tagTreePointer);
        return this;
    }

    public TagReference getTagReference() {
        return getTagReference(-1);
    }

    public TagReference getTagReference(int i) {
        return new TagReference(getCurrentElemEnsureIndirect(), this, i);
    }

    public TagTreePointer moveToRoot() {
        setCurrentStructElem(this.tagStructureContext.getRootTag());
        return this;
    }

    public TagTreePointer moveToParent() {
        if (getCurrentStructElem().getPdfObject() == this.tagStructureContext.getRootTag().getPdfObject()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_MOVE_TO_PARENT_CURRENT_ELEMENT_IS_ROOT);
        }
        PdfStructElem pdfStructElem = (PdfStructElem) getCurrentStructElem().getParent();
        if (pdfStructElem.isFlushed()) {
            LoggerFactory.getLogger((Class<?>) TagTreePointer.class).warn(IoLogMessageConstant.ATTEMPT_TO_MOVE_TO_FLUSHED_PARENT);
            moveToRoot();
        } else {
            setCurrentStructElem(pdfStructElem);
        }
        return this;
    }

    public TagTreePointer moveToKid(int i) {
        IStructureNode iStructureNode = getCurrentStructElem().getKids().get(i);
        if (iStructureNode instanceof PdfStructElem) {
            setCurrentStructElem((PdfStructElem) iStructureNode);
            return this;
        }
        if (iStructureNode instanceof PdfMcr) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_MOVE_TO_MARKED_CONTENT_REFERENCE);
        }
        throw new PdfException(KernelExceptionMessageConstant.CANNOT_MOVE_TO_FLUSHED_KID);
    }

    public TagTreePointer moveToKid(String str) {
        moveToKid(0, str);
        return this;
    }

    public TagTreePointer moveToKid(int i, String str) {
        if (MCR_MARKER.equals(str)) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_MOVE_TO_MARKED_CONTENT_REFERENCE);
        }
        ArrayList arrayList = new ArrayList(getCurrentStructElem().getKids());
        int i2 = 0;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            if (arrayList.get(i3) != null && !(arrayList.get(i3) instanceof PdfMcr)) {
                if (((IStructureNode) arrayList.get(i3)).getRole().getValue().equals(str)) {
                    int i4 = i2 + 1;
                    if (i2 == i) {
                        setCurrentStructElem((PdfStructElem) arrayList.get(i3));
                        return this;
                    }
                    i2 = i4;
                }
                arrayList.addAll(((IStructureNode) arrayList.get(i3)).getKids());
            }
        }
        throw new PdfException(KernelExceptionMessageConstant.NO_KID_WITH_SUCH_ROLE);
    }

    public List<String> getKidsRoles() {
        ArrayList arrayList = new ArrayList();
        for (IStructureNode iStructureNode : getCurrentStructElem().getKids()) {
            if (iStructureNode == null) {
                arrayList.add(null);
            } else if (iStructureNode instanceof PdfStructElem) {
                arrayList.add(iStructureNode.getRole().getValue());
            } else {
                arrayList.add(MCR_MARKER);
            }
        }
        return arrayList;
    }

    public TagTreePointer flushTag() {
        if (getCurrentStructElem().getPdfObject() == this.tagStructureContext.getRootTag().getPdfObject()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_FLUSH_DOCUMENT_ROOT_TAG_BEFORE_DOCUMENT_IS_CLOSED);
        }
        IStructureNode iStructureNodeFlushTag = this.tagStructureContext.getWaitingTagsManager().flushTag(getCurrentStructElem());
        if (iStructureNodeFlushTag != null) {
            setCurrentStructElem((PdfStructElem) iStructureNodeFlushTag);
        } else {
            setCurrentStructElem(this.tagStructureContext.getRootTag());
        }
        return this;
    }

    public TagTreePointer flushParentsIfAllKidsFlushed() {
        getContext().flushParentIfBelongsToPage(getCurrentStructElem(), null);
        return this;
    }

    public AccessibilityProperties getProperties() {
        return new BackedAccessibilityProperties(this);
    }

    public String getRole() {
        return getCurrentStructElem().getRole().getValue();
    }

    public TagTreePointer setRole(String str) {
        getCurrentStructElem().setRole(PdfStructTreeRoot.convertRoleToPdfName(str));
        return this;
    }

    public int getIndexInParentKidsList() {
        if (getCurrentStructElem().getPdfObject() == this.tagStructureContext.getRootTag().getPdfObject()) {
            return -1;
        }
        PdfStructElem pdfStructElem = (PdfStructElem) getCurrentStructElem().getParent();
        if (pdfStructElem.isFlushed()) {
            return -1;
        }
        PdfObject k = pdfStructElem.getK();
        if (k == getCurrentStructElem().getPdfObject()) {
            return 0;
        }
        if (k.isArray()) {
            return ((PdfArray) k).indexOf(getCurrentStructElem().getPdfObject());
        }
        return -1;
    }

    public TagTreePointer moveToPointer(TagTreePointer tagTreePointer) {
        this.currentStructElem = tagTreePointer.currentStructElem;
        return this;
    }

    public boolean isPointingToSameTag(TagTreePointer tagTreePointer) {
        return getCurrentStructElem().getPdfObject().equals(tagTreePointer.getCurrentStructElem().getPdfObject());
    }

    int createNextMcidForStructElem(PdfStructElem pdfStructElem, int i) {
        PdfMcr pdfMcrDictionary;
        throwExceptionIfCurrentPageIsNotInited();
        if (!markedContentNotInPageStream() && ensureElementPageEqualsKidPage(pdfStructElem, this.currentPage.getPdfObject())) {
            pdfMcrDictionary = new PdfMcrNumber(this.currentPage, pdfStructElem);
        } else {
            pdfMcrDictionary = new PdfMcrDictionary(this.currentPage, pdfStructElem);
            if (markedContentNotInPageStream()) {
                ((PdfDictionary) pdfMcrDictionary.getPdfObject()).put(PdfName.Stm, this.contentStream);
            }
        }
        pdfStructElem.addKid(i, pdfMcrDictionary);
        return pdfMcrDictionary.getMcid();
    }

    TagTreePointer setCurrentStructElem(PdfStructElem pdfStructElem) {
        if (pdfStructElem.getParent() == null) {
            throw new PdfException(KernelExceptionMessageConstant.STRUCTURE_ELEMENT_SHALL_CONTAIN_PARENT_OBJECT);
        }
        this.currentStructElem = pdfStructElem;
        return this;
    }

    PdfStructElem getCurrentStructElem() {
        if (this.currentStructElem.isFlushed()) {
            throw new PdfException(KernelExceptionMessageConstant.f2929x2b3b9dda);
        }
        PdfIndirectReference indirectReference = this.currentStructElem.getPdfObject().getIndirectReference();
        if (indirectReference != null && indirectReference.isFree()) {
            throw new PdfException(KernelExceptionMessageConstant.f2930x7bea9abd);
        }
        return this.currentStructElem;
    }

    private int getNextNewKidPosition() {
        int i = this.nextNewKidIndex;
        this.nextNewKidIndex = -1;
        return i;
    }

    private PdfStructElem addNewKid(String str) {
        PdfStructElem pdfStructElem = new PdfStructElem(getDocument(), PdfStructTreeRoot.convertRoleToPdfName(str));
        processKidNamespace(pdfStructElem);
        return addNewKid(pdfStructElem);
    }

    private PdfStructElem addNewKid(AccessibilityProperties accessibilityProperties) {
        PdfStructElem pdfStructElem = new PdfStructElem(getDocument(), PdfStructTreeRoot.convertRoleToPdfName(accessibilityProperties.getRole()));
        AccessibilityPropertiesToStructElem.apply(accessibilityProperties, pdfStructElem);
        processKidNamespace(pdfStructElem);
        return addNewKid(pdfStructElem);
    }

    private void processKidNamespace(PdfStructElem pdfStructElem) {
        PdfNamespace namespace = pdfStructElem.getNamespace();
        PdfNamespace pdfNamespace = this.currentNamespace;
        if (pdfNamespace != null && namespace == null) {
            pdfStructElem.setNamespace(pdfNamespace);
            namespace = this.currentNamespace;
        }
        this.tagStructureContext.ensureNamespaceRegistered(namespace);
    }

    private PdfStructElem addNewKid(PdfStructElem pdfStructElem) {
        return getCurrentElemEnsureIndirect().addKid(getNextNewKidPosition(), pdfStructElem);
    }

    private PdfMcr addNewKid(PdfMcr pdfMcr) {
        return getCurrentElemEnsureIndirect().addKid(getNextNewKidPosition(), pdfMcr);
    }

    private PdfStructElem getCurrentElemEnsureIndirect() {
        PdfStructElem currentStructElem = getCurrentStructElem();
        if (currentStructElem.getPdfObject().getIndirectReference() == null) {
            currentStructElem.makeIndirect(getDocument());
        }
        return currentStructElem;
    }

    private PdfMcr prepareMcrForMovingToNewParent(PdfMcr pdfMcr, PdfStructElem pdfStructElem) {
        PdfObject pdfObject = pdfMcr.getPdfObject();
        PdfDictionary pageObject = pdfMcr.getPageObject();
        PdfDictionary pdfDictionary = !pdfObject.isNumber() ? (PdfDictionary) pdfObject : null;
        if ((pdfDictionary == null || !pdfDictionary.containsKey(PdfName.f3054Pg)) && !ensureElementPageEqualsKidPage(pdfStructElem, pageObject)) {
            if (pdfDictionary == null) {
                pdfDictionary = new PdfDictionary();
                pdfDictionary.put(PdfName.Type, PdfName.MCR);
                pdfDictionary.put(PdfName.MCID, pdfMcr.getPdfObject());
            }
            pdfDictionary.put(PdfName.f3054Pg, pageObject.getIndirectReference());
        }
        if (pdfDictionary != null) {
            if (PdfName.MCR.equals(pdfDictionary.get(PdfName.Type))) {
                return new PdfMcrDictionary(pdfDictionary, pdfStructElem);
            }
            return PdfName.OBJR.equals(pdfDictionary.get(PdfName.Type)) ? new PdfObjRef(pdfDictionary, pdfStructElem) : pdfMcr;
        }
        return new PdfMcrNumber((PdfNumber) pdfObject, pdfStructElem);
    }

    private boolean ensureElementPageEqualsKidPage(PdfStructElem pdfStructElem, PdfDictionary pdfDictionary) {
        Object obj = pdfStructElem.getPdfObject().get(PdfName.f3054Pg);
        Object obj2 = obj;
        if (obj == null) {
            pdfStructElem.put(PdfName.f3054Pg, pdfDictionary.getIndirectReference());
            obj2 = pdfDictionary;
        }
        return pdfDictionary.equals(obj2);
    }

    private boolean markedContentNotInPageStream() {
        return this.contentStream != null;
    }

    private void throwExceptionIfCurrentPageIsNotInited() {
        if (this.currentPage == null) {
            throw new PdfException(KernelExceptionMessageConstant.PAGE_IS_NOT_SET_FOR_THE_PDF_TAG_STRUCTURE);
        }
    }
}
