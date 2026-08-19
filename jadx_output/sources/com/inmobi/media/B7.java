package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class B7 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C7 f83a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B7(C7 c7) {
        super(1);
        this.f83a = c7;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        EnumC0250c4 it = (EnumC0250c4) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        this.f83a.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE), true, AbstractC0516tc.a(it));
        return Unit.INSTANCE;
    }
}
