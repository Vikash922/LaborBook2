package com.inmobi.media;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.j4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3206j4 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C3206j4 f2220a = new C3206j4();

    public C3206j4() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = AbstractC3251m4.f2318a;
        return new ScheduledThreadPoolExecutor(5, new ThreadFactoryC3297p5("ExecutorProvider.high"));
    }
}
