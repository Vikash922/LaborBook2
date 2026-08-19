package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.pc */
/* JADX INFO: loaded from: classes6.dex */
public final class C3304pc extends AbstractC2956S1 {

    /* JADX INFO: renamed from: e */
    public final String f2442e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3304pc(String eventType, String str, String eventSource) {
        super(eventType, str);
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(eventSource, "eventSource");
        this.f2442e = eventSource;
    }

    public final String toString() {
        return this.f1525a + ' ';
    }
}
