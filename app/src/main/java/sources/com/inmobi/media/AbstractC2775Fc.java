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

/* JADX INFO: renamed from: com.inmobi.media.Fc */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2775Fc {
    /* JADX INFO: renamed from: a */
    public static String m1123a(Map map, String str) {
        HashMap map2;
        EnumC2709B6 enumC2709B6 = C2758Ea.f1001a;
        C3162g5 c3162g5M1051a = C2758Ea.m1051a("getToken", "AB", false);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (map != null) {
            C2864Lb.m1314a((String) map.get("tp"));
            C2864Lb.m1316b((String) map.get("tp-v"));
        }
        m1124a();
        if (!C2849Kb.m1265q()) {
            if (c3162g5M1051a != null) {
                Intrinsics.checkNotNullExpressionValue("com.inmobi.media.Fc", "LOG_TAG");
                c3162g5M1051a.m2151b("com.inmobi.media.Fc", "InMobi SDK is not initialised. Cannot fetch a token.");
            }
            m1125a(90, jCurrentTimeMillis, c3162g5M1051a);
            return null;
        }
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        RootConfig rootConfig = (RootConfig) AbstractC3001V4.m1873a(CommonCssConstants.ROOT, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig", null);
        if (rootConfig.getMonetizationDisabled()) {
            m1125a(2012, jCurrentTimeMillis, c3162g5M1051a);
            if (c3162g5M1051a != null) {
                Intrinsics.checkNotNullExpressionValue("com.inmobi.media.Fc", "LOG_TAG");
                c3162g5M1051a.m2151b("com.inmobi.media.Fc", "Monetization disabled. cannot provide token");
            }
            return null;
        }
        AdConfig adConfig = (AdConfig) AbstractC3001V4.m1873a("ads", "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null);
        C2790Gc c2790Gc = new C2790Gc(new C2850Kc(adConfig.getIncludeIds()), c3162g5M1051a, rootConfig, adConfig);
        c2790Gc.f1060C = map;
        c2790Gc.f1059B = str;
        HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.m2729to("h-user-agent", C2849Kb.m1259k()));
        if (mapHashMapOf != null && (map2 = c2790Gc.f2284k) != null) {
            map2.putAll(mapHashMapOf);
        }
        c2790Gc.mo1146f();
        if (!c2790Gc.f2277d) {
            if (c3162g5M1051a != null) {
                Intrinsics.checkNotNullExpressionValue("com.inmobi.media.Fc", "LOG_TAG");
                c3162g5M1051a.m2151b("com.inmobi.media.Fc", "get Signals failed - GDPR Compliance");
            }
            m1125a(2141, jCurrentTimeMillis, c3162g5M1051a);
            return null;
        }
        m1128a(jCurrentTimeMillis, c3162g5M1051a);
        if (c3162g5M1051a != null) {
            Intrinsics.checkNotNullExpressionValue("com.inmobi.media.Fc", "LOG_TAG");
            c3162g5M1051a.m2147a("com.inmobi.media.Fc", "get signals success");
        }
        String strM2288c = c2790Gc.m2288c();
        Charset charset = Charsets.UTF_8;
        byte[] bytes = strM2288c.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        byte[] bArrEncode = Base64.encode(bytes, 8);
        Intrinsics.checkNotNullExpressionValue(bArrEncode, "encode(...)");
        return new String(bArrEncode, charset);
    }

    /* JADX INFO: renamed from: b */
    public static final void m1129b() {
        HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.m2729to("networkType", C2751E3.m1005q()), TuplesKt.m2729to("plType", "AB"));
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b("AdGetSignalsCalled", mapHashMapOf, EnumC3259mc.f2349a);
    }

    /* JADX INFO: renamed from: a */
    public static void m1125a(final int i, final long j, C3162g5 c3162g5) {
        if (c3162g5 != null) {
            Intrinsics.checkNotNullExpressionValue("com.inmobi.media.Fc", "LOG_TAG");
            c3162g5.m2152c("com.inmobi.media.Fc", "submitAdGetSignalsFailed - errorCode - " + i + ", startTime - " + j);
        }
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.Fc$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2775Fc.m1127a(j, i);
            }
        });
        if (c3162g5 != null) {
            c3162g5.m2146a();
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1127a(long j, int i) {
        HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.m2729to("latency", Long.valueOf(System.currentTimeMillis() - j)), TuplesKt.m2729to("networkType", C2751E3.m1005q()), TuplesKt.m2729to("errorCode", Integer.valueOf(i)), TuplesKt.m2729to("plType", "AB"));
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b("AdGetSignalsFailed", mapHashMapOf, EnumC3259mc.f2349a);
    }

    /* JADX INFO: renamed from: a */
    public static void m1128a(final long j, C3162g5 c3162g5) {
        if (c3162g5 != null) {
            Intrinsics.checkNotNullExpressionValue("com.inmobi.media.Fc", "LOG_TAG");
            c3162g5.m2152c("com.inmobi.media.Fc", "submitAdGetSignalsSucceeded - startTime - " + j);
        }
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.Fc$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2775Fc.m1126a(j);
            }
        });
        if (c3162g5 != null) {
            c3162g5.m2146a();
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1126a(long j) {
        HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.m2729to("latency", Long.valueOf(System.currentTimeMillis() - j)), TuplesKt.m2729to("networkType", C2751E3.m1005q()), TuplesKt.m2729to("plType", "AB"));
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b("AdGetSignalsSucceeded", mapHashMapOf, EnumC3259mc.f2349a);
    }

    /* JADX INFO: renamed from: a */
    public static void m1124a() {
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.Fc$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2775Fc.m1129b();
            }
        });
    }
}
