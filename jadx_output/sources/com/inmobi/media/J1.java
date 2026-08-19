package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class J1 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ K1 f146a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J1(K1 k1) {
        super(1);
        this.f146a = k1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        EnumC0250c4 it = (EnumC0250c4) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        K1 k1 = this.f146a;
        InterfaceC0298f5 interfaceC0298f5 = k1.j;
        if (interfaceC0298f5 != null) {
            String str = k1.M;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).b(str, "loadWithRetry error - " + it);
        }
        this.f146a.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE), true, AbstractC0516tc.a(it));
        return Unit.INSTANCE;
    }
}
