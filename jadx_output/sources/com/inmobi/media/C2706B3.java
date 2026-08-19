package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.B3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2706B3 {

    /* JADX INFO: renamed from: a */
    public final long f846a;

    /* JADX INFO: renamed from: b */
    public final long f847b;

    /* JADX INFO: renamed from: c */
    public final long f848c;

    public C2706B3(long j, long j2, long j3) {
        this.f846a = j;
        this.f847b = j2;
        this.f848c = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2706B3)) {
            return false;
        }
        C2706B3 c2706b3 = (C2706B3) obj;
        return this.f846a == c2706b3.f846a && this.f847b == c2706b3.f847b && this.f848c == c2706b3.f848c;
    }

    public final int hashCode() {
        return Long.hashCode(this.f848c) + ((Long.hashCode(this.f847b) + (Long.hashCode(this.f846a) * 31)) * 31);
    }

    public final String toString() {
        return "DeviceMemoryInfo(maxHeapSize=" + this.f846a + ", freeHeapSize=" + this.f847b + ", currentHeapSize=" + this.f848c + ')';
    }
}
