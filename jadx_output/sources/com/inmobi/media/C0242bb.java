package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.bb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0242bb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Y f313a;
    public final String b;
    public final String c;
    public final int d;
    public final String e;
    public final String f;
    public final boolean g;
    public final int h;
    public final R0 i;
    public final C0289eb j;

    public C0242bb(Y placement, String markupType, String telemetryMetadataBlob, int i, String creativeType, String creativeId, boolean z, int i2, R0 adUnitTelemetryData, C0289eb renderViewTelemetryData) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(markupType, "markupType");
        Intrinsics.checkNotNullParameter(telemetryMetadataBlob, "telemetryMetadataBlob");
        Intrinsics.checkNotNullParameter(creativeType, "creativeType");
        Intrinsics.checkNotNullParameter(creativeId, "creativeId");
        Intrinsics.checkNotNullParameter(adUnitTelemetryData, "adUnitTelemetryData");
        Intrinsics.checkNotNullParameter(renderViewTelemetryData, "renderViewTelemetryData");
        this.f313a = placement;
        this.b = markupType;
        this.c = telemetryMetadataBlob;
        this.d = i;
        this.e = creativeType;
        this.f = creativeId;
        this.g = z;
        this.h = i2;
        this.i = adUnitTelemetryData;
        this.j = renderViewTelemetryData;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0242bb)) {
            return false;
        }
        C0242bb c0242bb = (C0242bb) obj;
        return Intrinsics.areEqual(this.f313a, c0242bb.f313a) && Intrinsics.areEqual(this.b, c0242bb.b) && Intrinsics.areEqual(this.c, c0242bb.c) && this.d == c0242bb.d && Intrinsics.areEqual(this.e, c0242bb.e) && Intrinsics.areEqual(this.f, c0242bb.f) && this.g == c0242bb.g && this.h == c0242bb.h && Intrinsics.areEqual(this.i, c0242bb.i) && Intrinsics.areEqual(this.j, c0242bb.j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [int] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    public final int hashCode() {
        int iHashCode = (this.f.hashCode() + ((this.e.hashCode() + ((Integer.hashCode(this.d) + ((this.c.hashCode() + ((this.b.hashCode() + (this.f313a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        boolean z = this.g;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return Integer.hashCode(this.j.f343a) + ((this.i.hashCode() + ((Integer.hashCode(this.h) + ((iHashCode + r0) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "RenderViewMetaData(placement=" + this.f313a + ", markupType=" + this.b + ", telemetryMetadataBlob=" + this.c + ", internetAvailabilityAdRetryCount=" + this.d + ", creativeType=" + this.e + ", creativeId=" + this.f + ", isRewarded=" + this.g + ", adIndex=" + this.h + ", adUnitTelemetryData=" + this.i + ", renderViewTelemetryData=" + this.j + ')';
    }
}
