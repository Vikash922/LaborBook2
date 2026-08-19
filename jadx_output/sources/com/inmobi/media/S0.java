package com.inmobi.media;

import java.util.LinkedList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class S0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Q0 f237a;
    public final C0502sc b;
    public long c;
    public long d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;
    public final R0 j;

    public S0(Q0 adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.f237a = adUnit;
        this.b = new C0502sc();
        this.j = new R0(this);
    }

    public final String a() {
        C0560x0 c0560x0Y;
        LinkedList<C0325h> linkedListF;
        C0325h c0325h;
        String strW;
        Q0 q0 = this.f237a;
        return (q0 == null || (c0560x0Y = q0.y()) == null || (linkedListF = c0560x0Y.f()) == null || (c0325h = (C0325h) CollectionsKt.firstOrNull((List) linkedListF)) == null || (strW = c0325h.w()) == null) ? "" : strW;
    }
}
