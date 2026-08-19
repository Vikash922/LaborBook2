package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class F4 extends T9 {
    public final int p;

    /* JADX WARN: Illegal instructions before constructor call */
    public F4(AdConfig.ViewabilityConfig viewabilityConfig, byte b, InterfaceC0298f5 interfaceC0298f5) {
        C0594z4 visibilityChecker = C4.k;
        Intrinsics.checkNotNullParameter(visibilityChecker, "visibilityChecker");
        super(visibilityChecker, viewabilityConfig, b, interfaceC0298f5);
        this.p = 1000;
    }

    @Override // com.inmobi.media.T9, com.inmobi.media.yd
    public final int c() {
        AdConfig.ViewabilityConfig viewabilityConfig = this.n;
        return viewabilityConfig != null ? viewabilityConfig.getWebVisibilityThrottleMillis() : this.p;
    }
}
