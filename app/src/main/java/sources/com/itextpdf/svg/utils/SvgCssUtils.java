package com.itextpdf.svg.utils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class SvgCssUtils {
    private SvgCssUtils() {
    }

    public static List<String> splitValueList(String str) {
        ArrayList arrayList = new ArrayList();
        if (str != null && str.length() > 0) {
            arrayList.addAll(Arrays.asList(str.trim().split("\\s*(,|\\s)\\s*")));
        }
        return arrayList;
    }

    public static String convertFloatToString(float f) {
        return String.valueOf(f);
    }

    public static String convertDoubleToString(double d) {
        return String.valueOf(d);
    }
}
