package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.N2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2885N2 {

    /* JADX INFO: renamed from: a */
    public final byte f1291a;

    /* JADX INFO: renamed from: b */
    public final String f1292b;

    public C2885N2(byte b, String str) {
        this.f1291a = b;
        this.f1292b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2885N2)) {
            return false;
        }
        C2885N2 c2885n2 = (C2885N2) obj;
        return this.f1291a == c2885n2.f1291a && Intrinsics.areEqual(this.f1292b, c2885n2.f1292b);
    }

    public final int hashCode() {
        int iHashCode = Byte.hashCode(this.f1291a) * 31;
        String str = this.f1292b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "ConfigError(errorCode=" + ((int) this.f1291a) + ", errorMessage=" + this.f1292b + ')';
    }
}
