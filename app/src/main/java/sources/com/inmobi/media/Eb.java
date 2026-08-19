package com.inmobi.media;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Eb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0400lc f110a;
    public final double b;
    public final List c;

    public Eb(C0400lc telemetryConfigMetaData, double d, List samplingEvents) {
        Intrinsics.checkNotNullParameter(telemetryConfigMetaData, "telemetryConfigMetaData");
        Intrinsics.checkNotNullParameter(samplingEvents, "samplingEvents");
        this.f110a = telemetryConfigMetaData;
        this.b = d;
        this.c = samplingEvents;
        Intrinsics.checkNotNullExpressionValue("Eb", "getSimpleName(...)");
    }
}
