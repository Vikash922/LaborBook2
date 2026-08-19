package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.SignalsConfig;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Qb */
/* JADX INFO: loaded from: classes6.dex */
public final class C2939Qb {

    /* JADX INFO: renamed from: a */
    public static final C2939Qb f1485a = new C2939Qb();

    /* JADX INFO: renamed from: a */
    public final synchronized void m1749a() {
        Intrinsics.checkNotNullExpressionValue("Qb", "TAG");
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        C2810I2.m1161a("signals", C2849Kb.m1248b(), null);
        C2924Pb c2924Pb = C2924Pb.f1397a;
        boolean sessionEnabled = ((SignalsConfig) AbstractC3001V4.m1873a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getIce().getSessionEnabled();
        c2924Pb.getClass();
        C2924Pb.f1401e = sessionEnabled;
        if (!sessionEnabled) {
            C2924Pb.f1400d = null;
        }
        C2924Pb.m1528c();
        String strM1276h = C2849Kb.f1171a.m1276h();
        if (strM1276h != null) {
            Config configM1161a = C2810I2.m1161a("signals", strM1276h, null);
            Intrinsics.checkNotNull(configM1161a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig");
            if (((SignalsConfig) configM1161a).getIce().getLocationEnabled()) {
            }
        }
        C3433y6.f2760a.m2621d();
    }
}
