package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.t2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0506t2 implements InterfaceC0465q2 {
    @Override // com.inmobi.media.InterfaceC0465q2
    public final void a(C0343i2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullExpressionValue(C0520u2.f(), "access$getTAG$p(...)");
        String str = click.b;
        C0520u2.b(C0520u2.f496a, click);
        C0359j2 c0359j2B = Db.b();
        c0359j2B.getClass();
        Intrinsics.checkNotNullParameter(click, "click");
        c0359j2B.a("id = ?", new String[]{String.valueOf(click.f382a)});
    }

    @Override // com.inmobi.media.InterfaceC0465q2
    public final void a(C0343i2 click, EnumC0250c4 errorCode) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullExpressionValue(C0520u2.f(), "access$getTAG$p(...)");
        String str = click.b;
        if (click.f == 0) {
            C0520u2.f496a.a(click, errorCode.name());
        }
        C0520u2 c0520u2 = C0520u2.f496a;
        C0520u2.c(c0520u2, click);
        c0520u2.h();
    }
}
