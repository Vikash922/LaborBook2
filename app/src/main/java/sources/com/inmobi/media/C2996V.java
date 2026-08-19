package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.V */
/* JADX INFO: loaded from: classes6.dex */
public final class C2996V {

    /* JADX INFO: renamed from: a */
    public final C2955S0 f1571a;

    /* JADX INFO: renamed from: b */
    public final String f1572b;

    /* JADX INFO: renamed from: c */
    public final Boolean f1573c;

    /* JADX INFO: renamed from: d */
    public final String f1574d;

    /* JADX INFO: renamed from: e */
    public final byte f1575e;

    public C2996V(C2955S0 adUnitTelemetry, String str, Boolean bool, String str2, byte b) {
        Intrinsics.checkNotNullParameter(adUnitTelemetry, "adUnitTelemetry");
        this.f1571a = adUnitTelemetry;
        this.f1572b = str;
        this.f1573c = bool;
        this.f1574d = str2;
        this.f1575e = b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2996V)) {
            return false;
        }
        C2996V c2996v = (C2996V) obj;
        return Intrinsics.areEqual(this.f1571a, c2996v.f1571a) && Intrinsics.areEqual(this.f1572b, c2996v.f1572b) && Intrinsics.areEqual(this.f1573c, c2996v.f1573c) && Intrinsics.areEqual(this.f1574d, c2996v.f1574d) && this.f1575e == c2996v.f1575e;
    }

    public final int hashCode() {
        int iHashCode = this.f1571a.hashCode() * 31;
        String str = this.f1572b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.f1573c;
        int iHashCode3 = (iHashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str2 = this.f1574d;
        return Byte.hashCode(this.f1575e) + ((iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "AdNotReadyMetadata(adUnitTelemetry=" + this.f1571a + ", creativeType=" + this.f1572b + ", isRewarded=" + this.f1573c + ", markupType=" + this.f1574d + ", adState=" + ((int) this.f1575e) + ')';
    }
}
