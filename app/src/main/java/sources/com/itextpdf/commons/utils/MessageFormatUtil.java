package com.itextpdf.commons.utils;

import java.text.MessageFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class MessageFormatUtil {
    private MessageFormatUtil() {
    }

    public static String format(String str, Object... objArr) {
        return new MessageFormat(str.replace("'", "''").replace("{{{", "'{'{").replace("}}}", "}'}'").replace("{{", "'{'").replace("}}", "'}'"), Locale.ROOT).format(objArr);
    }
}
