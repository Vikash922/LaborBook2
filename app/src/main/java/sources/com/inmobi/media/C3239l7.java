package com.inmobi.media;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.l7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3239l7 extends AbstractC3026X1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3359t7 f2273a;

    public C3239l7(C3359t7 c3359t7) {
        this.f2273a = c3359t7;
    }

    @Override // com.inmobi.media.AbstractC3026X1
    /* JADX INFO: renamed from: a */
    public final void mo1328a(C3189i2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        C3359t7 c3359t7 = this.f2273a;
        LinkedHashMap linkedHashMap = c3359t7.f2572R;
        C3334rc telemetryOnAdImpression = new C3334rc(linkedHashMap != null ? (C2955S0) linkedHashMap.get("AdImpressionSuccessful") : null, c3359t7.f2583i.f2656f, c3359t7.getCreativeId(), "inmobiJson");
        Intrinsics.checkNotNullParameter("nativeBeacon", "<set-?>");
        telemetryOnAdImpression.f2516e = "nativeBeacon";
        C2898O0 c2898o0 = this.f2273a.f2597w;
        if (c2898o0 != null) {
            Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
            Intrinsics.checkNotNullParameter("nativeBeacon", "<set-?>");
            telemetryOnAdImpression.f2516e = "nativeBeacon";
            if (c2898o0.f1326a.m1584Z()) {
                telemetryOnAdImpression.m2383b();
            } else {
                c2898o0.f1326a.f1420D.m1375a(telemetryOnAdImpression);
            }
        }
    }

    @Override // com.inmobi.media.AbstractC3026X1
    /* JADX INFO: renamed from: a */
    public final void mo1329a(C3189i2 click, String reason) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(reason, "error");
        C3359t7 c3359t7 = this.f2273a;
        LinkedHashMap linkedHashMap = c3359t7.f2572R;
        C3334rc c3334rc = new C3334rc(linkedHashMap != null ? (C2955S0) linkedHashMap.get("AdImpressionSuccessful") : null, c3359t7.f2583i.f2656f, c3359t7.getCreativeId(), "inmobiJson");
        Intrinsics.checkNotNullParameter("nativeBeacon", "<set-?>");
        c3334rc.f2516e = "nativeBeacon";
        Intrinsics.checkNotNullParameter(reason, "reason");
        LinkedHashMap linkedHashMapM2382a = c3334rc.m2382a();
        linkedHashMapM2382a.put("networkType", C2751E3.m1005q());
        linkedHashMapM2382a.put("errorCode", (short) 2178);
        linkedHashMapM2382a.put("reason", reason);
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b("AdImpressionSuccessful", linkedHashMapM2382a, EnumC3259mc.f2349a);
    }
}
