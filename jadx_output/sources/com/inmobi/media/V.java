package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class V {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final S0 f257a;
    public final String b;
    public final Boolean c;
    public final String d;
    public final byte e;

    public V(S0 adUnitTelemetry, String str, Boolean bool, String str2, byte b) {
        Intrinsics.checkNotNullParameter(adUnitTelemetry, "adUnitTelemetry");
        this.f257a = adUnitTelemetry;
        this.b = str;
        this.c = bool;
        this.d = str2;
        this.e = b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof V)) {
            return false;
        }
        V v = (V) obj;
        return Intrinsics.areEqual(this.f257a, v.f257a) && Intrinsics.areEqual(this.b, v.b) && Intrinsics.areEqual(this.c, v.c) && Intrinsics.areEqual(this.d, v.d) && this.e == v.e;
    }

    public final int hashCode() {
        int iHashCode = this.f257a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.c;
        int iHashCode3 = (iHashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str2 = this.d;
        return Byte.hashCode(this.e) + ((iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "AdNotReadyMetadata(adUnitTelemetry=" + this.f257a + ", creativeType=" + this.b + ", isRewarded=" + this.c + ", markupType=" + this.d + ", adState=" + ((int) this.e) + ')';
    }
}
