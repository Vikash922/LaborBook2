package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.internal.AnalyticsEvents;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.q5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0468q5 extends AbstractC0416md {
    public final C0431nd e;
    public final C4 f;
    public final InterfaceC0298f5 g;
    public final String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0468q5(Ya container, C0431nd mViewableAd, C4 htmlAdTracker, InterfaceC0298f5 interfaceC0298f5) {
        super(container);
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        Intrinsics.checkNotNullParameter(htmlAdTracker, "htmlAdTracker");
        this.e = mViewableAd;
        this.f = htmlAdTracker;
        this.g = interfaceC0298f5;
        this.h = "q5";
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final View a(View view, ViewGroup parent, boolean z) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewB = this.e.b();
        if (viewB != null) {
            this.f.a(viewB);
            this.f.b(viewB);
        }
        C0431nd c0431nd = this.e;
        c0431nd.getClass();
        Intrinsics.checkNotNullParameter(parent, "parent");
        return c0431nd.d();
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(byte b) {
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final View b() {
        return this.e.b();
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final X7 c() {
        return this.e.b;
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final View d() {
        return this.e.d();
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void e() {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            String TAG = this.h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "stopTrackingForImpression");
        }
        View viewB = this.e.b();
        if (viewB != null) {
            this.f.a(viewB);
            this.e.getClass();
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(HashMap map) {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            String str = this.h;
            ((C0314g5) interfaceC0298f5).a(str, AbstractC0363j6.a(str, "TAG", "startTrackingForImpression with ").append(map != null ? Integer.valueOf(map.size()) : null).append(" friendly views").toString());
        }
        View token = this.e.b();
        if (token != null) {
            InterfaceC0298f5 interfaceC0298f52 = this.g;
            if (interfaceC0298f52 != null) {
                String TAG = this.h;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f52).a(TAG, "start tracking");
            }
            AdConfig.ViewabilityConfig config = this.d.getViewability();
            InterfaceC0559x interfaceC0559x = this.f427a;
            Intrinsics.checkNotNull(interfaceC0559x, "null cannot be cast to non-null type com.inmobi.ads.containers.RenderView");
            Ya ya = (Ya) interfaceC0559x;
            ya.setFriendlyViews(map);
            C4 c4 = this.f;
            c4.getClass();
            Intrinsics.checkNotNullParameter(token, "view");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(config, "viewabilityConfig");
            InterfaceC0298f5 interfaceC0298f53 = c4.f;
            if (interfaceC0298f53 != null) {
                ((C0314g5) interfaceC0298f53).c("HtmlAdTracker", "startTrackingForImpression");
            }
            if (c4.f89a == 0) {
                InterfaceC0298f5 interfaceC0298f54 = c4.f;
                if (interfaceC0298f54 != null) {
                    ((C0314g5) interfaceC0298f54).b("HtmlAdTracker", "impression type is loaded. return");
                }
            } else if (!Intrinsics.areEqual(c4.b, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO) && !Intrinsics.areEqual(c4.b, "audio")) {
                byte b = c4.f89a;
                M4 m4 = c4.g;
                if (m4 == null) {
                    InterfaceC0298f5 interfaceC0298f55 = c4.f;
                    if (interfaceC0298f55 != null) {
                        ((C0314g5) interfaceC0298f55).c("HtmlAdTracker", "creating Visibility Tracker for " + ((int) b));
                    }
                    F4 f4 = new F4(config, b, c4.f);
                    InterfaceC0298f5 interfaceC0298f56 = c4.f;
                    if (interfaceC0298f56 != null) {
                        ((C0314g5) interfaceC0298f56).c("HtmlAdTracker", "creating Impression Tracker for " + ((int) b));
                    }
                    M4 m42 = new M4(config, f4, c4.j);
                    c4.g = m42;
                    m4 = m42;
                }
                InterfaceC0298f5 interfaceC0298f57 = c4.f;
                if (interfaceC0298f57 != null) {
                    ((C0314g5) interfaceC0298f57).c("HtmlAdTracker", "impression tracker add view");
                }
                m4.a(token, token, c4.d, c4.c);
            } else {
                InterfaceC0298f5 interfaceC0298f58 = c4.f;
                if (interfaceC0298f58 != null) {
                    ((C0314g5) interfaceC0298f58).b("HtmlAdTracker", "creative type is video and audio. return");
                }
            }
            C4 c42 = this.f;
            rd listener = ya.getVISIBILITY_CHANGE_LISTENER();
            c42.getClass();
            Intrinsics.checkNotNullParameter(token, "view");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(listener, "listener");
            Intrinsics.checkNotNullParameter(config, "config");
            InterfaceC0298f5 interfaceC0298f59 = c42.f;
            if (interfaceC0298f59 != null) {
                ((C0314g5) interfaceC0298f59).c("HtmlAdTracker", "startTrackingForVisibility");
            }
            F4 f42 = c42.h;
            if (f42 == null) {
                f42 = new F4(config, (byte) 1, c42.f);
                B4 b4 = new B4(c42);
                InterfaceC0298f5 interfaceC0298f510 = f42.e;
                if (interfaceC0298f510 != null) {
                    ((C0314g5) interfaceC0298f510).c("VisibilityTracker", "setVisibilityTrackerListener logger");
                }
                f42.j = b4;
                c42.h = f42;
            }
            c42.i.put(token, listener);
            f42.a(token, token, c42.e);
            this.e.getClass();
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        this.e.getClass();
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        this.e.getClass();
        Intrinsics.checkNotNullParameter(childView, "childView");
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(Context context, byte b) {
        C0431nd c0431nd;
        Intrinsics.checkNotNullParameter(context, "context");
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            String str = this.h;
            ((C0314g5) interfaceC0298f5).a(str, AbstractC0568x8.a(str, "TAG", "onActivityStateChanged - state - ", b));
        }
        try {
            try {
                if (b == 0) {
                    this.f.a();
                } else if (b == 1) {
                    this.f.b();
                } else if (b == 2) {
                    C4 c4 = this.f;
                    InterfaceC0298f5 interfaceC0298f52 = c4.f;
                    if (interfaceC0298f52 != null) {
                        ((C0314g5) interfaceC0298f52).c("HtmlAdTracker", "onActivityDestroyed");
                    }
                    M4 m4 = c4.g;
                    if (m4 != null) {
                        m4.f177a.clear();
                        m4.b.clear();
                        m4.c.a();
                        m4.e.removeMessages(0);
                        m4.c.b();
                    }
                    c4.g = null;
                    F4 f4 = c4.h;
                    if (f4 != null) {
                        f4.b();
                    }
                    c4.h = null;
                } else {
                    Intrinsics.checkNotNullExpressionValue(this.h, "TAG");
                }
                c0431nd = this.e;
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f53 = this.g;
                if (interfaceC0298f53 != null) {
                    String TAG = this.h;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f53).b(TAG, "Exception in onActivityStateChanged with message : " + e.getMessage());
                }
                C0551w5 c0551w5 = C0551w5.f513a;
                C0264d2 event = new C0264d2(e);
                Intrinsics.checkNotNullParameter(event, "event");
                C0551w5.d.a(event);
                c0431nd = this.e;
            }
            c0431nd.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
        } catch (Throwable th) {
            this.e.getClass();
            Intrinsics.checkNotNullParameter(context, "context");
            throw th;
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a() {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            String TAG = this.h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "destroy");
        }
        View viewB = this.e.b();
        if (viewB != null) {
            this.f.a(viewB);
            this.f.b(viewB);
        }
        super.a();
        this.e.a();
    }
}
