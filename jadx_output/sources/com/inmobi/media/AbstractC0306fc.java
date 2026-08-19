package com.inmobi.media;

import android.os.Handler;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.fc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0306fc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f352a = LazyKt.lazy(C0290ec.f344a);

    @JvmStatic
    public static final void a(Runnable runnable, long j) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        ((Handler) f352a.getValue()).postDelayed(runnable, j);
    }

    @JvmStatic
    public static final void a(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        ((Handler) f352a.getValue()).post(runnable);
    }
}
