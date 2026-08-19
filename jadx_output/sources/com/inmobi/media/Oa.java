package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class Oa extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Ya f205a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Oa(Ya ya) {
        super(1);
        this.f205a = ya;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        Ya ya = this.f205a;
        InterfaceC0298f5 interfaceC0298f5 = ya.i;
        if (interfaceC0298f5 != null) {
            String TAG = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onRenderProcessGone");
        }
        ya.getListener().a(ya, zBooleanValue);
        return Unit.INSTANCE;
    }
}
