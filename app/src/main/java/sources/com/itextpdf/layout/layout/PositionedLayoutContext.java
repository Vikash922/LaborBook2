package com.itextpdf.layout.layout;

/* JADX INFO: loaded from: classes6.dex */
public class PositionedLayoutContext extends LayoutContext {
    private LayoutArea parentOccupiedArea;

    public PositionedLayoutContext(LayoutArea layoutArea, LayoutArea layoutArea2) {
        super(layoutArea);
        this.parentOccupiedArea = layoutArea2;
    }

    public LayoutArea getParentOccupiedArea() {
        return this.parentOccupiedArea;
    }
}
