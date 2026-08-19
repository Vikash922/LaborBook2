package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class I1 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ K1 f135a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I1(K1 k1) {
        super(0);
        this.f135a = k1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        K1 k1 = this.f135a;
        InterfaceC0298f5 interfaceC0298f5 = k1.j;
        if (interfaceC0298f5 != null) {
            String str = k1.M;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str, "loadWithRetry success");
        }
        this.f135a.I0();
        return Unit.INSTANCE;
    }
}
