package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.T7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2976T7 extends C2740D7 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2976T7(String assetId, String assetName, C2755E7 assetStyle, String url) {
        super(assetId, assetName, "ICON", assetStyle, 16);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(url, "url");
        this.f923e = url;
    }
}
