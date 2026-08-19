package com.inmobi.media;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import com.inmobi.commons.core.configs.SignalsConfig;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.fa */
/* JADX INFO: loaded from: classes6.dex */
public final class C3152fa {

    /* JADX INFO: renamed from: a */
    public static String f2071a;

    /* JADX INFO: renamed from: b */
    public static C3407wa f2072b;

    /* JADX INFO: renamed from: c */
    public static final SignalsConfig f2073c;

    /* JADX INFO: renamed from: d */
    public static int f2074d;

    /* JADX INFO: renamed from: e */
    public static final Lazy f2075e;

    static {
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        f2073c = (SignalsConfig) AbstractC3001V4.m1873a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null);
        f2075e = LazyKt.lazy(C3137ea.f2048a);
    }

    /* JADX INFO: renamed from: a */
    public static boolean m2137a(Context context) {
        boolean zContains;
        Intrinsics.checkNotNullParameter(context, "context");
        if (!C2751E3.m994G()) {
            return false;
        }
        if (!((Boolean) f2075e.getValue()).booleanValue()) {
            AbstractC3257ma.m2298a(new C3197ia((short) 2230));
            return false;
        }
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
            Bundle bundle = applicationInfo.metaData;
            String string = bundle != null ? bundle.getString("com.google.android.play.billingclient.version") : null;
            zContains = CollectionsKt.contains(f2073c.getPurchases().getVersionList(), string);
            if (!zContains) {
                AbstractC3257ma.m2298a(new C3227ka(string));
            }
        } catch (Exception unused) {
            zContains = false;
        }
        if (!zContains) {
            return false;
        }
        int i = f2074d;
        if (i != 1 && i != 2) {
            return true;
        }
        AbstractC3257ma.m2298a(new C3197ia(i != 1 ? i != 2 ? (short) 0 : (short) 2232 : (short) 2231));
        return false;
    }
}
