package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class F2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f112a;
    public final String b;

    public F2(String url, String accountId) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        this.f112a = url;
        this.b = accountId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof F2)) {
            return false;
        }
        F2 f2 = (F2) obj;
        return Intrinsics.areEqual(this.f112a, f2.f112a) && Intrinsics.areEqual(this.b, f2.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f112a.hashCode() * 31);
    }

    public final String toString() {
        return "ConfigIdentifier(url=" + this.f112a + ", accountId=" + this.b + ')';
    }
}
