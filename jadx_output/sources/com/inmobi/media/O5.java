package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class O5 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Q5 f201a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O5(Q5 q5) {
        super(0);
        this.f201a = q5;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        this.f201a.I0();
        return Unit.INSTANCE;
    }
}
