package com.inmobi.media;

import android.graphics.RectF;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class B {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RectF f76a;
    public final RectF b;
    public final RectF c;
    public final RectF d;

    public B(RectF rectF, RectF rectF2, RectF rectF3, RectF rectF4) {
        this.f76a = rectF;
        this.b = rectF2;
        this.c = rectF3;
        this.d = rectF4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof B)) {
            return false;
        }
        B b = (B) obj;
        return Intrinsics.areEqual(this.f76a, b.f76a) && Intrinsics.areEqual(this.b, b.b) && Intrinsics.areEqual(this.c, b.c) && Intrinsics.areEqual(this.d, b.d);
    }

    public final int hashCode() {
        RectF rectF = this.f76a;
        int iHashCode = (rectF == null ? 0 : rectF.hashCode()) * 31;
        RectF rectF2 = this.b;
        int iHashCode2 = (iHashCode + (rectF2 == null ? 0 : rectF2.hashCode())) * 31;
        RectF rectF3 = this.c;
        int iHashCode3 = (iHashCode2 + (rectF3 == null ? 0 : rectF3.hashCode())) * 31;
        RectF rectF4 = this.d;
        return iHashCode3 + (rectF4 != null ? rectF4.hashCode() : 0);
    }

    public final String toString() {
        return "CurvedEdges(topLeft=" + this.f76a + ", topRight=" + this.b + ", bottomLeft=" + this.c + ", bottomRight=" + this.d + ')';
    }
}
