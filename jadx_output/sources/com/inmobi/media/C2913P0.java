package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.P0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2913P0 extends AbstractRunnableC2749E1 {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ AbstractC2928Q0 f1350d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ String f1351e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ String f1352f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2913P0(AbstractC2928Q0 abstractC2928Q0, String str, String str2) {
        super(abstractC2928Q0);
        this.f1350d = abstractC2928Q0;
        this.f1351e = str;
        this.f1352f = str2;
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: a */
    public final void mo991a() {
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f956b.get();
        if (abstractC2928Q0 != null) {
            C3171h c3171hM1688m = abstractC2928Q0.m1688m();
            if (c3171hM1688m == null || !Intrinsics.areEqual(c3171hM1688m.m2202s(), this.f1351e)) {
                InterfaceC3147f5 interfaceC3147f5 = this.f1350d.f1437j;
                if (interfaceC3147f5 != null) {
                    String strM1558e = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f5).m2151b(strM1558e, "Impression ID is null for saveBlob");
                    return;
                }
                return;
            }
            AbstractC2928Q0.m1545a(abstractC2928Q0, c3171hM1688m, this.f1352f);
            InterfaceC3147f5 interfaceC3147f52 = this.f1350d.f1437j;
            if (interfaceC3147f52 != null) {
                String strM1558e2 = AbstractC2928Q0.m1558e();
                ((C3162g5) interfaceC3147f52).m2152c(strM1558e2, AbstractC3208j6.m2261a(strM1558e2, "<get-TAG>(...)", "Updated blob ").append(this.f1352f).toString());
            }
        }
    }
}
