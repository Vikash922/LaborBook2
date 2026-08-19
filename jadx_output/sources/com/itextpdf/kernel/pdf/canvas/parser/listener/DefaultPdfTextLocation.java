package com.itextpdf.kernel.pdf.canvas.parser.listener;

import com.itextpdf.kernel.geom.Rectangle;

/* JADX INFO: loaded from: classes6.dex */
public class DefaultPdfTextLocation implements IPdfTextLocation {
    private int pageNr;
    private Rectangle rectangle;
    private String text;

    public DefaultPdfTextLocation(int i, Rectangle rectangle, String str) {
        this.pageNr = i;
        this.rectangle = rectangle;
        this.text = str;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IPdfTextLocation
    public Rectangle getRectangle() {
        return this.rectangle;
    }

    public DefaultPdfTextLocation setRectangle(Rectangle rectangle) {
        this.rectangle = rectangle;
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IPdfTextLocation
    public String getText() {
        return this.text;
    }

    public DefaultPdfTextLocation setText(String str) {
        this.text = str;
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IPdfTextLocation
    public int getPageNumber() {
        return this.pageNr;
    }

    public DefaultPdfTextLocation setPageNr(int i) {
        this.pageNr = i;
        return this;
    }
}
