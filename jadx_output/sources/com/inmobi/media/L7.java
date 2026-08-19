package com.inmobi.media;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class L7 extends C0426n8 {
    public /* synthetic */ L7(String str, String str2, K7 k7, String str3, String str4) {
        this(str, str2, k7, str3, new ArrayList(), str4);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L7(String assetId, String assetName, K7 assetStyle, String str, List trackers, String interactionMode) {
        super(assetId, assetName, "CTA", assetStyle, str);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(interactionMode, "interactionMode");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        this.s.addAll(trackers);
        Intrinsics.checkNotNullParameter(interactionMode, "<set-?>");
        this.g = interactionMode;
    }
}
