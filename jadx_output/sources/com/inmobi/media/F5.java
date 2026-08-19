package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class F5 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ H5 f114a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F5(H5 h5) {
        super(0);
        this.f114a = h5;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        N6.a(this.f114a.f130a.c.f546a);
        Db.d().a(this.f114a.f130a.c);
        return Unit.INSTANCE;
    }
}
