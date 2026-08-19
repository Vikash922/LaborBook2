package com.itextpdf.layout.margincollapse;

/* JADX INFO: loaded from: classes6.dex */
public class MarginsCollapseInfo {
    private float bufferSpaceOnBottom;
    private float bufferSpaceOnTop;
    private boolean clearanceApplied;
    private MarginsCollapse collapseAfter;
    private MarginsCollapse collapseBefore;
    private boolean ignoreOwnMarginBottom;
    private boolean ignoreOwnMarginTop;
    private boolean isSelfCollapsing;
    private MarginsCollapse ownCollapseAfter;
    private float usedBufferSpaceOnBottom;
    private float usedBufferSpaceOnTop;

    MarginsCollapseInfo() {
        this.ignoreOwnMarginTop = false;
        this.ignoreOwnMarginBottom = false;
        this.collapseBefore = new MarginsCollapse();
        this.collapseAfter = new MarginsCollapse();
        this.isSelfCollapsing = true;
        this.bufferSpaceOnTop = 0.0f;
        this.bufferSpaceOnBottom = 0.0f;
        this.usedBufferSpaceOnTop = 0.0f;
        this.usedBufferSpaceOnBottom = 0.0f;
        this.clearanceApplied = false;
    }

    MarginsCollapseInfo(boolean z, boolean z2, MarginsCollapse marginsCollapse, MarginsCollapse marginsCollapse2) {
        this.ignoreOwnMarginTop = z;
        this.ignoreOwnMarginBottom = z2;
        this.collapseBefore = marginsCollapse;
        this.collapseAfter = marginsCollapse2;
        this.isSelfCollapsing = true;
        this.bufferSpaceOnTop = 0.0f;
        this.bufferSpaceOnBottom = 0.0f;
        this.usedBufferSpaceOnTop = 0.0f;
        this.usedBufferSpaceOnBottom = 0.0f;
        this.clearanceApplied = false;
    }

    public void copyTo(MarginsCollapseInfo marginsCollapseInfo) {
        marginsCollapseInfo.ignoreOwnMarginTop = this.ignoreOwnMarginTop;
        marginsCollapseInfo.ignoreOwnMarginBottom = this.ignoreOwnMarginBottom;
        marginsCollapseInfo.collapseBefore = this.collapseBefore;
        marginsCollapseInfo.collapseAfter = this.collapseAfter;
        marginsCollapseInfo.setOwnCollapseAfter(this.ownCollapseAfter);
        marginsCollapseInfo.setSelfCollapsing(this.isSelfCollapsing);
        marginsCollapseInfo.setBufferSpaceOnTop(this.bufferSpaceOnTop);
        marginsCollapseInfo.setBufferSpaceOnBottom(this.bufferSpaceOnBottom);
        marginsCollapseInfo.setUsedBufferSpaceOnTop(this.usedBufferSpaceOnTop);
        marginsCollapseInfo.setUsedBufferSpaceOnBottom(this.usedBufferSpaceOnBottom);
        marginsCollapseInfo.setClearanceApplied(this.clearanceApplied);
    }

    public static MarginsCollapseInfo createDeepCopy(MarginsCollapseInfo marginsCollapseInfo) {
        MarginsCollapseInfo marginsCollapseInfo2 = new MarginsCollapseInfo();
        marginsCollapseInfo.copyTo(marginsCollapseInfo2);
        marginsCollapseInfo2.collapseBefore = marginsCollapseInfo.collapseBefore.m3123clone();
        marginsCollapseInfo2.collapseAfter = marginsCollapseInfo.collapseAfter.m3123clone();
        MarginsCollapse marginsCollapse = marginsCollapseInfo.ownCollapseAfter;
        if (marginsCollapse != null) {
            marginsCollapseInfo2.setOwnCollapseAfter(marginsCollapse.m3123clone());
        }
        return marginsCollapseInfo2;
    }

    public static void updateFromCopy(MarginsCollapseInfo marginsCollapseInfo, MarginsCollapseInfo marginsCollapseInfo2) {
        marginsCollapseInfo.ignoreOwnMarginTop = marginsCollapseInfo2.ignoreOwnMarginTop;
        marginsCollapseInfo.ignoreOwnMarginBottom = marginsCollapseInfo2.ignoreOwnMarginBottom;
        marginsCollapseInfo.collapseBefore.joinMargin(marginsCollapseInfo2.collapseBefore);
        marginsCollapseInfo.collapseAfter.joinMargin(marginsCollapseInfo2.collapseAfter);
        if (marginsCollapseInfo2.getOwnCollapseAfter() != null) {
            if (marginsCollapseInfo.getOwnCollapseAfter() == null) {
                marginsCollapseInfo.setOwnCollapseAfter(new MarginsCollapse());
            }
            marginsCollapseInfo.getOwnCollapseAfter().joinMargin(marginsCollapseInfo2.getOwnCollapseAfter());
        }
        marginsCollapseInfo.setSelfCollapsing(marginsCollapseInfo2.isSelfCollapsing);
        marginsCollapseInfo.setBufferSpaceOnTop(marginsCollapseInfo2.bufferSpaceOnTop);
        marginsCollapseInfo.setBufferSpaceOnBottom(marginsCollapseInfo2.bufferSpaceOnBottom);
        marginsCollapseInfo.setUsedBufferSpaceOnTop(marginsCollapseInfo2.usedBufferSpaceOnTop);
        marginsCollapseInfo.setUsedBufferSpaceOnBottom(marginsCollapseInfo2.usedBufferSpaceOnBottom);
        marginsCollapseInfo.setClearanceApplied(marginsCollapseInfo2.clearanceApplied);
    }

    MarginsCollapse getCollapseBefore() {
        return this.collapseBefore;
    }

    MarginsCollapse getCollapseAfter() {
        return this.collapseAfter;
    }

    void setCollapseAfter(MarginsCollapse marginsCollapse) {
        this.collapseAfter = marginsCollapse;
    }

    MarginsCollapse getOwnCollapseAfter() {
        return this.ownCollapseAfter;
    }

    void setOwnCollapseAfter(MarginsCollapse marginsCollapse) {
        this.ownCollapseAfter = marginsCollapse;
    }

    void setSelfCollapsing(boolean z) {
        this.isSelfCollapsing = z;
    }

    boolean isSelfCollapsing() {
        return this.isSelfCollapsing;
    }

    boolean isIgnoreOwnMarginTop() {
        return this.ignoreOwnMarginTop;
    }

    boolean isIgnoreOwnMarginBottom() {
        return this.ignoreOwnMarginBottom;
    }

    float getBufferSpaceOnTop() {
        return this.bufferSpaceOnTop;
    }

    void setBufferSpaceOnTop(float f) {
        this.bufferSpaceOnTop = f;
    }

    float getBufferSpaceOnBottom() {
        return this.bufferSpaceOnBottom;
    }

    void setBufferSpaceOnBottom(float f) {
        this.bufferSpaceOnBottom = f;
    }

    float getUsedBufferSpaceOnTop() {
        return this.usedBufferSpaceOnTop;
    }

    void setUsedBufferSpaceOnTop(float f) {
        this.usedBufferSpaceOnTop = f;
    }

    float getUsedBufferSpaceOnBottom() {
        return this.usedBufferSpaceOnBottom;
    }

    void setUsedBufferSpaceOnBottom(float f) {
        this.usedBufferSpaceOnBottom = f;
    }

    boolean isClearanceApplied() {
        return this.clearanceApplied;
    }

    void setClearanceApplied(boolean z) {
        this.clearanceApplied = z;
    }
}
