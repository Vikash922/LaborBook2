package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.b */
/* JADX INFO: loaded from: classes6.dex */
public final class C3081b extends AbstractC3445z3 {

    /* JADX INFO: renamed from: b */
    public final long f1862b;

    /* JADX INFO: renamed from: c */
    public final RunnableC3066a f1863c;

    /* JADX INFO: renamed from: d */
    public final AtomicBoolean f1864d;

    /* JADX INFO: renamed from: e */
    public final AtomicBoolean f1865e;

    /* JADX INFO: renamed from: f */
    public final Handler f1866f;

    /* JADX INFO: renamed from: g */
    public ScheduledExecutorService f1867g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3081b(long j, C2691A3 listener) {
        super(listener);
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f1862b = j;
        this.f1863c = new RunnableC3066a(this);
        this.f1864d = new AtomicBoolean(false);
        this.f1865e = new AtomicBoolean(false);
        this.f1866f = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: renamed from: a */
    public static final StackTraceElement[] m2032a(C3081b c3081b) {
        c3081b.getClass();
        return Looper.getMainLooper().getThread().getStackTrace();
    }

    /* JADX INFO: renamed from: b */
    public static final void m2033b(C3081b this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f1864d.getAndSet(true)) {
            return;
        }
        ScheduledExecutorService scheduledExecutorService = this$0.f1867g;
        if (scheduledExecutorService == null || scheduledExecutorService.scheduleAtFixedRate(this$0.f1863c, 0L, this$0.f1862b, TimeUnit.MILLISECONDS) == null) {
            ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new ThreadFactoryC3297p5("ANRWatchDog"));
            this$0.f1867g = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
            if (scheduledExecutorServiceNewSingleThreadScheduledExecutor != null) {
                scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleAtFixedRate(this$0.f1863c, 0L, this$0.f1862b, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // com.inmobi.media.AbstractC3445z3
    /* JADX INFO: renamed from: a */
    public final void mo2011a() {
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.b$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3081b.m2033b(this.f$0);
            }
        };
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        AbstractC3037Xc.f1652a.execute(runnable);
    }

    @Override // com.inmobi.media.AbstractC3445z3
    /* JADX INFO: renamed from: b */
    public final void mo2012b() {
        if (this.f1864d.getAndSet(false)) {
            this.f1864d.set(false);
            this.f1865e.set(false);
            ScheduledExecutorService scheduledExecutorService = this.f1867g;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdown();
            }
            this.f1867g = null;
        }
    }
}
