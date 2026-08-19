package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.O3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2901O3 {

    /* JADX INFO: renamed from: a */
    public final int f1330a;

    /* JADX INFO: renamed from: b */
    public final int f1331b;

    /* JADX INFO: renamed from: c */
    public final float f1332c;

    public C2901O3(int i, float f, int i2) {
        this.f1330a = i;
        this.f1331b = i2;
        this.f1332c = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2901O3)) {
            return false;
        }
        C2901O3 c2901o3 = (C2901O3) obj;
        return this.f1330a == c2901o3.f1330a && this.f1331b == c2901o3.f1331b && Float.compare(this.f1332c, c2901o3.f1332c) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f1332c) + ((Integer.hashCode(this.f1331b) + (Integer.hashCode(this.f1330a) * 31)) * 31);
    }

    public final String toString() {
        return "DisplayProperties(width=" + this.f1330a + ", height=" + this.f1331b + ", density=" + this.f1332c + ')';
    }
}
