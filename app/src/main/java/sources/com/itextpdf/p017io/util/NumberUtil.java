package com.itextpdf.p017io.util;

/* JADX INFO: loaded from: classes6.dex */
public class NumberUtil {
    private NumberUtil() {
    }

    public static Float asFloat(Object obj) {
        Number number = (Number) obj;
        if (number != null) {
            return Float.valueOf(number.floatValue());
        }
        return null;
    }

    public static Integer asInteger(Object obj) {
        Number number = (Number) obj;
        if (number != null) {
            return Integer.valueOf(number.intValue());
        }
        return null;
    }
}
