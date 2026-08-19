package com.inmobi.media;

import android.os.Looper;
import android.util.SparseArray;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.A */
/* JADX INFO: loaded from: classes6.dex */
public final class C2687A {

    /* JADX INFO: renamed from: a */
    public static final C2687A f806a = new C2687A();

    /* JADX INFO: renamed from: b */
    public static final SparseArray f807b = new SparseArray();

    /* JADX INFO: renamed from: c */
    public static final ThreadPoolExecutor f808c;

    /* JADX INFO: renamed from: a */
    public static void m825a(final int i, final AbstractRunnableC2749E1 task) {
        Intrinsics.checkNotNullParameter(task, "task");
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            m827c(i, task);
            return;
        }
        ExecutorC2919P6 executorC2919P6 = (ExecutorC2919P6) AbstractC3251m4.f2321d.getValue();
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.A$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2687A.m826b(i, task);
            }
        };
        executorC2919P6.getClass();
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        executorC2919P6.f1374a.post(runnable);
    }

    /* JADX INFO: renamed from: b */
    public static final void m826b(int i, AbstractRunnableC2749E1 task) {
        Intrinsics.checkNotNullParameter(task, "$task");
        m827c(i, task);
    }

    /* JADX INFO: renamed from: c */
    public static void m827c(int i, AbstractRunnableC2749E1 abstractRunnableC2749E1) {
        try {
            SparseArray sparseArray = f807b;
            Queue linkedList = (Queue) sparseArray.get(i);
            if (linkedList == null) {
                linkedList = new LinkedList();
                sparseArray.put(i, linkedList);
            }
            linkedList.add(abstractRunnableC2749E1);
            AbstractRunnableC2749E1 abstractRunnableC2749E12 = (AbstractRunnableC2749E1) linkedList.peek();
            if (linkedList.size() != 1 || abstractRunnableC2749E12 == null) {
                return;
            }
            try {
                f808c.execute(abstractRunnableC2749E12);
            } catch (OutOfMemoryError unused) {
                abstractRunnableC2749E12.mo993c();
            }
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    static {
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        AdConfig adConfig = (AdConfig) AbstractC3001V4.m1873a("ads", "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(adConfig.getMaxPoolSize(), adConfig.getMaxPoolSize(), 5L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC3297p5("A".concat("-AD")));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f808c = threadPoolExecutor;
    }
}
