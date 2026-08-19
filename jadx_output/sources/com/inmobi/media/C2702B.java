package com.inmobi.media;

import android.graphics.RectF;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.B */
/* JADX INFO: loaded from: classes6.dex */
public final class C2702B {

    /* JADX INFO: renamed from: a */
    public final RectF f835a;

    /* JADX INFO: renamed from: b */
    public final RectF f836b;

    /* JADX INFO: renamed from: c */
    public final RectF f837c;

    /* JADX INFO: renamed from: d */
    public final RectF f838d;

    public C2702B(RectF rectF, RectF rectF2, RectF rectF3, RectF rectF4) {
        this.f835a = rectF;
        this.f836b = rectF2;
        this.f837c = rectF3;
        this.f838d = rectF4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2702B)) {
            return false;
        }
        C2702B c2702b = (C2702B) obj;
        return Intrinsics.areEqual(this.f835a, c2702b.f835a) && Intrinsics.areEqual(this.f836b, c2702b.f836b) && Intrinsics.areEqual(this.f837c, c2702b.f837c) && Intrinsics.areEqual(this.f838d, c2702b.f838d);
    }

    public final int hashCode() {
        RectF rectF = this.f835a;
        int iHashCode = (rectF == null ? 0 : rectF.hashCode()) * 31;
        RectF rectF2 = this.f836b;
        int iHashCode2 = (iHashCode + (rectF2 == null ? 0 : rectF2.hashCode())) * 31;
        RectF rectF3 = this.f837c;
        int iHashCode3 = (iHashCode2 + (rectF3 == null ? 0 : rectF3.hashCode())) * 31;
        RectF rectF4 = this.f838d;
        return iHashCode3 + (rectF4 != null ? rectF4.hashCode() : 0);
    }

    public final String toString() {
        return "CurvedEdges(topLeft=" + this.f835a + ", topRight=" + this.f836b + ", bottomLeft=" + this.f837c + ", bottomRight=" + this.f838d + ')';
    }
}
