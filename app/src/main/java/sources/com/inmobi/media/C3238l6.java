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

/* JADX INFO: renamed from: com.inmobi.media.l6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3238l6 {
    /* JADX INFO: renamed from: a */
    public static void m2282a(final EnumC3178h6 funnelState, C3358t6 c3358t6, Integer num, Function2 function2) {
        Intrinsics.checkNotNullParameter(funnelState, "funnelState");
        if (c3358t6 == null || funnelState.f2145c <= c3358t6.f2553f) {
            return;
        }
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("plType", c3358t6.f2548a.f2653c);
        linkedHashMap.put("impressionId", c3358t6.f2548a.f2652b);
        linkedHashMap.put("plId", Long.valueOf(c3358t6.f2548a.f2651a));
        linkedHashMap.put("adType", c3358t6.f2548a.f2654d);
        linkedHashMap.put("markupType", c3358t6.f2548a.f2655e);
        linkedHashMap.put("creativeType", c3358t6.f2548a.f2656f);
        linkedHashMap.put("metadataBlob", c3358t6.f2548a.f2657g);
        linkedHashMap.put("isRewarded", Boolean.valueOf(c3358t6.f2548a.f2658h));
        String str = c3358t6.f2554g;
        if (str == null) {
            str = c3358t6.f2548a.f2659i;
        }
        linkedHashMap.put("trigger", str);
        linkedHashMap.put("urlType", c3358t6.f2549b);
        if (num != null) {
            linkedHashMap.put("errorCode", num);
        }
        long j = c3358t6.f2551d;
        if (j != 0) {
            ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
            linkedHashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        }
        c3358t6.f2553f = funnelState.f2145c;
        ((ScheduledThreadPoolExecutor) AbstractC3251m4.f2319b.getValue()).submit(new Runnable() { // from class: com.inmobi.media.l6$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3238l6.m2283a(linkedHashMap, funnelState);
            }
        });
        if (c3358t6.f2550c > ((TelemetryConfig.LandingPageConfig) c3358t6.f2552e.getValue()).getMaxFunnelsToTrackPerAd() || function2 == null) {
            return;
        }
        String str2 = funnelState.f2144b;
        String str3 = c3358t6.f2554g;
        if (str3 == null) {
            str3 = c3358t6.f2548a.f2659i;
        }
        function2.invoke(str2, MapsKt.mapOf(TuplesKt.m2729to("$OPENMODE", str3), TuplesKt.m2729to("$URLTYPE", c3358t6.f2549b)));
    }

    /* JADX INFO: renamed from: a */
    public static String m2280a(String str) {
        return (str == null || str.length() == 0 || !StringsKt.contains$default((CharSequence) str, (CharSequence) "://", false, 2, (Object) null)) ? CommonCssConstants.INVALID : StringsKt.startsWith(str, "inmobideeplink://", true) ? "inmobideeplink" : StringsKt.startsWith(str, "inmobinativebrowser://", true) ? "inmobinativebrowser" : StringsKt.startsWith(str, "https://", true) ? "https" : StringsKt.startsWith(str, "http://", true) ? ProxyConfig.MATCH_HTTP : StringsKt.startsWith(str, "market://", true) ? "market" : SDKConstants.PARAM_TOURNAMENTS_DEEPLINK;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m2281a(EnumC3178h6 enumC3178h6, C3358t6 c3358t6, Integer num, int i) {
        if ((i & 4) != 0) {
            num = null;
        }
        m2282a(enumC3178h6, c3358t6, num, (Function2) null);
    }

    /* JADX INFO: renamed from: a */
    public static final void m2283a(Map keyValueMap, EnumC3178h6 funnelState) {
        Intrinsics.checkNotNullParameter(keyValueMap, "$keyValueMap");
        Intrinsics.checkNotNullParameter(funnelState, "$funnelState");
        keyValueMap.put("networkType", C2751E3.m1005q());
        String str = funnelState.f2143a;
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b(str, keyValueMap, EnumC3259mc.f2349a);
    }
}
