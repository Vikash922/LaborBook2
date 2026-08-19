package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.t2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3354t2 implements InterfaceC3309q2 {
    @Override // com.inmobi.media.InterfaceC3309q2
    /* JADX INFO: renamed from: a */
    public final void mo2274a(C3189i2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullExpressionValue(C3369u2.m2479f(), "access$getTAG$p(...)");
        String str = click.f2169b;
        C3369u2.m2471b(C3369u2.f2627a, click);
        C3204j2 c3204j2M967b = AbstractC2744Db.m967b();
        c3204j2M967b.getClass();
        Intrinsics.checkNotNullParameter(click, "click");
        c3204j2M967b.m1752a("id = ?", new String[]{String.valueOf(click.f2168a)});
    }

    @Override // com.inmobi.media.InterfaceC3309q2
    /* JADX INFO: renamed from: a */
    public final void mo2275a(C3189i2 click, EnumC3101c4 errorCode) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullExpressionValue(C3369u2.m2479f(), "access$getTAG$p(...)");
        String str = click.f2169b;
        if (click.f2173f == 0) {
            C3369u2.f2627a.m2481a(click, errorCode.name());
        }
        C3369u2 c3369u2 = C3369u2.f2627a;
        C3369u2.m2475c(c3369u2, click);
        c3369u2.m2488h();
    }
}
