package com.inmobi.media;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Db {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f101a;
    public static final Lazy b;
    public static final Lazy c;
    public static final Lazy d;
    public static final Lazy e;
    public static final Lazy f;
    public static final Lazy g;

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        f101a = LazyKt.lazy(lazyThreadSafetyMode, (Function0) C0557wb.f517a);
        b = LazyKt.lazy(lazyThreadSafetyMode, (Function0) C0571xb.f524a);
        c = LazyKt.lazy(lazyThreadSafetyMode, (Function0) C0585yb.f538a);
        d = LazyKt.lazy(lazyThreadSafetyMode, (Function0) C0601zb.f551a);
        e = LazyKt.lazy(lazyThreadSafetyMode, (Function0) Ab.f75a);
        f = LazyKt.lazy(lazyThreadSafetyMode, (Function0) Cb.f91a);
        g = LazyKt.lazy(lazyThreadSafetyMode, (Function0) Bb.f85a);
    }

    public static C0373k1 a() {
        return (C0373k1) b.getValue();
    }

    public static C0359j2 b() {
        return (C0359j2) c.getValue();
    }

    public static C0537v5 c() {
        return (C0537v5) e.getValue();
    }

    public static A6 d() {
        return (A6) g.getValue();
    }

    public static C0445oc e() {
        return (C0445oc) f.getValue();
    }
}
