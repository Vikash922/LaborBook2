package com.inmobi.media;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.L7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2860L7 extends C3270n8 {
    public /* synthetic */ C2860L7(String str, String str2, C2845K7 c2845k7, String str3, String str4) {
        this(str, str2, c2845k7, str3, new ArrayList(), str4);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2860L7(String assetId, String assetName, C2845K7 assetStyle, String str, List trackers, String interactionMode) {
        super(assetId, assetName, "CTA", assetStyle, str);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(interactionMode, "interactionMode");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        this.f937s.addAll(trackers);
        Intrinsics.checkNotNullParameter(interactionMode, "<set-?>");
        this.f925g = interactionMode;
    }
}
