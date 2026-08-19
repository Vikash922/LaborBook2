package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.q8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0471q8 extends D7 {
    public final C0456p8 x;
    public boolean y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0471q8(String assetId, String assetName, E7 assetStyle, C0456p8 timer) {
        super(assetId, assetName, "TIMER", assetStyle, 16);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(timer, "timer");
        this.x = timer;
    }

    public final void a(boolean z) {
        this.y = z;
    }
}
