package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.T9 */
/* JADX INFO: loaded from: classes6.dex */
public class C2978T9 extends AbstractC3440yd {

    /* JADX INFO: renamed from: n */
    public final AdConfig.ViewabilityConfig f1550n;

    /* JADX INFO: renamed from: o */
    public final int f1551o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2978T9(InterfaceC3350sd visibilityChecker, AdConfig.ViewabilityConfig viewabilityConfig, byte b, InterfaceC3147f5 interfaceC3147f5) {
        super(visibilityChecker, b, interfaceC3147f5);
        Intrinsics.checkNotNullParameter(visibilityChecker, "visibilityChecker");
        this.f1550n = viewabilityConfig;
        this.f1551o = 100;
    }

    @Override // com.inmobi.media.AbstractC3440yd
    /* JADX INFO: renamed from: c */
    public int mo1115c() {
        AdConfig.ViewabilityConfig viewabilityConfig = this.f1550n;
        return viewabilityConfig != null ? viewabilityConfig.getVisibilityThrottleMillis() : this.f1551o;
    }

    @Override // com.inmobi.media.AbstractC3440yd
    /* JADX INFO: renamed from: d */
    public final void mo1821d() {
        m2628g();
    }
}
