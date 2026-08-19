package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.td */
/* JADX INFO: loaded from: classes6.dex */
public final class RunnableC3365td implements Runnable {

    /* JADX INFO: renamed from: a */
    public final AtomicBoolean f2622a;

    /* JADX INFO: renamed from: b */
    public final ArrayList f2623b;

    /* JADX INFO: renamed from: c */
    public final ArrayList f2624c;

    /* JADX INFO: renamed from: d */
    public final WeakReference f2625d;

    public RunnableC3365td(AbstractC3440yd visibilityTracker, AtomicBoolean isPaused) {
        Intrinsics.checkNotNullParameter(visibilityTracker, "visibilityTracker");
        Intrinsics.checkNotNullParameter(isPaused, "isPaused");
        this.f2622a = isPaused;
        this.f2623b = new ArrayList();
        this.f2624c = new ArrayList();
        this.f2625d = new WeakReference(visibilityTracker);
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x0199  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.RunnableC3365td.run():void");
    }
}
