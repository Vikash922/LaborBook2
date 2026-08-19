package com.inmobi.media;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.n5 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3267n5 {

    /* JADX INFO: renamed from: a */
    public static final Lazy f2378a;

    /* JADX INFO: renamed from: b */
    public static String f2379b;

    /* JADX INFO: renamed from: c */
    public static final String f2380c;

    static {
        Lazy lazy = LazyKt.lazy(C3252m5.f2322a);
        f2378a = lazy;
        f2380c = "n5";
        Intrinsics.checkNotNull("n5");
        C3133e6 c3133e6 = (C3133e6) lazy.getValue();
        String string = null;
        if (c3133e6 != null) {
            Intrinsics.checkNotNullParameter("cip", "key");
            string = c3133e6.f2045a.getString("cip", null);
        }
        f2379b = string;
    }

    /* JADX INFO: renamed from: a */
    public static void m2313a() {
        f2379b = null;
        C3133e6 c3133e6 = (C3133e6) f2378a.getValue();
        if (c3133e6 != null) {
            c3133e6.m2105a("cip");
        }
        Intrinsics.checkNotNull(f2380c);
    }
}
