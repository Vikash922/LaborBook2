package com.inmobi.media;

import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.h4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3176h4 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C3176h4 f2133a = new C3176h4();

    public C3176h4() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Lazy lazy = AbstractC3191i4.f2178a;
        Intrinsics.checkNotNullExpressionValue("i4", "access$getTAG$p(...)");
        return Executors.newSingleThreadScheduledExecutor(new ThreadFactoryC3297p5("i4"));
    }
}
