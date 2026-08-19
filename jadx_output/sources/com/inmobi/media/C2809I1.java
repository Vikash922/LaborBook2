package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.I1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2809I1 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2839K1 f1102a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2809I1(C2839K1 c2839k1) {
        super(0);
        this.f1102a = c2839k1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C2839K1 c2839k1 = this.f1102a;
        InterfaceC3147f5 interfaceC3147f5 = c2839k1.f1437j;
        if (interfaceC3147f5 != null) {
            String str = c2839k1.f1145M;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "loadWithRetry success");
        }
        this.f1102a.m1219I0();
        return Unit.INSTANCE;
    }
}
