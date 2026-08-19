package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.Omid;
import com.iab.omid.library.inmobi.adsession.AdSession;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.inmobi.adsession.media.VastProperties;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.F9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2772F9 extends AbstractC3245ld {

    /* JADX INFO: renamed from: e */
    public final AbstractC3245ld f1029e;

    /* JADX INFO: renamed from: f */
    public C3451z9 f1030f;

    /* JADX INFO: renamed from: g */
    public final VastProperties f1031g;

    /* JADX INFO: renamed from: h */
    public final InterfaceC3147f5 f1032h;

    /* JADX INFO: renamed from: i */
    public final String f1033i;

    /* JADX INFO: renamed from: j */
    public final float f1034j;

    /* JADX INFO: renamed from: k */
    public final WeakReference f1035k;

    /* JADX INFO: renamed from: l */
    public WeakReference f1036l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2772F9(Context context, AbstractC3245ld mViewableAd, C2696A8 adContainer, C3451z9 c3451z9, VastProperties mVastProperties, InterfaceC3147f5 interfaceC3147f5) {
        super(adContainer);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(mVastProperties, "mVastProperties");
        this.f1029e = mViewableAd;
        this.f1030f = c3451z9;
        this.f1031g = mVastProperties;
        this.f1032h = interfaceC3147f5;
        this.f1033i = "F9";
        this.f1034j = 1.0f;
        this.f1035k = new WeakReference(context);
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final View mo956a(View view, ViewGroup parent, boolean z) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return this.f1029e.mo956a(view, parent, z);
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: b */
    public final View mo963b() {
        return this.f1029e.mo963b();
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: c */
    public final C3032X7 mo1121c() {
        return this.f1029e.mo1121c();
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: d */
    public final View mo964d() {
        return this.f1029e.mo964d();
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: e */
    public final void mo965e() {
        try {
            InterfaceC3411x interfaceC3411x = this.f2352a;
            if ((interfaceC3411x instanceof C2696A8) && !((C2696A8) interfaceC3411x).mo859k()) {
                C3451z9 c3451z9 = this.f1030f;
                if (c3451z9 != null) {
                    c3451z9.m2639a();
                }
                InterfaceC3147f5 interfaceC3147f5 = this.f1032h;
                if (interfaceC3147f5 != null) {
                    String TAG = this.f1033i;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    StringBuilder sb = new StringBuilder("Unregistered VideoView to OMID AdSession : ");
                    C3451z9 c3451z92 = this.f1030f;
                    ((C3162g5) interfaceC3147f5).m2147a(TAG, sb.append(c3451z92 != null ? c3451z92.hashCode() : 0).toString());
                }
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1032h;
            if (interfaceC3147f52 != null) {
                String TAG2 = this.f1033i;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2151b(TAG2, "Exception in stopTrackingForImpression with message : " + e.getMessage());
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        } finally {
            this.f1029e.mo965e();
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo961a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        C3451z9 c3451z9 = this.f1030f;
        if (c3451z9 != null) {
            c3451z9.m2641a(childView, obstructionCode);
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo960a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        C3451z9 c3451z9 = this.f1030f;
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
        try {
            InterfaceC3147f5 interfaceC3147f5 = this.f1032h;
            if (interfaceC3147f5 != null) {
                String TAG = this.f1033i;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2152c(TAG, "startTrackingForImpression");
            }
            if (this.f2355d.getViewability().getOmidConfig().isOmidEnabled()) {
                AbstractC2787G9.f1056a.getClass();
                if (Omid.isActive()) {
                    InterfaceC3147f5 interfaceC3147f52 = this.f1032h;
                    if (interfaceC3147f52 != null) {
                        String TAG2 = this.f1033i;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((C3162g5) interfaceC3147f52).m2147a(TAG2, "OMID enabled and OM SDK initialised");
                    }
                    InterfaceC3411x interfaceC3411x = this.f2352a;
                    if (interfaceC3411x instanceof C2696A8) {
                        View videoContainerView = ((C2696A8) interfaceC3411x).getVideoContainerView();
                        C2876M8 c2876m8 = videoContainerView instanceof C2876M8 ? (C2876M8) videoContainerView : null;
                        if (c2876m8 instanceof View) {
                            C2756E8 mediaController = c2876m8.getVideoView().getMediaController();
                            this.f1036l = new WeakReference(c2876m8);
                            InterfaceC3147f5 interfaceC3147f53 = this.f1032h;
                            if (interfaceC3147f53 != null) {
                                String TAG3 = this.f1033i;
                                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                                ((C3162g5) interfaceC3147f53).m2147a(TAG3, "creating new OM SDK ad session");
                            }
                            C3451z9 c3451z9 = this.f1030f;
                            if (c3451z9 != null) {
                                c3451z9.m2642a(c2876m8, mediaController != null ? mediaController.getFriendlyViews() : null, this.f1029e.mo963b());
                            }
                            InterfaceC3147f5 interfaceC3147f54 = this.f1032h;
                            if (interfaceC3147f54 != null) {
                                String TAG4 = this.f1033i;
                                Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                                StringBuilder sb = new StringBuilder("Registered ad view with OMID Video AdSession ");
                                C3451z9 c3451z92 = this.f1030f;
                                ((C3162g5) interfaceC3147f54).m2147a(TAG4, sb.append(c3451z92 != null ? c3451z92.hashCode() : 0).toString());
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f55 = this.f1032h;
            if (interfaceC3147f55 != null) {
                String TAG5 = this.f1033i;
                Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                ((C3162g5) interfaceC3147f55).m2151b(TAG5, "Exception in startTrackingForImpression with message : " + e.getMessage());
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        } finally {
            this.f1029e.mo962a(map);
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo958a(byte b) {
        try {
            InterfaceC3147f5 interfaceC3147f5 = this.f1032h;
            if (interfaceC3147f5 != null) {
                String TAG = this.f1033i;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2147a(TAG, "onAdView - event - " + ((int) b));
            }
            float fM1120a = this.f1034j;
            int duration = 0;
            if (b == 13) {
                fM1120a = 0.0f;
            } else if (b != 14) {
                if (b == 6) {
                    InterfaceC3411x interfaceC3411x = this.f2352a;
                    if (interfaceC3411x instanceof C2696A8) {
                        View videoContainerView = ((C2696A8) interfaceC3411x).getVideoContainerView();
                        C2876M8 c2876m8 = videoContainerView instanceof C2876M8 ? (C2876M8) videoContainerView : null;
                        if (c2876m8 != null) {
                            duration = c2876m8.getVideoView().getDuration();
                            Object tag = c2876m8.getVideoView().getTag();
                            fM1120a = m1120a(tag instanceof C2726C8 ? (C2726C8) tag : null);
                        }
                    }
                } else if (b == 5) {
                    InterfaceC3411x interfaceC3411x2 = this.f2352a;
                    if ((interfaceC3411x2 instanceof C2696A8) && ((C2696A8) interfaceC3411x2).mo859k()) {
                        return;
                    }
                }
            }
            C3451z9 c3451z9 = this.f1030f;
            if (c3451z9 != null) {
                c3451z9.m2640a(b, duration, fM1120a, this.f1031g);
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1032h;
            if (interfaceC3147f52 != null) {
                String TAG2 = this.f1033i;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2151b(TAG2, "Exception in onAdEvent with message : " + e.getMessage());
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        } finally {
            this.f1029e.mo958a(b);
        }
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo959a(Context context, byte b) {
        Intrinsics.checkNotNullParameter(context, "context");
        InterfaceC3147f5 interfaceC3147f5 = this.f1032h;
        if (interfaceC3147f5 != null) {
            String str = this.f1033i;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3420x8.m2595a(str, "TAG", "onActivityStateChanged - state - ", b));
        }
        this.f1029e.mo959a(context, b);
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo957a() {
        super.mo957a();
        InterfaceC3147f5 interfaceC3147f5 = this.f1032h;
        if (interfaceC3147f5 != null) {
            String TAG = this.f1033i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "destroy");
        }
        try {
            try {
                this.f1035k.clear();
                WeakReference weakReference = this.f1036l;
                if (weakReference != null) {
                    weakReference.clear();
                }
                this.f1030f = null;
            } catch (Exception e) {
                InterfaceC3147f5 interfaceC3147f52 = this.f1032h;
                if (interfaceC3147f52 != null) {
                    String TAG2 = this.f1033i;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C3162g5) interfaceC3147f52).m2151b(TAG2, "Exception in destroy with message : " + e.getMessage());
                }
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3114d2 event = new C3114d2(e);
                Intrinsics.checkNotNullParameter(event, "event");
                C3402w5.f2712d.m2158a(event);
            }
        } finally {
            this.f1029e.mo957a();
        }
    }

    /* JADX INFO: renamed from: a */
    public final float m1120a(C2726C8 c2726c8) {
        if (c2726c8 == null) {
            return 0.0f;
        }
        Object obj = c2726c8.f938t.get("currentMediaVolume");
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        Object obj2 = c2726c8.f938t.get("lastMediaVolume");
        Integer num2 = obj2 instanceof Integer ? (Integer) obj2 : null;
        if (num == null || num2 == null || num.intValue() <= 0 || num2.intValue() != 0) {
            return 0.0f;
        }
        return this.f1034j;
    }
}
