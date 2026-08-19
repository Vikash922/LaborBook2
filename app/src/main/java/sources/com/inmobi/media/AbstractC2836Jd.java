package com.inmobi.media;

import android.os.Build;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Jd */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2836Jd {
    /* JADX INFO: renamed from: a */
    public static boolean m1205a(WebView view, RenderProcessGoneDetail renderProcessGoneDetail, String source) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(source, "source");
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.m2729to("source", source), TuplesKt.m2729to("isCrashed", Boolean.valueOf(renderProcessGoneDetail != null ? renderProcessGoneDetail.didCrash() : false)));
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b("WebViewRenderProcessGoneEvent", mapMutableMapOf, EnumC3259mc.f2349a);
        view.destroy();
        return true;
    }
}
