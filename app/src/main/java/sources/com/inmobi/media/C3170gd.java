package com.inmobi.media;

import java.util.concurrent.Executors;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.gd */
/* JADX INFO: loaded from: classes6.dex */
public final class C3170gd extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C3170gd f2116a = new C3170gd();

    public C3170gd() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C3185hd c3185hd = C3185hd.f2153a;
        Intrinsics.checkNotNullExpressionValue("hd", "access$getTAG$p(...)");
        return Executors.newCachedThreadPool(new ThreadFactoryC3297p5("hd"));
    }
}
