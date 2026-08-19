package com.inmobi.media;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;

/* JADX INFO: renamed from: com.inmobi.media.w8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3405w8 extends C3171h {

    /* JADX INFO: renamed from: a */
    public final String f2719a;

    /* JADX INFO: renamed from: b */
    public final String f2720b;

    /* JADX INFO: renamed from: c */
    public final String f2721c;

    /* JADX INFO: renamed from: d */
    public final ArrayList f2722d;

    /* JADX INFO: renamed from: e */
    public final ArrayList f2723e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3405w8(C3171h ad, JSONArray jSONArray, String videoUrl, String videoDuration, String str, ArrayList trackers, ArrayList companionAds) {
        super(ad, jSONArray);
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(videoUrl, "videoUrl");
        Intrinsics.checkNotNullParameter(videoDuration, "videoDuration");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(companionAds, "companionAds");
        this.f2719a = videoUrl;
        this.f2720b = videoDuration;
        this.f2721c = str;
        this.f2722d = trackers;
        this.f2723e = companionAds;
    }
}
