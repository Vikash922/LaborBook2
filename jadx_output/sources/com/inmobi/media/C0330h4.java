package com.inmobi.media;

import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.h4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0330h4 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0330h4 f369a = new C0330h4();

    public C0330h4() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Lazy lazy = AbstractC0345i4.f383a;
        Intrinsics.checkNotNullExpressionValue("i4", "access$getTAG$p(...)");
        return Executors.newSingleThreadScheduledExecutor(new ThreadFactoryC0453p5("i4"));
    }
}
