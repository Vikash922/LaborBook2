package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class D2 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final D2 f94a = new D2();

    public D2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C0233b2 it = (C0233b2) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        Intrinsics.checkNotNullExpressionValue(K2.f(), "access$getTAG$cp(...)");
        K2.d.set(false);
        return Unit.INSTANCE;
    }
}
