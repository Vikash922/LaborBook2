package com.itextpdf.layout.properties;

/* JADX INFO: loaded from: classes6.dex */
public class BorderRadius {
    private UnitValue horizontalRadius;
    private UnitValue verticalRadius;

    public BorderRadius(UnitValue unitValue) {
        this.horizontalRadius = unitValue;
        this.verticalRadius = unitValue;
    }

    public BorderRadius(float f) {
        UnitValue unitValueCreatePointValue = UnitValue.createPointValue(f);
        this.horizontalRadius = unitValueCreatePointValue;
        this.verticalRadius = unitValueCreatePointValue;
    }

    public BorderRadius(UnitValue unitValue, UnitValue unitValue2) {
        this.horizontalRadius = unitValue;
        this.verticalRadius = unitValue2;
    }

    public BorderRadius(float f, float f2) {
        this.horizontalRadius = UnitValue.createPointValue(f);
        this.verticalRadius = UnitValue.createPointValue(f2);
    }

    public UnitValue getHorizontalRadius() {
        return this.horizontalRadius;
    }

    public UnitValue getVerticalRadius() {
        return this.verticalRadius;
    }
}
