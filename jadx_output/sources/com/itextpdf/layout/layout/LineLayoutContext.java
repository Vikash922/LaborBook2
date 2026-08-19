package com.itextpdf.layout.layout;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.layout.margincollapse.MarginsCollapseInfo;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class LineLayoutContext extends LayoutContext {
    private boolean floatOverflowedToNextPageWithNothing;
    private float textIndent;

    public LineLayoutContext(LayoutArea layoutArea, MarginsCollapseInfo marginsCollapseInfo, List<Rectangle> list, boolean z) {
        super(layoutArea, marginsCollapseInfo, list, z);
        this.floatOverflowedToNextPageWithNothing = false;
    }

    public LineLayoutContext(LayoutContext layoutContext) {
        super(layoutContext.area, layoutContext.marginsCollapseInfo, layoutContext.floatRendererAreas, layoutContext.clippedHeight);
        this.floatOverflowedToNextPageWithNothing = false;
    }

    public boolean isFloatOverflowedToNextPageWithNothing() {
        return this.floatOverflowedToNextPageWithNothing;
    }

    public LineLayoutContext setFloatOverflowedToNextPageWithNothing(boolean z) {
        this.floatOverflowedToNextPageWithNothing = z;
        return this;
    }

    public float getTextIndent() {
        return this.textIndent;
    }

    public LineLayoutContext setTextIndent(float f) {
        this.textIndent = f;
        return this;
    }
}
