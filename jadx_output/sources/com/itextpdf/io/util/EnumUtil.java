package com.itextpdf.io.util;

/* JADX INFO: loaded from: classes6.dex */
public final class EnumUtil {
    private EnumUtil() {
    }

    public static <T extends Enum<T>> T throwIfNull(T t) {
        if (t != null) {
            return t;
        }
        throw new RuntimeException("Expected not null enum instance");
    }
}
