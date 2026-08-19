package com.inmobi.media;

import android.content.Context;
import android.os.Handler;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.I0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2808I0 extends AbstractRunnableC2749E1 {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ AbstractC2928Q0 f1101d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2808I0(AbstractC2928Q0 abstractC2928Q0) {
        super(abstractC2928Q0);
        this.f1101d = abstractC2928Q0;
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: a */
    public final void mo991a() {
        HashMap mapM2345a;
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f956b.get();
        if (abstractC2928Q0 != null) {
            try {
                byte bMo900J = abstractC2928Q0.mo900J();
                JSONObject pubContent = new JSONObject(abstractC2928Q0.m1572L());
                AdConfig adConfig = abstractC2928Q0.m1680j();
                Intrinsics.checkNotNull(adConfig);
                if (abstractC2928Q0.m1709y() == null) {
                    mapM2345a = null;
                } else {
                    boolean z = C3301p9.f2439a;
                    C3412x0 c3412x0M1709y = abstractC2928Q0.m1709y();
                    mapM2345a = C3301p9.m2345a(c3412x0M1709y != null ? c3412x0M1709y.m2578h() : null);
                }
                InterfaceC3147f5 interfaceC3147f5 = this.f1101d.f1437j;
                Intrinsics.checkNotNullParameter(pubContent, "pubContent");
                Intrinsics.checkNotNullParameter(adConfig, "adConfig");
                final C2920P7 c2920p7 = new C2920P7(bMo900J, pubContent, null, false, adConfig, mapM2345a, null, interfaceC3147f5);
                Handler handlerM1565D = this.f1101d.m1565D();
                if (handlerM1565D != null) {
                    final AbstractC2928Q0 abstractC2928Q02 = this.f1101d;
                    handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.I0$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            C2808I0.m1158a(c2920p7, abstractC2928Q02);
                        }
                    });
                }
            } catch (Exception e) {
                InterfaceC3147f5 interfaceC3147f52 = this.f1101d.f1437j;
                if (interfaceC3147f52 != null) {
                    String strM1558e = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f52).m2148a(strM1558e, "Exception for handleInterActive ", e);
                }
                abstractC2928Q0.m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 76);
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            }
        }
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: c */
    public final void mo993c() {
        super.mo993c();
        AbstractC2928Q0 abstractC2928Q0 = (AbstractC2928Q0) this.f956b.get();
        if (abstractC2928Q0 != null) {
            abstractC2928Q0.m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), true, (short) 40);
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1158a(C2920P7 dataModel, AbstractC2928Q0 this$0) {
        Intrinsics.checkNotNullParameter(dataModel, "$dataModel");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            C3151f9 c3151f9 = dataModel.f1393r;
            C3171h c3171hM1688m = this$0.m1688m();
            if (c3151f9 == null || this$0.m1700t() == null || c3171hM1688m == null) {
                return;
            }
            Context contextM1700t = this$0.m1700t();
            Intrinsics.checkNotNull(contextM1700t);
            this$0.f1441n = new GestureDetectorOnGestureListenerC3049Ya(contextM1700t, this$0.mo900J(), this$0.m1657d(0), this$0.m1690n(), false, null, 0L, null, null, 240);
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaM1707x = this$0.m1707x();
            if (gestureDetectorOnGestureListenerC3049YaM1707x != null) {
                gestureDetectorOnGestureListenerC3049YaM1707x.setAdType(this$0.m1570I().m1929b());
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaM1707x2 = this$0.m1707x();
            if (gestureDetectorOnGestureListenerC3049YaM1707x2 != null) {
                AbstractC3078ab abstractC3078ab = this$0.f1427K;
                AdConfig adConfigM1680j = this$0.m1680j();
                Intrinsics.checkNotNull(adConfigM1680j);
                gestureDetectorOnGestureListenerC3049YaM1707x2.m1952a(abstractC3078ab, adConfigM1680j);
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaM1707x3 = this$0.m1707x();
            if (gestureDetectorOnGestureListenerC3049YaM1707x3 != null) {
                InterfaceC3147f5 interfaceC3147f5 = gestureDetectorOnGestureListenerC3049YaM1707x3.f1749i;
                if (interfaceC3147f5 != null) {
                    String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2147a(TAG, "disableUrlsToOpenInExternalApp " + gestureDetectorOnGestureListenerC3049YaM1707x3);
                }
                gestureDetectorOnGestureListenerC3049YaM1707x3.f1769s = true;
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaM1707x4 = this$0.m1707x();
            if (gestureDetectorOnGestureListenerC3049YaM1707x4 != null) {
                gestureDetectorOnGestureListenerC3049YaM1707x4.setBlobProvider(this$0);
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaM1707x5 = this$0.m1707x();
            if (gestureDetectorOnGestureListenerC3049YaM1707x5 != null) {
                gestureDetectorOnGestureListenerC3049YaM1707x5.setPreloadView(true);
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaM1707x6 = this$0.m1707x();
            if (gestureDetectorOnGestureListenerC3049YaM1707x6 != null) {
                gestureDetectorOnGestureListenerC3049YaM1707x6.setPlacementId(this$0.m1570I().m1938l());
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaM1707x7 = this$0.m1707x();
            if (gestureDetectorOnGestureListenerC3049YaM1707x7 != null) {
                gestureDetectorOnGestureListenerC3049YaM1707x7.setCreativeId(c3171hM1688m.m2199o());
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaM1707x8 = this$0.m1707x();
            if (gestureDetectorOnGestureListenerC3049YaM1707x8 != null) {
                gestureDetectorOnGestureListenerC3049YaM1707x8.setAllowAutoRedirection(this$0.m1642b(0));
            }
            AbstractC2928Q0.m1544a(this$0, c3171hM1688m, this$0.m1707x());
            if (this$0.m1579T() == 0) {
                this$0.m1621a(true, this$0.m1707x());
            }
            if (Intrinsics.areEqual("URL", c3151f9.f2069y)) {
                GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaM1707x9 = this$0.m1707x();
                if (gestureDetectorOnGestureListenerC3049YaM1707x9 != null) {
                    Object obj = c3151f9.f923e;
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                    gestureDetectorOnGestureListenerC3049YaM1707x9.m1967d((String) obj);
                    return;
                }
                return;
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaM1707x10 = this$0.m1707x();
            if (gestureDetectorOnGestureListenerC3049YaM1707x10 != null) {
                Object obj2 = c3151f9.f923e;
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                gestureDetectorOnGestureListenerC3049YaM1707x10.m1964c((String) obj2);
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f52 = this$0.f1437j;
            if (interfaceC3147f52 != null) {
                String strM1558e = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f52).m2148a(strM1558e, "Exception for handleInterActive ", e);
            }
            this$0.m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 76);
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }
}
