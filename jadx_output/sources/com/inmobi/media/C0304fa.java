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

/* JADX INFO: renamed from: com.inmobi.media.fa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0304fa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f350a;
    public static C0556wa b;
    public static final SignalsConfig c;
    public static int d;
    public static final Lazy e;

    static {
        LinkedHashMap linkedHashMap = K2.f154a;
        c = (SignalsConfig) V4.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null);
        e = LazyKt.lazy(C0288ea.f342a);
    }

    public static boolean a(Context context) {
        boolean zContains;
        Intrinsics.checkNotNullParameter(context, "context");
        if (!E3.G()) {
            return false;
        }
        if (!((Boolean) e.getValue()).booleanValue()) {
            AbstractC0413ma.a(new C0351ia((short) 2230));
            return false;
        }
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
            Bundle bundle = applicationInfo.metaData;
            String string = bundle != null ? bundle.getString("com.google.android.play.billingclient.version") : null;
            zContains = CollectionsKt.contains(c.getPurchases().getVersionList(), string);
            if (!zContains) {
                AbstractC0413ma.a(new C0382ka(string));
            }
        } catch (Exception unused) {
            zContains = false;
        }
        if (!zContains) {
            return false;
        }
        int i = d;
        if (i != 1 && i != 2) {
            return true;
        }
        AbstractC0413ma.a(new C0351ia(i != 1 ? i != 2 ? (short) 0 : (short) 2232 : (short) 2231));
        return false;
    }
}
