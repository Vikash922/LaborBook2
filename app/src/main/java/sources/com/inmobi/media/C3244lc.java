package com.inmobi.media;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.lc */
/* JADX INFO: loaded from: classes6.dex */
public final class C3244lc {

    /* JADX INFO: renamed from: a */
    public final boolean f2300a;

    /* JADX INFO: renamed from: b */
    public final boolean f2301b;

    /* JADX INFO: renamed from: c */
    public final boolean f2302c;

    /* JADX INFO: renamed from: d */
    public final boolean f2303d;

    /* JADX INFO: renamed from: e */
    public final boolean f2304e;

    /* JADX INFO: renamed from: f */
    public final List f2305f;

    /* JADX INFO: renamed from: g */
    public final double f2306g;

    public C3244lc(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, List priorityEventsList, double d) {
        Intrinsics.checkNotNullParameter(priorityEventsList, "priorityEventsList");
        this.f2300a = z;
        this.f2301b = z2;
        this.f2302c = z3;
        this.f2303d = z4;
        this.f2304e = z5;
        this.f2305f = priorityEventsList;
        this.f2306g = d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3244lc)) {
            return false;
        }
        C3244lc c3244lc = (C3244lc) obj;
        return this.f2300a == c3244lc.f2300a && this.f2301b == c3244lc.f2301b && this.f2302c == c3244lc.f2302c && this.f2303d == c3244lc.f2303d && this.f2304e == c3244lc.f2304e && Intrinsics.areEqual(this.f2305f, c3244lc.f2305f) && Double.compare(this.f2306g, c3244lc.f2306g) == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5, types: [int] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    public final int hashCode() {
        boolean z = this.f2300a;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.f2301b;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int i2 = (i + r2) * 31;
        boolean z3 = this.f2302c;
        ?? r22 = z3;
        if (z3) {
            r22 = 1;
        }
        int i3 = (i2 + r22) * 31;
        boolean z4 = this.f2303d;
        ?? r23 = z4;
        if (z4) {
            r23 = 1;
        }
        int i4 = (i3 + r23) * 31;
        boolean z5 = this.f2304e;
        return Double.hashCode(this.f2306g) + ((this.f2305f.hashCode() + ((i4 + (z5 ? 1 : z5)) * 31)) * 31);
    }

    public final String toString() {
        return "TelemetryConfigMetaData(isTelemetryEnabled=" + this.f2300a + ", isImageEnabled=" + this.f2301b + ", isGIFEnabled=" + this.f2302c + ", isVideoEnabled=" + this.f2303d + ", isGeneralEventsDisabled=" + this.f2304e + ", priorityEventsList=" + this.f2305f + ", samplingFactor=" + this.f2306g + ')';
    }
}
