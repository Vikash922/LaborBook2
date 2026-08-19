package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.geom.PageSize;

/* JADX INFO: loaded from: classes6.dex */
public interface IPdfPageFactory {
    PdfPage createPdfPage(PdfDictionary pdfDictionary);

    PdfPage createPdfPage(PdfDocument pdfDocument, PageSize pageSize);
}
