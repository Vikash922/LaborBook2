package com.inmobi.media;

import com.inmobi.commons.core.configs.CrashConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.y5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0579y5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Fb f532a;
    public final Fb b;
    public final Fb c;
    public final Fb d;

    public C0579y5(CrashConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.f532a = new Fb(config.getCrashConfig().getSamplingPercent());
        this.b = new Fb(config.getCatchConfig().getSamplingPercent());
        this.c = new Fb(config.getAnr().getWatchdog().getSamplingPercent());
        this.d = new Fb(config.getAnr().getAppExitReason().getSamplingPercent());
    }
}
