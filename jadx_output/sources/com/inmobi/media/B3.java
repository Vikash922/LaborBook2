package com.inmobi.media;

/* JADX INFO: loaded from: classes6.dex */
public final class B3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f79a;
    public final long b;
    public final long c;

    public B3(long j, long j2, long j3) {
        this.f79a = j;
        this.b = j2;
        this.c = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof B3)) {
            return false;
        }
        B3 b3 = (B3) obj;
        return this.f79a == b3.f79a && this.b == b3.b && this.c == b3.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + ((Long.hashCode(this.b) + (Long.hashCode(this.f79a) * 31)) * 31);
    }

    public final String toString() {
        return "DeviceMemoryInfo(maxHeapSize=" + this.f79a + ", freeHeapSize=" + this.b + ", currentHeapSize=" + this.c + ')';
    }
}
