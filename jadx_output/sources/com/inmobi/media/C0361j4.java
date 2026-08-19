package com.inmobi.media;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.j4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0361j4 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0361j4 f391a = new C0361j4();

    public C0361j4() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = AbstractC0407m4.f421a;
        return new ScheduledThreadPoolExecutor(5, new ThreadFactoryC0453p5("ExecutorProvider.high"));
    }
}
