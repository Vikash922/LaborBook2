package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.nb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0429nb extends Lambda implements Function2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0429nb f436a = new C0429nb();

    public C0429nb() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        C0414mb _request = (C0414mb) obj;
        long jLongValue = ((Number) obj2).longValue();
        Intrinsics.checkNotNullParameter(_request, "_request");
        AbstractC0444ob.a(_request, jLongValue);
        return Unit.INSTANCE;
    }
}
