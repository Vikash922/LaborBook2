package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.Omid;
import com.iab.omid.library.inmobi.adsession.AdEvents;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class E9 extends AbstractC0401ld {
    public final AbstractC0401ld e;
    public C0599z9 f;
    public final InterfaceC0298f5 g;
    public final String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E9(C0511t7 adContainer, AbstractC0401ld mViewableAd, C0599z9 c0599z9, InterfaceC0298f5 interfaceC0298f5) {
        super(adContainer);
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(mViewableAd, "mViewableAd");
        this.e = mViewableAd;
        this.f = c0599z9;
        this.g = interfaceC0298f5;
        this.h = "E9";
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
            String TAG = this.h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "inflateView");
        }
        return this.e.d();
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void e() {
        try {
            try {
                InterfaceC0298f5 interfaceC0298f5 = this.g;
                if (interfaceC0298f5 != null) {
                    String TAG = this.h;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).c(TAG, "stopTrackingForImpression");
                }
                C0599z9 c0599z9 = this.f;
                if (c0599z9 != null) {
                    c0599z9.a();
                }
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f52 = this.g;
                if (interfaceC0298f52 != null) {
                    String TAG2 = this.h;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C0314g5) interfaceC0298f52).b(TAG2, "Exception in stopTrackingForImpression with message : " + e.getMessage());
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
        this.e.a(childView, obstructionCode);
    }

    public final void b(HashMap map) {
        View viewG;
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            String TAG = this.h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "registerView");
        }
        InterfaceC0559x interfaceC0559x = this.f427a;
        if (!(interfaceC0559x instanceof C0511t7) || (viewG = ((C0511t7) interfaceC0559x).g()) == null) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.g;
        if (interfaceC0298f52 != null) {
            String TAG2 = this.h;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG2, "creating AD session");
        }
        C0599z9 c0599z9 = this.f;
        if (c0599z9 != null) {
            c0599z9.a(viewG, map, this.e.b());
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        this.e.a(childView);
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(HashMap map) {
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            String TAG = this.h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "startTrackingForImpression");
        }
        try {
            try {
                if (this.d.getViewability().getOmidConfig().isOmidEnabled()) {
                    G9.f125a.getClass();
                    if (Omid.isActive()) {
                        InterfaceC0298f5 interfaceC0298f52 = this.g;
                        if (interfaceC0298f52 != null) {
                            String TAG2 = this.h;
                            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                            ((C0314g5) interfaceC0298f52).a(TAG2, "OMID enabled and initialised");
                        }
                        b(map);
                        a((byte) 19);
                    }
                }
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f53 = this.g;
                if (interfaceC0298f53 != null) {
                    String TAG3 = this.h;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((C0314g5) interfaceC0298f53).b(TAG3, "Exception in startTrackingForImpression with message : " + e.getMessage());
                }
            }
        } finally {
            this.e.a(map);
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(byte b) {
        C0573y c0573y;
        AdEvents adEvents;
        AdEvents adEvents2;
        try {
            try {
                InterfaceC0298f5 interfaceC0298f5 = this.g;
                if (interfaceC0298f5 != null) {
                    String TAG = this.h;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).c(TAG, "onAdEvent - event - " + ((int) b));
                }
                C0599z9 c0599z9 = this.f;
                if (c0599z9 != null && C0599z9.a(c0599z9.e, (byte) 2)) {
                    byte b2 = b;
                    if (b2 == 0) {
                        C0573y c0573y2 = c0599z9.g;
                        if (c0573y2 != null && (adEvents2 = c0573y2.f527a) != null) {
                            adEvents2.impressionOccurred();
                        }
                    } else if (b2 == 19 && (c0573y = c0599z9.g) != null && (adEvents = c0573y.f527a) != null) {
                        adEvents.loaded();
                    }
                }
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f52 = this.g;
                if (interfaceC0298f52 != null) {
                    String TAG2 = this.h;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C0314g5) interfaceC0298f52).b(TAG2, "Exception in onAdEvent with message : " + e.getMessage());
                }
            }
        } finally {
            this.e.a(b);
        }
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(Context context, byte b) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.e.a(context, b);
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a() {
        super.a();
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            String TAG = this.h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "destroy");
        }
        try {
            this.f = null;
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f52 = this.g;
            if (interfaceC0298f52 != null) {
                String TAG2 = this.h;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).b(TAG2, "Exception in destroy with message : " + e.getMessage());
            }
        } finally {
            this.e.a();
        }
    }
}
