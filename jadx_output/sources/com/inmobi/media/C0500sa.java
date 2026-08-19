package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.sa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0500sa extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0556wa f483a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0500sa(C0556wa c0556wa) {
        super(1);
        this.f483a = c0556wa;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AbstractC0458pa result = (AbstractC0458pa) obj;
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof C0428na) {
            this.f483a.a(new C0336ha(String.valueOf(((C0428na) result).f435a)), (C0321ga) null);
        } else {
            C0556wa c0556wa = this.f483a;
            c0556wa.a(new C0486ra(c0556wa));
        }
        return Unit.INSTANCE;
    }
}
