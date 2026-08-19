package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.SignalsConfig;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.b3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0234b3 implements J2 {
    @Override // com.inmobi.media.J2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        synchronized (this) {
            C0249c3 c0249c3 = C0249c3.f318a;
            Intrinsics.checkNotNullExpressionValue("c3", "<get-TAG>(...)");
            C0249c3.d = (SignalsConfig) config;
            SignalsConfig signalsConfig = C0249c3.d;
            C0249c3.f = AbstractC0220a4.a(signalsConfig != null ? signalsConfig.getKA() : null);
            c0249c3.b();
            Unit unit = Unit.INSTANCE;
        }
    }
}
