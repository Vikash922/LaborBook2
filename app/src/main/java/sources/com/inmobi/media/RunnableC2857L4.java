package com.inmobi.media;

import android.os.SystemClock;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.L4 */
/* JADX INFO: loaded from: classes6.dex */
public final class RunnableC2857L4 implements Runnable {

    /* JADX INFO: renamed from: a */
    public final String f1204a;

    /* JADX INFO: renamed from: b */
    public final ArrayList f1205b;

    /* JADX INFO: renamed from: c */
    public final WeakReference f1206c;

    public RunnableC2857L4(C2872M4 impressionTracker) {
        Intrinsics.checkNotNullParameter(impressionTracker, "impressionTracker");
        this.f1204a = "L4";
        this.f1205b = new ArrayList();
        this.f1206c = new WeakReference(impressionTracker);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Intrinsics.checkNotNull(this.f1204a);
        C2872M4 c2872m4 = (C2872M4) this.f1206c.get();
        if (c2872m4 != null) {
            for (Map.Entry entry : c2872m4.f1249b.entrySet()) {
                View view = (View) entry.getKey();
                C2842K4 c2842k4 = (C2842K4) entry.getValue();
                Intrinsics.checkNotNull(this.f1204a);
                Objects.toString(c2842k4);
                if (SystemClock.uptimeMillis() - c2842k4.f1160d >= c2842k4.f1159c) {
                    Intrinsics.checkNotNull(this.f1204a);
                    c2872m4.f1255h.mo834a(view, c2842k4.f1157a);
                    this.f1205b.add(view);
                }
            }
            Iterator it = this.f1205b.iterator();
            while (it.hasNext()) {
                c2872m4.m1334a((View) it.next());
            }
            this.f1205b.clear();
            if (c2872m4.f1249b.isEmpty() || c2872m4.f1252e.hasMessages(0)) {
                return;
            }
            c2872m4.f1252e.postDelayed(c2872m4.f1253f, c2872m4.f1254g);
        }
    }
}
