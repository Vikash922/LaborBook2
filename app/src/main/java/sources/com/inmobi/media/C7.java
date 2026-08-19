package com.inmobi.media;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.internal.AnalyticsEvents;
import com.inmobi.ads.InMobiAdRequestStatus;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class C7 extends Q0 {
    public static final /* synthetic */ int P = 0;
    public WeakReference M;
    public boolean N;
    public int O;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7(Context context, Y placement, C0540v8 c0540v8) {
        super(context, placement, c0540v8);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullExpressionValue("C7", "TAG");
        placement.l();
        a(context, placement, c0540v8);
    }

    public final void D0() {
        try {
            super.g();
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("C7", Ed.a(e, AbstractC0363j6.a("C7", "TAG", "SDK encountered unexpected error in destroying native ad unit; ")));
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public final void E0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f5).a("C7", "renderAdPostInternetCheck");
        }
        k0();
        try {
            if (!o0()) {
                S0 s0S = s();
                s0S.getClass();
                s0S.g = SystemClock.elapsedRealtime();
                d0();
                return;
            }
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C0314g5) interfaceC0298f52).b("C7", "render ad is blocked");
            }
        } catch (IllegalStateException e) {
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C0314g5) interfaceC0298f53).a("C7", "Exception while loading ad.", e);
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2134);
        }
    }

    @Override // com.inmobi.media.Q0
    public final byte J() {
        return (byte) 0;
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.Z
    public final void a(int i, Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.Z
    public final void b() {
    }

    @Override // com.inmobi.media.Q0
    public final void b(E0 e0) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f5).c("C7", "handleAdScreenDisplayed");
        }
        if (Q() == 4) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C0314g5) interfaceC0298f52).d("C7", "AdUnit " + this + " state change - RENDERED");
            }
            d((byte) 6);
        } else if (Q() == 6) {
            this.O++;
        }
        InterfaceC0298f5 interfaceC0298f53 = this.j;
        if (interfaceC0298f53 != null) {
            ((C0314g5) interfaceC0298f53).a("InMobi", "Successfully displayed fullscreen for placement id: " + I());
        }
        if (this.O == 0) {
            if (e0 != null) {
                InterfaceC0298f5 interfaceC0298f54 = this.j;
                if (interfaceC0298f54 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f54).a("C7", "callback - onAdDisplayed");
                }
                d(e0);
                return;
            }
            InterfaceC0298f5 interfaceC0298f55 = this.j;
            if (interfaceC0298f55 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C0314g5) interfaceC0298f55).b("C7", "listener is null. cannot give AdDisplayed callback");
            }
        }
    }

    @Override // com.inmobi.media.Q0
    public final void c0() {
        if (Z()) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C0314g5) interfaceC0298f5).b("C7", "Ad unit is already destroyed! Returning ...");
                return;
            }
            return;
        }
        E0 e0R = r();
        if (f0()) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C0314g5) interfaceC0298f52).b("C7", "Some of the dependency libraries for InMobiNative not found");
            }
            if (e0R != null) {
                e0R.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES));
                return;
            }
            return;
        }
        if (1 == Q() || 2 == Q()) {
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C0314g5) interfaceC0298f53).b("C7", "An ad load is already in progress");
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f54 = this.j;
        if (interfaceC0298f54 != null) {
            ((C0314g5) interfaceC0298f54).a("C7", AbstractC0363j6.a("C7", "TAG", "Fetching a Native ad for placement id: ").append(I()).toString());
        }
        if (4 == Q()) {
            if (!W()) {
                InterfaceC0298f5 interfaceC0298f55 = this.j;
                if (interfaceC0298f55 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f55).a("C7", "An ad is ready with the ad unit. Signaling ad load success ...");
                }
                if (e0R != null) {
                    Context contextT = t();
                    InterfaceC0298f5 interfaceC0298f56 = this.j;
                    if (interfaceC0298f56 != null) {
                        Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                        ((C0314g5) interfaceC0298f56).c("C7", "setContainerContext");
                    }
                    InterfaceC0559x interfaceC0559xK = k();
                    if (interfaceC0559xK instanceof C0511t7) {
                        ((C0511t7) interfaceC0559xK).a(contextT);
                    }
                    InterfaceC0298f5 interfaceC0298f57 = this.j;
                    if (interfaceC0298f57 != null) {
                        Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                        ((C0314g5) interfaceC0298f57).a("C7", "callback - onFetchSuccess");
                    }
                    InterfaceC0298f5 interfaceC0298f58 = this.j;
                    if (interfaceC0298f58 != null) {
                        Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                        ((C0314g5) interfaceC0298f58).a("C7", "callback - onLoadSuccess");
                    }
                    e(e0R);
                    f(e0R);
                    return;
                }
                return;
            }
            InterfaceC0298f5 interfaceC0298f59 = this.j;
            if (interfaceC0298f59 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C0314g5) interfaceC0298f59).b("C7", "ad is expired - destroy");
            }
            D0();
        }
        e0();
        super.c0();
    }

    @Override // com.inmobi.media.Q0
    public final void j0() {
        if (p0()) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C0314g5) interfaceC0298f5).a("C7", "renderAd without internet check");
            }
            E0();
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f52).a("C7", "renderAd");
        }
        a(new A7(this), new B7(this));
    }

    @Override // com.inmobi.media.Q0
    public final HashMap o() {
        HashMap map = new HashMap();
        map.put("a-parentViewWidth", String.valueOf(N3.d().f199a));
        map.put("a-productVersion", "NS-1.0.0-20160411");
        map.put("trackerType", "url_ping");
        return map;
    }

    @Override // com.inmobi.media.Q0
    public final String q() {
        return AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE;
    }

    @Override // com.inmobi.media.Q0
    public final void r0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f5).c("C7", "signalSuccess");
        }
        A aV = v();
        int iHashCode = hashCode();
        C0286e8 c0286e8 = new C0286e8(this);
        aV.getClass();
        A.a(iHashCode, c0286e8);
    }

    @Override // com.inmobi.media.Q0
    public final void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.a(context);
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f5).c("C7", "setContainerContext");
        }
        InterfaceC0559x interfaceC0559xK = k();
        if (interfaceC0559xK instanceof C0511t7) {
            ((C0511t7) interfaceC0559xK).a(context);
        }
    }

    public final View a(View view, ViewGroup parent, int i) {
        View view2;
        Intrinsics.checkNotNullParameter(parent, "parent");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f5).c("C7", "getAdView");
        }
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            if (!C0508t4.f487a.a()) {
                D0();
                InterfaceC0298f5 interfaceC0298f52 = this.j;
                if (interfaceC0298f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f52).b("C7", "dropping because of GDPR");
                }
                return null;
            }
            if (W()) {
                InterfaceC0298f5 interfaceC0298f53 = this.j;
                if (interfaceC0298f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f53).a("C7", "Ad has expired.");
                }
                D0();
                return null;
            }
            if (Q() != 4 && Q() != 6) {
                InterfaceC0298f5 interfaceC0298f54 = this.j;
                if (interfaceC0298f54 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f54).b("C7", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling getPrimaryView().");
                }
                I6.a((byte) 1, "InMobi", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling getPrimaryView().");
                InterfaceC0298f5 interfaceC0298f55 = this.j;
                if (interfaceC0298f55 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f55).b("C7", "Ad Load is not complete");
                }
                WeakReference weakReference = this.M;
                if (weakReference == null || (view2 = (View) weakReference.get()) == null) {
                    return null;
                }
                View view3 = new View(Kb.d());
                view3.setLayoutParams(view2.getLayoutParams());
                return view3;
            }
            C0511t7 c0511t7G = G();
            if (c0511t7G != null) {
                boolean z = this.N;
                InterfaceC0298f5 interfaceC0298f56 = c0511t7G.j;
                if (interfaceC0298f56 != null) {
                    String TAG = c0511t7G.m;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f56).c(TAG, "showOnLockScreen - " + z);
                }
                c0511t7G.D = z;
                c0511t7G.B = i;
                final AbstractC0416md viewableAd = c0511t7G.getViewableAd();
                viewA = viewableAd != null ? viewableAd.a(view, parent, true) : null;
                this.M = new WeakReference(viewA);
                Handler handlerD = D();
                if (handlerD != null) {
                    handlerD.post(new Runnable() { // from class: com.inmobi.media.C7$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            C7.a(this.f$0, viewableAd);
                        }
                    });
                }
            }
            return viewA;
        }
        InterfaceC0298f5 interfaceC0298f57 = this.j;
        if (interfaceC0298f57 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f57).b("C7", "getPrimaryView called on background thread");
        }
        b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.CALLED_FROM_WRONG_THREAD), false, (short) 2150);
        return null;
    }

    public static final void a(C7 this$0, AbstractC0416md abstractC0416md) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC0298f5 interfaceC0298f5 = this$0.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f5).a("C7", "start tracking for impression");
        }
        if (abstractC0416md != null) {
            abstractC0416md.a((HashMap) null);
        }
    }

    @Override // com.inmobi.media.Q0
    public final void a(C0560x0 adSet) {
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f5).c("C7", "handleAdFetchSuccessful");
        }
        if (Q() == 1) {
            e(adSet);
        }
        if (!Intrinsics.areEqual("html", E()) && !Intrinsics.areEqual("htmlUrl", E()) && !Intrinsics.areEqual("unknown", E())) {
            super.a(adSet);
            return;
        }
        a(I(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 57);
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f52).b("C7", "invalid markup. fetch failed");
        }
    }

    @Override // com.inmobi.media.Q0
    public final void a(E0 e0) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f5).c("C7", "handleAdScreenDismissed");
        }
        if (Q() == 6) {
            int i = this.O;
            if (i > 0) {
                this.O = i - 1;
            } else {
                InterfaceC0298f5 interfaceC0298f52 = this.j;
                if (interfaceC0298f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f52).d("C7", "AdUnit " + this + " state - READY");
                }
                d((byte) 4);
            }
        }
        InterfaceC0298f5 interfaceC0298f53 = this.j;
        if (interfaceC0298f53 != null) {
            ((C0314g5) interfaceC0298f53).a("InMobi", "Successfully dismissed fullscreen for placement id: " + I());
        }
        if (this.O == 0 && Q() == 4) {
            if (e0 != null) {
                InterfaceC0298f5 interfaceC0298f54 = this.j;
                if (interfaceC0298f54 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f54).a("C7", "callback - onAdDismissed");
                }
                e0.b();
            } else {
                InterfaceC0298f5 interfaceC0298f55 = this.j;
                if (interfaceC0298f55 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f55).b("C7", "Listener was garbage collected. Unable to give callback");
                }
            }
            InterfaceC0298f5 interfaceC0298f56 = this.j;
            if (interfaceC0298f56 != null) {
                ((C0314g5) interfaceC0298f56).a();
            }
        }
    }

    @Override // com.inmobi.media.Q0
    public final void a(Y placement, boolean z) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f5).c("C7", "handleAssetAvailabilityChanged");
        }
        super.a(placement, z);
        if (!z) {
            if (Intrinsics.areEqual(I(), placement)) {
                if (2 == Q() || 4 == Q()) {
                    d((byte) 0);
                    InterfaceC0298f5 interfaceC0298f52 = this.j;
                    if (interfaceC0298f52 != null) {
                        Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                        ((C0314g5) interfaceC0298f52).d("C7", "AdUnit " + this + " state - CREATED");
                    }
                    E0 e0R = r();
                    if (e0R != null) {
                        e0R.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE));
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (!Intrinsics.areEqual(I(), placement) || 2 != Q() || r() == null || t() == null) {
            return;
        }
        if (a0()) {
            c(true);
            f();
        } else {
            r0();
        }
    }

    @Override // com.inmobi.media.Q0
    public final void a(boolean z, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f5).c("C7", "onDidParseAfterFetch");
        }
        super.a(z, status);
        if (Q() == 2) {
            E0 e0R = r();
            if (e0R != null) {
                InterfaceC0298f5 interfaceC0298f52 = this.j;
                if (interfaceC0298f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f52).a("C7", "callback - onFetchSuccess");
                }
                e(e0R);
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = this.j;
        if (interfaceC0298f53 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f53).b("C7", "invalid state - ignore parse callback");
        }
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.InterfaceC0355id
    public final void a(C0325h ad, boolean z, short s) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C0314g5) interfaceC0298f5).c("C7", "onVastProcessCompleted");
        }
        if (!z) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b("C7", AbstractC0568x8.a("C7", "TAG", "VAST processing failed - ", s));
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s);
            return;
        }
        try {
            try {
                super.a(ad, z, s);
            } catch (IllegalStateException e) {
                InterfaceC0298f5 interfaceC0298f53 = this.j;
                if (interfaceC0298f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f53).b("C7", "Exception while onVastProcessCompleted : " + e.getMessage());
                }
            }
            C0325h c0325hM = m();
            if (c0325hM == null) {
                InterfaceC0298f5 interfaceC0298f54 = this.j;
                if (interfaceC0298f54 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f54).b("C7", "current ad is null. failing");
                }
                b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 55);
                return;
            }
            if (T() == 0) {
                if (!c0325hM.G()) {
                    InterfaceC0298f5 interfaceC0298f55 = this.j;
                    if (interfaceC0298f55 != null) {
                        Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                        ((C0314g5) interfaceC0298f55).c("C7", "start OMID session for HTML ad");
                    }
                    a(true, (Ya) null);
                }
            } else {
                InterfaceC0298f5 interfaceC0298f56 = this.j;
                if (interfaceC0298f56 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f56).c("C7", "start OMID session for current AD");
                }
                a(c0325hM);
            }
            if (c0325hM.G()) {
                b(true);
                InterfaceC0298f5 interfaceC0298f57 = this.j;
                if (interfaceC0298f57 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C0314g5) interfaceC0298f57).c("C7", "handleInterActive");
                }
                V();
            }
        } catch (Exception e2) {
            InterfaceC0298f5 interfaceC0298f58 = this.j;
            if (interfaceC0298f58 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C0314g5) interfaceC0298f58).a("C7", "Exception while loading ad.", e2);
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 13);
        }
    }
}
