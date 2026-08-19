package com.itextpdf.p017io.util;

/* JADX INFO: loaded from: classes6.dex */
public final class ImageMagickCompareResult {
    private final long diffPixels;
    private final boolean result;

    public ImageMagickCompareResult(boolean z, long j) {
        this.result = z;
        this.diffPixels = j;
    }

    public boolean isComparingResultSuccessful() {
        return this.result;
    }

    public long getDiffPixels() {
        return this.diffPixels;
    }
}
