package com.itextpdf.kernel.pdf.tagutils;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.tagging.IStructureNode;
import com.itextpdf.kernel.pdf.tagging.PdfStructElem;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class WaitingTagsManager {
    private Map<Object, PdfStructElem> associatedObjToWaitingTag = new HashMap();
    private Map<PdfDictionary, Object> waitingTagToAssociatedObj = new HashMap();

    WaitingTagsManager() {
    }

    public Object assignWaitingState(TagTreePointer tagTreePointer, Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Passed associated object can not be null.");
        }
        return saveAssociatedObjectForWaitingTag(obj, tagTreePointer.getCurrentStructElem());
    }

    public boolean isObjectAssociatedWithWaitingTag(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Passed associated object can not be null.");
        }
        return this.associatedObjToWaitingTag.containsKey(obj);
    }

    public boolean tryMovePointerToWaitingTag(TagTreePointer tagTreePointer, Object obj) {
        PdfStructElem pdfStructElem;
        if (obj == null || (pdfStructElem = this.associatedObjToWaitingTag.get(obj)) == null) {
            return false;
        }
        tagTreePointer.setCurrentStructElem(pdfStructElem);
        return true;
    }

    public boolean removeWaitingState(Object obj) {
        if (obj == null) {
            return false;
        }
        PdfStructElem pdfStructElemRemove = this.associatedObjToWaitingTag.remove(obj);
        removeWaitingStateAndFlushIfParentFlushed(pdfStructElemRemove);
        return pdfStructElemRemove != null;
    }

    public void removeAllWaitingStates() {
        Iterator<PdfStructElem> it = this.associatedObjToWaitingTag.values().iterator();
        while (it.hasNext()) {
            removeWaitingStateAndFlushIfParentFlushed(it.next());
        }
        this.associatedObjToWaitingTag.clear();
    }

    PdfStructElem getStructForObj(Object obj) {
        return this.associatedObjToWaitingTag.get(obj);
    }

    Object getObjForStructDict(PdfDictionary pdfDictionary) {
        return this.waitingTagToAssociatedObj.get(pdfDictionary);
    }

    Object saveAssociatedObjectForWaitingTag(Object obj, PdfStructElem pdfStructElem) {
        this.associatedObjToWaitingTag.put(obj, pdfStructElem);
        return this.waitingTagToAssociatedObj.put(pdfStructElem.getPdfObject(), obj);
    }

    IStructureNode flushTag(PdfStructElem pdfStructElem) {
        Object objRemove = this.waitingTagToAssociatedObj.remove(pdfStructElem.getPdfObject());
        if (objRemove != null) {
            this.associatedObjToWaitingTag.remove(objRemove);
        }
        IStructureNode parent = pdfStructElem.getParent();
        flushStructElementAndItKids(pdfStructElem);
        return parent;
    }

    private void flushStructElementAndItKids(PdfStructElem pdfStructElem) {
        if (this.waitingTagToAssociatedObj.containsKey(pdfStructElem.getPdfObject())) {
            return;
        }
        for (IStructureNode iStructureNode : pdfStructElem.getKids()) {
            if (iStructureNode instanceof PdfStructElem) {
                flushStructElementAndItKids((PdfStructElem) iStructureNode);
            }
        }
        pdfStructElem.flush();
    }

    private void removeWaitingStateAndFlushIfParentFlushed(PdfStructElem pdfStructElem) {
        if (pdfStructElem != null) {
            this.waitingTagToAssociatedObj.remove(pdfStructElem.getPdfObject());
            IStructureNode parent = pdfStructElem.getParent();
            if ((parent instanceof PdfStructElem) && ((PdfStructElem) parent).isFlushed()) {
                flushStructElementAndItKids(pdfStructElem);
            }
        }
    }
}
