package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.p6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3298p6 {

    /* JADX INFO: renamed from: a */
    public final boolean f2432a;

    /* JADX INFO: renamed from: b */
    public final String f2433b;

    /* JADX INFO: renamed from: c */
    public final boolean f2434c;

    /* JADX INFO: renamed from: d */
    public final boolean f2435d;

    public C3298p6(boolean z, String landingScheme, boolean z2, boolean z3) {
        Intrinsics.checkNotNullParameter(landingScheme, "landingScheme");
        this.f2432a = z;
        this.f2433b = landingScheme;
        this.f2434c = z2;
        this.f2435d = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3298p6)) {
            return false;
        }
        C3298p6 c3298p6 = (C3298p6) obj;
        return this.f2432a == c3298p6.f2432a && Intrinsics.areEqual(this.f2433b, c3298p6.f2433b) && this.f2434c == c3298p6.f2434c && this.f2435d == c3298p6.f2435d;
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
        boolean z = this.f2432a;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int iHashCode = (this.f2433b.hashCode() + (r0 * 31)) * 31;
        boolean z2 = this.f2434c;
        ?? r02 = z2;
        if (z2) {
            r02 = 1;
        }
        int i = (iHashCode + r02) * 31;
        boolean z3 = this.f2435d;
        return i + (z3 ? 1 : z3);
    }

    public final String toString() {
        return "LandingPageState(isInAppBrowser=" + this.f2432a + ", landingScheme=" + this.f2433b + ", isCCTEnabled=" + this.f2434c + ", isPartialTabsEnabled=" + this.f2435d + ')';
    }
}
