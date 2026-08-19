package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.lb */
/* JADX INFO: loaded from: classes6.dex */
public final class C3243lb {

    /* JADX INFO: renamed from: a */
    public final int f2298a;

    /* JADX INFO: renamed from: b */
    public final int f2299b;

    public C3243lb(int i, int i2) {
        this.f2298a = i;
        this.f2299b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3243lb)) {
            return false;
        }
        C3243lb c3243lb = (C3243lb) obj;
        return this.f2298a == c3243lb.f2298a && this.f2299b == c3243lb.f2299b && Double.compare(1.0d, 1.0d) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(1.0d) + ((Integer.hashCode(this.f2299b) + (Integer.hashCode(this.f2298a) * 31)) * 31);
    }

    public final String toString() {
        return "RetryPolicy(maxNoOfRetries=" + this.f2298a + ", delayInMillis=" + this.f2299b + ", delayFactor=1.0)";
    }
}
