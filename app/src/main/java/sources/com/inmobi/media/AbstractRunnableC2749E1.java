package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.util.Queue;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.E1 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractRunnableC2749E1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final WeakReference f956b;

    /* JADX INFO: renamed from: a */
    public final String f955a = "E1";

    /* JADX INFO: renamed from: c */
    public final Handler f957c = new Handler(Looper.getMainLooper());

    public AbstractRunnableC2749E1(Object obj) {
        this.f956b = new WeakReference(obj);
    }

    /* JADX INFO: renamed from: a */
    public static final void m990a(AbstractRunnableC2749E1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object obj = this$0.f956b.get();
        if (obj != null) {
            C2687A c2687a = C2687A.f806a;
            int iHashCode = obj.hashCode();
            try {
                SparseArray sparseArray = C2687A.f807b;
                Queue queue = (Queue) sparseArray.get(iHashCode);
                if (queue != null) {
                    queue.poll();
                    AbstractRunnableC2749E1 abstractRunnableC2749E1 = (AbstractRunnableC2749E1) queue.peek();
                    if (queue.size() > 0 && abstractRunnableC2749E1 != null) {
                        try {
                            C2687A.f808c.execute(abstractRunnableC2749E1);
                        } catch (OutOfMemoryError unused) {
                            abstractRunnableC2749E1.mo993c();
                        }
                    }
                    if (queue.size() == 0) {
                        sparseArray.remove(iHashCode);
                    }
                }
            } catch (Exception e) {
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public abstract void mo991a();

    /* JADX INFO: renamed from: b */
    public final void m992b() {
        this.f957c.post(new Runnable() { // from class: com.inmobi.media.E1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AbstractRunnableC2749E1.m990a(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: c */
    public void mo993c() {
        String TAG = this.f955a;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        AbstractC2814I6.m1170a((byte) 1, TAG, "Could not execute runnable due to OutOfMemory.");
        Object obj = this.f956b.get();
        if (obj != null) {
            C2687A c2687a = C2687A.f806a;
            int iHashCode = obj.hashCode();
            SparseArray sparseArray = C2687A.f807b;
            sparseArray.remove(iHashCode);
            Intrinsics.checkNotNullExpressionValue("A", "TAG");
            sparseArray.size();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        mo991a();
        m992b();
    }
}
