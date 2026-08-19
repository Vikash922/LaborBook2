package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.P6 */
/* JADX INFO: loaded from: classes6.dex */
public final class ExecutorC2919P6 implements Executor {

    /* JADX INFO: renamed from: a */
    public final Handler f1374a = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        this.f1374a.post(runnable);
    }
}
