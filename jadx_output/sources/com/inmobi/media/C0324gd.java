package com.inmobi.media;

import java.util.concurrent.Executors;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.gd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0324gd extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0324gd f365a = new C0324gd();

    public C0324gd() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C0339hd c0339hd = C0339hd.f378a;
        Intrinsics.checkNotNullExpressionValue("hd", "access$getTAG$p(...)");
        return Executors.newCachedThreadPool(new ThreadFactoryC0453p5("hd"));
    }
}
