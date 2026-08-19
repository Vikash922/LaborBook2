package com.inmobi.media;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.M6 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2874M6 {

    /* JADX INFO: renamed from: a */
    public static final ScheduledExecutorService f1257a;

    /* JADX INFO: renamed from: b */
    public static final ExecutorService f1258b;

    /* JADX INFO: renamed from: c */
    public static final Semaphore f1259c;

    /* JADX INFO: renamed from: d */
    public static final AtomicBoolean f1260d;

    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(5, new ThreadFactoryC3297p5("Log", true));
        Intrinsics.checkNotNullExpressionValue(scheduledExecutorServiceNewScheduledThreadPool, "newScheduledThreadPool(...)");
        f1257a = scheduledExecutorServiceNewScheduledThreadPool;
        f1258b = Executors.newSingleThreadExecutor(new ThreadFactoryC3297p5("LogSingle", true));
        f1259c = new Semaphore(1);
        f1260d = new AtomicBoolean(false);
    }
}
