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

/* JADX INFO: renamed from: com.inmobi.media.D9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2742D9 extends AbstractC3245ld {

    /* JADX INFO: renamed from: h */
    public static final /* synthetic */ int f943h = 0;

    /* JADX INFO: renamed from: e */
    public final AbstractC3260md f944e;

    /* JADX INFO: renamed from: f */
    public C3451z9 f945f;

    /* JADX INFO: renamed from: g */
    public final InterfaceC3147f5 f946g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2742D9(InterfaceC3411x adContainer, AbstractC3260md mViewableAd, C3451z9 c3451z9, InterfaceC3147f5 interfaceC3147f5) {
        super(adContainer);
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        this.f944e = mViewableAd;
        this.f945f = c3451z9;
        this.f946g = interfaceC3147f5;
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final View mo956a(View view, ViewGroup parent, boolean z) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return this.f944e.mo956a(view, parent, z);
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: b */
    public final View mo963b() {
        return this.f944e.mo963b();
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: d */
    public final View mo964d() {
        InterfaceC3147f5 interfaceC3147f5 = this.f946g;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("D9", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("D9", "inflateView called");
        }
        return this.f944e.mo964d();
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: e */
    public final void mo965e() {
        try {
            try {
                InterfaceC3147f5 interfaceC3147f5 = this.f946g;
                if (interfaceC3147f5 != null) {
                    Intrinsics.checkNotNullExpressionValue("D9", "TAG");
                    ((C3162g5) interfaceC3147f5).m2147a("D9", "stopTrackingForImpression");
                }
                C3451z9 c3451z9 = this.f945f;
                if (c3451z9 != null) {
                    c3451z9.m2639a();
                }
            } catch (Exception e) {
                InterfaceC3147f5 interfaceC3147f52 = this.f946g;
                if (interfaceC3147f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("D9", "TAG");
                    ((C3162g5) interfaceC3147f52).m2151b("D9", "Exception in stopTrackingForImpression with message : " + e.getMessage());
                }
            }
        } finally {
            this.f944e.mo965e();
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo961a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        C3451z9 c3451z9 = this.f945f;
        if (c3451z9 != null) {
            c3451z9.m2641a(childView, obstructionCode);
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo960a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        C3451z9 c3451z9 = this.f945f;
        if (c3451z9 != null) {
            Intrinsics.checkNotNullParameter(childView, "childView");
            byte b = c3451z9.f2811e;
            if (b > 0) {
                AdSession adSession = c3451z9.f2812f;
                if (adSession != null) {
                    adSession.removeFriendlyObstruction(childView);
                    return;
                }
                return;
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(new Exception("Omid AdSession State Error currentState :: " + ((int) b) + ", expectedState :: 1"));
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo962a(HashMap map) {
        View view;
        InterfaceC3147f5 interfaceC3147f5 = this.f946g;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("D9", "TAG");
            ((C3162g5) interfaceC3147f5).m2147a("D9", "startTrackingForImpression");
        }
        try {
            try {
                if (this.f2355d.getViewability().getOmidConfig().isOmidEnabled()) {
                    AbstractC2787G9.f1056a.getClass();
                    if (Omid.isActive()) {
                        InterfaceC3411x interfaceC3411x = this.f2352a;
                        if (interfaceC3411x instanceof C3359t7) {
                            C3359t7 c3359t7 = (C3359t7) interfaceC3411x;
                            view = c3359t7.f2562H;
                            if (view == null) {
                                view = c3359t7.f2563I;
                            }
                        } else {
                            View viewMo963b = this.f944e.mo963b();
                            view = viewMo963b instanceof WebView ? (WebView) viewMo963b : null;
                        }
                        if (view != null) {
                            InterfaceC3147f5 interfaceC3147f52 = this.f946g;
                            if (interfaceC3147f52 != null) {
                                Intrinsics.checkNotNullExpressionValue("D9", "TAG");
                                ((C3162g5) interfaceC3147f52).m2147a("D9", "creating OMSDK session");
                            }
                            C3451z9 c3451z9 = this.f945f;
                            if (c3451z9 != null) {
                                c3451z9.m2642a(view, map, (View) null);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                InterfaceC3147f5 interfaceC3147f53 = this.f946g;
                if (interfaceC3147f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("D9", "TAG");
                    ((C3162g5) interfaceC3147f53).m2151b("D9", "Exception in startTrackingForImpression with message : " + e.getMessage());
                }
            }
        } finally {
            this.f944e.mo962a(map);
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo958a(byte b) {
        this.f944e.mo958a(b);
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo959a(Context context, byte b) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f944e.mo959a(context, b);
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo957a() {
        InterfaceC3147f5 interfaceC3147f5 = this.f946g;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("D9", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("D9", "destroy");
        }
        super.mo957a();
        try {
            this.f945f = null;
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f52 = this.f946g;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("D9", "TAG");
                ((C3162g5) interfaceC3147f52).m2148a("D9", "Exception in destroy with message", e);
            }
        } finally {
            this.f944e.mo957a();
        }
    }
}
