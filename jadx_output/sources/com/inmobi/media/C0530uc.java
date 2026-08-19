package com.inmobi.media;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.uc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0530uc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0400lc f503a;
    public final Eb b;
    public final C0544vc c;

    public C0530uc(C0400lc telemetryConfigMetaData, List samplingEvents) {
        Intrinsics.checkNotNullParameter(telemetryConfigMetaData, "telemetryConfigMetaData");
        Intrinsics.checkNotNullParameter(samplingEvents, "samplingEvents");
        this.f503a = telemetryConfigMetaData;
        double dRandom = Math.random();
        this.b = new Eb(telemetryConfigMetaData, dRandom, samplingEvents);
        this.c = new C0544vc(telemetryConfigMetaData, dRandom);
    }

    public final int a(EnumC0415mc telemetryEventType, String eventType) {
        Intrinsics.checkNotNullParameter(telemetryEventType, "telemetryEventType");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        int iOrdinal = telemetryEventType.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal != 1) {
                throw new NoWhenBranchMatchedException();
            }
            C0544vc c0544vc = this.c;
            c0544vc.getClass();
            Intrinsics.checkNotNullParameter(eventType, "eventType");
            if (c0544vc.b < c0544vc.f509a.g) {
                C0353ic c0353ic = C0353ic.f388a;
                return 2;
            }
            return 0;
        }
        Eb eb = this.b;
        eb.getClass();
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        if (!eb.c.contains(eventType)) {
            return 1;
        }
        if (eb.b < eb.f110a.g) {
            C0353ic c0353ic2 = C0353ic.f388a;
            return 2;
        }
        return 0;
    }
}
