package com.itextpdf.forms.xfdf;

import com.itextpdf.forms.exceptions.XfdfException;
import com.itextpdf.kernel.pdf.PdfObject;

/* JADX INFO: loaded from: classes6.dex */
public class FitObject {
    private float bottom;
    private float left;
    private PdfObject page;
    private float right;
    private float top;
    private float zoom;

    public FitObject(PdfObject pdfObject) {
        if (pdfObject == null) {
            throw new XfdfException(XfdfException.PAGE_IS_MISSING);
        }
        this.page = pdfObject;
    }

    public PdfObject getPage() {
        return this.page;
    }

    public float getTop() {
        return this.top;
    }

    public FitObject setTop(float f) {
        this.top = f;
        return this;
    }

    public float getLeft() {
        return this.left;
    }

    public FitObject setLeft(float f) {
        this.left = f;
        return this;
    }

    public float getBottom() {
        return this.bottom;
    }

    public FitObject setBottom(float f) {
        this.bottom = f;
        return this;
    }

    public float getRight() {
        return this.right;
    }

    public FitObject setRight(float f) {
        this.right = f;
        return this;
    }

    public float getZoom() {
        return this.zoom;
    }

    public FitObject setZoom(float f) {
        this.zoom = f;
        return this;
    }
}
