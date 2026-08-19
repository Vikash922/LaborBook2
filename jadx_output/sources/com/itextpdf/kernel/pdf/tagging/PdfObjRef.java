package com.itextpdf.kernel.pdf.tagging;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;

/* JADX INFO: loaded from: classes6.dex */
public class PdfObjRef extends PdfMcr {
    @Override // com.itextpdf.kernel.pdf.tagging.PdfMcr
    public int getMcid() {
        return -1;
    }

    public PdfObjRef(PdfDictionary pdfDictionary, PdfStructElem pdfStructElem) {
        super(pdfDictionary, pdfStructElem);
    }

    public PdfObjRef(PdfAnnotation pdfAnnotation, PdfStructElem pdfStructElem, int i) {
        super(new PdfDictionary(), pdfStructElem);
        pdfAnnotation.getPdfObject().put(PdfName.StructParent, new PdfNumber(i));
        pdfAnnotation.setModified();
        PdfDictionary pdfDictionary = (PdfDictionary) getPdfObject();
        pdfDictionary.put(PdfName.Type, PdfName.OBJR);
        pdfDictionary.put(PdfName.Obj, pdfAnnotation.getPdfObject());
    }

    @Override // com.itextpdf.kernel.pdf.tagging.PdfMcr
    public PdfDictionary getPageObject() {
        return super.getPageObject();
    }

    public PdfDictionary getReferencedObject() {
        return ((PdfDictionary) getPdfObject()).getAsDictionary(PdfName.Obj);
    }
}
