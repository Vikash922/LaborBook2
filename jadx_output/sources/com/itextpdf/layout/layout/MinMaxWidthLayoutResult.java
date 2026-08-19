package com.itextpdf.layout.layout;

import com.itextpdf.layout.minmaxwidth.MinMaxWidth;
import com.itextpdf.layout.renderer.IRenderer;

/* JADX INFO: loaded from: classes6.dex */
public class MinMaxWidthLayoutResult extends LayoutResult {
    protected MinMaxWidth minMaxWidth;

    public MinMaxWidthLayoutResult(int i, LayoutArea layoutArea, IRenderer iRenderer, IRenderer iRenderer2) {
        super(i, layoutArea, iRenderer, iRenderer2);
        this.minMaxWidth = new MinMaxWidth();
    }

    public MinMaxWidthLayoutResult(int i, LayoutArea layoutArea, IRenderer iRenderer, IRenderer iRenderer2, IRenderer iRenderer3) {
        super(i, layoutArea, iRenderer, iRenderer2, iRenderer3);
        this.minMaxWidth = new MinMaxWidth();
    }

    public MinMaxWidth getMinMaxWidth() {
        return this.minMaxWidth;
    }

    public MinMaxWidthLayoutResult setMinMaxWidth(MinMaxWidth minMaxWidth) {
        this.minMaxWidth = minMaxWidth;
        return this;
    }
}
