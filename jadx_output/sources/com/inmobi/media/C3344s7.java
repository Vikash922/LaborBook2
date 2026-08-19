package com.inmobi.media;

import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.s7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3344s7 extends AbstractC3078ab {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3359t7 f2535a;

    public C3344s7(C3359t7 c3359t7) {
        this.f2535a = c3359t7;
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public final void mo1615a(HashMap params) {
        Intrinsics.checkNotNullParameter(params, "params");
        C2898O0 c2898o0 = this.f2535a.f2597w;
        if (c2898o0 != null) {
            c2898o0.m1411a();
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: c */
    public final void mo1647c() {
        C2898O0 c2898o0 = this.f2535a.f2597w;
        if (c2898o0 != null) {
            c2898o0.m1413c();
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: d */
    public final void mo1226d(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        C2898O0 c2898o0 = this.f2535a.f2597w;
        if (c2898o0 != null) {
            c2898o0.m1412b();
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: e */
    public final void mo1227e(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        C2898O0 c2898o0 = this.f2535a.f2597w;
        if (c2898o0 != null) {
            c2898o0.m1414d();
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab, com.inmobi.media.InterfaceC3009Vc
    /* JADX INFO: renamed from: a */
    public final void mo1590a() {
        C2898O0 c2898o0 = this.f2535a.f2597w;
        if (c2898o0 != null) {
            c2898o0.m1417g();
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: d */
    public final void mo2028d() {
        C2898O0 c2898o0;
        C3359t7 c3359t7 = this.f2535a;
        if (c3359t7.f2575a != 0 || (c2898o0 = c3359t7.f2597w) == null) {
            return;
        }
        c2898o0.m1415e();
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public final void mo1144a(C3334rc telemetryOnAdImpression) {
        Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
        C2898O0 c2898o0 = this.f2535a.f2597w;
        if (c2898o0 != null) {
            Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
            telemetryOnAdImpression.getClass();
            Intrinsics.checkNotNullParameter("nativeBeacon", "<set-?>");
            telemetryOnAdImpression.f2516e = "nativeBeacon";
            if (c2898o0.f1326a.m1584Z()) {
                telemetryOnAdImpression.m2383b();
            } else {
                c2898o0.f1326a.f1420D.m1375a(telemetryOnAdImpression);
            }
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public final void mo1610a(String log) {
        Intrinsics.checkNotNullParameter(log, "log");
        C2898O0 c2898o0 = this.f2535a.f2597w;
        if (c2898o0 != null) {
            Intrinsics.checkNotNullParameter(log, "log");
            InterfaceC3147f5 interfaceC3147f5 = c2898o0.f1326a.f1437j;
            if (interfaceC3147f5 != null) {
                String strM1558e = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f5).m2147a(strM1558e, "onImraidLog");
            }
            if (c2898o0.f1326a.m1584Z()) {
                return;
            }
            AbstractC2748E0 abstractC2748E0 = (AbstractC2748E0) c2898o0.f1327b.get();
            if (abstractC2748E0 != null) {
                abstractC2748E0.mo977a(log);
                return;
            }
            InterfaceC3147f5 interfaceC3147f52 = c2898o0.f1326a.f1437j;
            if (interfaceC3147f52 != null) {
                String strM1558e2 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e2, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f52).m2151b(strM1558e2, "listener is null");
            }
        }
    }
}
