package com.itextpdf.p017io.util;

import com.google.firebase.sessions.settings.RemoteSettings;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public final class ResourceUtil {
    private ResourceUtil() {
    }

    public static InputStream getResourceStream(String str) {
        return getResourceStream(str, null);
    }

    public static InputStream getResourceStream(String str, ClassLoader classLoader) {
        InputStream resourceAsStream;
        if (str.startsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
            str = str.substring(1);
        }
        if (classLoader != null) {
            resourceAsStream = classLoader.getResourceAsStream(str);
            if (resourceAsStream != null) {
                return resourceAsStream;
            }
        } else {
            resourceAsStream = null;
        }
        try {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader != null) {
                resourceAsStream = contextClassLoader.getResourceAsStream(str);
            }
        } catch (SecurityException unused) {
        }
        if (resourceAsStream == null) {
            resourceAsStream = ResourceUtil.class.getResourceAsStream(RemoteSettings.FORWARD_SLASH_STRING + str);
        }
        return resourceAsStream == null ? ClassLoader.getSystemResourceAsStream(str) : resourceAsStream;
    }
}
