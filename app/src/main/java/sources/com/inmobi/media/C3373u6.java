package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.u6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3373u6 {

    /* JADX INFO: renamed from: a */
    public final long f2651a;

    /* JADX INFO: renamed from: b */
    public final String f2652b;

    /* JADX INFO: renamed from: c */
    public final String f2653c;

    /* JADX INFO: renamed from: d */
    public final String f2654d;

    /* JADX INFO: renamed from: e */
    public final String f2655e;

    /* JADX INFO: renamed from: f */
    public final String f2656f;

    /* JADX INFO: renamed from: g */
    public final String f2657g;

    /* JADX INFO: renamed from: h */
    public final boolean f2658h;

    /* JADX INFO: renamed from: i */
    public final String f2659i;

    public C3373u6(long j, String impressionId, String placementType, String adType, String markupType, String creativeType, String metaDataBlob, boolean z, String landingScheme) {
        Intrinsics.checkNotNullParameter(impressionId, "impressionId");
        Intrinsics.checkNotNullParameter(placementType, "placementType");
        Intrinsics.checkNotNullParameter(adType, "adType");
        Intrinsics.checkNotNullParameter(markupType, "markupType");
        Intrinsics.checkNotNullParameter(creativeType, "creativeType");
        Intrinsics.checkNotNullParameter(metaDataBlob, "metaDataBlob");
        Intrinsics.checkNotNullParameter(landingScheme, "landingScheme");
        this.f2651a = j;
        this.f2652b = impressionId;
        this.f2653c = placementType;
        this.f2654d = adType;
        this.f2655e = markupType;
        this.f2656f = creativeType;
        this.f2657g = metaDataBlob;
        this.f2658h = z;
        this.f2659i = landingScheme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3373u6)) {
            return false;
        }
        C3373u6 c3373u6 = (C3373u6) obj;
        return this.f2651a == c3373u6.f2651a && Intrinsics.areEqual(this.f2652b, c3373u6.f2652b) && Intrinsics.areEqual(this.f2653c, c3373u6.f2653c) && Intrinsics.areEqual(this.f2654d, c3373u6.f2654d) && Intrinsics.areEqual(this.f2655e, c3373u6.f2655e) && Intrinsics.areEqual(this.f2656f, c3373u6.f2656f) && Intrinsics.areEqual(this.f2657g, c3373u6.f2657g) && this.f2658h == c3373u6.f2658h && Intrinsics.areEqual(this.f2659i, c3373u6.f2659i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v13, types: [int] */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    public final int hashCode() {
        int iHashCode = (this.f2657g.hashCode() + ((this.f2656f.hashCode() + ((this.f2655e.hashCode() + ((this.f2654d.hashCode() + ((this.f2653c.hashCode() + ((this.f2652b.hashCode() + (Long.hashCode(this.f2651a) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        boolean z = this.f2658h;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return this.f2659i.hashCode() + ((iHashCode + r1) * 31);
    }

    public final String toString() {
        return "LandingPageTelemetryMetaData(placementId=" + this.f2651a + ", impressionId=" + this.f2652b + ", placementType=" + this.f2653c + ", adType=" + this.f2654d + ", markupType=" + this.f2655e + ", creativeType=" + this.f2656f + ", metaDataBlob=" + this.f2657g + ", isRewarded=" + this.f2658h + ", landingScheme=" + this.f2659i + ')';
    }
}
