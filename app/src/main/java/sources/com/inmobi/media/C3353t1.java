package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.t1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3353t1 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3368u1 f2539a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3353t1(C3368u1 c3368u1) {
        super(1);
        this.f2539a = c3368u1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C3256m9 response = (C3256m9) obj;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.m2297b()) {
            InterfaceC3147f5 interfaceC3147f5 = this.f2539a.f2626a.f1627a.f1644d;
            if (interfaceC3147f5 != null) {
                String str = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5).m2151b(str, "asyncPing Failed");
            }
        } else {
            InterfaceC3147f5 interfaceC3147f52 = this.f2539a.f2626a.f1627a.f1644d;
            if (interfaceC3147f52 != null) {
                String str2 = AbstractC3044Y5.f1678a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f52).m2147a(str2, "asyncPing Successful");
            }
        }
        return Unit.INSTANCE;
    }
}
