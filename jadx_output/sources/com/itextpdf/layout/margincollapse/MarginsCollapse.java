package com.itextpdf.layout.margincollapse;

/* JADX INFO: loaded from: classes6.dex */
class MarginsCollapse implements Cloneable {
    private float maxPositiveMargin = 0.0f;
    private float minNegativeMargin = 0.0f;

    MarginsCollapse() {
    }

    void joinMargin(float f) {
        if (this.maxPositiveMargin < f) {
            this.maxPositiveMargin = f;
        } else if (this.minNegativeMargin > f) {
            this.minNegativeMargin = f;
        }
    }

    void joinMargin(MarginsCollapse marginsCollapse) {
        joinMargin(marginsCollapse.maxPositiveMargin);
        joinMargin(marginsCollapse.minNegativeMargin);
    }

    float getCollapsedMarginsSize() {
        return this.maxPositiveMargin + this.minNegativeMargin;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public MarginsCollapse m3123clone() {
        try {
            return (MarginsCollapse) super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }
}
