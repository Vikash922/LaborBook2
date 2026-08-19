package com.inmobi.media;

import android.os.HandlerThread;
import android.os.Looper;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class H2 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final H2 f128a = new H2();

    public H2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        LinkedHashMap linkedHashMap = K2.f154a;
        HandlerThread handlerThread = new HandlerThread(K2.b());
        AbstractC0467q4.a(handlerThread, K2.b());
        Looper looper = handlerThread.getLooper();
        Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
        return new E2(looper);
    }
}
