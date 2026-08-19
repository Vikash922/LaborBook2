package com.inmobi.media;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.v2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0534v2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final W9 f505a;

    static {
        int i = W9.f273a;
        ThreadFactoryC0453p5 threadFactory = new ThreadFactoryC0453p5("ClickManagerExecutor", true);
        Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
        W9 w9 = new W9(TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), threadFactory);
        Intrinsics.checkNotNull(w9, "null cannot be cast to non-null type com.inmobi.commons.sdk.PriorityExecutor");
        f505a = w9;
    }

    public static void a(Runnable runnable, V9 v9) {
        try {
            W9 w9 = f505a;
            w9.getClass();
            Intrinsics.checkNotNull(v9);
            w9.execute(new A2(runnable, v9));
        } catch (RejectedExecutionException unused) {
        }
    }
}
