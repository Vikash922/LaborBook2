package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.X7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3032X7 {

    /* JADX INFO: renamed from: a */
    public boolean f1645a;

    /* JADX INFO: renamed from: b */
    public final C3359t7 f1646b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC3147f5 f1647c;

    /* JADX INFO: renamed from: d */
    public final String f1648d;

    /* JADX INFO: renamed from: e */
    public final C3120d8 f1649e;

    public C3032X7(Context context, AdConfig adConfig, C3359t7 mNativeAdContainer, C2920P7 dataModel, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(mNativeAdContainer, "mNativeAdContainer");
        Intrinsics.checkNotNullParameter(dataModel, "dataModel");
        this.f1646b = mNativeAdContainer;
        this.f1647c = interfaceC3147f5;
        this.f1648d = "X7";
        C3120d8 c3120d8 = new C3120d8(context, adConfig, mNativeAdContainer, dataModel, new C3018W7(this), new C3004V7(this), this, interfaceC3147f5);
        this.f1649e = c3120d8;
        C3121d9 c3121d9 = c3120d8.f2012m;
        int i = mNativeAdContainer.f2556B;
        c3121d9.getClass();
        C3121d9.f2019f = i;
    }

    /* JADX INFO: renamed from: a */
    public final C3210j8 m1912a(View view, ViewGroup parent, boolean z, GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        C3210j8 c3210j8M2066a;
        InterfaceC3147f5 interfaceC3147f5;
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewFindViewWithTag = view != null ? view.findViewWithTag("InMobiAdView") : null;
        C3210j8 c3210j8 = viewFindViewWithTag instanceof C3210j8 ? (C3210j8) viewFindViewWithTag : null;
        if (z) {
            c3210j8M2066a = this.f1649e.m2066a(c3210j8, parent, gestureDetectorOnGestureListenerC3049Ya);
        } else {
            C3120d8 c3120d8 = this.f1649e;
            c3120d8.getClass();
            Intrinsics.checkNotNullParameter(parent, "parent");
            c3120d8.f2014o = gestureDetectorOnGestureListenerC3049Ya;
            C3210j8 container = c3120d8.m2065a(c3210j8, parent);
            if (!c3120d8.f2013n) {
                C2800H7 root = c3120d8.f2002c.f1380e;
                if (container != null && root != null) {
                    Intrinsics.checkNotNullParameter(container, "container");
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    Intrinsics.checkNotNullParameter(root, "root");
                    c3120d8.m2068b((ViewGroup) container, root);
                }
            }
            c3210j8M2066a = container;
        }
        if (c3210j8 == null && (interfaceC3147f5 = this.f1647c) != null) {
            String TAG = this.f1648d;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2151b(TAG, "InMobiNative.getPrimaryView called with Non Native View.");
        }
        if (c3210j8M2066a != null) {
            c3210j8M2066a.setNativeStrandAd(this.f1646b);
        }
        if (c3210j8M2066a != null) {
            c3210j8M2066a.setTag("InMobiAdView");
        }
        return c3210j8M2066a;
    }
}
