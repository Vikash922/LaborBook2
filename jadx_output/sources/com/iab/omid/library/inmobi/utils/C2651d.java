package com.iab.omid.library.inmobi.utils;

import android.text.TextUtils;
import android.util.Log;
import com.iab.omid.library.inmobi.C2620a;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.utils.d */
/* JADX INFO: loaded from: classes6.dex */
public final class C2651d {
    /* JADX INFO: renamed from: a */
    public static void m712a(String str) {
        if (!C2620a.f596a.booleanValue() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.i("OMIDLIB", str);
    }

    /* JADX INFO: renamed from: a */
    public static void m713a(String str, Exception exc) {
        if ((!C2620a.f596a.booleanValue() || TextUtils.isEmpty(str)) && exc == null) {
            return;
        }
        Log.e("OMIDLIB", str, exc);
    }

    /* JADX INFO: renamed from: b */
    public static void m714b(String str) {
        if (!C2620a.f596a.booleanValue() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.w("OMIDLIB", str);
    }
}
