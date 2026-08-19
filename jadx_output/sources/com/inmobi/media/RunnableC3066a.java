package com.inmobi.media;

import android.os.Debug;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.a */
/* JADX INFO: loaded from: classes6.dex */
public final class RunnableC3066a implements Runnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3081b f1829a;

    public RunnableC3066a(C3081b c3081b) {
        this.f1829a = c3081b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f1829a.f1864d.get()) {
            if (this.f1829a.f1866f.hasMessages(2023)) {
                this.f1829a.f1866f.removeMessages(2023);
                this.f1829a.getClass();
                if (!Debug.isDebuggerConnected() && !Debug.waitingForDebugger() && this.f1829a.f1865e.get()) {
                    StackTraceElement[] stackTraceElementArrM2032a = C3081b.m2032a(this.f1829a);
                    C2691A3 c2691a3 = this.f1829a.f2788a;
                    Intrinsics.checkNotNull(stackTraceElementArrM2032a);
                    c2691a3.m833a(new C3455zd(stackTraceElementArrM2032a));
                }
            }
            this.f1829a.f1865e.getAndSet(true);
            this.f1829a.f1866f.sendEmptyMessage(2023);
        }
    }
}
