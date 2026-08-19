package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class M0 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Q0 f174a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M0(Q0 q0) {
        super(1);
        this.f174a = q0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        EnumC0250c4 it = (EnumC0250c4) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        InterfaceC0298f5 interfaceC0298f5 = this.f174a.j;
        if (interfaceC0298f5 != null) {
            String strE = Q0.e();
            Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
            ((C0314g5) interfaceC0298f5).b(strE, "load with retry failed - max retry reached - No network");
        }
        this.f174a.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE), true, AbstractC0516tc.a(it));
        return Unit.INSTANCE;
    }
}
