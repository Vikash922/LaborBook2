package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.za, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0600za {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte f550a;
    public final String b;

    public C0600za(byte b, String assetUrl) {
        Intrinsics.checkNotNullParameter(assetUrl, "assetUrl");
        this.f550a = b;
        this.b = assetUrl;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0600za)) {
            return false;
        }
        C0600za c0600za = (C0600za) obj;
        return this.f550a == c0600za.f550a && Intrinsics.areEqual(this.b, c0600za.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Byte.hashCode(this.f550a) * 31);
    }

    public final String toString() {
        return "RawAsset(mRawAssetType=" + ((int) this.f550a) + ", assetUrl=" + this.b + ')';
    }
}
