package com.itextpdf.kernel.pdf.tagging;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfMcr extends PdfObjectWrapper<PdfObject> implements IStructureNode {
    protected PdfStructElem parent;

    @Override // com.itextpdf.kernel.pdf.tagging.IStructureNode
    public List<IStructureNode> getKids() {
        return null;
    }

    public abstract int getMcid();

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    protected PdfMcr(PdfObject pdfObject, PdfStructElem pdfStructElem) {
        super(pdfObject);
        this.parent = pdfStructElem;
    }

    public PdfDictionary getPageObject() {
        PdfObject refersTo = getPageIndirectReference().getRefersTo();
        if (refersTo instanceof PdfDictionary) {
            return (PdfDictionary) refersTo;
        }
        return null;
    }

    public PdfIndirectReference getPageIndirectReference() {
        PdfObject pdfObject = getPdfObject() instanceof PdfDictionary ? ((PdfDictionary) getPdfObject()).get(PdfName.f3054Pg, false) : null;
        if (pdfObject == null) {
            pdfObject = this.parent.getPdfObject().get(PdfName.f3054Pg, false);
        }
        if (pdfObject instanceof PdfIndirectReference) {
            return (PdfIndirectReference) pdfObject;
        }
        if (pdfObject instanceof PdfDictionary) {
            return pdfObject.getIndirectReference();
        }
        return null;
    }

    @Override // com.itextpdf.kernel.pdf.tagging.IStructureNode
    public PdfName getRole() {
        return this.parent.getRole();
    }

    @Override // com.itextpdf.kernel.pdf.tagging.IStructureNode
    public IStructureNode getParent() {
        return this.parent;
    }
}
