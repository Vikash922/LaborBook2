package com.itextpdf.kernel.events;

import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfPage;

/* JADX INFO: loaded from: classes6.dex */
public class PdfDocumentEvent extends Event {
    public static final String END_PAGE = "EndPdfPage";
    public static final String INSERT_PAGE = "InsertPdfPage";
    public static final String REMOVE_PAGE = "RemovePdfPage";
    public static final String START_PAGE = "StartPdfPage";
    private PdfDocument document;
    protected PdfPage page;

    public PdfDocumentEvent(String str, PdfDocument pdfDocument) {
        super(str);
        this.document = pdfDocument;
    }

    public PdfDocumentEvent(String str, PdfPage pdfPage) {
        super(str);
        this.page = pdfPage;
        this.document = pdfPage.getDocument();
    }

    public PdfDocument getDocument() {
        return this.document;
    }

    public PdfPage getPage() {
        return this.page;
    }
}
