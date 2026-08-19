package com.inmobi.media;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: renamed from: com.inmobi.media.Jc */
/* JADX INFO: loaded from: classes6.dex */
public final class C2835Jc {

    /* JADX INFO: renamed from: a */
    public static final C2835Jc f1140a = new C2835Jc();

    /* JADX INFO: renamed from: b */
    public static C2969T0 f1141b;

    /* JADX INFO: renamed from: e */
    public static void m1198e() {
        boolean z;
        boolean zBooleanValue;
        C2969T0 c2969t0;
        try {
            Context contextM1254d = C2849Kb.m1254d();
            if (contextM1254d != null) {
                C2969T0 c2969t02 = new C2969T0();
                try {
                    Reflection.getOrCreateKotlinClass(AdvertisingIdClient.class).getSimpleName();
                    try {
                        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(contextM1254d);
                        Intrinsics.checkNotNullExpressionValue(advertisingIdInfo, "getAdvertisingIdInfo(...)");
                        c2969t02.m1808a(advertisingIdInfo.getId());
                        c2969t02.m1809a(advertisingIdInfo.isLimitAdTrackingEnabled());
                        f1141b = c2969t02;
                        Boolean bool = AbstractC3107ca.f1951b;
                        if (bool == null) {
                            Context contextM1254d2 = C2849Kb.m1254d();
                            z = false;
                            if (contextM1254d2 != null) {
                                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                                C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d2, "user_info_store");
                                Intrinsics.checkNotNullParameter("user_age_restricted", "key");
                                AbstractC3107ca.f1951b = Boolean.valueOf(c3133e6M2058a.f2045a.getBoolean("user_age_restricted", false));
                            }
                            Boolean bool2 = AbstractC3107ca.f1951b;
                            if (bool2 != null) {
                                zBooleanValue = bool2.booleanValue();
                            }
                            if (z && (c2969t0 = f1141b) != null) {
                                c2969t0.m1808a((String) null);
                            }
                            return;
                        }
                        zBooleanValue = bool.booleanValue();
                        z = zBooleanValue;
                        if (z) {
                            c2969t0.m1808a((String) null);
                        }
                    } catch (Exception unused) {
                        Intrinsics.checkNotNullExpressionValue("Jc", "TAG");
                    }
                } catch (NoClassDefFoundError unused2) {
                }
            }
        } catch (Exception unused3) {
            Intrinsics.checkNotNullExpressionValue("Jc", "TAG");
        }
    }

    /* JADX INFO: renamed from: f */
    public static final void m1199f() {
        m1198e();
    }

    /* JADX INFO: renamed from: a */
    public final void m1200a() {
        try {
            m1198e();
            m1204d();
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Jc", "TAG");
        }
    }

    /* JADX INFO: renamed from: b */
    public final C2969T0 m1202b() {
        return f1141b;
    }

    /* JADX INFO: renamed from: c */
    public final Boolean m1203c() {
        C2969T0 c2969t0 = f1141b;
        if (c2969t0 != null) {
            return c2969t0.m1811c();
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    public final void m1204d() {
        String strM1807a;
        try {
            C2969T0 c2969t0 = f1141b;
            if (c2969t0 == null || (strM1807a = c2969t0.m1807a()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("Jc", "TAG");
            AbstractC2814I6.m1170a((byte) 2, "Jc", "Publisher device Id is ".concat(strM1807a));
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Jc", "TAG");
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1201a(boolean z) {
        C2969T0 c2969t0 = f1141b;
        if (c2969t0 == null) {
            return;
        }
        if (z) {
            c2969t0.m1808a((String) null);
        } else if (c2969t0.m1807a() == null) {
            C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.Jc$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C2835Jc.m1199f();
                }
            });
        }
    }
}
