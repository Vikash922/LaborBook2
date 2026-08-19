package com.inmobi.media;

import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.j7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0364j7 extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f393a;
    public final /* synthetic */ C0511t7 b;

    public C0364j7(C0511t7 c0511t7, C0511t7 originalContainer) {
        Intrinsics.checkNotNullParameter(originalContainer, "originalContainer");
        this.b = c0511t7;
        this.f393a = new WeakReference(originalContainer);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x011a  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0364j7.run():void");
    }
}
