package com.inmobi.media;

import android.os.Build;
import com.inmobi.commons.core.configs.TelemetryConfig;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.qc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0475qc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TelemetryConfig f464a;

    public C0475qc(TelemetryConfig telemetryConfig) {
        Intrinsics.checkNotNullParameter(telemetryConfig, "telemetryConfig");
        this.f464a = telemetryConfig;
    }

    public final void a(C0232b1 c0232b1) {
        if (Build.VERSION.SDK_INT < 30 || c0232b1 == null || c0232b1.g != 6) {
            return;
        }
        a("ANREvent", c0232b1);
    }

    public final void a(String str, C0565x5 c0565x5) {
        if (this.f464a.getPriorityEventsList().contains(str) && c0565x5 != null && Xc.a(c0565x5)) {
            C0353ic.b(str, new LinkedHashMap(), EnumC0415mc.f426a);
        }
    }
}
