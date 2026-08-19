package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.p6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0454p6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f454a;
    public final String b;
    public final boolean c;
    public final boolean d;

    public C0454p6(boolean z, String landingScheme, boolean z2, boolean z3) {
        Intrinsics.checkNotNullParameter(landingScheme, "landingScheme");
        this.f454a = z;
        this.b = landingScheme;
        this.c = z2;
        this.d = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0454p6)) {
            return false;
        }
        C0454p6 c0454p6 = (C0454p6) obj;
        return this.f454a == c0454p6.f454a && Intrinsics.areEqual(this.b, c0454p6.b) && this.c == c0454p6.c && this.d == c0454p6.d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    public final int hashCode() {
        boolean z = this.f454a;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int iHashCode = (this.b.hashCode() + (r0 * 31)) * 31;
        boolean z2 = this.c;
        ?? r02 = z2;
        if (z2) {
            r02 = 1;
        }
        int i = (iHashCode + r02) * 31;
        boolean z3 = this.d;
        return i + (z3 ? 1 : z3);
    }

    public final String toString() {
        return "LandingPageState(isInAppBrowser=" + this.f454a + ", landingScheme=" + this.b + ", isCCTEnabled=" + this.c + ", isPartialTabsEnabled=" + this.d + ')';
    }
}
