package com.inmobi.media;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.b2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3084b2 {

    /* JADX INFO: renamed from: a */
    public final int f1872a;

    /* JADX INFO: renamed from: b */
    public final String f1873b;

    /* JADX INFO: renamed from: c */
    public final Map f1874c;

    public C3084b2(int i, int i2, String str) {
        str = (i2 & 2) != 0 ? null : str;
        this.f1872a = i;
        this.f1873b = str;
        this.f1874c = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3084b2)) {
            return false;
        }
        C3084b2 c3084b2 = (C3084b2) obj;
        return this.f1872a == c3084b2.f1872a && Intrinsics.areEqual(this.f1873b, c3084b2.f1873b) && Intrinsics.areEqual(this.f1874c, c3084b2.f1874c);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f1872a) * 31;
        String str = this.f1873b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Map map = this.f1874c;
        return iHashCode2 + (map != null ? map.hashCode() : 0);
    }

    public final String toString() {
        return "BusEvent(eventId=" + this.f1872a + ", eventMessage=" + this.f1873b + ", eventData=" + this.f1874c + ')';
    }

    public C3084b2(int i, String str, Map map) {
        this.f1872a = i;
        this.f1873b = str;
        this.f1874c = map;
    }
}
