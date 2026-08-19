package com.inmobi.media;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.f4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3146f4 {

    /* JADX INFO: renamed from: a */
    public final ArrayList f2059a;

    /* JADX INFO: renamed from: b */
    public final String f2060b;

    public C3146f4(ArrayList eventIDs, String payload) {
        Intrinsics.checkNotNullParameter(eventIDs, "eventIDs");
        Intrinsics.checkNotNullParameter(payload, "payload");
        this.f2059a = eventIDs;
        this.f2060b = payload;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3146f4)) {
            return false;
        }
        C3146f4 c3146f4 = (C3146f4) obj;
        return Intrinsics.areEqual(this.f2059a, c3146f4.f2059a) && Intrinsics.areEqual(this.f2060b, c3146f4.f2060b);
    }

    public final int hashCode() {
        return (this.f2060b.hashCode() + (this.f2059a.hashCode() * 31)) * 31;
    }

    public final String toString() {
        return "EventPayload(eventIDs=" + this.f2059a + ", payload=" + this.f2060b + ", shouldFlushOnFailure=false)";
    }
}
