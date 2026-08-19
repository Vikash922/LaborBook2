package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.M0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2868M0 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AbstractC2928Q0 f1244a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2868M0(AbstractC2928Q0 abstractC2928Q0) {
        super(1);
        this.f1244a = abstractC2928Q0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        EnumC3101c4 it = (EnumC3101c4) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        InterfaceC3147f5 interfaceC3147f5 = this.f1244a.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1558e = AbstractC2928Q0.m1558e();
            Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
            ((C3162g5) interfaceC3147f5).m2151b(strM1558e, "load with retry failed - max retry reached - No network");
        }
        this.f1244a.m1598a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE), true, AbstractC3364tc.m2459a(it));
        return Unit.INSTANCE;
    }
}
