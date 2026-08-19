package com.inmobi.media;

import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.U7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2990U7 extends C2740D7 {
    public /* synthetic */ C2990U7(String str, String str2, C2755E7 c2755e7, String str3, String str4, JSONObject jSONObject) {
        this(str, str2, c2755e7, str3, new ArrayList(), str4, jSONObject);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990U7(String assetId, String assetName, C2755E7 assetStyle, String url, List trackers, String interactionMode, JSONObject jSONObject) {
        super(assetId, assetName, ShareConstants.IMAGE_URL, assetStyle, trackers);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(interactionMode, "interactionMode");
        this.f923e = url;
        if (jSONObject != null) {
            Intrinsics.checkNotNullParameter(interactionMode, "<set-?>");
            this.f925g = interactionMode;
        }
    }
}
