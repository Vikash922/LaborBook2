package com.inmobi.media;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.l7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0395l7 extends X1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0511t7 f412a;

    public C0395l7(C0511t7 c0511t7) {
        this.f412a = c0511t7;
    }

    @Override // com.inmobi.media.X1
    public final void a(C0343i2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        C0511t7 c0511t7 = this.f412a;
        LinkedHashMap linkedHashMap = c0511t7.R;
        C0488rc telemetryOnAdImpression = new C0488rc(linkedHashMap != null ? (S0) linkedHashMap.get("AdImpressionSuccessful") : null, c0511t7.i.f, c0511t7.getCreativeId(), "inmobiJson");
        Intrinsics.checkNotNullParameter("nativeBeacon", "<set-?>");
        telemetryOnAdImpression.e = "nativeBeacon";
        O0 o0 = this.f412a.w;
        if (o0 != null) {
            Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
            Intrinsics.checkNotNullParameter("nativeBeacon", "<set-?>");
            telemetryOnAdImpression.e = "nativeBeacon";
            if (o0.f197a.Z()) {
                telemetryOnAdImpression.b();
            } else {
                o0.f197a.D.a(telemetryOnAdImpression);
            }
        }
    }

    @Override // com.inmobi.media.X1
    public final void a(C0343i2 click, String reason) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(reason, "error");
        C0511t7 c0511t7 = this.f412a;
        LinkedHashMap linkedHashMap = c0511t7.R;
        C0488rc c0488rc = new C0488rc(linkedHashMap != null ? (S0) linkedHashMap.get("AdImpressionSuccessful") : null, c0511t7.i.f, c0511t7.getCreativeId(), "inmobiJson");
        Intrinsics.checkNotNullParameter("nativeBeacon", "<set-?>");
        c0488rc.e = "nativeBeacon";
        Intrinsics.checkNotNullParameter(reason, "reason");
        LinkedHashMap linkedHashMapA = c0488rc.a();
        linkedHashMapA.put("networkType", E3.q());
        linkedHashMapA.put("errorCode", (short) 2178);
        linkedHashMapA.put("reason", reason);
        C0353ic c0353ic = C0353ic.f388a;
        C0353ic.b("AdImpressionSuccessful", linkedHashMapA, EnumC0415mc.f426a);
    }
}
