package com.inmobi.media;

import android.os.Build;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class S7 extends D7 {
    public final String x;
    public final Lazy y;

    public /* synthetic */ S7(String str, String str2, E7 e7, String str3, String str4, JSONObject jSONObject) {
        this(str, str2, e7, str3, new ArrayList(), str4, jSONObject);
    }

    public static final InterfaceC0536v4 a(S7 s7, String str) {
        s7.getClass();
        return Build.VERSION.SDK_INT < 28 ? new C0550w4(str) : new V0(str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public S7(String assetId, String assetName, E7 assetStyle, final String url, List trackers, final String interactionMode, final JSONObject jSONObject) {
        super(assetId, assetName, "GIF", assetStyle, trackers);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(interactionMode, "interactionMode");
        this.x = "S7";
        this.y = LazyKt.lazy(new R7(this, url));
        Kb.a(new Runnable() { // from class: com.inmobi.media.S7$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                S7.a(url, this, jSONObject, interactionMode);
            }
        });
    }

    public static final void a(String url, S7 this$0, JSONObject jSONObject, String interactionMode) {
        Intrinsics.checkNotNullParameter(url, "$url");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(interactionMode, "$interactionMode");
        C0356j c0356jB = Db.a().b(url);
        this$0.e = c0356jB != null ? c0356jB.c : null;
        if (jSONObject != null) {
            Intrinsics.checkNotNullParameter(interactionMode, "<set-?>");
            this$0.g = interactionMode;
        }
    }
}
