package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.n8 */
/* JADX INFO: loaded from: classes6.dex */
public class C3270n8 extends C2740D7 {
    public /* synthetic */ C3270n8(String str, String str2, C3255m8 c3255m8, String str3) {
        this(str, str2, "TEXT", c3255m8, str3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3270n8(String assetId, String assetName, String assetType, C3255m8 assetStyle, String str) {
        super(assetId, assetName, assetType, assetStyle, 16);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetType, "assetType");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        this.f923e = str;
    }
}
