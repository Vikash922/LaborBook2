package com.inmobi.media;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import kotlin.jvm.internal.Intrinsics;
import okio.Utf8;

/* JADX INFO: loaded from: classes6.dex */
public final class N4 implements S3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ P4 f190a;

    public N4(P4 p4) {
        this.f190a = p4;
    }

    public final void a(String expandInput, R3 inputType, float f, boolean z, long j, C0510t6 c0510t6) {
        String adType;
        String creativeId;
        String impressionId;
        Q3 q3;
        Intrinsics.checkNotNullParameter(expandInput, "expandInput");
        Intrinsics.checkNotNullParameter(inputType, "inputType");
        P4 p4 = this.f190a;
        Activity activity = (Activity) p4.f212a.get();
        if (activity == null) {
            return;
        }
        if (p4.e == null) {
            Q3 q32 = new Q3(activity);
            InterfaceC0298f5 interfaceC0298f5 = p4.h;
            if (interfaceC0298f5 != null) {
                q32.setLogger(interfaceC0298f5);
            }
            q32.setId(65518);
            q32.setEmbeddedBrowserUpdateListener(p4.i);
            p4.e = q32;
        }
        InterfaceC0559x interfaceC0559x = p4.b;
        if ((interfaceC0559x instanceof Ya) && (q3 = p4.e) != null) {
            q3.setUserLeftApplicationListener(((Ya) interfaceC0559x).getListener());
        }
        Q3 q33 = p4.e;
        if (q33 != null) {
            InterfaceC0559x interfaceC0559x2 = p4.b;
            if (interfaceC0559x2 == null || (adType = interfaceC0559x2.getAdType()) == null) {
                adType = "banner";
            }
            String placementType = adType;
            InterfaceC0559x interfaceC0559x3 = p4.b;
            String impressionId2 = (interfaceC0559x3 == null || (impressionId = interfaceC0559x3.getImpressionId()) == null) ? "" : impressionId;
            InterfaceC0559x interfaceC0559x4 = p4.b;
            String creativeId2 = (interfaceC0559x4 == null || (creativeId = interfaceC0559x4.getCreativeId()) == null) ? "" : creativeId;
            Intrinsics.checkNotNullParameter(expandInput, "expandInput");
            Intrinsics.checkNotNullParameter(inputType, "inputType");
            Intrinsics.checkNotNullParameter(placementType, "placementType");
            Intrinsics.checkNotNullParameter(impressionId2, "impressionId");
            Intrinsics.checkNotNullParameter(creativeId2, "creativeId");
            if (q33.c == null) {
                Context context = q33.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                Y3 y3 = new Y3(context, j, placementType, impressionId2, creativeId2, q33.f);
                q33.c = y3;
                y3.setId(65517);
            }
            Y3 y32 = q33.c;
            if (y32 != null) {
                y32.setLandingPageTelemetryControlInfo(c0510t6);
            }
            if (q33.b != expandInput.hashCode()) {
                if (inputType == R3.f230a) {
                    Y3 y33 = q33.c;
                    if (y33 != null) {
                        y33.loadUrl(expandInput);
                    }
                } else {
                    Y3 y34 = q33.c;
                    if (y34 != null) {
                        y34.loadData(expandInput, "text/html", "UTF-8");
                    }
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(10);
                layoutParams.addRule(2, Utf8.REPLACEMENT_CODE_POINT);
                Y3 y35 = q33.c;
                if (y35 != null) {
                    y35.setLayoutParams(layoutParams);
                }
                if (q33.findViewById(65517) == null) {
                    q33.addView(q33.c, layoutParams);
                }
            }
            q33.b = expandInput.hashCode();
            if (!z) {
                View viewFindViewById = q33.findViewById(Utf8.REPLACEMENT_CODE_POINT);
                if (viewFindViewById != null) {
                    q33.removeView(viewFindViewById);
                }
            } else if (q33.findViewById(Utf8.REPLACEMENT_CODE_POINT) == null) {
                float f2 = N3.d().c;
                LinearLayout linearLayout = new LinearLayout(q33.getContext());
                linearLayout.setOrientation(0);
                linearLayout.setId(Utf8.REPLACEMENT_CODE_POINT);
                linearLayout.setWeightSum(100.0f);
                linearLayout.setBackgroundResource(R.drawable.bottom_bar);
                linearLayout.setBackgroundColor(-7829368);
                q33.setBackgroundColor(-7829368);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, (int) (48 * f2));
                layoutParams2.addRule(12);
                q33.addView(linearLayout, layoutParams2);
                if (AbstractC0576y2.a(q33.f221a)) {
                    Pd pd = q33.g;
                    if (pd != null) {
                        pd.a();
                    }
                    q33.g = new Pd(q33.f221a, new P3(layoutParams2), q33.f);
                }
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1);
                layoutParams3.weight = 25.0f;
                q33.b(linearLayout, layoutParams3);
                q33.d(linearLayout, layoutParams3);
                q33.a(linearLayout, layoutParams3);
                q33.c(linearLayout, layoutParams3);
            }
        }
        float f3 = 1 - f;
        p4.g = f3;
        P p = p4.c;
        if (p != null) {
            p.c = f3;
            p.e();
        }
        p4.c();
    }
}
