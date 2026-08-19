package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class P5 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Q5 f213a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P5(Q5 q5) {
        super(1);
        this.f213a = q5;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        EnumC0250c4 it = (EnumC0250c4) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        this.f213a.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE), true, AbstractC0516tc.a(it));
        return Unit.INSTANCE;
    }
}
