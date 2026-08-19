package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.internal.AnalyticsEvents;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.q5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3312q5 extends AbstractC3260md {

    /* JADX INFO: renamed from: e */
    public final C3275nd f2451e;

    /* JADX INFO: renamed from: f */
    public final C2722C4 f2452f;

    /* JADX INFO: renamed from: g */
    public final InterfaceC3147f5 f2453g;

    /* JADX INFO: renamed from: h */
    public final String f2454h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3312q5(GestureDetectorOnGestureListenerC3049Ya container, C3275nd mViewableAd, C2722C4 htmlAdTracker, InterfaceC3147f5 interfaceC3147f5) {
        super(container);
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        Intrinsics.checkNotNullParameter(htmlAdTracker, "htmlAdTracker");
        this.f2451e = mViewableAd;
        this.f2452f = htmlAdTracker;
        this.f2453g = interfaceC3147f5;
        this.f2454h = "q5";
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final View mo956a(View view, ViewGroup parent, boolean z) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewMo963b = this.f2451e.mo963b();
        if (viewMo963b != null) {
            this.f2452f.m893a(viewMo963b);
            this.f2452f.m895b(viewMo963b);
        }
        C3275nd c3275nd = this.f2451e;
        c3275nd.getClass();
        Intrinsics.checkNotNullParameter(parent, "parent");
        return c3275nd.mo964d();
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo958a(byte b) {
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: b */
    public final View mo963b() {
        return this.f2451e.mo963b();
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: c */
    public final C3032X7 mo1121c() {
        return this.f2451e.f2353b;
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: d */
    public final View mo964d() {
        return this.f2451e.mo964d();
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: e */
    public final void mo965e() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2453g;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2454h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "stopTrackingForImpression");
        }
        View viewMo963b = this.f2451e.mo963b();
        if (viewMo963b != null) {
            this.f2452f.m893a(viewMo963b);
            this.f2451e.getClass();
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo962a(HashMap map) {
        InterfaceC3147f5 interfaceC3147f5 = this.f2453g;
        if (interfaceC3147f5 != null) {
            String str = this.f2454h;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3208j6.m2261a(str, "TAG", "startTrackingForImpression with ").append(map != null ? Integer.valueOf(map.size()) : null).append(" friendly views").toString());
        }
        View token = this.f2451e.mo963b();
        if (token != null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f2453g;
            if (interfaceC3147f52 != null) {
                String TAG = this.f2454h;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f52).m2147a(TAG, "start tracking");
            }
            AdConfig.ViewabilityConfig config = this.f2355d.getViewability();
            InterfaceC3411x interfaceC3411x = this.f2352a;
            Intrinsics.checkNotNull(interfaceC3411x, "null cannot be cast to non-null type com.inmobi.ads.containers.RenderView");
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) interfaceC3411x;
            gestureDetectorOnGestureListenerC3049Ya.setFriendlyViews(map);
            C2722C4 c2722c4 = this.f2452f;
            c2722c4.getClass();
            Intrinsics.checkNotNullParameter(token, "view");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(config, "viewabilityConfig");
            InterfaceC3147f5 interfaceC3147f53 = c2722c4.f876f;
            if (interfaceC3147f53 != null) {
                ((C3162g5) interfaceC3147f53).m2152c("HtmlAdTracker", "startTrackingForImpression");
            }
            if (c2722c4.f871a == 0) {
                InterfaceC3147f5 interfaceC3147f54 = c2722c4.f876f;
                if (interfaceC3147f54 != null) {
                    ((C3162g5) interfaceC3147f54).m2151b("HtmlAdTracker", "impression type is loaded. return");
                }
            } else if (!Intrinsics.areEqual(c2722c4.f872b, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO) && !Intrinsics.areEqual(c2722c4.f872b, "audio")) {
                byte b = c2722c4.f871a;
                C2872M4 c2872m4 = c2722c4.f877g;
                if (c2872m4 == null) {
                    InterfaceC3147f5 interfaceC3147f55 = c2722c4.f876f;
                    if (interfaceC3147f55 != null) {
                        ((C3162g5) interfaceC3147f55).m2152c("HtmlAdTracker", "creating Visibility Tracker for " + ((int) b));
                    }
                    C2767F4 c2767f4 = new C2767F4(config, b, c2722c4.f876f);
                    InterfaceC3147f5 interfaceC3147f56 = c2722c4.f876f;
                    if (interfaceC3147f56 != null) {
                        ((C3162g5) interfaceC3147f56).m2152c("HtmlAdTracker", "creating Impression Tracker for " + ((int) b));
                    }
                    C2872M4 c2872m42 = new C2872M4(config, c2767f4, c2722c4.f880j);
                    c2722c4.f877g = c2872m42;
                    c2872m4 = c2872m42;
                }
                InterfaceC3147f5 interfaceC3147f57 = c2722c4.f876f;
                if (interfaceC3147f57 != null) {
                    ((C3162g5) interfaceC3147f57).m2152c("HtmlAdTracker", "impression tracker add view");
                }
                c2872m4.m1335a(token, token, c2722c4.f874d, c2722c4.f873c);
            } else {
                InterfaceC3147f5 interfaceC3147f58 = c2722c4.f876f;
                if (interfaceC3147f58 != null) {
                    ((C3162g5) interfaceC3147f58).m2151b("HtmlAdTracker", "creative type is video and audio. return");
                }
            }
            C2722C4 c2722c42 = this.f2452f;
            InterfaceC3335rd listener = gestureDetectorOnGestureListenerC3049Ya.getVISIBILITY_CHANGE_LISTENER();
            c2722c42.getClass();
            Intrinsics.checkNotNullParameter(token, "view");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(listener, "listener");
            Intrinsics.checkNotNullParameter(config, "config");
            InterfaceC3147f5 interfaceC3147f59 = c2722c42.f876f;
            if (interfaceC3147f59 != null) {
                ((C3162g5) interfaceC3147f59).m2152c("HtmlAdTracker", "startTrackingForVisibility");
            }
            C2767F4 c2767f42 = c2722c42.f878h;
            if (c2767f42 == null) {
                c2767f42 = new C2767F4(config, (byte) 1, c2722c42.f876f);
                C2707B4 c2707b4 = new C2707B4(c2722c42);
                InterfaceC3147f5 interfaceC3147f510 = c2767f42.f2777e;
                if (interfaceC3147f510 != null) {
                    ((C3162g5) interfaceC3147f510).m2152c("VisibilityTracker", "setVisibilityTrackerListener logger");
                }
                c2767f42.f2782j = c2707b4;
                c2722c42.f878h = c2767f42;
            }
            c2722c42.f879i.put(token, listener);
            c2767f42.m2627a(token, token, c2722c42.f875e);
            this.f2451e.getClass();
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo961a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        this.f2451e.getClass();
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo960a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        this.f2451e.getClass();
        Intrinsics.checkNotNullParameter(childView, "childView");
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo959a(Context context, byte b) {
        C3275nd c3275nd;
        Intrinsics.checkNotNullParameter(context, "context");
        InterfaceC3147f5 interfaceC3147f5 = this.f2453g;
        if (interfaceC3147f5 != null) {
            String str = this.f2454h;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3420x8.m2595a(str, "TAG", "onActivityStateChanged - state - ", b));
        }
        try {
            try {
                if (b == 0) {
                    this.f2452f.m892a();
                } else if (b == 1) {
                    this.f2452f.m894b();
                } else if (b == 2) {
                    C2722C4 c2722c4 = this.f2452f;
                    InterfaceC3147f5 interfaceC3147f52 = c2722c4.f876f;
                    if (interfaceC3147f52 != null) {
                        ((C3162g5) interfaceC3147f52).m2152c("HtmlAdTracker", "onActivityDestroyed");
                    }
                    C2872M4 c2872m4 = c2722c4.f877g;
                    if (c2872m4 != null) {
                        c2872m4.f1248a.clear();
                        c2872m4.f1249b.clear();
                        c2872m4.f1250c.m2625a();
                        c2872m4.f1252e.removeMessages(0);
                        c2872m4.f1250c.mo2546b();
                    }
                    c2722c4.f877g = null;
                    C2767F4 c2767f4 = c2722c4.f878h;
                    if (c2767f4 != null) {
                        c2767f4.mo2546b();
                    }
                    c2722c4.f878h = null;
                } else {
                    Intrinsics.checkNotNullExpressionValue(this.f2454h, "TAG");
                }
                c3275nd = this.f2451e;
            } catch (Exception e) {
                InterfaceC3147f5 interfaceC3147f53 = this.f2453g;
                if (interfaceC3147f53 != null) {
                    String TAG = this.f2454h;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f53).m2151b(TAG, "Exception in onActivityStateChanged with message : " + e.getMessage());
                }
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3114d2 event = new C3114d2(e);
                Intrinsics.checkNotNullParameter(event, "event");
                C3402w5.f2712d.m2158a(event);
                c3275nd = this.f2451e;
            }
            c3275nd.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
        } catch (Throwable th) {
            this.f2451e.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
            throw th;
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo957a() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2453g;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2454h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "destroy");
        }
        View viewMo963b = this.f2451e.mo963b();
        if (viewMo963b != null) {
            this.f2452f.m893a(viewMo963b);
            this.f2452f.m895b(viewMo963b);
        }
        super.mo957a();
        this.f2451e.mo957a();
    }
}
