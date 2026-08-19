package com.itextpdf.layout.properties;

/* JADX INFO: loaded from: classes6.dex */
public class BackgroundSize {
    private UnitValue backgroundHeightSize;
    private UnitValue backgroundWidthSize;
    private boolean cover = false;
    private boolean contain = false;

    public void setBackgroundSizeToValues(UnitValue unitValue, UnitValue unitValue2) {
        clear();
        this.backgroundWidthSize = unitValue;
        this.backgroundHeightSize = unitValue2;
    }

    public void setBackgroundSizeToContain() {
        clear();
        this.contain = true;
    }

    public void setBackgroundSizeToCover() {
        clear();
        this.cover = true;
    }

    public UnitValue getBackgroundWidthSize() {
        return this.backgroundWidthSize;
    }

    public UnitValue getBackgroundHeightSize() {
        return this.backgroundHeightSize;
    }

    public boolean isSpecificSize() {
        return this.contain || this.cover;
    }

    public boolean isContain() {
        return this.contain;
    }

    public boolean isCover() {
        return this.cover;
    }

    private void clear() {
        this.contain = false;
        this.cover = false;
        this.backgroundWidthSize = null;
        this.backgroundHeightSize = null;
    }
}
