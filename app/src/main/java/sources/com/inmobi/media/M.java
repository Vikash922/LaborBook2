package com.inmobi.media;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class M extends X1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final N f173a;
    public final C0488rc b;

    public M(N adImpressionCallbackHandler, C0488rc c0488rc) {
        Intrinsics.checkNotNullParameter(adImpressionCallbackHandler, "adImpressionCallbackHandler");
        this.f173a = adImpressionCallbackHandler;
        this.b = c0488rc;
    }

    @Override // com.inmobi.media.X1
    public final void a(C0343i2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        this.f173a.a(this.b);
    }

    @Override // com.inmobi.media.X1
    public final void a(C0343i2 click, String reason) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(reason, "error");
        C0488rc c0488rc = this.b;
        Intrinsics.checkNotNullParameter(reason, "reason");
        LinkedHashMap linkedHashMapA = c0488rc.a();
        linkedHashMapA.put("networkType", E3.q());
        linkedHashMapA.put("errorCode", (short) 2178);
        linkedHashMapA.put("reason", reason);
        C0353ic c0353ic = C0353ic.f388a;
        C0353ic.b("AdImpressionSuccessful", linkedHashMapA, EnumC0415mc.f426a);
    }
}
