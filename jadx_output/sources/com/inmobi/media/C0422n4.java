package com.inmobi.media;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.n4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0422n4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f431a;
    public final C0437o4 b;
    public final ArrayList c;

    public C0422n4(float f, C0437o4 c0437o4, ArrayList arrayList) {
        this.f431a = f;
        this.b = c0437o4;
        this.c = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0422n4)) {
            return false;
        }
        C0422n4 c0422n4 = (C0422n4) obj;
        return Float.compare(this.f431a, c0422n4.f431a) == 0 && Intrinsics.areEqual(this.b, c0422n4.b) && Intrinsics.areEqual(this.c, c0422n4.c);
    }

    public final int hashCode() {
        int iHashCode = Float.hashCode(this.f431a) * 31;
        C0437o4 c0437o4 = this.b;
        int iHashCode2 = (iHashCode + (c0437o4 == null ? 0 : c0437o4.hashCode())) * 31;
        ArrayList arrayList = this.c;
        return iHashCode2 + (arrayList != null ? arrayList.hashCode() : 0);
    }

    public final String toString() {
        return "ExposureMetrics(exposedPercentage=" + this.f431a + ", visibleRectangle=" + this.b + ", occlusionRectangles=" + this.c + ')';
    }
}
