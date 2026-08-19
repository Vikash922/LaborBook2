package com.inmobi.media;

import android.util.Base64;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.RootConfig;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Fc {
    public static String a(Map map, String str) {
        HashMap map2;
        B6 b6 = Ea.f109a;
        C0314g5 c0314g5A = Ea.a("getToken", "AB", false);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (map != null) {
            Lb.a((String) map.get("tp"));
            Lb.b((String) map.get("tp-v"));
        }
        a();
        if (!Kb.q()) {
            if (c0314g5A != null) {
                Intrinsics.checkNotNullExpressionValue("com.inmobi.media.Fc", "LOG_TAG");
                c0314g5A.b("com.inmobi.media.Fc", "InMobi SDK is not initialised. Cannot fetch a token.");
            }
            a(90, jCurrentTimeMillis, c0314g5A);
            return null;
        }
        LinkedHashMap linkedHashMap = K2.f154a;
        RootConfig rootConfig = (RootConfig) V4.a(CommonCssConstants.ROOT, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig", null);
        if (rootConfig.getMonetizationDisabled()) {
            a(2012, jCurrentTimeMillis, c0314g5A);
            if (c0314g5A != null) {
                Intrinsics.checkNotNullExpressionValue("com.inmobi.media.Fc", "LOG_TAG");
                c0314g5A.b("com.inmobi.media.Fc", "Monetization disabled. cannot provide token");
            }
            return null;
        }
        AdConfig adConfig = (AdConfig) V4.a("ads", "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null);
        Gc gc = new Gc(new Kc(adConfig.getIncludeIds()), c0314g5A, rootConfig, adConfig);
        gc.C = map;
        gc.B = str;
        HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.to("h-user-agent", Kb.k()));
        if (mapHashMapOf != null && (map2 = gc.k) != null) {
            map2.putAll(mapHashMapOf);
        }
        gc.f();
        if (!gc.d) {
            if (c0314g5A != null) {
                Intrinsics.checkNotNullExpressionValue("com.inmobi.media.Fc", "LOG_TAG");
                c0314g5A.b("com.inmobi.media.Fc", "get Signals failed - GDPR Compliance");
            }
            a(2141, jCurrentTimeMillis, c0314g5A);
            return null;
        }
        a(jCurrentTimeMillis, c0314g5A);
        if (c0314g5A != null) {
            Intrinsics.checkNotNullExpressionValue("com.inmobi.media.Fc", "LOG_TAG");
            c0314g5A.a("com.inmobi.media.Fc", "get signals success");
        }
        String strC = gc.c();
        Charset charset = Charsets.UTF_8;
        byte[] bytes = strC.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        byte[] bArrEncode = Base64.encode(bytes, 8);
        Intrinsics.checkNotNullExpressionValue(bArrEncode, "encode(...)");
        return new String(bArrEncode, charset);
    }

    public static final void b() {
        HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.to("networkType", E3.q()), TuplesKt.to("plType", "AB"));
        C0353ic c0353ic = C0353ic.f388a;
        C0353ic.b("AdGetSignalsCalled", mapHashMapOf, EnumC0415mc.f426a);
    }

    public static void a(final int i, final long j, C0314g5 c0314g5) {
        if (c0314g5 != null) {
            Intrinsics.checkNotNullExpressionValue("com.inmobi.media.Fc", "LOG_TAG");
            c0314g5.c("com.inmobi.media.Fc", "submitAdGetSignalsFailed - errorCode - " + i + ", startTime - " + j);
        }
        Kb.a(new Runnable() { // from class: com.inmobi.media.Fc$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Fc.a(j, i);
            }
        });
        if (c0314g5 != null) {
            c0314g5.a();
        }
    }

    public static final void a(long j, int i) {
        HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.to("latency", Long.valueOf(System.currentTimeMillis() - j)), TuplesKt.to("networkType", E3.q()), TuplesKt.to("errorCode", Integer.valueOf(i)), TuplesKt.to("plType", "AB"));
        C0353ic c0353ic = C0353ic.f388a;
        C0353ic.b("AdGetSignalsFailed", mapHashMapOf, EnumC0415mc.f426a);
    }

    public static void a(final long j, C0314g5 c0314g5) {
        if (c0314g5 != null) {
            Intrinsics.checkNotNullExpressionValue("com.inmobi.media.Fc", "LOG_TAG");
            c0314g5.c("com.inmobi.media.Fc", "submitAdGetSignalsSucceeded - startTime - " + j);
        }
        Kb.a(new Runnable() { // from class: com.inmobi.media.Fc$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Fc.a(j);
            }
        });
        if (c0314g5 != null) {
            c0314g5.a();
        }
    }

    public static final void a(long j) {
        HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.to("latency", Long.valueOf(System.currentTimeMillis() - j)), TuplesKt.to("networkType", E3.q()), TuplesKt.to("plType", "AB"));
        C0353ic c0353ic = C0353ic.f388a;
        C0353ic.b("AdGetSignalsSucceeded", mapHashMapOf, EnumC0415mc.f426a);
    }

    public static void a() {
        Kb.a(new Runnable() { // from class: com.inmobi.media.Fc$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                Fc.b();
            }
        });
    }
}
