package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public class T9 extends yd {
    public final AdConfig.ViewabilityConfig n;
    public final int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T9(sd visibilityChecker, AdConfig.ViewabilityConfig viewabilityConfig, byte b, InterfaceC0298f5 interfaceC0298f5) {
        super(visibilityChecker, b, interfaceC0298f5);
        Intrinsics.checkNotNullParameter(visibilityChecker, "visibilityChecker");
        this.n = viewabilityConfig;
        this.o = 100;
    }

    @Override // com.inmobi.media.yd
    public int c() {
        AdConfig.ViewabilityConfig viewabilityConfig = this.n;
        return viewabilityConfig != null ? viewabilityConfig.getVisibilityThrottleMillis() : this.o;
    }

    @Override // com.inmobi.media.yd
    public final void d() {
        g();
    }
}
