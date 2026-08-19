package com.inmobi.media;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
public final class A5 {
    private final boolean GPID;

    public A5() {
        this(false, 1, null);
    }

    public final boolean a() {
        return this.GPID;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof A5) && this.GPID == ((A5) obj).GPID;
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

    public A5(boolean z) {
        this.GPID = z;
    }

    public /* synthetic */ A5(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }
}
