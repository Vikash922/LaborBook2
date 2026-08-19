package com.itextpdf.p017io.util;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class DecimalFormatUtil {
    private static final DecimalFormatSymbols dfs = new DecimalFormatSymbols(Locale.US);

    private DecimalFormatUtil() {
    }

    public static String formatNumber(double d, String str) {
        return new DecimalFormat(str, dfs).format(d);
    }
}
