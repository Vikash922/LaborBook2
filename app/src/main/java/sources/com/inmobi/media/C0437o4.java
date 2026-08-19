package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.o4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0437o4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f442a;
    public final float b;
    public final int c;
    public final int d;

    public C0437o4(float f, float f2, int i, int i2) {
        this.f442a = f;
        this.b = f2;
        this.c = i;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0437o4)) {
            return false;
        }
        C0437o4 c0437o4 = (C0437o4) obj;
        return Float.compare(this.f442a, c0437o4.f442a) == 0 && Float.compare(this.b, c0437o4.b) == 0 && this.c == c0437o4.c && this.d == c0437o4.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + ((Integer.hashCode(this.c) + ((Float.hashCode(this.b) + (Float.hashCode(this.f442a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ExposureRectangle(x=" + this.f442a + ", y=" + this.b + ", width=" + this.c + ", height=" + this.d + ')';
    }
}
