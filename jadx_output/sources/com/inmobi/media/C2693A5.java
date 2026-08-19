package com.inmobi.media;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: renamed from: com.inmobi.media.A5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2693A5 {
    private final boolean GPID;

    public C2693A5() {
        this(false, 1, null);
    }

    /* JADX INFO: renamed from: a */
    public final boolean m835a() {
        return this.GPID;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2693A5) && this.GPID == ((C2693A5) obj).GPID;
    }

    public final int hashCode() {
        boolean z = this.GPID;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public final String toString() {
        return "IncludeIdParams(GPID=" + this.GPID + ')';
    }

    public C2693A5(boolean z) {
        this.GPID = z;
    }

    public /* synthetic */ C2693A5(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }
}
