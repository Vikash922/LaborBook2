package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.za */
/* JADX INFO: loaded from: classes6.dex */
public final class C3452za {

    /* JADX INFO: renamed from: a */
    public final byte f2814a;

    /* JADX INFO: renamed from: b */
    public final String f2815b;

    public C3452za(byte b, String assetUrl) {
        Intrinsics.checkNotNullParameter(assetUrl, "assetUrl");
        this.f2814a = b;
        this.f2815b = assetUrl;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3452za)) {
            return false;
        }
        C3452za c3452za = (C3452za) obj;
        return this.f2814a == c3452za.f2814a && Intrinsics.areEqual(this.f2815b, c3452za.f2815b);
    }

    public final int hashCode() {
        return this.f2815b.hashCode() + (Byte.hashCode(this.f2814a) * 31);
    }

    public final String toString() {
        return "RawAsset(mRawAssetType=" + ((int) this.f2814a) + ", assetUrl=" + this.f2815b + ')';
    }
}
