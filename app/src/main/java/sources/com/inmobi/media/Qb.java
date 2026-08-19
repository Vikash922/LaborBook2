package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.SignalsConfig;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Qb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Qb f226a = new Qb();

    public final synchronized void a() {
        Intrinsics.checkNotNullExpressionValue("Qb", "TAG");
        LinkedHashMap linkedHashMap = K2.f154a;
        I2.a("signals", Kb.b(), null);
        Pb pb = Pb.f217a;
        boolean sessionEnabled = ((SignalsConfig) V4.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getIce().getSessionEnabled();
        pb.getClass();
        Pb.e = sessionEnabled;
        if (!sessionEnabled) {
            Pb.d = null;
        }
        Pb.c();
        String strH = Kb.f162a.h();
        if (strH != null) {
            Config configA = I2.a("signals", strH, null);
            Intrinsics.checkNotNull(configA, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig");
            if (((SignalsConfig) configA).getIce().getLocationEnabled()) {
            }
        }
        C0580y6.f533a.d();
    }
}
