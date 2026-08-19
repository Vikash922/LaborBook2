package com.itextpdf.p017io.exceptions;

/* JADX INFO: loaded from: classes6.dex */
public final class ExceptionUtil {
    private ExceptionUtil() {
    }

    public static boolean isOutOfRange(Exception exc) {
        return exc instanceof IndexOutOfBoundsException;
    }
}
