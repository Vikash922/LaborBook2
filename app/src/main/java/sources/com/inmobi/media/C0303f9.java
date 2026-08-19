package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.f9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0303f9 extends D7 {
    public final boolean x;
    public String y;
    public boolean z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0303f9(String assetId, String assetName, E7 assetStyle, String textValue, boolean z) {
        super(assetId, assetName, "WEBVIEW", assetStyle, 16);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(textValue, "textValue");
        this.x = z;
        this.e = textValue;
    }

    public final void b() {
        this.z = true;
    }

    public final void e(String str) {
        this.y = str;
    }
}
