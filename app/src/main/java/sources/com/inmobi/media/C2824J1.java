package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.J1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2824J1 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2839K1 f1128a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2824J1(C2839K1 c2839k1) {
        super(1);
        this.f1128a = c2839k1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        EnumC3101c4 it = (EnumC3101c4) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        C2839K1 c2839k1 = this.f1128a;
        InterfaceC3147f5 interfaceC3147f5 = c2839k1.f1437j;
        if (interfaceC3147f5 != null) {
            String str = c2839k1.f1145M;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2151b(str, "loadWithRetry error - " + it);
        }
        this.f1128a.m1598a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE), true, AbstractC3364tc.m2459a(it));
        return Unit.INSTANCE;
    }
}
