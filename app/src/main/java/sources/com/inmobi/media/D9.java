package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.iab.omid.library.inmobi.Omid;
import com.iab.omid.library.inmobi.adsession.AdSession;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class D9 extends AbstractC0401ld {
    public static final /* synthetic */ int h = 0;
    public final AbstractC0416md e;
    public C0599z9 f;
    public final InterfaceC0298f5 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D9(InterfaceC0559x adContainer, AbstractC0416md mViewableAd, C0599z9 c0599z9, InterfaceC0298f5 interfaceC0298f5) {
        super(adContainer);
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        this.e = mViewableAd;
        this.f = c0599z9;
        this.g = interfaceC0298f5;
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final View a(View view, ViewGroup parent, boolean z) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return this.e.a(view, parent, z);
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final View b() {
        return this.e.b();
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final View d() {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("D9", "TAG");
            ((C0314g5) interfaceC0298f5).c("D9", "inflateView called");
        }
        return this.e.d();
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void e() {
        try {
            try {
                InterfaceC0298f5 interfaceC0298f5 = this.g;
                if (interfaceC0298f5 != null) {
                    Intrinsics.checkNotNullExpressionValue("D9", "TAG");
                    ((C0314g5) interfaceC0298f5).a("D9", "stopTrackingForImpression");
                }
                C0599z9 c0599z9 = this.f;
                if (c0599z9 != null) {
                    c0599z9.a();
                }
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f52 = this.g;
                if (interfaceC0298f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("D9", "TAG");
                    ((C0314g5) interfaceC0298f52).b("D9", "Exception in stopTrackingForImpression with message : " + e.getMessage());
                }
            }
        } finally {
            this.e.e();
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        C0599z9 c0599z9 = this.f;
        if (c0599z9 != null) {
            c0599z9.a(childView, obstructionCode);
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        C0599z9 c0599z9 = this.f;
        if (c0599z9 != null) {
            Intrinsics.checkNotNullParameter(childView, "childView");
            byte b = c0599z9.e;
            if (b > 0) {
                AdSession adSession = c0599z9.f;
                if (adSession != null) {
                    adSession.removeFriendlyObstruction(childView);
                    return;
                }
                return;
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(new Exception("Omid AdSession State Error currentState :: " + ((int) b) + ", expectedState :: 1"));
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(HashMap map) {
        View view;
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("D9", "TAG");
            ((C0314g5) interfaceC0298f5).a("D9", "startTrackingForImpression");
        }
        try {
            try {
                if (this.d.getViewability().getOmidConfig().isOmidEnabled()) {
                    G9.f125a.getClass();
                    if (Omid.isActive()) {
                        InterfaceC0559x interfaceC0559x = this.f427a;
                        if (interfaceC0559x instanceof C0511t7) {
                            C0511t7 c0511t7 = (C0511t7) interfaceC0559x;
                            view = c0511t7.H;
                            if (view == null) {
                                view = c0511t7.I;
                            }
                        } else {
                            View viewB = this.e.b();
                            view = viewB instanceof WebView ? (WebView) viewB : null;
                        }
                        if (view != null) {
                            InterfaceC0298f5 interfaceC0298f52 = this.g;
                            if (interfaceC0298f52 != null) {
                                Intrinsics.checkNotNullExpressionValue("D9", "TAG");
                                ((C0314g5) interfaceC0298f52).a("D9", "creating OMSDK session");
                            }
                            C0599z9 c0599z9 = this.f;
                            if (c0599z9 != null) {
                                c0599z9.a(view, map, (View) null);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f53 = this.g;
                if (interfaceC0298f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("D9", "TAG");
                    ((C0314g5) interfaceC0298f53).b("D9", "Exception in startTrackingForImpression with message : " + e.getMessage());
                }
            }
        } finally {
            this.e.a(map);
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(byte b) {
        this.e.a(b);
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(Context context, byte b) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.e.a(context, b);
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a() {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("D9", "TAG");
            ((C0314g5) interfaceC0298f5).c("D9", "destroy");
        }
        super.a();
        try {
            this.f = null;
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f52 = this.g;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("D9", "TAG");
                ((C0314g5) interfaceC0298f52).a("D9", "Exception in destroy with message", e);
            }
        } finally {
            this.e.a();
        }
    }
}
