package com.inmobi.media;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.b2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0233b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f310a;
    public final String b;
    public final Map c;

    public C0233b2(int i, int i2, String str) {
        str = (i2 & 2) != 0 ? null : str;
        this.f310a = i;
        this.b = str;
        this.c = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0233b2)) {
            return false;
        }
        C0233b2 c0233b2 = (C0233b2) obj;
        return this.f310a == c0233b2.f310a && Intrinsics.areEqual(this.b, c0233b2.b) && Intrinsics.areEqual(this.c, c0233b2.c);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f310a) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Map map = this.c;
        return iHashCode2 + (map != null ? map.hashCode() : 0);
    }

    public final String toString() {
        return "BusEvent(eventId=" + this.f310a + ", eventMessage=" + this.b + ", eventData=" + this.c + ')';
    }

    public C0233b2(int i, String str, Map map) {
        this.f310a = i;
        this.b = str;
        this.c = map;
    }
}
