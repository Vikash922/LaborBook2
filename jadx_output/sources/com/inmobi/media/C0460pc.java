package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.pc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0460pc extends S1 {
    public final String e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0460pc(String eventType, String str, String eventSource) {
        super(eventType, str);
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(eventSource, "eventSource");
        this.e = eventSource;
    }

    public final String toString() {
        return this.f238a + ' ';
    }
}
