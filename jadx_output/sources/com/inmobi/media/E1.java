package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.util.Queue;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class E1 implements Runnable {
    public final WeakReference b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f102a = "E1";
    public final Handler c = new Handler(Looper.getMainLooper());

    public E1(Object obj) {
        this.b = new WeakReference(obj);
    }

    public static final void a(E1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object obj = this$0.b.get();
        if (obj != null) {
            A a2 = A.f69a;
            int iHashCode = obj.hashCode();
            try {
                SparseArray sparseArray = A.b;
                Queue queue = (Queue) sparseArray.get(iHashCode);
                if (queue != null) {
                    queue.poll();
                    E1 e1 = (E1) queue.peek();
                    if (queue.size() > 0 && e1 != null) {
                        try {
                            A.c.execute(e1);
                        } catch (OutOfMemoryError unused) {
                            e1.c();
                        }
                    }
                    if (queue.size() == 0) {
                        sparseArray.remove(iHashCode);
                    }
                }
            } catch (Exception e) {
                C0551w5 c0551w5 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            }
        }
    }

    public abstract void a();

    public final void b() {
        this.c.post(new Runnable() { // from class: com.inmobi.media.E1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                E1.a(this.f$0);
            }
        });
    }

    public void c() {
        String TAG = this.f102a;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        I6.a((byte) 1, TAG, "Could not execute runnable due to OutOfMemory.");
        Object obj = this.b.get();
        if (obj != null) {
            A a2 = A.f69a;
            int iHashCode = obj.hashCode();
            SparseArray sparseArray = A.b;
            sparseArray.remove(iHashCode);
            Intrinsics.checkNotNullExpressionValue("A", "TAG");
            sparseArray.size();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        a();
        b();
    }
}
