package com.boilerplate.network.utils;

import org.shadow.apache.commons.lang3.StringUtils;
import timber.log.Timber;

/* JADX INFO: loaded from: classes3.dex */
public final class a {
    private static final String SINGLE_DIVIDER = "───────────────────────────────CURL───────────────────────────────";
    private static String sTag = "CURL";

    private static void log(String str) {
        Timber.d(sTag + StringUtils.SPACE + str, new Object[0]);
    }

    public static void print(String str, String str2, String str3) {
        if (str != null) {
            sTag = str;
        }
        StringBuilder sb = new StringBuilder("\n\n");
        sb.append("URL: " + str2);
        sb.append("\n───────────────────────────────CURL───────────────────────────────\n");
        sb.append(str3);
        sb.append("  \n───────────────────────────────CURL─────────────────────────────── \n ");
        log(sb.toString());
    }
}
