package com.inmobi.media;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.n5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0423n5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f432a;
    public static String b;
    public static final String c;

    static {
        Lazy lazy = LazyKt.lazy(C0408m5.f422a);
        f432a = lazy;
        c = "n5";
        Intrinsics.checkNotNull("n5");
        C0284e6 c0284e6 = (C0284e6) lazy.getValue();
        String string = null;
        if (c0284e6 != null) {
            Intrinsics.checkNotNullParameter("cip", "key");
            string = c0284e6.f340a.getString("cip", null);
        }
        b = string;
    }

    public static void a() {
        b = null;
        C0284e6 c0284e6 = (C0284e6) f432a.getValue();
        if (c0284e6 != null) {
            c0284e6.a("cip");
        }
        Intrinsics.checkNotNull(c);
    }
}
