package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.B7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2710B7 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2725C7 f856a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2710B7(C2725C7 c2725c7) {
        super(1);
        this.f856a = c2725c7;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        EnumC3101c4 it = (EnumC3101c4) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        this.f856a.m1598a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE), true, AbstractC3364tc.m2459a(it));
        return Unit.INSTANCE;
    }
}
