package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.na, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0428na extends AbstractC0458pa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f435a;
    public final String b;

    public C0428na(String message, int i) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.f435a = i;
        this.b = message;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0428na)) {
            return false;
        }
        C0428na c0428na = (C0428na) obj;
        return this.f435a == c0428na.f435a && Intrinsics.areEqual(this.b, c0428na.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.f435a) * 31);
    }

    public final String toString() {
        return "Failure(statusCode=" + this.f435a + ", message=" + this.b + ')';
    }
}
