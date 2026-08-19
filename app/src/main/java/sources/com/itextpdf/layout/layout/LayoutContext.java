package com.itextpdf.layout.layout;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.layout.margincollapse.MarginsCollapseInfo;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class LayoutContext {
    protected LayoutArea area;
    protected boolean clippedHeight;
    protected List<Rectangle> floatRendererAreas;
    protected MarginsCollapseInfo marginsCollapseInfo;

    public LayoutContext(LayoutArea layoutArea) {
        this.floatRendererAreas = new ArrayList();
        this.clippedHeight = false;
        this.area = layoutArea;
    }

    public LayoutContext(LayoutArea layoutArea, MarginsCollapseInfo marginsCollapseInfo) {
        this.floatRendererAreas = new ArrayList();
        this.clippedHeight = false;
        this.area = layoutArea;
        this.marginsCollapseInfo = marginsCollapseInfo;
    }

    public LayoutContext(LayoutArea layoutArea, MarginsCollapseInfo marginsCollapseInfo, List<Rectangle> list) {
        this(layoutArea, marginsCollapseInfo);
        if (list != null) {
            this.floatRendererAreas = list;
        }
    }

    public LayoutContext(LayoutArea layoutArea, boolean z) {
        this(layoutArea);
        this.clippedHeight = z;
    }

    public LayoutContext(LayoutArea layoutArea, MarginsCollapseInfo marginsCollapseInfo, List<Rectangle> list, boolean z) {
        this(layoutArea, marginsCollapseInfo);
        if (list != null) {
            this.floatRendererAreas = list;
        }
        this.clippedHeight = z;
    }

    public LayoutArea getArea() {
        return this.area;
    }

    public MarginsCollapseInfo getMarginsCollapseInfo() {
        return this.marginsCollapseInfo;
    }

    public List<Rectangle> getFloatRendererAreas() {
        return this.floatRendererAreas;
    }

    public boolean isClippedHeight() {
        return this.clippedHeight;
    }

    public void setClippedHeight(boolean z) {
        this.clippedHeight = z;
    }

    public String toString() {
        return this.area.toString();
    }
}
