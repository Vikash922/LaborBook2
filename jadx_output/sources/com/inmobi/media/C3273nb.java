package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.nb */
/* JADX INFO: loaded from: classes6.dex */
public final class C3273nb extends Lambda implements Function2 {

    /* JADX INFO: renamed from: a */
    public static final C3273nb f2385a = new C3273nb();

    public C3273nb() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        C3258mb _request = (C3258mb) obj;
        long jLongValue = ((Number) obj2).longValue();
        Intrinsics.checkNotNullParameter(_request, "_request");
        AbstractC3288ob.m2337a(_request, jLongValue);
        return Unit.INSTANCE;
    }
}
