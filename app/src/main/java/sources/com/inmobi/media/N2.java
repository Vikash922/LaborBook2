package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class N2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte f188a;
    public final String b;

    public N2(byte b, String str) {
        this.f188a = b;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof N2)) {
            return false;
        }
        N2 n2 = (N2) obj;
        return this.f188a == n2.f188a && Intrinsics.areEqual(this.b, n2.b);
    }

    public final int hashCode() {
        int iHashCode = Byte.hashCode(this.f188a) * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "ConfigError(errorCode=" + ((int) this.f188a) + ", errorMessage=" + this.b + ')';
    }
}
