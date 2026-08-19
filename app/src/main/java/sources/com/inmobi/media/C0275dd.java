package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.dd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0275dd {
    public static final int d;
    public static final int e;
    public static final ThreadFactoryC0260cd f;
    public static final LinkedBlockingQueue g;
    public static ThreadPoolExecutor h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CountDownLatch f335a;
    public final C0397l9 b;
    public final WeakReference c;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        d = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        e = (iAvailableProcessors * 2) + 1;
        f = new ThreadFactoryC0260cd();
        g = new LinkedBlockingQueue(128);
    }

    public C0275dd(C0244bd vastMediaFile, int i, CountDownLatch countDownLatch) {
        Intrinsics.checkNotNullParameter(vastMediaFile, "vastMediaFile");
        C0397l9 c0397l9 = new C0397l9(vastMediaFile.f314a, null);
        this.b = c0397l9;
        c0397l9.t = false;
        c0397l9.u = false;
        c0397l9.x = false;
        c0397l9.p = i;
        c0397l9.s = true;
        this.c = new WeakReference(vastMediaFile);
        this.f335a = countDownLatch;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(d, e, 30L, TimeUnit.SECONDS, g, f);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        h = threadPoolExecutor;
    }

    public final void a() {
        ThreadPoolExecutor threadPoolExecutor = h;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.execute(new Runnable() { // from class: com.inmobi.media.dd$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C0275dd.a(this.f$0);
                }
            });
        }
    }

    public static final void a(C0275dd this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            C0412m9 c0412m9B = this$0.b.b();
            if (c0412m9B.b()) {
                CountDownLatch countDownLatch = this$0.f335a;
                if (countDownLatch != null) {
                    countDownLatch.countDown();
                }
            } else {
                this$0.a(c0412m9B);
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("dd", "TAG");
            EnumC0250c4 errorCode = EnumC0250c4.e;
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            this$0.getClass();
            CountDownLatch countDownLatch2 = this$0.f335a;
            if (countDownLatch2 != null) {
                countDownLatch2.countDown();
            }
        }
    }

    public final void a(C0412m9 c0412m9) {
        CountDownLatch countDownLatch;
        try {
            try {
                C0244bd c0244bd = (C0244bd) this.c.get();
                if (c0244bd != null) {
                    c0244bd.c = (((double) c0412m9.d) * 1.0d) / ((double) 1048576);
                }
                countDownLatch = this.f335a;
                if (countDownLatch == null) {
                    return;
                }
            } catch (Exception e2) {
                C0551w5 c0551w5 = C0551w5.f513a;
                C0264d2 event = new C0264d2(e2);
                Intrinsics.checkNotNullParameter(event, "event");
                C0551w5.d.a(event);
                countDownLatch = this.f335a;
                if (countDownLatch == null) {
                    return;
                }
            }
            countDownLatch.countDown();
        } catch (Throwable th) {
            CountDownLatch countDownLatch2 = this.f335a;
            if (countDownLatch2 != null) {
                countDownLatch2.countDown();
            }
            throw th;
        }
    }
}
