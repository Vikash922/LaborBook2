package com.inmobi.media;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.n4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3266n4 {

    /* JADX INFO: renamed from: a */
    public final float f2375a;

    /* JADX INFO: renamed from: b */
    public final C3281o4 f2376b;

    /* JADX INFO: renamed from: c */
    public final ArrayList f2377c;

    public C3266n4(float f, C3281o4 c3281o4, ArrayList arrayList) {
        this.f2375a = f;
        this.f2376b = c3281o4;
        this.f2377c = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3266n4)) {
            return false;
        }
        C3266n4 c3266n4 = (C3266n4) obj;
        return Float.compare(this.f2375a, c3266n4.f2375a) == 0 && Intrinsics.areEqual(this.f2376b, c3266n4.f2376b) && Intrinsics.areEqual(this.f2377c, c3266n4.f2377c);
    }

    public final int hashCode() {
        int iHashCode = Float.hashCode(this.f2375a) * 31;
        C3281o4 c3281o4 = this.f2376b;
        int iHashCode2 = (iHashCode + (c3281o4 == null ? 0 : c3281o4.hashCode())) * 31;
        ArrayList arrayList = this.f2377c;
        return iHashCode2 + (arrayList != null ? arrayList.hashCode() : 0);
    }

    public final String toString() {
        return "ExposureMetrics(exposedPercentage=" + this.f2375a + ", visibleRectangle=" + this.f2376b + ", occlusionRectangles=" + this.f2377c + ')';
    }
}
