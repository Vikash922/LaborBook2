package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.f9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3151f9 extends C2740D7 {

    /* JADX INFO: renamed from: x */
    public final boolean f2068x;

    /* JADX INFO: renamed from: y */
    public String f2069y;

    /* JADX INFO: renamed from: z */
    public boolean f2070z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3151f9(String assetId, String assetName, C2755E7 assetStyle, String textValue, boolean z) {
        super(assetId, assetName, "WEBVIEW", assetStyle, 16);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(textValue, "textValue");
        this.f2068x = z;
        this.f923e = textValue;
    }

    /* JADX INFO: renamed from: b */
    public final void m2135b() {
        this.f2070z = true;
    }

    /* JADX INFO: renamed from: e */
    public final void m2136e(String str) {
        this.f2069y = str;
    }
}
