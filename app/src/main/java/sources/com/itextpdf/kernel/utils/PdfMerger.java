package com.itextpdf.kernel.utils;

import com.itextpdf.kernel.pdf.PdfDocument;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PdfMerger {
    private boolean closeSrcDocuments;
    private boolean mergeOutlines;
    private boolean mergeTags;
    private PdfDocument pdfDocument;

    public PdfMerger(PdfDocument pdfDocument) {
        this(pdfDocument, true, true);
    }

    public PdfMerger(PdfDocument pdfDocument, boolean z, boolean z2) {
        this.pdfDocument = pdfDocument;
        this.mergeTags = z;
        this.mergeOutlines = z2;
    }

    public PdfMerger setCloseSourceDocuments(boolean z) {
        this.closeSrcDocuments = z;
        return this;
    }

    public PdfMerger merge(PdfDocument pdfDocument, int i, int i2) {
        ArrayList arrayList = new ArrayList(i2 - i);
        while (i <= i2) {
            arrayList.add(Integer.valueOf(i));
            i++;
        }
        return merge(pdfDocument, arrayList);
    }

    public PdfMerger merge(PdfDocument pdfDocument, List<Integer> list) {
        if (this.mergeTags && pdfDocument.isTagged()) {
            this.pdfDocument.setTagged();
        }
        if (this.mergeOutlines && pdfDocument.hasOutlines()) {
            this.pdfDocument.initializeOutlines();
        }
        pdfDocument.copyPagesTo(list, this.pdfDocument);
        if (this.closeSrcDocuments) {
            pdfDocument.close();
        }
        return this;
    }

    public void close() {
        this.pdfDocument.close();
    }
}
