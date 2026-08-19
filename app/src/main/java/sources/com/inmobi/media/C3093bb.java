package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.bb */
/* JADX INFO: loaded from: classes6.dex */
public final class C3093bb {

    /* JADX INFO: renamed from: a */
    public final C3038Y f1887a;

    /* JADX INFO: renamed from: b */
    public final String f1888b;

    /* JADX INFO: renamed from: c */
    public final String f1889c;

    /* JADX INFO: renamed from: d */
    public final int f1890d;

    /* JADX INFO: renamed from: e */
    public final String f1891e;

    /* JADX INFO: renamed from: f */
    public final String f1892f;

    /* JADX INFO: renamed from: g */
    public final boolean f1893g;

    /* JADX INFO: renamed from: h */
    public final int f1894h;

    /* JADX INFO: renamed from: i */
    public final C2941R0 f1895i;

    /* JADX INFO: renamed from: j */
    public final C3138eb f1896j;

    public C3093bb(C3038Y placement, String markupType, String telemetryMetadataBlob, int i, String creativeType, String creativeId, boolean z, int i2, C2941R0 adUnitTelemetryData, C3138eb renderViewTelemetryData) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(markupType, "markupType");
        Intrinsics.checkNotNullParameter(telemetryMetadataBlob, "telemetryMetadataBlob");
        Intrinsics.checkNotNullParameter(creativeType, "creativeType");
        Intrinsics.checkNotNullParameter(creativeId, "creativeId");
        Intrinsics.checkNotNullParameter(adUnitTelemetryData, "adUnitTelemetryData");
        Intrinsics.checkNotNullParameter(renderViewTelemetryData, "renderViewTelemetryData");
        this.f1887a = placement;
        this.f1888b = markupType;
        this.f1889c = telemetryMetadataBlob;
        this.f1890d = i;
        this.f1891e = creativeType;
        this.f1892f = creativeId;
        this.f1893g = z;
        this.f1894h = i2;
        this.f1895i = adUnitTelemetryData;
        this.f1896j = renderViewTelemetryData;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3093bb)) {
            return false;
        }
        C3093bb c3093bb = (C3093bb) obj;
        return Intrinsics.areEqual(this.f1887a, c3093bb.f1887a) && Intrinsics.areEqual(this.f1888b, c3093bb.f1888b) && Intrinsics.areEqual(this.f1889c, c3093bb.f1889c) && this.f1890d == c3093bb.f1890d && Intrinsics.areEqual(this.f1891e, c3093bb.f1891e) && Intrinsics.areEqual(this.f1892f, c3093bb.f1892f) && this.f1893g == c3093bb.f1893g && this.f1894h == c3093bb.f1894h && Intrinsics.areEqual(this.f1895i, c3093bb.f1895i) && Intrinsics.areEqual(this.f1896j, c3093bb.f1896j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [int] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    public final int hashCode() {
        int iHashCode = (this.f1892f.hashCode() + ((this.f1891e.hashCode() + ((Integer.hashCode(this.f1890d) + ((this.f1889c.hashCode() + ((this.f1888b.hashCode() + (this.f1887a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        boolean z = this.f1893g;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return Integer.hashCode(this.f1896j.f2049a) + ((this.f1895i.hashCode() + ((Integer.hashCode(this.f1894h) + ((iHashCode + r0) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "RenderViewMetaData(placement=" + this.f1887a + ", markupType=" + this.f1888b + ", telemetryMetadataBlob=" + this.f1889c + ", internetAvailabilityAdRetryCount=" + this.f1890d + ", creativeType=" + this.f1891e + ", creativeId=" + this.f1892f + ", isRewarded=" + this.f1893g + ", adIndex=" + this.f1894h + ", adUnitTelemetryData=" + this.f1895i + ", renderViewTelemetryData=" + this.f1896j + ')';
    }
}
