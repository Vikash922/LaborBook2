package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.j5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0362j5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CopyOnWriteArrayList f392a = new CopyOnWriteArrayList();
    public static final AtomicBoolean b = new AtomicBoolean(false);
    public static final C0346i5 c = new C0346i5();

    public static void a(G6 finishListener) {
        Intrinsics.checkNotNullParameter(finishListener, "finishListener");
        if (!b.getAndSet(true)) {
            b();
        }
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = f392a;
        copyOnWriteArrayList.add(new WeakReference(finishListener));
        try {
            for (WeakReference weakReference : copyOnWriteArrayList) {
                if (weakReference.get() == null) {
                    f392a.remove(weakReference);
                }
            }
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public static void b() {
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.j5$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC0362j5.c();
            }
        };
        ScheduledExecutorService scheduledExecutorService = Xc.f282a;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Xc.f282a.execute(runnable);
    }

    public static final void c() {
        A6 a6D = Db.d();
        C0346i5 listener = c;
        a6D.getClass();
        Intrinsics.checkNotNullParameter(listener, "listener");
        a6D.b = listener;
    }

    public static ArrayList a() {
        ArrayList arrayList = new ArrayList();
        CopyOnWriteArrayList copyOnWriteArrayList = K6.f158a;
        ArrayList arrayList2 = new ArrayList();
        try {
            Iterator it = K6.f158a.iterator();
            while (it.hasNext()) {
                Ca ca = (Ca) ((WeakReference) it.next()).get();
                if (ca != null) {
                    arrayList2.add(ca);
                }
            }
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
        CopyOnWriteArrayList copyOnWriteArrayList2 = K6.f158a;
        arrayList2.toString();
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList.add(new C0543vb((Ca) it2.next()));
        }
        return arrayList;
    }
}
