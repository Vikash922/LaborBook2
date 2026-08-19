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

/* JADX INFO: loaded from: classes6.dex */
public abstract class L6 {
    public static void a(final A6 dao, final long j, final int i) {
        Intrinsics.checkNotNullParameter(dao, "dao");
        if (M6.d.getAndSet(true)) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.L6$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                L6.b(dao, j, i);
            }
        };
        ScheduledExecutorService scheduledExecutorService = Xc.f282a;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Xc.f282a.schedule(runnable, WorkRequest.MIN_BACKOFF_MILLIS, TimeUnit.MILLISECONDS);
    }

    public static final void b(A6 dao, long j, int i) {
        Intrinsics.checkNotNullParameter(dao, "$dao");
        dao.getClass();
        for (C0596z6 c0596z6 : R1.a(dao, "id NOT IN (SELECT id FROM ( SELECT id FROM logs_v2 WHERE saveTimestamp > " + j + " ORDER BY saveTimestamp DESC LIMIT " + i + ") AS foo);", null, null, null, null, null, 62)) {
            if (c0596z6 != null) {
                N6.a(c0596z6.f546a);
                dao.a(c0596z6);
            }
        }
        M6.d.set(false);
    }

    public static Object a(Function0 run) {
        Semaphore semaphore;
        Intrinsics.checkNotNullParameter(run, "run");
        try {
            Result.Companion companion = Result.INSTANCE;
            try {
                try {
                    semaphore = M6.c;
                    semaphore.acquire();
                    run.invoke();
                } catch (Throwable th) {
                    M6.c.release();
                    throw th;
                }
            } catch (Exception e) {
                C0551w5 c0551w5 = C0551w5.f513a;
                C0264d2 event = new C0264d2(e);
                Intrinsics.checkNotNullParameter(event, "event");
                C0551w5.d.a(event);
                semaphore = M6.c;
            }
            semaphore.release();
            return Result.m596constructorimpl(Unit.INSTANCE);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m596constructorimpl(ResultKt.createFailure(th2));
        }
    }
}
