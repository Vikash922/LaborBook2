package com.inmobi.media;

import com.inmobi.commons.core.configs.TelemetryConfig;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.n7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3269n7 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C3269n7 f2382a = new C3269n7();

    public C3269n7() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        return ((TelemetryConfig) AbstractC3001V4.m1873a("telemetry", "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig", null)).getLpConfig();
    }
}
