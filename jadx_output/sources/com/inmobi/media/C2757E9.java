package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.Omid;
import com.iab.omid.library.inmobi.adsession.AdEvents;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.E9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2757E9 extends AbstractC3245ld {

    /* JADX INFO: renamed from: e */
    public final AbstractC3245ld f997e;

    /* JADX INFO: renamed from: f */
    public C3451z9 f998f;

    /* JADX INFO: renamed from: g */
    public final InterfaceC3147f5 f999g;

    /* JADX INFO: renamed from: h */
    public final String f1000h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2757E9(C3359t7 adContainer, AbstractC3245ld mViewableAd, C3451z9 c3451z9, InterfaceC3147f5 interfaceC3147f5) {
        super(adContainer);
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        this.f997e = mViewableAd;
        this.f998f = c3451z9;
        this.f999g = interfaceC3147f5;
        this.f1000h = "E9";
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final View mo956a(View view, ViewGroup parent, boolean z) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return this.f997e.mo956a(view, parent, z);
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: b */
    public final View mo963b() {
        return this.f997e.mo963b();
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: d */
    public final View mo964d() {
        InterfaceC3147f5 interfaceC3147f5 = this.f999g;
        if (interfaceC3147f5 != null) {
            String TAG = this.f1000h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "inflateView");
        }
        return this.f997e.mo964d();
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: e */
    public final void mo965e() {
        try {
            try {
                InterfaceC3147f5 interfaceC3147f5 = this.f999g;
                if (interfaceC3147f5 != null) {
                    String TAG = this.f1000h;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2152c(TAG, "stopTrackingForImpression");
                }
                C3451z9 c3451z9 = this.f998f;
                if (c3451z9 != null) {
                    c3451z9.m2639a();
                }
            } catch (Exception e) {
                InterfaceC3147f5 interfaceC3147f52 = this.f999g;
                if (interfaceC3147f52 != null) {
                    String TAG2 = this.f1000h;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C3162g5) interfaceC3147f52).m2151b(TAG2, "Exception in stopTrackingForImpression with message : " + e.getMessage());
                }
            }
        } finally {
            this.f997e.mo965e();
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo961a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        this.f997e.mo961a(childView, obstructionCode);
    }

    /* JADX INFO: renamed from: b */
    public final void m1049b(HashMap map) {
        View viewM2446g;
        InterfaceC3147f5 interfaceC3147f5 = this.f999g;
        if (interfaceC3147f5 != null) {
            String TAG = this.f1000h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "registerView");
        }
        InterfaceC3411x interfaceC3411x = this.f2352a;
        if (!(interfaceC3411x instanceof C3359t7) || (viewM2446g = ((C3359t7) interfaceC3411x).m2446g()) == null) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f999g;
        if (interfaceC3147f52 != null) {
            String TAG2 = this.f1000h;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG2, "creating AD session");
        }
        C3451z9 c3451z9 = this.f998f;
        if (c3451z9 != null) {
            c3451z9.m2642a(viewM2446g, map, this.f997e.mo963b());
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo960a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        this.f997e.mo960a(childView);
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo962a(HashMap map) {
        InterfaceC3147f5 interfaceC3147f5 = this.f999g;
        if (interfaceC3147f5 != null) {
            String TAG = this.f1000h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "startTrackingForImpression");
        }
        try {
            try {
                if (this.f2355d.getViewability().getOmidConfig().isOmidEnabled()) {
                    AbstractC2787G9.f1056a.getClass();
                    if (Omid.isActive()) {
                        InterfaceC3147f5 interfaceC3147f52 = this.f999g;
                        if (interfaceC3147f52 != null) {
                            String TAG2 = this.f1000h;
                            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                            ((C3162g5) interfaceC3147f52).m2147a(TAG2, "OMID enabled and initialised");
                        }
                        m1049b(map);
                        mo958a((byte) 19);
                    }
                }
            } catch (Exception e) {
                InterfaceC3147f5 interfaceC3147f53 = this.f999g;
                if (interfaceC3147f53 != null) {
                    String TAG3 = this.f1000h;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((C3162g5) interfaceC3147f53).m2151b(TAG3, "Exception in startTrackingForImpression with message : " + e.getMessage());
                }
            }
        } finally {
            this.f997e.mo962a(map);
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo958a(byte b) {
        C3426y c3426y;
        AdEvents adEvents;
        AdEvents adEvents2;
        try {
            try {
                InterfaceC3147f5 interfaceC3147f5 = this.f999g;
                if (interfaceC3147f5 != null) {
                    String TAG = this.f1000h;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2152c(TAG, "onAdEvent - event - " + ((int) b));
                }
                C3451z9 c3451z9 = this.f998f;
                if (c3451z9 != null && C3451z9.m2638a(c3451z9.f2811e, (byte) 2)) {
                    byte b2 = b;
                    if (b2 == 0) {
                        C3426y c3426y2 = c3451z9.f2813g;
                        if (c3426y2 != null && (adEvents2 = c3426y2.f2750a) != null) {
                            adEvents2.impressionOccurred();
                        }
                    } else if (b2 == 19 && (c3426y = c3451z9.f2813g) != null && (adEvents = c3426y.f2750a) != null) {
                        adEvents.loaded();
                    }
                }
            } catch (Exception e) {
                InterfaceC3147f5 interfaceC3147f52 = this.f999g;
                if (interfaceC3147f52 != null) {
                    String TAG2 = this.f1000h;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C3162g5) interfaceC3147f52).m2151b(TAG2, "Exception in onAdEvent with message : " + e.getMessage());
                }
            }
        } finally {
            this.f997e.mo958a(b);
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo959a(Context context, byte b) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f997e.mo959a(context, b);
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo957a() {
        super.mo957a();
        InterfaceC3147f5 interfaceC3147f5 = this.f999g;
        if (interfaceC3147f5 != null) {
            String TAG = this.f1000h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "destroy");
        }
        try {
            this.f998f = null;
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f52 = this.f999g;
            if (interfaceC3147f52 != null) {
                String TAG2 = this.f1000h;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2151b(TAG2, "Exception in destroy with message : " + e.getMessage());
            }
        } finally {
            this.f997e.mo957a();
        }
    }
}
