package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.r2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0478r2 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0478r2 f468a = new C0478r2();

    public C0478r2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C0233b2 event = (C0233b2) obj;
        Intrinsics.checkNotNullParameter(event, "event");
        int i = event.f310a;
        if (i == 1 || i == 2) {
            Intrinsics.checkNotNullExpressionValue(C0520u2.f(), "access$getTAG$p(...)");
            C0520u2.h.set(false);
        } else if (i != 10) {
            if (i != 11) {
                Intrinsics.checkNotNullExpressionValue(C0520u2.f(), "access$getTAG$p(...)");
            } else if (!Boolean.parseBoolean(event.b)) {
                C0520u2.f496a.h();
            }
        } else if (Intrinsics.areEqual("available", event.b)) {
            C0520u2.f496a.h();
        }
        return Unit.INSTANCE;
    }
}
