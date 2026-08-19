package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.n8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public class C0426n8 extends D7 {
    public /* synthetic */ C0426n8(String str, String str2, C0411m8 c0411m8, String str3) {
        this(str, str2, "TEXT", c0411m8, str3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0426n8(String assetId, String assetName, String assetType, C0411m8 assetStyle, String str) {
        super(assetId, assetName, assetType, assetStyle, 16);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetType, "assetType");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        this.e = str;
    }
}
