package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.od */
/* JADX INFO: loaded from: classes6.dex */
public final class C3290od extends AbstractC3260md {

    /* JADX INFO: renamed from: e */
    public final C3359t7 f2420e;

    /* JADX INFO: renamed from: f */
    public GestureDetectorOnGestureListenerC3049Ya f2421f;

    /* JADX INFO: renamed from: g */
    public final InterfaceC3147f5 f2422g;

    /* JADX INFO: renamed from: h */
    public final String f2423h;

    /* JADX INFO: renamed from: i */
    public boolean f2424i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3290od(C3359t7 mNativeAdContainer, GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya, InterfaceC3147f5 interfaceC3147f5) {
        super(mNativeAdContainer);
        Intrinsics.checkNotNullParameter(mNativeAdContainer, "mNativeAdContainer");
        this.f2420e = mNativeAdContainer;
        this.f2421f = gestureDetectorOnGestureListenerC3049Ya;
        this.f2422g = interfaceC3147f5;
        this.f2423h = "InMobi";
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo958a(byte b) {
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo961a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo962a(HashMap map) {
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: e */
    public final void mo965e() {
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo959a(Context context, byte b) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo960a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final View mo956a(View view, ViewGroup parent, boolean z) {
        Context contextM2448j;
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (this.f2424i || (contextM2448j = this.f2420e.m2448j()) == null) {
            return null;
        }
        AdConfig adConfig = this.f2355d;
        C3359t7 c3359t7 = this.f2420e;
        C2920P7 c2920p7 = c3359t7.f2576b;
        Intrinsics.checkNotNull(c2920p7, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeDataModel");
        this.f2353b = new C3032X7(contextM2448j, adConfig, c3359t7, c2920p7, this.f2422g);
        InterfaceC3147f5 interfaceC3147f5 = this.f2422g;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2151b(this.f2423h, "Ad markup loaded into the container will be inflated into a View.");
        }
        C3032X7 c3032x7 = this.f2353b;
        this.f2354c = new WeakReference(c3032x7 != null ? c3032x7.m1912a(view, parent, z, this.f2421f) : null);
        C3359t7 c3359t72 = this.f2420e;
        c3359t72.getClass();
        AbstractC3311q4.m2352a(new C3209j7(c3359t72, c3359t72), "EndCardBuilderTask");
        return mo963b();
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo957a() {
        if (this.f2424i) {
            return;
        }
        this.f2424i = true;
        C3032X7 c3032x7 = this.f2353b;
        if (c3032x7 != null) {
            C3120d8 c3120d8 = c3032x7.f1649e;
            c3120d8.f2013n = true;
            c3120d8.f2008i.clear();
            c3120d8.f2015p = null;
            InterfaceC3240l8 interfaceC3240l8 = c3120d8.f2009j;
            if (interfaceC3240l8 != null) {
                interfaceC3240l8.destroy();
            }
            c3120d8.f2009j = null;
            if (!c3032x7.f1645a) {
                c3032x7.f1645a = true;
            }
        }
        this.f2353b = null;
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f2421f;
        if (gestureDetectorOnGestureListenerC3049Ya != null) {
            gestureDetectorOnGestureListenerC3049Ya.mo845b();
        }
        this.f2421f = null;
        super.mo957a();
    }
}
