package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.geom.Rectangle;

/* JADX INFO: loaded from: classes6.dex */
class FlexItemInfo {
    private Rectangle rectangle;
    private AbstractRenderer renderer;

    public FlexItemInfo(AbstractRenderer abstractRenderer, Rectangle rectangle) {
        this.renderer = abstractRenderer;
        this.rectangle = rectangle;
    }

    public AbstractRenderer getRenderer() {
        return this.renderer;
    }

    public Rectangle getRectangle() {
        return this.rectangle;
    }
}
