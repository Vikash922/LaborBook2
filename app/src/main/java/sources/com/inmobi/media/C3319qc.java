package com.inmobi.media;

import android.os.Build;
import com.inmobi.commons.core.configs.TelemetryConfig;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.qc */
/* JADX INFO: loaded from: classes6.dex */
public final class C3319qc {

    /* JADX INFO: renamed from: a */
    public TelemetryConfig f2469a;

    public C3319qc(TelemetryConfig telemetryConfig) {
        Intrinsics.checkNotNullParameter(telemetryConfig, "telemetryConfig");
        this.f2469a = telemetryConfig;
    }

    /* JADX INFO: renamed from: a */
    public final void m2357a(C3083b1 c3083b1) {
        if (Build.VERSION.SDK_INT < 30 || c3083b1 == null || c3083b1.f1870g != 6) {
            return;
        }
        m2358a("ANREvent", c3083b1);
    }

    /* JADX INFO: renamed from: a */
    public final void m2358a(String str, C3417x5 c3417x5) {
        if (this.f2469a.getPriorityEventsList().contains(str) && c3417x5 != null && AbstractC3037Xc.m1916a(c3417x5)) {
            C3199ic.m2248b(str, new LinkedHashMap(), EnumC3259mc.f2349a);
        }
    }
}
