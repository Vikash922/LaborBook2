package com.inmobi.media;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.l4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0391l4 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0391l4 f410a = new C0391l4();

    public C0391l4() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new ScheduledThreadPoolExecutor(AbstractC0407m4.f421a, new ThreadFactoryC0453p5("ExecutorProvider.normal"));
    }
}
