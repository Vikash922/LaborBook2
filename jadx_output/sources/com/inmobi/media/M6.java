package com.inmobi.media;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class M6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ScheduledExecutorService f179a;
    public static final ExecutorService b;
    public static final Semaphore c;
    public static final AtomicBoolean d;

    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(5, new ThreadFactoryC0453p5("Log", true));
        Intrinsics.checkNotNullExpressionValue(scheduledExecutorServiceNewScheduledThreadPool, "newScheduledThreadPool(...)");
        f179a = scheduledExecutorServiceNewScheduledThreadPool;
        b = Executors.newSingleThreadExecutor(new ThreadFactoryC0453p5("LogSingle", true));
        c = new Semaphore(1);
        d = new AtomicBoolean(false);
    }
}
