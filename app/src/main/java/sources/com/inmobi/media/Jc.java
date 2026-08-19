package com.inmobi.media;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes6.dex */
public final class Jc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Jc f151a = new Jc();
    public static T0 b;

    public static void e() {
        boolean z;
        boolean zBooleanValue;
        T0 t0;
        try {
            Context contextD = Kb.d();
            if (contextD != null) {
                T0 t02 = new T0();
                try {
                    Reflection.getOrCreateKotlinClass(AdvertisingIdClient.class).getSimpleName();
                    try {
                        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(contextD);
                        Intrinsics.checkNotNullExpressionValue(advertisingIdInfo, "getAdvertisingIdInfo(...)");
                        t02.a(advertisingIdInfo.getId());
                        t02.a(advertisingIdInfo.isLimitAdTrackingEnabled());
                        b = t02;
                        Boolean bool = AbstractC0256ca.b;
                        if (bool == null) {
                            Context contextD2 = Kb.d();
                            z = false;
                            if (contextD2 != null) {
                                ConcurrentHashMap concurrentHashMap = C0284e6.b;
                                C0284e6 c0284e6A = AbstractC0268d6.a(contextD2, "user_info_store");
                                Intrinsics.checkNotNullParameter("user_age_restricted", "key");
                                AbstractC0256ca.b = Boolean.valueOf(c0284e6A.f340a.getBoolean("user_age_restricted", false));
                            }
                            Boolean bool2 = AbstractC0256ca.b;
                            if (bool2 != null) {
                                zBooleanValue = bool2.booleanValue();
                            }
                            if (z && (t0 = b) != null) {
                                t0.a((String) null);
                            }
                            return;
                        }
                        zBooleanValue = bool.booleanValue();
                        z = zBooleanValue;
                        if (z) {
                            t0.a((String) null);
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

    public static final void f() {
        e();
    }

    public final void a() {
        try {
            e();
            d();
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Jc", "TAG");
        }
    }

    public final T0 b() {
        return b;
    }

    public final Boolean c() {
        T0 t0 = b;
        if (t0 != null) {
            return t0.c();
        }
        return null;
    }

    public final void d() {
        String strA;
        try {
            T0 t0 = b;
            if (t0 == null || (strA = t0.a()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue("Jc", "TAG");
            I6.a((byte) 2, "Jc", "Publisher device Id is ".concat(strA));
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Jc", "TAG");
        }
    }

    public final void a(boolean z) {
        T0 t0 = b;
        if (t0 == null) {
            return;
        }
        if (z) {
            t0.a((String) null);
        } else if (t0.a() == null) {
            Kb.a(new Runnable() { // from class: com.inmobi.media.Jc$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Jc.f();
                }
            });
        }
    }
}
