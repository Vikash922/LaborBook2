package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class P0 extends E1 {
    public final /* synthetic */ Q0 d;
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P0(Q0 q0, String str, String str2) {
        super(q0);
        this.d = q0;
        this.e = str;
        this.f = str2;
    }

    @Override // com.inmobi.media.E1
    public final void a() {
        Q0 q0 = (Q0) this.b.get();
        if (q0 != null) {
            C0325h c0325hM = q0.m();
            if (c0325hM == null || !Intrinsics.areEqual(c0325hM.s(), this.e)) {
                InterfaceC0298f5 interfaceC0298f5 = this.d.j;
                if (interfaceC0298f5 != null) {
                    String strE = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f5).b(strE, "Impression ID is null for saveBlob");
                    return;
                }
                return;
            }
            Q0.a(q0, c0325hM, this.f);
            InterfaceC0298f5 interfaceC0298f52 = this.d.j;
            if (interfaceC0298f52 != null) {
                String strE2 = Q0.e();
                ((C0314g5) interfaceC0298f52).c(strE2, AbstractC0363j6.a(strE2, "<get-TAG>(...)", "Updated blob ").append(this.f).toString());
            }
        }
    }
}
