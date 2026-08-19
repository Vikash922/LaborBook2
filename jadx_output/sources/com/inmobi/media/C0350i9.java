package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.i9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0350i9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnumC0250c4 f385a;
    public final String b;

    public C0350i9(EnumC0250c4 errorCode, String str) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        this.f385a = errorCode;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0350i9)) {
            return false;
        }
        C0350i9 c0350i9 = (C0350i9) obj;
        return this.f385a == c0350i9.f385a && Intrinsics.areEqual(this.b, c0350i9.b);
    }

    public final int hashCode() {
        int iHashCode = this.f385a.hashCode() * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "NetworkError(errorCode=" + this.f385a + ", errorMessage=" + this.b + ')';
    }
}
