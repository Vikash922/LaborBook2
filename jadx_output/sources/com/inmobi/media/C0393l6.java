package com.inmobi.media;

import android.os.SystemClock;
import androidx.webkit.ProxyConfig;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.inmobi.commons.core.configs.TelemetryConfig;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.l6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0393l6 {
    public static void a(final EnumC0332h6 funnelState, C0510t6 c0510t6, Integer num, Function2 function2) {
        Intrinsics.checkNotNullParameter(funnelState, "funnelState");
        if (c0510t6 == null || funnelState.c <= c0510t6.f) {
            return;
        }
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("plType", c0510t6.f489a.c);
        linkedHashMap.put("impressionId", c0510t6.f489a.b);
        linkedHashMap.put("plId", Long.valueOf(c0510t6.f489a.f499a));
        linkedHashMap.put("adType", c0510t6.f489a.d);
        linkedHashMap.put("markupType", c0510t6.f489a.e);
        linkedHashMap.put("creativeType", c0510t6.f489a.f);
        linkedHashMap.put("metadataBlob", c0510t6.f489a.g);
        linkedHashMap.put("isRewarded", Boolean.valueOf(c0510t6.f489a.h));
        String str = c0510t6.g;
        if (str == null) {
            str = c0510t6.f489a.i;
        }
        linkedHashMap.put("trigger", str);
        linkedHashMap.put("urlType", c0510t6.b);
        if (num != null) {
            linkedHashMap.put("errorCode", num);
        }
        long j = c0510t6.d;
        if (j != 0) {
            ScheduledExecutorService scheduledExecutorService = Xc.f282a;
            linkedHashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        }
        c0510t6.f = funnelState.c;
        ((ScheduledThreadPoolExecutor) AbstractC0407m4.b.getValue()).submit(new Runnable() { // from class: com.inmobi.media.l6$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0393l6.a(linkedHashMap, funnelState);
            }
        });
        if (c0510t6.c > ((TelemetryConfig.LandingPageConfig) c0510t6.e.getValue()).getMaxFunnelsToTrackPerAd() || function2 == null) {
            return;
        }
        String str2 = funnelState.b;
        String str3 = c0510t6.g;
        if (str3 == null) {
            str3 = c0510t6.f489a.i;
        }
        function2.invoke(str2, MapsKt.mapOf(TuplesKt.to("$OPENMODE", str3), TuplesKt.to("$URLTYPE", c0510t6.b)));
    }

    public static String a(String str) {
        return (str == null || str.length() == 0 || !StringsKt.contains$default((CharSequence) str, (CharSequence) "://", false, 2, (Object) null)) ? CommonCssConstants.INVALID : StringsKt.startsWith(str, "inmobideeplink://", true) ? "inmobideeplink" : StringsKt.startsWith(str, "inmobinativebrowser://", true) ? "inmobinativebrowser" : StringsKt.startsWith(str, "https://", true) ? "https" : StringsKt.startsWith(str, "http://", true) ? ProxyConfig.MATCH_HTTP : StringsKt.startsWith(str, "market://", true) ? "market" : SDKConstants.PARAM_TOURNAMENTS_DEEPLINK;
    }

    public static /* synthetic */ void a(EnumC0332h6 enumC0332h6, C0510t6 c0510t6, Integer num, int i) {
        if ((i & 4) != 0) {
            num = null;
        }
        a(enumC0332h6, c0510t6, num, (Function2) null);
    }

    public static final void a(Map keyValueMap, EnumC0332h6 funnelState) {
        Intrinsics.checkNotNullParameter(keyValueMap, "$keyValueMap");
        Intrinsics.checkNotNullParameter(funnelState, "$funnelState");
        keyValueMap.put("networkType", E3.q());
        String str = funnelState.f371a;
        C0353ic c0353ic = C0353ic.f388a;
        C0353ic.b(str, keyValueMap, EnumC0415mc.f426a);
    }
}
