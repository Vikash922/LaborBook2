package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.N5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2888N5 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2933Q5 f1303a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ short f1304b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2888N5(C2933Q5 c2933q5, short s) {
        super(0);
        this.f1303a = c2933q5;
        this.f1304b = s;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        AbstractC2814I6.m1170a((byte) 2, "InMobiInterstitial", "RenderProcess of the WebView has crashed. Please create another adUnit");
        InterfaceC3147f5 interfaceC3147f5 = this.f1303a.f1437j;
        if (interfaceC3147f5 != null) {
            String strM1729e = C2933Q5.m1729e();
            Intrinsics.checkNotNullExpressionValue(strM1729e, "access$getTAG$cp(...)");
            ((C3162g5) interfaceC3147f5).m2151b(strM1729e, "RenderProcess of the WebView has crashed. Please create another adUnit");
        }
        this.f1303a.m1622a(true, this.f1304b);
        this.f1303a.f1472P = null;
        return Unit.INSTANCE;
    }
}
