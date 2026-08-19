package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.F2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2765F2 {

    /* JADX INFO: renamed from: a */
    public final String f1015a;

    /* JADX INFO: renamed from: b */
    public final String f1016b;

    public C2765F2(String url, String accountId) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        this.f1015a = url;
        this.f1016b = accountId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2765F2)) {
            return false;
        }
        C2765F2 c2765f2 = (C2765F2) obj;
        return Intrinsics.areEqual(this.f1015a, c2765f2.f1015a) && Intrinsics.areEqual(this.f1016b, c2765f2.f1016b);
    }

    public final int hashCode() {
        return this.f1016b.hashCode() + (this.f1015a.hashCode() * 31);
    }

    public final String toString() {
        return "ConfigIdentifier(url=" + this.f1015a + ", accountId=" + this.f1016b + ')';
    }
}
