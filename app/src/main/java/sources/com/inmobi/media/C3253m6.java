package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.m6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3253m6 {

    /* JADX INFO: renamed from: a */
    public final int f2323a;

    /* JADX INFO: renamed from: b */
    public final Integer f2324b;

    public C3253m6(int i) {
        this.f2323a = i;
        this.f2324b = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3253m6)) {
            return false;
        }
        C3253m6 c3253m6 = (C3253m6) obj;
        return this.f2323a == c3253m6.f2323a && Intrinsics.areEqual(this.f2324b, c3253m6.f2324b);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f2323a) * 31;
        Integer num = this.f2324b;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public final String toString() {
        return "OpenRequestResultData(result=" + this.f2323a + ", errorCode=" + this.f2324b + ')';
    }

    public C3253m6(int i, Integer num) {
        this.f2323a = i;
        this.f2324b = num;
    }
}
