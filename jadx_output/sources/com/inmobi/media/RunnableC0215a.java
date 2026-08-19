package com.inmobi.media;

import android.os.Debug;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class RunnableC0215a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0230b f301a;

    public RunnableC0215a(C0230b c0230b) {
        this.f301a = c0230b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f301a.d.get()) {
            if (this.f301a.f.hasMessages(2023)) {
                this.f301a.f.removeMessages(2023);
                this.f301a.getClass();
                if (!Debug.isDebuggerConnected() && !Debug.waitingForDebugger() && this.f301a.e.get()) {
                    StackTraceElement[] stackTraceElementArrA = C0230b.a(this.f301a);
                    A3 a3 = this.f301a.f543a;
                    Intrinsics.checkNotNull(stackTraceElementArrA);
                    a3.a(new zd(stackTraceElementArrA));
                }
            }
            this.f301a.e.getAndSet(true);
            this.f301a.f.sendEmptyMessage(2023);
        }
    }
}
