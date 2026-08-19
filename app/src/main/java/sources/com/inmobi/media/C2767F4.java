package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.F4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2767F4 extends C2978T9 {

    /* JADX INFO: renamed from: p */
    public final int f1018p;

    /* JADX WARN: Illegal instructions before constructor call */
    public C2767F4(AdConfig.ViewabilityConfig viewabilityConfig, byte b, InterfaceC3147f5 interfaceC3147f5) {
        C3446z4 visibilityChecker = C2722C4.f870k;
        Intrinsics.checkNotNullParameter(visibilityChecker, "visibilityChecker");
        super(visibilityChecker, viewabilityConfig, b, interfaceC3147f5);
        this.f1018p = 1000;
    }

    @Override // com.inmobi.media.C2978T9, com.inmobi.media.AbstractC3440yd
    /* JADX INFO: renamed from: c */
    public final int mo1115c() {
        AdConfig.ViewabilityConfig viewabilityConfig = this.f1550n;
        return viewabilityConfig != null ? viewabilityConfig.getWebVisibilityThrottleMillis() : this.f1018p;
    }
}
