package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;

/* JADX INFO: loaded from: classes6.dex */
public class DrawContext {
    private PdfCanvas canvas;
    private PdfDocument document;
    private boolean taggingEnabled;

    public DrawContext(PdfDocument pdfDocument, PdfCanvas pdfCanvas) {
        this(pdfDocument, pdfCanvas, false);
    }

    public DrawContext(PdfDocument pdfDocument, PdfCanvas pdfCanvas, boolean z) {
        this.document = pdfDocument;
        this.canvas = pdfCanvas;
        this.taggingEnabled = z;
    }

    public PdfDocument getDocument() {
        return this.document;
    }

    public PdfCanvas getCanvas() {
        return this.canvas;
    }

    public boolean isTaggingEnabled() {
        return this.taggingEnabled;
    }

    public void setTaggingEnabled(boolean z) {
        this.taggingEnabled = z;
    }
}
