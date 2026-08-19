package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.sa */
/* JADX INFO: loaded from: classes6.dex */
public final class C3347sa extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3407wa f2537a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3347sa(C3407wa c3407wa) {
        super(1);
        this.f2537a = c3407wa;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AbstractC3302pa result = (AbstractC3302pa) obj;
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof C3272na) {
            this.f2537a.m2562a(new C3182ha(String.valueOf(((C3272na) result).f2383a)), (C3167ga) null);
        } else {
            C3407wa c3407wa = this.f2537a;
            c3407wa.m2563a(new C3332ra(c3407wa));
        }
        return Unit.INSTANCE;
    }
}
