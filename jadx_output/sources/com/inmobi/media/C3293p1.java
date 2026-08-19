package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.p1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3293p1 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public static final C3293p1 f2426a = new C3293p1();

    public C3293p1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C3084b2 event = (C3084b2) obj;
        Intrinsics.checkNotNullParameter(event, "event");
        int i = event.f1872a;
        if (i == 1 || i == 2) {
            C3323r1 c3323r1 = C3323r1.f2477a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            C3323r1.f2489m.set(false);
        } else if (i != 10) {
            C3323r1 c3323r12 = C3323r1.f2477a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
        } else if (Intrinsics.areEqual("available", event.f1873b)) {
            C3323r1 c3323r13 = C3323r1.f2477a;
            if (!C3323r1.f2486j.get()) {
                c3323r13.m2377c();
            }
        } else {
            C3323r1 c3323r14 = C3323r1.f2477a;
            C3323r1.m2371d();
        }
        return Unit.INSTANCE;
    }
}
