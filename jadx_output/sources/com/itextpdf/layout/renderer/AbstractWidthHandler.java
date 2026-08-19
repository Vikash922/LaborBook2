package com.itextpdf.layout.renderer;

import com.itextpdf.layout.minmaxwidth.MinMaxWidth;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractWidthHandler {
    MinMaxWidth minMaxWidth;

    public abstract void updateMaxChildWidth(float f);

    public abstract void updateMinChildWidth(float f);

    public AbstractWidthHandler(MinMaxWidth minMaxWidth) {
        this.minMaxWidth = minMaxWidth;
    }

    public void updateMinMaxWidth(MinMaxWidth minMaxWidth) {
        if (minMaxWidth != null) {
            updateMaxChildWidth(minMaxWidth.getMaxWidth());
            updateMinChildWidth(minMaxWidth.getMinWidth());
        }
    }
}
