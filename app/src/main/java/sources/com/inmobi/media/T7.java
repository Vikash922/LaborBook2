package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class T7 extends D7 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T7(String assetId, String assetName, E7 assetStyle, String url) {
        super(assetId, assetName, "ICON", assetStyle, 16);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(url, "url");
        this.e = url;
    }
}
