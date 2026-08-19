package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.j5 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3207j5 {

    /* JADX INFO: renamed from: a */
    public static final CopyOnWriteArrayList f2221a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b */
    public static final AtomicBoolean f2222b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c */
    public static final C3192i5 f2223c = new C3192i5();

    /* JADX INFO: renamed from: a */
    public static void m2258a(C2784G6 finishListener) {
        Intrinsics.checkNotNullParameter(finishListener, "finishListener");
        if (!f2222b.getAndSet(true)) {
            m2259b();
        }
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = f2221a;
        copyOnWriteArrayList.add(new WeakReference(finishListener));
        try {
            for (WeakReference weakReference : copyOnWriteArrayList) {
                if (weakReference.get() == null) {
                    f2221a.remove(weakReference);
                }
            }
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m2259b() {
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.j5$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3207j5.m2260c();
            }
        };
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        AbstractC3037Xc.f1652a.execute(runnable);
    }

    /* JADX INFO: renamed from: c */
    public static final void m2260c() {
        C2694A6 c2694a6M969d = AbstractC2744Db.m969d();
        C3192i5 listener = f2223c;
        c2694a6M969d.getClass();
        Intrinsics.checkNotNullParameter(listener, "listener");
        c2694a6M969d.f822b = listener;
    }

    /* JADX INFO: renamed from: a */
    public static ArrayList m2257a() {
        ArrayList arrayList = new ArrayList();
        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC2844K6.f1163a;
        ArrayList arrayList2 = new ArrayList();
        try {
            Iterator it = AbstractC2844K6.f1163a.iterator();
            while (it.hasNext()) {
                C2728Ca c2728Ca = (C2728Ca) ((WeakReference) it.next()).get();
                if (c2728Ca != null) {
                    arrayList2.add(c2728Ca);
                }
            }
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
        CopyOnWriteArrayList copyOnWriteArrayList2 = AbstractC2844K6.f1163a;
        arrayList2.toString();
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList.add(new C3393vb((C2728Ca) it2.next()));
        }
        return arrayList;
    }
}
