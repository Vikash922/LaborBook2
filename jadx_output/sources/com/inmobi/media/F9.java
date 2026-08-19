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

/* JADX INFO: loaded from: classes6.dex */
public final class F9 extends AbstractC0401ld {
    public final AbstractC0401ld e;
    public C0599z9 f;
    public final VastProperties g;
    public final InterfaceC0298f5 h;
    public final String i;
    public final float j;
    public final WeakReference k;
    public WeakReference l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F9(Context context, AbstractC0401ld mViewableAd, A8 adContainer, C0599z9 c0599z9, VastProperties mVastProperties, InterfaceC0298f5 interfaceC0298f5) {
        super(adContainer);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(mVastProperties, "mVastProperties");
        this.e = mViewableAd;
        this.f = c0599z9;
        this.g = mVastProperties;
        this.h = interfaceC0298f5;
        this.i = "F9";
        this.j = 1.0f;
        this.k = new WeakReference(context);
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
    public final X7 c() {
        return this.e.c();
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final View d() {
        return this.e.d();
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void e() {
        try {
            InterfaceC0559x interfaceC0559x = this.f427a;
            if ((interfaceC0559x instanceof A8) && !((A8) interfaceC0559x).k()) {
                C0599z9 c0599z9 = this.f;
                if (c0599z9 != null) {
                    c0599z9.a();
                }
                InterfaceC0298f5 interfaceC0298f5 = this.h;
                if (interfaceC0298f5 != null) {
                    String TAG = this.i;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    StringBuilder sb = new StringBuilder("Unregistered VideoView to OMID AdSession : ");
                    C0599z9 c0599z92 = this.f;
                    ((C0314g5) interfaceC0298f5).a(TAG, sb.append(c0599z92 != null ? c0599z92.hashCode() : 0).toString());
                }
            }
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f52 = this.h;
            if (interfaceC0298f52 != null) {
                String TAG2 = this.i;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).b(TAG2, "Exception in stopTrackingForImpression with message : " + e.getMessage());
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
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
        try {
            InterfaceC0298f5 interfaceC0298f5 = this.h;
            if (interfaceC0298f5 != null) {
                String TAG = this.i;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).c(TAG, "startTrackingForImpression");
            }
            if (this.d.getViewability().getOmidConfig().isOmidEnabled()) {
                G9.f125a.getClass();
                if (Omid.isActive()) {
                    InterfaceC0298f5 interfaceC0298f52 = this.h;
                    if (interfaceC0298f52 != null) {
                        String TAG2 = this.i;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((C0314g5) interfaceC0298f52).a(TAG2, "OMID enabled and OM SDK initialised");
                    }
                    InterfaceC0559x interfaceC0559x = this.f427a;
                    if (interfaceC0559x instanceof A8) {
                        View videoContainerView = ((A8) interfaceC0559x).getVideoContainerView();
                        M8 m8 = videoContainerView instanceof M8 ? (M8) videoContainerView : null;
                        if (m8 instanceof View) {
                            E8 mediaController = m8.getVideoView().getMediaController();
                            this.l = new WeakReference(m8);
                            InterfaceC0298f5 interfaceC0298f53 = this.h;
                            if (interfaceC0298f53 != null) {
                                String TAG3 = this.i;
                                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                                ((C0314g5) interfaceC0298f53).a(TAG3, "creating new OM SDK ad session");
                            }
                            C0599z9 c0599z9 = this.f;
                            if (c0599z9 != null) {
                                c0599z9.a(m8, mediaController != null ? mediaController.getFriendlyViews() : null, this.e.b());
                            }
                            InterfaceC0298f5 interfaceC0298f54 = this.h;
                            if (interfaceC0298f54 != null) {
                                String TAG4 = this.i;
                                Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                                StringBuilder sb = new StringBuilder("Registered ad view with OMID Video AdSession ");
                                C0599z9 c0599z92 = this.f;
                                ((C0314g5) interfaceC0298f54).a(TAG4, sb.append(c0599z92 != null ? c0599z92.hashCode() : 0).toString());
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f55 = this.h;
            if (interfaceC0298f55 != null) {
                String TAG5 = this.i;
                Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                ((C0314g5) interfaceC0298f55).b(TAG5, "Exception in startTrackingForImpression with message : " + e.getMessage());
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
        } finally {
            this.e.a(map);
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(byte b) {
        try {
            InterfaceC0298f5 interfaceC0298f5 = this.h;
            if (interfaceC0298f5 != null) {
                String TAG = this.i;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).a(TAG, "onAdView - event - " + ((int) b));
            }
            float fA = this.j;
            int duration = 0;
            if (b == 13) {
                fA = 0.0f;
            } else if (b != 14) {
                if (b == 6) {
                    InterfaceC0559x interfaceC0559x = this.f427a;
                    if (interfaceC0559x instanceof A8) {
                        View videoContainerView = ((A8) interfaceC0559x).getVideoContainerView();
                        M8 m8 = videoContainerView instanceof M8 ? (M8) videoContainerView : null;
                        if (m8 != null) {
                            duration = m8.getVideoView().getDuration();
                            Object tag = m8.getVideoView().getTag();
                            fA = a(tag instanceof C8 ? (C8) tag : null);
                        }
                    }
                } else if (b == 5) {
                    InterfaceC0559x interfaceC0559x2 = this.f427a;
                    if ((interfaceC0559x2 instanceof A8) && ((A8) interfaceC0559x2).k()) {
                        return;
                    }
                }
            }
            C0599z9 c0599z9 = this.f;
            if (c0599z9 != null) {
                c0599z9.a(b, duration, fA, this.g);
            }
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f52 = this.h;
            if (interfaceC0298f52 != null) {
                String TAG2 = this.i;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).b(TAG2, "Exception in onAdEvent with message : " + e.getMessage());
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
        } finally {
            this.e.a(b);
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(Context context, byte b) {
        Intrinsics.checkNotNullParameter(context, "context");
        InterfaceC0298f5 interfaceC0298f5 = this.h;
        if (interfaceC0298f5 != null) {
            String str = this.i;
            ((C0314g5) interfaceC0298f5).c(str, AbstractC0568x8.a(str, "TAG", "onActivityStateChanged - state - ", b));
        }
        this.e.a(context, b);
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a() {
        super.a();
        InterfaceC0298f5 interfaceC0298f5 = this.h;
        if (interfaceC0298f5 != null) {
            String TAG = this.i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "destroy");
        }
        try {
            try {
                this.k.clear();
                WeakReference weakReference = this.l;
                if (weakReference != null) {
                    weakReference.clear();
                }
                this.f = null;
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f52 = this.h;
                if (interfaceC0298f52 != null) {
                    String TAG2 = this.i;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C0314g5) interfaceC0298f52).b(TAG2, "Exception in destroy with message : " + e.getMessage());
                }
                C0551w5 c0551w5 = C0551w5.f513a;
                C0264d2 event = new C0264d2(e);
                Intrinsics.checkNotNullParameter(event, "event");
                C0551w5.d.a(event);
            }
        } finally {
            this.e.a();
        }
    }

    public final float a(C8 c8) {
        if (c8 == null) {
            return 0.0f;
        }
        Object obj = c8.t.get("currentMediaVolume");
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        Object obj2 = c8.t.get("lastMediaVolume");
        Integer num2 = obj2 instanceof Integer ? (Integer) obj2 : null;
        if (num == null || num2 == null || num.intValue() <= 0 || num2.intValue() != 0) {
            return 0.0f;
        }
        return this.j;
    }
}
