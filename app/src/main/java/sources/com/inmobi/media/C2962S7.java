package com.inmobi.media;

import android.os.Build;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.S7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2962S7 extends C2740D7 {

    /* JADX INFO: renamed from: x */
    public final String f1537x;

    /* JADX INFO: renamed from: y */
    public final Lazy f1538y;

    public /* synthetic */ C2962S7(String str, String str2, C2755E7 c2755e7, String str3, String str4, JSONObject jSONObject) {
        this(str, str2, c2755e7, str3, new ArrayList(), str4, jSONObject);
    }

    /* JADX INFO: renamed from: a */
    public static final InterfaceC3386v4 m1798a(C2962S7 c2962s7, String str) {
        c2962s7.getClass();
        return Build.VERSION.SDK_INT < 28 ? new C3401w4(str) : new C2997V0(str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2962S7(String assetId, String assetName, C2755E7 assetStyle, final String url, List trackers, final String interactionMode, final JSONObject jSONObject) {
        super(assetId, assetName, "GIF", assetStyle, trackers);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(interactionMode, "interactionMode");
        this.f1537x = "S7";
        this.f1538y = LazyKt.lazy(new C2948R7(this, url));
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.S7$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2962S7.m1799a(url, this, jSONObject, interactionMode);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m1799a(String url, C2962S7 this$0, JSONObject jSONObject, String interactionMode) {
        Intrinsics.checkNotNullParameter(url, "$url");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(interactionMode, "$interactionMode");
        C3201j c3201jM2272b = AbstractC2744Db.m966a().m2272b(url);
        this$0.f923e = c3201jM2272b != null ? c3201jM2272b.f2205c : null;
        if (jSONObject != null) {
            Intrinsics.checkNotNullParameter(interactionMode, "<set-?>");
            this$0.f925g = interactionMode;
        }
    }
}
