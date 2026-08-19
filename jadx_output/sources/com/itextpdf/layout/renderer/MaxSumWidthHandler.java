package com.itextpdf.layout.renderer;

import com.itextpdf.layout.minmaxwidth.MinMaxWidth;

/* JADX INFO: loaded from: classes6.dex */
class MaxSumWidthHandler extends AbstractWidthHandler {
    public MaxSumWidthHandler(MinMaxWidth minMaxWidth) {
        super(minMaxWidth);
    }

    @Override // com.itextpdf.layout.renderer.AbstractWidthHandler
    public void updateMinChildWidth(float f) {
        this.minMaxWidth.setChildrenMinWidth(Math.max(this.minMaxWidth.getChildrenMinWidth(), f));
    }

    @Override // com.itextpdf.layout.renderer.AbstractWidthHandler
    public void updateMaxChildWidth(float f) {
        this.minMaxWidth.setChildrenMaxWidth(this.minMaxWidth.getChildrenMaxWidth() + f);
    }
}
