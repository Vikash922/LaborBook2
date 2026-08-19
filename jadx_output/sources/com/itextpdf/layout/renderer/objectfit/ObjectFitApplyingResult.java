package com.itextpdf.layout.renderer.objectfit;

/* JADX INFO: loaded from: classes6.dex */
public class ObjectFitApplyingResult {
    private boolean imageCuttingRequired;
    private double renderedImageHeight;
    private double renderedImageWidth;

    public ObjectFitApplyingResult() {
    }

    public ObjectFitApplyingResult(double d, double d2, boolean z) {
        this.renderedImageWidth = d;
        this.renderedImageHeight = d2;
        this.imageCuttingRequired = z;
    }

    public double getRenderedImageWidth() {
        return this.renderedImageWidth;
    }

    public void setRenderedImageWidth(double d) {
        this.renderedImageWidth = d;
    }

    public double getRenderedImageHeight() {
        return this.renderedImageHeight;
    }

    public void setRenderedImageHeight(double d) {
        this.renderedImageHeight = d;
    }

    public boolean isImageCuttingRequired() {
        return this.imageCuttingRequired;
    }

    public void setImageCuttingRequired(boolean z) {
        this.imageCuttingRequired = z;
    }
}
