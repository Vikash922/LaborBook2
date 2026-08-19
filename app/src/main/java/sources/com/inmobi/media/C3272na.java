package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.na */
/* JADX INFO: loaded from: classes6.dex */
public final class C3272na extends AbstractC3302pa {

    /* JADX INFO: renamed from: a */
    public final int f2383a;

    /* JADX INFO: renamed from: b */
    public final String f2384b;

    public C3272na(String message, int i) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.f2383a = i;
        this.f2384b = message;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3272na)) {
            return false;
        }
        C3272na c3272na = (C3272na) obj;
        return this.f2383a == c3272na.f2383a && Intrinsics.areEqual(this.f2384b, c3272na.f2384b);
    }

    public final int hashCode() {
        return this.f2384b.hashCode() + (Integer.hashCode(this.f2383a) * 31);
    }

    public final String toString() {
        return "Failure(statusCode=" + this.f2383a + ", message=" + this.f2384b + ')';
    }
}
