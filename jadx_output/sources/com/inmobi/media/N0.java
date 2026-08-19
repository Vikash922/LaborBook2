package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class N0 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Q0 f186a;
    public final /* synthetic */ byte[] b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N0(Q0 q0, byte[] bArr) {
        super(0);
        this.f186a = q0;
        this.b = bArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        this.f186a.d((byte) 1);
        InterfaceC0298f5 interfaceC0298f5 = this.f186a.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            ((C0314g5) interfaceC0298f5).d(strE, AbstractC0363j6.a(strE, "<get-TAG>(...)", "AdUnit ").append(this.f186a).append(" state - LOADING").toString());
        }
        InterfaceC0298f5 interfaceC0298f52 = this.f186a.j;
        if (interfaceC0298f52 != null) {
            String strE2 = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE2, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f52).c(strE2, "starting load with response worker");
        }
        A aV = this.f186a.v();
        int iHashCode = this.f186a.hashCode();
        Q0 q0 = this.f186a;
        C0555w9 c0555w9H = q0.H();
        Intrinsics.checkNotNull(c0555w9H);
        C0552w6 c0552w6 = new C0552w6(q0, c0555w9H, this.b, this.f186a.I().l(), this.f186a.j);
        aV.getClass();
        A.a(iHashCode, c0552w6);
        return Unit.INSTANCE;
    }
}
