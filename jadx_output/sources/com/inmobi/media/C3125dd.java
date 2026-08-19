package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.dd */
/* JADX INFO: loaded from: classes6.dex */
public final class C3125dd {

    /* JADX INFO: renamed from: d */
    public static final int f2025d;

    /* JADX INFO: renamed from: e */
    public static final int f2026e;

    /* JADX INFO: renamed from: f */
    public static final ThreadFactoryC3110cd f2027f;

    /* JADX INFO: renamed from: g */
    public static final LinkedBlockingQueue f2028g;

    /* JADX INFO: renamed from: h */
    public static ThreadPoolExecutor f2029h;

    /* JADX INFO: renamed from: a */
    public final CountDownLatch f2030a;

    /* JADX INFO: renamed from: b */
    public final C3241l9 f2031b;

    /* JADX INFO: renamed from: c */
    public final WeakReference f2032c;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f2025d = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        f2026e = (iAvailableProcessors * 2) + 1;
        f2027f = new ThreadFactoryC3110cd();
        f2028g = new LinkedBlockingQueue(128);
    }

    public C3125dd(C3095bd vastMediaFile, int i, CountDownLatch countDownLatch) {
        Intrinsics.checkNotNullParameter(vastMediaFile, "vastMediaFile");
        C3241l9 c3241l9 = new C3241l9(vastMediaFile.f1897a, null);
        this.f2031b = c3241l9;
        c3241l9.f2293t = false;
        c3241l9.f2294u = false;
        c3241l9.f2297x = false;
        c3241l9.f2289p = i;
        c3241l9.f2292s = true;
        this.f2032c = new WeakReference(vastMediaFile);
        this.f2030a = countDownLatch;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f2025d, f2026e, 30L, TimeUnit.SECONDS, f2028g, f2027f);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f2029h = threadPoolExecutor;
    }

    /* JADX INFO: renamed from: a */
    public final void m2079a() {
        ThreadPoolExecutor threadPoolExecutor = f2029h;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.execute(new Runnable() { // from class: com.inmobi.media.dd$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3125dd.m2078a(this.f$0);
                }
            });
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2078a(C3125dd this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            C3256m9 c3256m9M2287b = this$0.f2031b.m2287b();
            if (c3256m9M2287b.m2297b()) {
                CountDownLatch countDownLatch = this$0.f2030a;
                if (countDownLatch != null) {
                    countDownLatch.countDown();
                }
            } else {
                this$0.m2080a(c3256m9M2287b);
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("dd", "TAG");
            EnumC3101c4 errorCode = EnumC3101c4.f1922e;
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            this$0.getClass();
            CountDownLatch countDownLatch2 = this$0.f2030a;
            if (countDownLatch2 != null) {
                countDownLatch2.countDown();
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2080a(C3256m9 c3256m9) {
        CountDownLatch countDownLatch;
        try {
            try {
                C3095bd c3095bd = (C3095bd) this.f2032c.get();
                if (c3095bd != null) {
                    c3095bd.f1899c = (((double) c3256m9.f2334d) * 1.0d) / ((double) 1048576);
                }
                countDownLatch = this.f2030a;
                if (countDownLatch == null) {
                    return;
                }
            } catch (Exception e) {
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3114d2 event = new C3114d2(e);
                Intrinsics.checkNotNullParameter(event, "event");
                C3402w5.f2712d.m2158a(event);
                countDownLatch = this.f2030a;
                if (countDownLatch == null) {
                    return;
                }
            }
            countDownLatch.countDown();
        } catch (Throwable th) {
            CountDownLatch countDownLatch2 = this.f2030a;
            if (countDownLatch2 != null) {
                countDownLatch2.countDown();
            }
            throw th;
        }
    }
}
