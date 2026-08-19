package com.inmobi.media;

import androidx.work.WorkRequest;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.L6 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2859L6 {
    /* JADX INFO: renamed from: a */
    public static void m1290a(final C2694A6 dao, final long j, final int i) {
        Intrinsics.checkNotNullParameter(dao, "dao");
        if (AbstractC2874M6.f1260d.getAndSet(true)) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.L6$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2859L6.m1291b(dao, j, i);
            }
        };
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        AbstractC3037Xc.f1652a.schedule(runnable, WorkRequest.MIN_BACKOFF_MILLIS, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: b */
    public static final void m1291b(C2694A6 dao, long j, int i) {
        Intrinsics.checkNotNullParameter(dao, "$dao");
        dao.getClass();
        for (C3448z6 c3448z6 : AbstractC2942R1.m1751a(dao, "id NOT IN (SELECT id FROM ( SELECT id FROM logs_v2 WHERE saveTimestamp > " + j + " ORDER BY saveTimestamp DESC LIMIT " + i + ") AS foo);", null, null, null, null, null, 62)) {
            if (c3448z6 != null) {
                AbstractC2889N6.m1394a(c3448z6.f2791a);
                dao.m837a(c3448z6);
            }
        }
        AbstractC2874M6.f1260d.set(false);
    }

    /* JADX INFO: renamed from: a */
    public static Object m1289a(Function0 run) {
        Semaphore semaphore;
        Intrinsics.checkNotNullParameter(run, "run");
        try {
            Result.Companion companion = Result.INSTANCE;
            try {
                try {
                    semaphore = AbstractC2874M6.f1259c;
                    semaphore.acquire();
                    run.invoke();
                } catch (Throwable th) {
                    AbstractC2874M6.f1259c.release();
                    throw th;
                }
            } catch (Exception e) {
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3114d2 event = new C3114d2(e);
                Intrinsics.checkNotNullParameter(event, "event");
                C3402w5.f2712d.m2158a(event);
                semaphore = AbstractC2874M6.f1259c;
            }
            semaphore.release();
            return Result.m3325constructorimpl(Unit.INSTANCE);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m3325constructorimpl(ResultKt.createFailure(th2));
        }
    }
}
