package com.inmobi.media;

import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.x5 */
/* JADX INFO: loaded from: classes6.dex */
public class C3417x5 extends AbstractC2956S1 {

    /* JADX INFO: renamed from: e */
    public final String f2741e;

    /* JADX INFO: renamed from: f */
    public final String f2742f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3417x5(String eventId, String componentType, String eventType, String str) {
        super(eventType, str);
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        Intrinsics.checkNotNullParameter(componentType, "componentType");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        this.f2741e = eventId;
        this.f2742f = componentType;
    }

    public final String toString() {
        return this.f1525a + '@' + this.f2742f + ' ';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public C3417x5(String str, String str2, String str3) {
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this(string, str, str2, str3);
    }
}
