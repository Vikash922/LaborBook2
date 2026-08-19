package com.inmobi.media;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.l4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3236l4 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C3236l4 f2270a = new C3236l4();

    public C3236l4() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new ScheduledThreadPoolExecutor(AbstractC3251m4.f2318a, new ThreadFactoryC3297p5("ExecutorProvider.normal"));
    }
}
