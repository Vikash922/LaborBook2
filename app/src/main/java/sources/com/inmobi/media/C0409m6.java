package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.m6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0409m6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f423a;
    public final Integer b;

    public C0409m6(int i) {
        this.f423a = i;
        this.b = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0409m6)) {
            return false;
        }
        C0409m6 c0409m6 = (C0409m6) obj;
        return this.f423a == c0409m6.f423a && Intrinsics.areEqual(this.b, c0409m6.b);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f423a) * 31;
        Integer num = this.b;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public final String toString() {
        return "OpenRequestResultData(result=" + this.f423a + ", errorCode=" + this.b + ')';
    }

    public C0409m6(int i, Integer num) {
        this.f423a = i;
        this.b = num;
    }
}
