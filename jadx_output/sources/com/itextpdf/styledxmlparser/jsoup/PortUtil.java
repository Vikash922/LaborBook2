package com.itextpdf.styledxmlparser.jsoup;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes6.dex */
public class PortUtil {
    public static boolean charsetIsSupported(String str) {
        try {
            return Charset.isSupported(str);
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public static String trimControlCodes(String str) {
        return str.trim();
    }
}
