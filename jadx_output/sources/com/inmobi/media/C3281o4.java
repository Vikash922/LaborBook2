package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.o4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3281o4 {

    /* JADX INFO: renamed from: a */
    public final float f2399a;

    /* JADX INFO: renamed from: b */
    public final float f2400b;

    /* JADX INFO: renamed from: c */
    public final int f2401c;

    /* JADX INFO: renamed from: d */
    public final int f2402d;

    public C3281o4(float f, float f2, int i, int i2) {
        this.f2399a = f;
        this.f2400b = f2;
        this.f2401c = i;
        this.f2402d = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3281o4)) {
            return false;
        }
        C3281o4 c3281o4 = (C3281o4) obj;
        return Float.compare(this.f2399a, c3281o4.f2399a) == 0 && Float.compare(this.f2400b, c3281o4.f2400b) == 0 && this.f2401c == c3281o4.f2401c && this.f2402d == c3281o4.f2402d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f2402d) + ((Integer.hashCode(this.f2401c) + ((Float.hashCode(this.f2400b) + (Float.hashCode(this.f2399a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ExposureRectangle(x=" + this.f2399a + ", y=" + this.f2400b + ", width=" + this.f2401c + ", height=" + this.f2402d + ')';
    }
}
