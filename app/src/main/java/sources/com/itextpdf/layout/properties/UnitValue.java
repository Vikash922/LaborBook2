package com.itextpdf.layout.properties;

import com.itextpdf.commons.utils.MessageFormatUtil;

/* JADX INFO: loaded from: classes6.dex */
public class UnitValue {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int PERCENT = 2;
    public static final int POINT = 1;
    protected int unitType;
    protected float value;

    public UnitValue(int i, float f) {
        this.unitType = i;
        this.value = f;
    }

    public UnitValue(UnitValue unitValue) {
        this(unitValue.unitType, unitValue.value);
    }

    public static UnitValue createPointValue(float f) {
        return new UnitValue(1, f);
    }

    public static UnitValue createPercentValue(float f) {
        return new UnitValue(2, f);
    }

    public static UnitValue[] createPercentArray(float[] fArr) {
        UnitValue[] unitValueArr = new UnitValue[fArr.length];
        float f = 0.0f;
        for (float f2 : fArr) {
            f += f2;
        }
        for (int i = 0; i < fArr.length; i++) {
            unitValueArr[i] = createPercentValue((fArr[i] * 100.0f) / f);
        }
        return unitValueArr;
    }

    public static UnitValue[] createPercentArray(int i) {
        UnitValue[] unitValueArr = new UnitValue[i];
        for (int i2 = 0; i2 < i; i2++) {
            unitValueArr[i2] = createPercentValue(100.0f / i);
        }
        return unitValueArr;
    }

    public static UnitValue[] createPointArray(float[] fArr) {
        UnitValue[] unitValueArr = new UnitValue[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            unitValueArr[i] = createPointValue(fArr[i]);
        }
        return unitValueArr;
    }

    public int getUnitType() {
        return this.unitType;
    }

    public void setUnitType(int i) {
        this.unitType = i;
    }

    public float getValue() {
        return this.value;
    }

    public void setValue(float f) {
        this.value = f;
    }

    public boolean isPointValue() {
        return this.unitType == 1;
    }

    public boolean isPercentValue() {
        return this.unitType == 2;
    }

    public boolean equals(Object obj) {
        if (getClass() != obj.getClass()) {
            return false;
        }
        UnitValue unitValue = (UnitValue) obj;
        return Integer.compare(this.unitType, unitValue.unitType) == 0 && Float.compare(this.value, unitValue.value) == 0;
    }

    public int hashCode() {
        return ((497 + this.unitType) * 71) + Float.floatToIntBits(this.value);
    }

    public String toString() {
        return MessageFormatUtil.format(this.unitType == 2 ? "{0}%" : "{0}pt", Float.valueOf(this.value));
    }
}
