package com.inmobi.media;

import android.os.Handler;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.fc */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3154fc {

    /* JADX INFO: renamed from: a */
    public static final Lazy f2082a = LazyKt.lazy(C3139ec.f2050a);

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final void m2141a(Runnable runnable, long j) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        ((Handler) f2082a.getValue()).postDelayed(runnable, j);
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final void m2140a(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        ((Handler) f2082a.getValue()).post(runnable);
    }
}
