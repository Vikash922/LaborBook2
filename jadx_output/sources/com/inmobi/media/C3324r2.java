package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.r2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3324r2 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public static final C3324r2 f2492a = new C3324r2();

    public C3324r2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C3084b2 event = (C3084b2) obj;
        Intrinsics.checkNotNullParameter(event, "event");
        int i = event.f1872a;
        if (i == 1 || i == 2) {
            Intrinsics.checkNotNullExpressionValue(C3369u2.m2479f(), "access$getTAG$p(...)");
            C3369u2.f2634h.set(false);
        } else if (i != 10) {
            if (i != 11) {
                Intrinsics.checkNotNullExpressionValue(C3369u2.m2479f(), "access$getTAG$p(...)");
            } else if (!Boolean.parseBoolean(event.f1873b)) {
                C3369u2.f2627a.m2488h();
            }
        } else if (Intrinsics.areEqual("available", event.f1873b)) {
            C3369u2.f2627a.m2488h();
        }
        return Unit.INSTANCE;
    }
}
