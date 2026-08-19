package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.n9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3271n9 {
    private int maxBatchSize;
    private int minBatchSize;
    private long retryInterval;

    /* JADX INFO: renamed from: a */
    public final void m2315a(long j) {
        this.retryInterval = j;
    }

    /* JADX INFO: renamed from: b */
    public final int m2317b() {
        return this.minBatchSize;
    }

    /* JADX INFO: renamed from: c */
    public final long m2319c() {
        return this.retryInterval;
    }

    /* JADX INFO: renamed from: a */
    public final int m2314a() {
        return this.maxBatchSize;
    }

    /* JADX INFO: renamed from: b */
    public final void m2318b(int i) {
        this.maxBatchSize = i;
    }

    /* JADX INFO: renamed from: c */
    public final void m2320c(int i) {
        this.minBatchSize = i;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m2316a(int i) {
        int i2;
        int i3 = this.maxBatchSize;
        return i3 <= i && this.retryInterval > 0 && i3 > 0 && (i2 = this.minBatchSize) > 0 && i2 <= i3;
    }
}
