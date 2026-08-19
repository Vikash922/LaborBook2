package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.N0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2883N0 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AbstractC2928Q0 f1288a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ byte[] f1289b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2883N0(AbstractC2928Q0 abstractC2928Q0, byte[] bArr) {
        super(0);
        this.f1288a = abstractC2928Q0;
        this.f1289b = bArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        this.f1288a.m1658d((byte) 1);
        InterfaceC3147f5 interfaceC3147f5 = this.f1288a.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            ((C3162g5) interfaceC3147f5).m2153d(strM1558e, AbstractC3208j6.m2261a(strM1558e, "<get-TAG>(...)", "AdUnit ").append(this.f1288a).append(" state - LOADING").toString());
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1288a.f1437j;
        if (interfaceC3147f52 != null) {
            String strM1558e2 = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e2, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f52).m2152c(strM1558e2, "starting load with response worker");
        }
        C2687A c2687aM1704v = this.f1288a.m1704v();
        int iHashCode = this.f1288a.hashCode();
        AbstractC2928Q0 abstractC2928Q0 = this.f1288a;
        C3406w9 c3406w9M1569H = abstractC2928Q0.m1569H();
        Intrinsics.checkNotNull(c3406w9M1569H);
        C3403w6 c3403w6 = new C3403w6(abstractC2928Q0, c3406w9M1569H, this.f1289b, this.f1288a.m1570I().m1938l(), this.f1288a.f1437j);
        c2687aM1704v.getClass();
        C2687A.m825a(iHashCode, c3403w6);
        return Unit.INSTANCE;
    }
}
