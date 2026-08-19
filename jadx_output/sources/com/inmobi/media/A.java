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

/* JADX INFO: loaded from: classes6.dex */
public final class A {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final A f69a = new A();
    public static final SparseArray b = new SparseArray();
    public static final ThreadPoolExecutor c;

    public static void a(final int i, final E1 task) {
        Intrinsics.checkNotNullParameter(task, "task");
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            c(i, task);
            return;
        }
        P6 p6 = (P6) AbstractC0407m4.d.getValue();
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.A$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                A.b(i, task);
            }
        };
        p6.getClass();
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        p6.f214a.post(runnable);
    }

    public static final void b(int i, E1 task) {
        Intrinsics.checkNotNullParameter(task, "$task");
        c(i, task);
    }

    public static void c(int i, E1 e1) {
        try {
            SparseArray sparseArray = b;
            Queue linkedList = (Queue) sparseArray.get(i);
            if (linkedList == null) {
                linkedList = new LinkedList();
                sparseArray.put(i, linkedList);
            }
            linkedList.add(e1);
            E1 e12 = (E1) linkedList.peek();
            if (linkedList.size() != 1 || e12 == null) {
                return;
            }
            try {
                c.execute(e12);
            } catch (OutOfMemoryError unused) {
                e12.c();
            }
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    static {
        LinkedHashMap linkedHashMap = K2.f154a;
        AdConfig adConfig = (AdConfig) V4.a("ads", "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(adConfig.getMaxPoolSize(), adConfig.getMaxPoolSize(), 5L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC0453p5("A".concat("-AD")));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        c = threadPoolExecutor;
    }
}
