package com.inmobi.media;

import java.util.TimerTask;

/* JADX INFO: renamed from: com.inmobi.media.xc */
/* JADX INFO: loaded from: classes6.dex */
public final class C3424xc extends TimerTask {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3439yc f2747a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ byte f2748b;

    public C3424xc(C3439yc c3439yc, byte b) {
        this.f2747a = c3439yc;
        this.f2748b = b;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.f2747a.m2624a(this.f2748b);
    }
}
