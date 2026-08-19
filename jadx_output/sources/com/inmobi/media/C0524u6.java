package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.u6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0524u6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f499a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final boolean h;
    public final String i;

    public C0524u6(long j, String impressionId, String placementType, String adType, String markupType, String creativeType, String metaDataBlob, boolean z, String landingScheme) {
        Intrinsics.checkNotNullParameter(impressionId, "impressionId");
        Intrinsics.checkNotNullParameter(placementType, "placementType");
        Intrinsics.checkNotNullParameter(adType, "adType");
        Intrinsics.checkNotNullParameter(markupType, "markupType");
        Intrinsics.checkNotNullParameter(creativeType, "creativeType");
        Intrinsics.checkNotNullParameter(metaDataBlob, "metaDataBlob");
        Intrinsics.checkNotNullParameter(landingScheme, "landingScheme");
        this.f499a = j;
        this.b = impressionId;
        this.c = placementType;
        this.d = adType;
        this.e = markupType;
        this.f = creativeType;
        this.g = metaDataBlob;
        this.h = z;
        this.i = landingScheme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0524u6)) {
            return false;
        }
        C0524u6 c0524u6 = (C0524u6) obj;
        return this.f499a == c0524u6.f499a && Intrinsics.areEqual(this.b, c0524u6.b) && Intrinsics.areEqual(this.c, c0524u6.c) && Intrinsics.areEqual(this.d, c0524u6.d) && Intrinsics.areEqual(this.e, c0524u6.e) && Intrinsics.areEqual(this.f, c0524u6.f) && Intrinsics.areEqual(this.g, c0524u6.g) && this.h == c0524u6.h && Intrinsics.areEqual(this.i, c0524u6.i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v13, types: [int] */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    public final int hashCode() {
        int iHashCode = (this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (Long.hashCode(this.f499a) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        boolean z = this.h;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return this.i.hashCode() + ((iHashCode + r1) * 31);
    }

    public final String toString() {
        return "LandingPageTelemetryMetaData(placementId=" + this.f499a + ", impressionId=" + this.b + ", placementType=" + this.c + ", adType=" + this.d + ", markupType=" + this.e + ", creativeType=" + this.f + ", metaDataBlob=" + this.g + ", isRewarded=" + this.h + ", landingScheme=" + this.i + ')';
    }
}
