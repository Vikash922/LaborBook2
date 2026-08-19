package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.ra */
/* JADX INFO: loaded from: classes6.dex */
public final class C3332ra extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3407wa f2508a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3332ra(C3407wa c3407wa) {
        super(1);
        this.f2508a = c3407wa;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C3167ga data = (C3167ga) obj;
        Intrinsics.checkNotNullParameter(data, "data");
        int iIncrementAndGet = this.f2508a.f2727c.incrementAndGet();
        C3407wa c3407wa = this.f2508a;
        if (iIncrementAndGet == c3407wa.f2729e) {
            if (data.f2111a == 0 && data.f2112b == 0) {
                c3407wa.m2562a(new C3197ia((short) 2234), (C3167ga) null);
            } else {
                StringsKt.trimMargin$default("No of In-App Purchases: " + data.f2111a + "\n                                    | and No of Subscriptions: " + data.f2112b, null, 1, null);
                this.f2508a.m2562a(C3212ja.f2227a, data);
            }
        }
        return Unit.INSTANCE;
    }
}
