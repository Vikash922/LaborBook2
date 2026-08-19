package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.ra, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0486ra extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0556wa f474a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0486ra(C0556wa c0556wa) {
        super(1);
        this.f474a = c0556wa;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C0321ga data = (C0321ga) obj;
        Intrinsics.checkNotNullParameter(data, "data");
        int iIncrementAndGet = this.f474a.c.incrementAndGet();
        C0556wa c0556wa = this.f474a;
        if (iIncrementAndGet == c0556wa.e) {
            if (data.f362a == 0 && data.b == 0) {
                c0556wa.a(new C0351ia((short) 2234), (C0321ga) null);
            } else {
                StringsKt.trimMargin$default("No of In-App Purchases: " + data.f362a + "\n                                    | and No of Subscriptions: " + data.b, null, 1, null);
                this.f474a.a(C0367ja.f395a, data);
            }
        }
        return Unit.INSTANCE;
    }
}
