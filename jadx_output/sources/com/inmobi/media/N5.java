package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class N5 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Q5 f191a;
    public final /* synthetic */ short b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N5(Q5 q5, short s) {
        super(0);
        this.f191a = q5;
        this.b = s;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        I6.a((byte) 2, "InMobiInterstitial", "RenderProcess of the WebView has crashed. Please create another adUnit");
        InterfaceC0298f5 interfaceC0298f5 = this.f191a.j;
        if (interfaceC0298f5 != null) {
            String strE = Q5.e();
            Intrinsics.checkNotNullExpressionValue(strE, "access$getTAG$cp(...)");
            ((C0314g5) interfaceC0298f5).b(strE, "RenderProcess of the WebView has crashed. Please create another adUnit");
        }
        this.f191a.a(true, this.b);
        this.f191a.P = null;
        return Unit.INSTANCE;
    }
}
