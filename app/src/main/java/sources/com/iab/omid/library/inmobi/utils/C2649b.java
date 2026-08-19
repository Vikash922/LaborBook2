package com.iab.omid.library.inmobi.utils;

import android.os.Build;
import com.amplitude.android.plugins.AndroidContextPlugin;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.utils.b */
/* JADX INFO: loaded from: classes6.dex */
public final class C2649b {
    /* JADX INFO: renamed from: a */
    public static String m686a() {
        return Build.MANUFACTURER + "; " + Build.MODEL;
    }

    /* JADX INFO: renamed from: b */
    public static String m687b() {
        return AndroidContextPlugin.PLATFORM;
    }

    /* JADX INFO: renamed from: c */
    public static String m688c() {
        return Integer.toString(Build.VERSION.SDK_INT);
    }

    /* JADX INFO: renamed from: d */
    public static JSONObject m689d() {
        JSONObject jSONObject = new JSONObject();
        C2650c.m698a(jSONObject, "deviceType", m686a());
        C2650c.m698a(jSONObject, "osVersion", m688c());
        C2650c.m698a(jSONObject, "os", m687b());
        return jSONObject;
    }
}
