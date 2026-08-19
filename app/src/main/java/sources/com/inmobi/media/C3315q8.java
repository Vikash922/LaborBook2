package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.q8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3315q8 extends C2740D7 {

    /* JADX INFO: renamed from: x */
    public final C3300p8 f2460x;

    /* JADX INFO: renamed from: y */
    public boolean f2461y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3315q8(String assetId, String assetName, C2755E7 assetStyle, C3300p8 timer) {
        super(assetId, assetName, "TIMER", assetStyle, 16);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(timer, "timer");
        this.f2460x = timer;
    }

    /* JADX INFO: renamed from: a */
    public final void m2354a(boolean z) {
        this.f2461y = z;
    }
}
