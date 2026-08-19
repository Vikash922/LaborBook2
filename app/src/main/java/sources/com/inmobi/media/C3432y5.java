package com.inmobi.media;

import com.inmobi.commons.core.configs.CrashConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.y5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3432y5 {

    /* JADX INFO: renamed from: a */
    public final C2774Fb f2756a;

    /* JADX INFO: renamed from: b */
    public final C2774Fb f2757b;

    /* JADX INFO: renamed from: c */
    public final C2774Fb f2758c;

    /* JADX INFO: renamed from: d */
    public final C2774Fb f2759d;

    public C3432y5(CrashConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.f2756a = new C2774Fb(config.getCrashConfig().getSamplingPercent());
        this.f2757b = new C2774Fb(config.getCatchConfig().getSamplingPercent());
        this.f2758c = new C2774Fb(config.getAnr().getWatchdog().getSamplingPercent());
        this.f2759d = new C2774Fb(config.getAnr().getAppExitReason().getSamplingPercent());
    }
}
