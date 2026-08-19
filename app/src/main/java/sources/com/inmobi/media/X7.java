package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class X7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f279a;
    public final C0511t7 b;
    public final InterfaceC0298f5 c;
    public final String d;
    public final C0270d8 e;

    public X7(Context context, AdConfig adConfig, C0511t7 mNativeAdContainer, P7 dataModel, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(mNativeAdContainer, "mNativeAdContainer");
        Intrinsics.checkNotNullParameter(dataModel, "dataModel");
        this.b = mNativeAdContainer;
        this.c = interfaceC0298f5;
        this.d = "X7";
        C0270d8 c0270d8 = new C0270d8(context, adConfig, mNativeAdContainer, dataModel, new W7(this), new V7(this), this, interfaceC0298f5);
        this.e = c0270d8;
        C0271d9 c0271d9 = c0270d8.m;
        int i = mNativeAdContainer.B;
        c0271d9.getClass();
        C0271d9.f = i;
    }

    public final C0365j8 a(View view, ViewGroup parent, boolean z, Ya ya) {
        C0365j8 c0365j8A;
        InterfaceC0298f5 interfaceC0298f5;
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewFindViewWithTag = view != null ? view.findViewWithTag("InMobiAdView") : null;
        C0365j8 c0365j8 = viewFindViewWithTag instanceof C0365j8 ? (C0365j8) viewFindViewWithTag : null;
        if (z) {
            c0365j8A = this.e.a(c0365j8, parent, ya);
        } else {
            C0270d8 c0270d8 = this.e;
            c0270d8.getClass();
            Intrinsics.checkNotNullParameter(parent, "parent");
            c0270d8.o = ya;
            C0365j8 container = c0270d8.a(c0365j8, parent);
            if (!c0270d8.n) {
                H7 root = c0270d8.c.e;
                if (container != null && root != null) {
                    Intrinsics.checkNotNullParameter(container, "container");
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    Intrinsics.checkNotNullParameter(root, "root");
                    c0270d8.b((ViewGroup) container, root);
                }
            }
            c0365j8A = container;
        }
        if (c0365j8 == null && (interfaceC0298f5 = this.c) != null) {
            String TAG = this.d;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).b(TAG, "InMobiNative.getPrimaryView called with Non Native View.");
        }
        if (c0365j8A != null) {
            c0365j8A.setNativeStrandAd(this.b);
        }
        if (c0365j8A != null) {
            c0365j8A.setTag("InMobiAdView");
        }
        return c0365j8A;
    }
}
