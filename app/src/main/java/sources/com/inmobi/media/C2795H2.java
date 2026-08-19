package com.inmobi.media;

import android.os.HandlerThread;
import android.os.Looper;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.H2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2795H2 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C2795H2 f1070a = new C2795H2();

    public C2795H2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        HandlerThread handlerThread = new HandlerThread(C2840K2.m1238b());
        AbstractC3311q4.m2352a(handlerThread, C2840K2.m1238b());
        Looper looper = handlerThread.getLooper();
        Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
        return new HandlerC2750E2(looper);
    }
}
