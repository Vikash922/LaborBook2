package com.itextpdf.layout.properties;

import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public class BackgroundPosition {
    private static final double EPS = 9.999999747378752E-5d;
    private static final int FULL_VALUE = 100;
    private static final int HALF_VALUE = 50;
    private UnitValue xShift = new UnitValue(1, 0.0f);
    private UnitValue yShift = new UnitValue(1, 0.0f);
    private PositionX positionX = PositionX.LEFT;
    private PositionY positionY = PositionY.TOP;

    public enum PositionX {
        LEFT,
        RIGHT,
        CENTER
    }

    public enum PositionY {
        TOP,
        BOTTOM,
        CENTER
    }

    public void calculatePositionValues(float f, float f2, UnitValue unitValue, UnitValue unitValue2) {
        UnitValue unitValue3;
        UnitValue unitValue4;
        int positionXToUnitValueAndReturnMultiplier = parsePositionXToUnitValueAndReturnMultiplier(unitValue);
        if (positionXToUnitValueAndReturnMultiplier == 0 && (unitValue4 = this.xShift) != null && Math.abs(unitValue4.getValue()) > EPS) {
            unitValue.setValue(0.0f);
        } else {
            unitValue.setValue(calculateValue(unitValue, f) + (calculateValue(this.xShift, f) * positionXToUnitValueAndReturnMultiplier));
        }
        unitValue.setUnitType(1);
        int positionYToUnitValueAndReturnMultiplier = parsePositionYToUnitValueAndReturnMultiplier(unitValue2);
        if (positionYToUnitValueAndReturnMultiplier == 0 && (unitValue3 = this.yShift) != null && Math.abs(unitValue3.getValue()) > EPS) {
            unitValue2.setValue(0.0f);
        } else {
            unitValue2.setValue(calculateValue(unitValue2, f2) + (calculateValue(this.yShift, f2) * positionYToUnitValueAndReturnMultiplier));
        }
        unitValue2.setUnitType(1);
    }

    public PositionX getPositionX() {
        return this.positionX;
    }

    public BackgroundPosition setPositionX(PositionX positionX) {
        this.positionX = positionX;
        return this;
    }

    public PositionY getPositionY() {
        return this.positionY;
    }

    public BackgroundPosition setPositionY(PositionY positionY) {
        this.positionY = positionY;
        return this;
    }

    public UnitValue getXShift() {
        return this.xShift;
    }

    public BackgroundPosition setXShift(UnitValue unitValue) {
        this.xShift = unitValue;
        return this;
    }

    public UnitValue getYShift() {
        return this.yShift;
    }

    public BackgroundPosition setYShift(UnitValue unitValue) {
        this.yShift = unitValue;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BackgroundPosition backgroundPosition = (BackgroundPosition) obj;
        return Objects.equals(this.positionX, backgroundPosition.positionX) && Objects.equals(this.positionY, backgroundPosition.positionY) && Objects.equals(this.xShift, backgroundPosition.xShift) && Objects.equals(this.yShift, backgroundPosition.yShift);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.positionX.ordinal()), Integer.valueOf(this.positionY.ordinal()), this.xShift, this.yShift);
    }

    private int parsePositionXToUnitValueAndReturnMultiplier(UnitValue unitValue) {
        unitValue.setUnitType(2);
        int i = C35091.f3219xc1142f3e[this.positionX.ordinal()];
        if (i == 1) {
            unitValue.setValue(0.0f);
            return 1;
        }
        if (i == 2) {
            unitValue.setValue(100.0f);
            return -1;
        }
        if (i != 3) {
            return 0;
        }
        unitValue.setValue(50.0f);
        return 0;
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.properties.BackgroundPosition$1 */
    static /* synthetic */ class C35091 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$layout$properties$BackgroundPosition$PositionX */
        static final /* synthetic */ int[] f3219xc1142f3e;

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$layout$properties$BackgroundPosition$PositionY */
        static final /* synthetic */ int[] f3220xc1142f3f;

        static {
            int[] iArr = new int[PositionY.values().length];
            f3220xc1142f3f = iArr;
            try {
                iArr[PositionY.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3220xc1142f3f[PositionY.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3220xc1142f3f[PositionY.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[PositionX.values().length];
            f3219xc1142f3e = iArr2;
            try {
                iArr2[PositionX.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3219xc1142f3e[PositionX.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3219xc1142f3e[PositionX.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private int parsePositionYToUnitValueAndReturnMultiplier(UnitValue unitValue) {
        unitValue.setUnitType(2);
        int i = C35091.f3220xc1142f3f[this.positionY.ordinal()];
        if (i == 1) {
            unitValue.setValue(0.0f);
            return 1;
        }
        if (i == 2) {
            unitValue.setValue(100.0f);
            return -1;
        }
        if (i != 3) {
            return 0;
        }
        unitValue.setValue(50.0f);
        return 0;
    }

    private static float calculateValue(UnitValue unitValue, float f) {
        if (unitValue == null) {
            return 0.0f;
        }
        boolean zIsPercentValue = unitValue.isPercentValue();
        float value = unitValue.getValue();
        return zIsPercentValue ? (value / 100.0f) * f : value;
    }
}
