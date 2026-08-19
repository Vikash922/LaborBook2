package com.itextpdf.kernel.utils.objectpathitems;

import com.itextpdf.kernel.pdf.PdfIndirectReference;

/* JADX INFO: loaded from: classes6.dex */
public final class IndirectPathItem {
    private final PdfIndirectReference cmpObject;
    private final PdfIndirectReference outObject;

    public IndirectPathItem(PdfIndirectReference pdfIndirectReference, PdfIndirectReference pdfIndirectReference2) {
        this.cmpObject = pdfIndirectReference;
        this.outObject = pdfIndirectReference2;
    }

    public PdfIndirectReference getCmpObject() {
        return this.cmpObject;
    }

    public PdfIndirectReference getOutObject() {
        return this.outObject;
    }

    public int hashCode() {
        return (this.cmpObject.hashCode() * 31) + this.outObject.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj != null && obj.getClass() == getClass()) {
            IndirectPathItem indirectPathItem = (IndirectPathItem) obj;
            if (this.cmpObject.equals(indirectPathItem.cmpObject) && this.outObject.equals(indirectPathItem.outObject)) {
                return true;
            }
        }
        return false;
    }
}
