package com.inmobi.media;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.v2 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3384v2 {

    /* JADX INFO: renamed from: a */
    public static final C3020W9 f2679a;

    static {
        int i = C3020W9.f1629a;
        ThreadFactoryC3297p5 threadFactory = new ThreadFactoryC3297p5("ClickManagerExecutor", true);
        Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
        C3020W9 c3020w9 = new C3020W9(TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), threadFactory);
        Intrinsics.checkNotNull(c3020w9, "null cannot be cast to non-null type com.inmobi.commons.sdk.PriorityExecutor");
        f2679a = c3020w9;
    }

    /* JADX INFO: renamed from: a */
    public static void m2498a(Runnable runnable, EnumC3006V9 enumC3006V9) {
        try {
            C3020W9 c3020w9 = f2679a;
            c3020w9.getClass();
            Intrinsics.checkNotNull(enumC3006V9);
            c3020w9.execute(new C2690A2(runnable, enumC3006V9));
        } catch (RejectedExecutionException unused) {
        }
    }
}
