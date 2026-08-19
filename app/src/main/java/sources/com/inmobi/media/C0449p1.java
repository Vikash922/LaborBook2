package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.p1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0449p1 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0449p1 f450a = new C0449p1();

    public C0449p1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C0233b2 event = (C0233b2) obj;
        Intrinsics.checkNotNullParameter(event, "event");
        int i = event.f310a;
        if (i == 1 || i == 2) {
            C0477r1 c0477r1 = C0477r1.f467a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            C0477r1.m.set(false);
        } else if (i != 10) {
            C0477r1 c0477r12 = C0477r1.f467a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
        } else if (Intrinsics.areEqual("available", event.b)) {
            C0477r1 c0477r13 = C0477r1.f467a;
            if (!C0477r1.j.get()) {
                c0477r13.c();
            }
        } else {
            C0477r1 c0477r14 = C0477r1.f467a;
            C0477r1.d();
        }
        return Unit.INSTANCE;
    }
}
