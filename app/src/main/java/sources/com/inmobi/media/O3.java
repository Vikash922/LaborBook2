package com.inmobi.media;

/* JADX INFO: loaded from: classes6.dex */
public final class O3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f199a;
    public final int b;
    public final float c;

    public O3(int i, float f, int i2) {
        this.f199a = i;
        this.b = i2;
        this.c = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof O3)) {
            return false;
        }
        O3 o3 = (O3) obj;
        return this.f199a == o3.f199a && this.b == o3.b && Float.compare(this.c, o3.c) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.c) + ((Integer.hashCode(this.b) + (Integer.hashCode(this.f199a) * 31)) * 31);
    }

    public final String toString() {
        return "DisplayProperties(width=" + this.f199a + ", height=" + this.b + ", density=" + this.c + ')';
    }
}
