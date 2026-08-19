package com.inmobi.media;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Eb */
/* JADX INFO: loaded from: classes6.dex */
public final class C2759Eb {

    /* JADX INFO: renamed from: a */
    public final C3244lc f1011a;

    /* JADX INFO: renamed from: b */
    public final double f1012b;

    /* JADX INFO: renamed from: c */
    public final List f1013c;

    public C2759Eb(C3244lc telemetryConfigMetaData, double d, List samplingEvents) {
        Intrinsics.checkNotNullParameter(telemetryConfigMetaData, "telemetryConfigMetaData");
        Intrinsics.checkNotNullParameter(samplingEvents, "samplingEvents");
        this.f1011a = telemetryConfigMetaData;
        this.f1012b = d;
        this.f1013c = samplingEvents;
        Intrinsics.checkNotNullExpressionValue("Eb", "getSimpleName(...)");
    }
}
