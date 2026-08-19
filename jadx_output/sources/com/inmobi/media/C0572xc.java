package com.inmobi.media;

import java.util.TimerTask;

/* JADX INFO: renamed from: com.inmobi.media.xc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0572xc extends TimerTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0586yc f525a;
    public final /* synthetic */ byte b;

    public C0572xc(C0586yc c0586yc, byte b) {
        this.f525a = c0586yc;
        this.b = b;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.f525a.a(this.b);
    }
}
