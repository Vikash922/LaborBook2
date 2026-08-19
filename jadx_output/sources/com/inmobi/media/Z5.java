package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class Z5 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0231b0 f295a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z5(C0231b0 c0231b0) {
        super(1);
        this.f295a = c0231b0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C0412m9 it = (C0412m9) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        this.f295a.invoke(it.c);
        return Unit.INSTANCE;
    }
}
