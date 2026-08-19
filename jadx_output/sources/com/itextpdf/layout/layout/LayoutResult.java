package com.itextpdf.layout.layout;

import com.itextpdf.layout.element.AreaBreak;
import com.itextpdf.layout.renderer.IRenderer;

/* JADX INFO: loaded from: classes6.dex */
public class LayoutResult {
    public static final int FULL = 1;
    public static final int NOTHING = 3;
    public static final int PARTIAL = 2;
    protected AreaBreak areaBreak;
    protected IRenderer causeOfNothing;
    protected LayoutArea occupiedArea;
    protected IRenderer overflowRenderer;
    protected IRenderer splitRenderer;
    protected int status;

    public LayoutResult(int i, LayoutArea layoutArea, IRenderer iRenderer, IRenderer iRenderer2) {
        this(i, layoutArea, iRenderer, iRenderer2, null);
    }

    public LayoutResult(int i, LayoutArea layoutArea, IRenderer iRenderer, IRenderer iRenderer2, IRenderer iRenderer3) {
        this.status = i;
        this.occupiedArea = layoutArea;
        this.splitRenderer = iRenderer;
        this.overflowRenderer = iRenderer2;
        this.causeOfNothing = iRenderer3;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public LayoutArea getOccupiedArea() {
        return this.occupiedArea;
    }

    public IRenderer getSplitRenderer() {
        return this.splitRenderer;
    }

    public void setSplitRenderer(IRenderer iRenderer) {
        this.splitRenderer = iRenderer;
    }

    public IRenderer getOverflowRenderer() {
        return this.overflowRenderer;
    }

    public void setOverflowRenderer(IRenderer iRenderer) {
        this.overflowRenderer = iRenderer;
    }

    public AreaBreak getAreaBreak() {
        return this.areaBreak;
    }

    public LayoutResult setAreaBreak(AreaBreak areaBreak) {
        this.areaBreak = areaBreak;
        return this;
    }

    public IRenderer getCauseOfNothing() {
        return this.causeOfNothing;
    }

    public String toString() {
        String str;
        int status = getStatus();
        if (status == 1) {
            str = "Full";
        } else if (status == 2) {
            str = "Partial";
        } else if (status == 3) {
            str = "Nothing";
        } else {
            str = "None";
        }
        return "LayoutResult{" + str + ", areaBreak=" + this.areaBreak + ", occupiedArea=" + this.occupiedArea + '}';
    }
}
