package com.inmobi.media;

import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.x5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public class C0565x5 extends S1 {
    public final String e;
    public final String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0565x5(String eventId, String componentType, String eventType, String str) {
        super(eventType, str);
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        Intrinsics.checkNotNullParameter(componentType, "componentType");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        this.e = eventId;
        this.f = componentType;
    }

    public final String toString() {
        return this.f238a + '@' + this.f + ' ';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public C0565x5(String str, String str2, String str3) {
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this(string, str, str2, str3);
    }
}
