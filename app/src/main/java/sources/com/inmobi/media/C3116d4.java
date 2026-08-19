package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.d4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3116d4 {

    /* JADX INFO: renamed from: a */
    public final int f1985a;

    /* JADX INFO: renamed from: b */
    public final long f1986b;

    /* JADX INFO: renamed from: c */
    public final long f1987c;

    /* JADX INFO: renamed from: d */
    public final long f1988d;

    /* JADX INFO: renamed from: e */
    public final int f1989e;

    /* JADX INFO: renamed from: f */
    public final int f1990f;

    /* JADX INFO: renamed from: g */
    public final int f1991g;

    /* JADX INFO: renamed from: h */
    public final int f1992h;

    /* JADX INFO: renamed from: i */
    public final long f1993i;

    /* JADX INFO: renamed from: j */
    public final long f1994j;

    /* JADX INFO: renamed from: k */
    public String f1995k;

    public C3116d4(int i, long j, long j2, long j3, int i2, int i3, int i4, int i5, long j4, long j5) {
        this.f1985a = i;
        this.f1986b = j;
        this.f1987c = j2;
        this.f1988d = j3;
        this.f1989e = i2;
        this.f1990f = i3;
        this.f1991g = i4;
        this.f1992h = i5;
        this.f1993i = j4;
        this.f1994j = j5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3116d4)) {
            return false;
        }
        C3116d4 c3116d4 = (C3116d4) obj;
        return this.f1985a == c3116d4.f1985a && this.f1986b == c3116d4.f1986b && this.f1987c == c3116d4.f1987c && this.f1988d == c3116d4.f1988d && this.f1989e == c3116d4.f1989e && this.f1990f == c3116d4.f1990f && this.f1991g == c3116d4.f1991g && this.f1992h == c3116d4.f1992h && this.f1993i == c3116d4.f1993i && this.f1994j == c3116d4.f1994j;
    }

    public final int hashCode() {
        return Long.hashCode(this.f1994j) + ((Long.hashCode(this.f1993i) + ((Integer.hashCode(this.f1992h) + ((Integer.hashCode(this.f1991g) + ((Integer.hashCode(this.f1990f) + ((Integer.hashCode(this.f1989e) + ((Long.hashCode(this.f1988d) + ((Long.hashCode(this.f1987c) + ((Long.hashCode(this.f1986b) + (Integer.hashCode(this.f1985a) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "EventConfig(maxRetryCount=" + this.f1985a + ", timeToLiveInSec=" + this.f1986b + ", processingInterval=" + this.f1987c + ", ingestionLatencyInSec=" + this.f1988d + ", minBatchSizeWifi=" + this.f1989e + ", maxBatchSizeWifi=" + this.f1990f + ", minBatchSizeMobile=" + this.f1991g + ", maxBatchSizeMobile=" + this.f1992h + ", retryIntervalWifi=" + this.f1993i + ", retryIntervalMobile=" + this.f1994j + ')';
    }
}
