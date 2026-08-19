package com.inmobi.media;

import java.util.concurrent.Callable;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class W9 extends ThreadPoolExecutor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f273a = 0;

    public W9(TimeUnit timeUnit, PriorityBlockingQueue priorityBlockingQueue, ThreadFactoryC0453p5 threadFactoryC0453p5) {
        super(1, 1, 0L, timeUnit, priorityBlockingQueue, threadFactoryC0453p5);
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
