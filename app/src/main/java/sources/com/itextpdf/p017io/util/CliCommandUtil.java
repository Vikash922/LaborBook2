package com.itextpdf.p017io.util;

import com.itextpdf.commons.utils.SystemUtil;

/* JADX INFO: loaded from: classes6.dex */
public final class CliCommandUtil {
    private CliCommandUtil() {
    }

    public static boolean isVersionCommandExecutable(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                return SystemUtil.runProcessAndGetOutput(str, "-version").contains(str2);
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
