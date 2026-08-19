package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.lb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0399lb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f414a;
    public final int b;

    public C0399lb(int i, int i2) {
        this.f414a = i;
        this.b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0399lb)) {
            return false;
        }
        C0399lb c0399lb = (C0399lb) obj;
        return this.f414a == c0399lb.f414a && this.b == c0399lb.b && Double.compare(1.0d, 1.0d) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(1.0d) + ((Integer.hashCode(this.b) + (Integer.hashCode(this.f414a) * 31)) * 31);
    }

    public final String toString() {
        return "RetryPolicy(maxNoOfRetries=" + this.f414a + ", delayInMillis=" + this.b + ", delayFactor=1.0)";
    }
}
