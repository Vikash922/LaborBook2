package com.inmobi.media;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.f4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0297f4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f347a;
    public final String b;

    public C0297f4(ArrayList eventIDs, String payload) {
        Intrinsics.checkNotNullParameter(eventIDs, "eventIDs");
        Intrinsics.checkNotNullParameter(payload, "payload");
        this.f347a = eventIDs;
        this.b = payload;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0297f4)) {
            return false;
        }
        C0297f4 c0297f4 = (C0297f4) obj;
        return Intrinsics.areEqual(this.f347a, c0297f4.f347a) && Intrinsics.areEqual(this.b, c0297f4.b);
    }

    public final int hashCode() {
        return (this.b.hashCode() + (this.f347a.hashCode() * 31)) * 31;
    }

    public final String toString() {
        return "EventPayload(eventIDs=" + this.f347a + ", payload=" + this.b + ", shouldFlushOnFailure=false)";
    }
}
