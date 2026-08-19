package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.pd */
/* JADX INFO: loaded from: classes6.dex */
public final class C3305pd extends AbstractC3260md {

    /* JADX INFO: renamed from: e */
    public final C2696A8 f2443e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC3147f5 f2444f;

    /* JADX INFO: renamed from: g */
    public boolean f2445g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3305pd(C2696A8 mNativeVideoAdContainer, InterfaceC3147f5 interfaceC3147f5) {
        super(mNativeVideoAdContainer);
        Intrinsics.checkNotNullParameter(mNativeVideoAdContainer, "mNativeVideoAdContainer");
        this.f2443e = mNativeVideoAdContainer;
        this.f2444f = interfaceC3147f5;
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
        if (this.f2445g || (contextM2448j = this.f2443e.m2448j()) == null) {
            return null;
        }
        AdConfig adConfig = this.f2355d;
        C2696A8 c2696a8 = this.f2443e;
        C2920P7 c2920p7 = c2696a8.f2576b;
        Intrinsics.checkNotNull(c2920p7, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeDataModel");
        C3032X7 c3032x7 = new C3032X7(contextM2448j, adConfig, c2696a8, c2920p7, this.f2444f);
        this.f2353b = c3032x7;
        this.f2354c = new WeakReference(c3032x7.m1912a(view, parent, false, null));
        C2696A8 c2696a82 = this.f2443e;
        c2696a82.getClass();
        AbstractC3311q4.m2352a(new C3209j7(c2696a82, c2696a82), "EndCardBuilderTask");
        return mo963b();
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo957a() {
        if (this.f2445g) {
            return;
        }
        this.f2445g = true;
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
        super.mo957a();
    }
}
