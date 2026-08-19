package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.d4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0266d4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f330a;
    public final long b;
    public final long c;
    public final long d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final long i;
    public final long j;
    public String k;

    public C0266d4(int i, long j, long j2, long j3, int i2, int i3, int i4, int i5, long j4, long j5) {
        this.f330a = i;
        this.b = j;
        this.c = j2;
        this.d = j3;
        this.e = i2;
        this.f = i3;
        this.g = i4;
        this.h = i5;
        this.i = j4;
        this.j = j5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0266d4)) {
            return false;
        }
        C0266d4 c0266d4 = (C0266d4) obj;
        return this.f330a == c0266d4.f330a && this.b == c0266d4.b && this.c == c0266d4.c && this.d == c0266d4.d && this.e == c0266d4.e && this.f == c0266d4.f && this.g == c0266d4.g && this.h == c0266d4.h && this.i == c0266d4.i && this.j == c0266d4.j;
    }

    public final int hashCode() {
        return Long.hashCode(this.j) + ((Long.hashCode(this.i) + ((Integer.hashCode(this.h) + ((Integer.hashCode(this.g) + ((Integer.hashCode(this.f) + ((Integer.hashCode(this.e) + ((Long.hashCode(this.d) + ((Long.hashCode(this.c) + ((Long.hashCode(this.b) + (Integer.hashCode(this.f330a) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "EventConfig(maxRetryCount=" + this.f330a + ", timeToLiveInSec=" + this.b + ", processingInterval=" + this.c + ", ingestionLatencyInSec=" + this.d + ", minBatchSizeWifi=" + this.e + ", maxBatchSizeWifi=" + this.f + ", minBatchSizeMobile=" + this.g + ", maxBatchSizeMobile=" + this.h + ", retryIntervalWifi=" + this.i + ", retryIntervalMobile=" + this.j + ')';
    }
}
