package com.inmobi.media;

import java.util.concurrent.Callable;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.W9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3020W9 extends ThreadPoolExecutor {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int f1629a = 0;

    public C3020W9(TimeUnit timeUnit, PriorityBlockingQueue priorityBlockingQueue, ThreadFactoryC3297p5 threadFactoryC3297p5) {
        super(1, 1, 0L, timeUnit, priorityBlockingQueue, threadFactoryC3297p5);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public final RunnableFuture newTaskFor(Callable callable) {
        Intrinsics.checkNotNullParameter(callable, "callable");
        return (RunnableFuture) callable;
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public final RunnableFuture newTaskFor(Runnable runnable, Object obj) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        return (RunnableFuture) runnable;
    }
}
