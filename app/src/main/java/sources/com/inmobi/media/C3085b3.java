package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.SignalsConfig;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.b3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3085b3 implements InterfaceC2825J2 {
    @Override // com.inmobi.media.InterfaceC2825J2
    /* JADX INFO: renamed from: a */
    public final void mo1057a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        synchronized (this) {
            C3100c3 c3100c3 = C3100c3.f1911a;
            Intrinsics.checkNotNullExpressionValue("c3", "<get-TAG>(...)");
            C3100c3.f1914d = (SignalsConfig) config;
            SignalsConfig signalsConfig = C3100c3.f1914d;
            C3100c3.f1916f = AbstractC3071a4.m2014a(signalsConfig != null ? signalsConfig.getKA() : null);
            c3100c3.m2043b();
            Unit unit = Unit.INSTANCE;
        }
    }
}
