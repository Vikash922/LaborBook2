package com.inmobi.media;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import kotlin.jvm.internal.Intrinsics;
import okio.Utf8;

/* JADX INFO: renamed from: com.inmobi.media.N4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2887N4 implements InterfaceC2958S3 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2917P4 f1302a;

    public C2887N4(C2917P4 c2917p4) {
        this.f1302a = c2917p4;
    }

    /* JADX INFO: renamed from: a */
    public final void m1393a(String expandInput, EnumC2944R3 inputType, float f, boolean z, long j, C3358t6 c3358t6) {
        String adType;
        String creativeId;
        String impressionId;
        C2931Q3 c2931q3;
        Intrinsics.checkNotNullParameter(expandInput, "expandInput");
        Intrinsics.checkNotNullParameter(inputType, "inputType");
        C2917P4 c2917p4 = this.f1302a;
        Activity activity = (Activity) c2917p4.f1363a.get();
        if (activity == null) {
            return;
        }
        if (c2917p4.f1367e == null) {
            C2931Q3 c2931q32 = new C2931Q3(activity);
            InterfaceC3147f5 interfaceC3147f5 = c2917p4.f1370h;
            if (interfaceC3147f5 != null) {
                c2931q32.setLogger(interfaceC3147f5);
            }
            c2931q32.setId(65518);
            c2931q32.setEmbeddedBrowserUpdateListener(c2917p4.f1371i);
            c2917p4.f1367e = c2931q32;
        }
        InterfaceC3411x interfaceC3411x = c2917p4.f1364b;
        if ((interfaceC3411x instanceof GestureDetectorOnGestureListenerC3049Ya) && (c2931q3 = c2917p4.f1367e) != null) {
            c2931q3.setUserLeftApplicationListener(((GestureDetectorOnGestureListenerC3049Ya) interfaceC3411x).getListener());
        }
        C2931Q3 c2931q33 = c2917p4.f1367e;
        if (c2931q33 != null) {
            InterfaceC3411x interfaceC3411x2 = c2917p4.f1364b;
            if (interfaceC3411x2 == null || (adType = interfaceC3411x2.getAdType()) == null) {
                adType = "banner";
            }
            String placementType = adType;
            InterfaceC3411x interfaceC3411x3 = c2917p4.f1364b;
            String impressionId2 = (interfaceC3411x3 == null || (impressionId = interfaceC3411x3.getImpressionId()) == null) ? "" : impressionId;
            InterfaceC3411x interfaceC3411x4 = c2917p4.f1364b;
            String creativeId2 = (interfaceC3411x4 == null || (creativeId = interfaceC3411x4.getCreativeId()) == null) ? "" : creativeId;
            Intrinsics.checkNotNullParameter(expandInput, "expandInput");
            Intrinsics.checkNotNullParameter(inputType, "inputType");
            Intrinsics.checkNotNullParameter(placementType, "placementType");
            Intrinsics.checkNotNullParameter(impressionId2, "impressionId");
            Intrinsics.checkNotNullParameter(creativeId2, "creativeId");
            if (c2931q33.f1463c == null) {
                Context context = c2931q33.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                C3042Y3 c3042y3 = new C3042Y3(context, j, placementType, impressionId2, creativeId2, c2931q33.f1466f);
                c2931q33.f1463c = c3042y3;
                c3042y3.setId(65517);
            }
            C3042Y3 c3042y32 = c2931q33.f1463c;
            if (c3042y32 != null) {
                c3042y32.setLandingPageTelemetryControlInfo(c3358t6);
            }
            if (c2931q33.f1462b != expandInput.hashCode()) {
                if (inputType == EnumC2944R3.f1490a) {
                    C3042Y3 c3042y33 = c2931q33.f1463c;
                    if (c3042y33 != null) {
                        c3042y33.loadUrl(expandInput);
                    }
                } else {
                    C3042Y3 c3042y34 = c2931q33.f1463c;
                    if (c3042y34 != null) {
                        c3042y34.loadData(expandInput, "text/html", "UTF-8");
                    }
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(10);
                layoutParams.addRule(2, Utf8.REPLACEMENT_CODE_POINT);
                C3042Y3 c3042y35 = c2931q33.f1463c;
                if (c3042y35 != null) {
                    c3042y35.setLayoutParams(layoutParams);
                }
                if (c2931q33.findViewById(65517) == null) {
                    c2931q33.addView(c2931q33.f1463c, layoutParams);
                }
            }
            c2931q33.f1462b = expandInput.hashCode();
            if (!z) {
                View viewFindViewById = c2931q33.findViewById(Utf8.REPLACEMENT_CODE_POINT);
                if (viewFindViewById != null) {
                    c2931q33.removeView(viewFindViewById);
                }
            } else if (c2931q33.findViewById(Utf8.REPLACEMENT_CODE_POINT) == null) {
                float f2 = AbstractC2886N3.m1388d().f1332c;
                LinearLayout linearLayout = new LinearLayout(c2931q33.getContext());
                linearLayout.setOrientation(0);
                linearLayout.setId(Utf8.REPLACEMENT_CODE_POINT);
                linearLayout.setWeightSum(100.0f);
                linearLayout.setBackgroundResource(R.drawable.bottom_bar);
                linearLayout.setBackgroundColor(-7829368);
                c2931q33.setBackgroundColor(-7829368);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, (int) (48 * f2));
                layoutParams2.addRule(12);
                c2931q33.addView(linearLayout, layoutParams2);
                if (AbstractC3429y2.m2606a(c2931q33.f1461a)) {
                    C2926Pd c2926Pd = c2931q33.f1467g;
                    if (c2926Pd != null) {
                        c2926Pd.m1535a();
                    }
                    c2931q33.f1467g = new C2926Pd(c2931q33.f1461a, new C2916P3(layoutParams2), c2931q33.f1466f);
                }
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1);
                layoutParams3.weight = 25.0f;
                c2931q33.m1718b(linearLayout, layoutParams3);
                c2931q33.m1720d(linearLayout, layoutParams3);
                c2931q33.m1717a(linearLayout, layoutParams3);
                c2931q33.m1719c(linearLayout, layoutParams3);
            }
        }
        float f3 = 1 - f;
        c2917p4.f1369g = f3;
        AbstractC2912P abstractC2912P = c2917p4.f1365c;
        if (abstractC2912P != null) {
            abstractC2912P.f1348c = f3;
            abstractC2912P.m1425e();
        }
        c2917p4.m1462c();
    }
}
