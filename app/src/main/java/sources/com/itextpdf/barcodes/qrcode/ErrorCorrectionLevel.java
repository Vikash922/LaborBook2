package com.itextpdf.barcodes.qrcode;

import com.itextpdf.svg.SvgConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class ErrorCorrectionLevel {
    private static final ErrorCorrectionLevel[] FOR_BITS;

    /* JADX INFO: renamed from: H */
    public static final ErrorCorrectionLevel f2845H;

    /* JADX INFO: renamed from: L */
    public static final ErrorCorrectionLevel f2846L;

    /* JADX INFO: renamed from: M */
    public static final ErrorCorrectionLevel f2847M;

    /* JADX INFO: renamed from: Q */
    public static final ErrorCorrectionLevel f2848Q;
    private final int bits;
    private final String name;
    private final int ordinal;

    static {
        ErrorCorrectionLevel errorCorrectionLevel = new ErrorCorrectionLevel(0, 1, "L");
        f2846L = errorCorrectionLevel;
        ErrorCorrectionLevel errorCorrectionLevel2 = new ErrorCorrectionLevel(1, 0, "M");
        f2847M = errorCorrectionLevel2;
        ErrorCorrectionLevel errorCorrectionLevel3 = new ErrorCorrectionLevel(2, 3, SvgConstants.Attributes.PATH_DATA_QUAD_CURVE_TO);
        f2848Q = errorCorrectionLevel3;
        ErrorCorrectionLevel errorCorrectionLevel4 = new ErrorCorrectionLevel(3, 2, "H");
        f2845H = errorCorrectionLevel4;
        FOR_BITS = new ErrorCorrectionLevel[]{errorCorrectionLevel2, errorCorrectionLevel, errorCorrectionLevel4, errorCorrectionLevel3};
    }

    private ErrorCorrectionLevel(int i, int i2, String str) {
        this.ordinal = i;
        this.bits = i2;
        this.name = str;
    }

    public int ordinal() {
        return this.ordinal;
    }

    public int getBits() {
        return this.bits;
    }

    public String getName() {
        return this.name;
    }

    public String toString() {
        return this.name;
    }

    public static ErrorCorrectionLevel forBits(int i) {
        if (i >= 0) {
            ErrorCorrectionLevel[] errorCorrectionLevelArr = FOR_BITS;
            if (i < errorCorrectionLevelArr.length) {
                return errorCorrectionLevelArr[i];
            }
        }
        throw new IllegalArgumentException();
    }
}
