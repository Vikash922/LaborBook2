package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.P5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2918P5 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2933Q5 f1373a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2918P5(C2933Q5 c2933q5) {
        super(1);
        this.f1373a = c2933q5;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        EnumC3101c4 it = (EnumC3101c4) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        this.f1373a.m1598a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE), true, AbstractC3364tc.m2459a(it));
        return Unit.INSTANCE;
    }
}
