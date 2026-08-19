package com.inmobi.media;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.uc */
/* JADX INFO: loaded from: classes6.dex */
public final class C3379uc {

    /* JADX INFO: renamed from: a */
    public final C3244lc f2671a;

    /* JADX INFO: renamed from: b */
    public final C2759Eb f2672b;

    /* JADX INFO: renamed from: c */
    public final C3394vc f2673c;

    public C3379uc(C3244lc telemetryConfigMetaData, List samplingEvents) {
        Intrinsics.checkNotNullParameter(telemetryConfigMetaData, "telemetryConfigMetaData");
        Intrinsics.checkNotNullParameter(samplingEvents, "samplingEvents");
        this.f2671a = telemetryConfigMetaData;
        double dRandom = Math.random();
        this.f2672b = new C2759Eb(telemetryConfigMetaData, dRandom, samplingEvents);
        this.f2673c = new C3394vc(telemetryConfigMetaData, dRandom);
    }

    /* JADX INFO: renamed from: a */
    public final int m2495a(EnumC3259mc telemetryEventType, String eventType) {
        Intrinsics.checkNotNullParameter(telemetryEventType, "telemetryEventType");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        int iOrdinal = telemetryEventType.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal != 1) {
                throw new NoWhenBranchMatchedException();
            }
            C3394vc c3394vc = this.f2673c;
            c3394vc.getClass();
            Intrinsics.checkNotNullParameter(eventType, "eventType");
            if (c3394vc.f2691b < c3394vc.f2690a.f2306g) {
                C3199ic c3199ic = C3199ic.f2193a;
                return 2;
            }
            return 0;
        }
        C2759Eb c2759Eb = this.f2672b;
        c2759Eb.getClass();
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        if (!c2759Eb.f1013c.contains(eventType)) {
            return 1;
        }
        if (c2759Eb.f1012b < c2759Eb.f1011a.f2306g) {
            C3199ic c3199ic2 = C3199ic.f2193a;
            return 2;
        }
        return 0;
    }
}
