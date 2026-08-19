package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.i9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3196i9 {

    /* JADX INFO: renamed from: a */
    public final EnumC3101c4 f2180a;

    /* JADX INFO: renamed from: b */
    public final String f2181b;

    public C3196i9(EnumC3101c4 errorCode, String str) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        this.f2180a = errorCode;
        this.f2181b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3196i9)) {
            return false;
        }
        C3196i9 c3196i9 = (C3196i9) obj;
        return this.f2180a == c3196i9.f2180a && Intrinsics.areEqual(this.f2181b, c3196i9.f2181b);
    }

    public final int hashCode() {
        int iHashCode = this.f2180a.hashCode() * 31;
        String str = this.f2181b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "NetworkError(errorCode=" + this.f2180a + ", errorMessage=" + this.f2181b + ')';
    }
}
