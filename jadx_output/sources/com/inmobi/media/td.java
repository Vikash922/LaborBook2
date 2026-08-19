package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class td implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f494a;
    public final ArrayList b;
    public final ArrayList c;
    public final WeakReference d;

    public td(yd visibilityTracker, AtomicBoolean isPaused) {
        Intrinsics.checkNotNullParameter(visibilityTracker, "visibilityTracker");
        Intrinsics.checkNotNullParameter(isPaused, "isPaused");
        this.f494a = isPaused;
        this.b = new ArrayList();
        this.c = new ArrayList();
        this.d = new WeakReference(visibilityTracker);
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
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.td.run():void");
    }
}
