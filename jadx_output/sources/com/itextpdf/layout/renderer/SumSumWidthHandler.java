package com.itextpdf.layout.renderer;

import com.itextpdf.layout.minmaxwidth.MinMaxWidth;

/* JADX INFO: loaded from: classes6.dex */
class SumSumWidthHandler extends AbstractWidthHandler {
    public SumSumWidthHandler(MinMaxWidth minMaxWidth) {
        super(minMaxWidth);
    }

    @Override // com.itextpdf.layout.renderer.AbstractWidthHandler
    public void updateMinChildWidth(float f) {
        this.minMaxWidth.setChildrenMinWidth(this.minMaxWidth.getChildrenMinWidth() + f);
    }

    @Override // com.itextpdf.layout.renderer.AbstractWidthHandler
    public void updateMaxChildWidth(float f) {
        this.minMaxWidth.setChildrenMaxWidth(this.minMaxWidth.getChildrenMaxWidth() + f);
    }
}
