package com.itextpdf.layout.layout;

import com.itextpdf.kernel.geom.Rectangle;

/* JADX INFO: loaded from: classes6.dex */
public class RootLayoutArea extends LayoutArea implements Cloneable {
    protected boolean emptyArea;

    public RootLayoutArea(int i, Rectangle rectangle) {
        super(i, rectangle);
        this.emptyArea = true;
    }

    public boolean isEmptyArea() {
        return this.emptyArea;
    }

    public void setEmptyArea(boolean z) {
        this.emptyArea = z;
    }

    @Override // com.itextpdf.layout.layout.LayoutArea
    /* JADX INFO: renamed from: clone */
    public LayoutArea mo3122clone() {
        RootLayoutArea rootLayoutArea = (RootLayoutArea) super.mo3122clone();
        rootLayoutArea.setEmptyArea(this.emptyArea);
        return rootLayoutArea;
    }
}
