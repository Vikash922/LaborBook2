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

/* JADX INFO: renamed from: com.inmobi.media.C7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2725C7 extends AbstractC2928Q0 {

    /* JADX INFO: renamed from: P */
    public static final /* synthetic */ int f881P = 0;

    /* JADX INFO: renamed from: M */
    public WeakReference f882M;

    /* JADX INFO: renamed from: N */
    public boolean f883N;

    /* JADX INFO: renamed from: O */
    public int f884O;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2725C7(Context context, C3038Y placement, C3390v8 c3390v8) {
        super(context, placement, c3390v8);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullExpressionValue("C7", "TAG");
        placement.m1938l();
        m1595a(context, placement, c3390v8);
    }

    /* JADX INFO: renamed from: D0 */
    public final void m898D0() {
        try {
            super.mo1231g();
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("C7", AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a("C7", "TAG", "SDK encountered unexpected error in destroying native ad unit; ")));
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: E0 */
    public final void m899E0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f5).m2147a("C7", "renderAdPostInternetCheck");
        }
        mo1684k0();
        try {
            if (!m1693o0()) {
                C2955S0 c2955s0M1698s = m1698s();
                c2955s0M1698s.getClass();
                c2955s0M1698s.f1521g = SystemClock.elapsedRealtime();
                m1663d0();
                return;
            }
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C3162g5) interfaceC3147f52).m2151b("C7", "render ad is blocked");
            }
        } catch (IllegalStateException e) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C3162g5) interfaceC3147f53).m2148a("C7", "Exception while loading ad.", e);
            }
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2134);
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: J */
    public final byte mo900J() {
        return (byte) 0;
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.InterfaceC3052Z
    /* JADX INFO: renamed from: a */
    public final void mo902a(int i, GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.InterfaceC3052Z
    /* JADX INFO: renamed from: b */
    public final void mo909b() {
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: b */
    public final void mo910b(AbstractC2748E0 abstractC2748E0) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("C7", "handleAdScreenDisplayed");
        }
        if (m1577Q() == 4) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C3162g5) interfaceC3147f52).m2153d("C7", "AdUnit " + this + " state change - RENDERED");
            }
            m1658d((byte) 6);
        } else if (m1577Q() == 6) {
            this.f884O++;
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
        if (interfaceC3147f53 != null) {
            ((C3162g5) interfaceC3147f53).m2147a("InMobi", "Successfully displayed fullscreen for placement id: " + m1570I());
        }
        if (this.f884O == 0) {
            if (abstractC2748E0 != null) {
                InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
                if (interfaceC3147f54 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f54).m2147a("C7", "callback - onAdDisplayed");
                }
                m1659d(abstractC2748E0);
                return;
            }
            InterfaceC3147f5 interfaceC3147f55 = this.f1437j;
            if (interfaceC3147f55 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C3162g5) interfaceC3147f55).m2151b("C7", "listener is null. cannot give AdDisplayed callback");
            }
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: c0 */
    public final void mo911c0() {
        if (m1584Z()) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C3162g5) interfaceC3147f5).m2151b("C7", "Ad unit is already destroyed! Returning ...");
                return;
            }
            return;
        }
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (mo1230f0()) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C3162g5) interfaceC3147f52).m2151b("C7", "Some of the dependency libraries for InMobiNative not found");
            }
            if (abstractC2748E0M1697r != null) {
                abstractC2748E0M1697r.mo878a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES));
                return;
            }
            return;
        }
        if (1 == m1577Q() || 2 == m1577Q()) {
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C3162g5) interfaceC3147f53).m2151b("C7", "An ad load is already in progress");
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
        if (interfaceC3147f54 != null) {
            ((C3162g5) interfaceC3147f54).m2147a("C7", AbstractC3208j6.m2261a("C7", "TAG", "Fetching a Native ad for placement id: ").append(m1570I()).toString());
        }
        if (4 == m1577Q()) {
            if (!m1581W()) {
                InterfaceC3147f5 interfaceC3147f55 = this.f1437j;
                if (interfaceC3147f55 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f55).m2147a("C7", "An ad is ready with the ad unit. Signaling ad load success ...");
                }
                if (abstractC2748E0M1697r != null) {
                    Context contextM1700t = m1700t();
                    InterfaceC3147f5 interfaceC3147f56 = this.f1437j;
                    if (interfaceC3147f56 != null) {
                        Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                        ((C3162g5) interfaceC3147f56).m2152c("C7", "setContainerContext");
                    }
                    InterfaceC3411x interfaceC3411xM1682k = m1682k();
                    if (interfaceC3411xM1682k instanceof C3359t7) {
                        ((C3359t7) interfaceC3411xM1682k).m2436a(contextM1700t);
                    }
                    InterfaceC3147f5 interfaceC3147f57 = this.f1437j;
                    if (interfaceC3147f57 != null) {
                        Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                        ((C3162g5) interfaceC3147f57).m2147a("C7", "callback - onFetchSuccess");
                    }
                    InterfaceC3147f5 interfaceC3147f58 = this.f1437j;
                    if (interfaceC3147f58 != null) {
                        Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                        ((C3162g5) interfaceC3147f58).m2147a("C7", "callback - onLoadSuccess");
                    }
                    m1665e(abstractC2748E0M1697r);
                    m1671f(abstractC2748E0M1697r);
                    return;
                }
                return;
            }
            InterfaceC3147f5 interfaceC3147f59 = this.f1437j;
            if (interfaceC3147f59 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C3162g5) interfaceC3147f59).m2151b("C7", "ad is expired - destroy");
            }
            m898D0();
        }
        m1668e0();
        super.mo911c0();
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: j0 */
    public final void mo912j0() {
        if (m1695p0()) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C3162g5) interfaceC3147f5).m2147a("C7", "renderAd without internet check");
            }
            m899E0();
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f52).m2147a("C7", "renderAd");
        }
        m1618a(new C2695A7(this), new C2710B7(this));
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: o */
    public final HashMap mo913o() {
        HashMap map = new HashMap();
        map.put("a-parentViewWidth", String.valueOf(AbstractC2886N3.m1388d().f1330a));
        map.put("a-productVersion", "NS-1.0.0-20160411");
        map.put("trackerType", "url_ping");
        return map;
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: q */
    public final String mo914q() {
        return AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE;
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: r0 */
    public final void mo915r0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("C7", "signalSuccess");
        }
        C2687A c2687aM1704v = m1704v();
        int iHashCode = hashCode();
        C3135e8 c3135e8 = new C3135e8(this);
        c2687aM1704v.getClass();
        C2687A.m825a(iHashCode, c3135e8);
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: a */
    public final void mo903a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.mo903a(context);
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("C7", "setContainerContext");
        }
        InterfaceC3411x interfaceC3411xM1682k = m1682k();
        if (interfaceC3411xM1682k instanceof C3359t7) {
            ((C3359t7) interfaceC3411xM1682k).m2436a(context);
        }
    }

    /* JADX INFO: renamed from: a */
    public final View m901a(View view, ViewGroup parent, int i) {
        View view2;
        Intrinsics.checkNotNullParameter(parent, "parent");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("C7", "getAdView");
        }
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            if (!C3356t4.f2542a.m2421a()) {
                m898D0();
                InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
                if (interfaceC3147f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f52).m2151b("C7", "dropping because of GDPR");
                }
                return null;
            }
            if (m1581W()) {
                InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
                if (interfaceC3147f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f53).m2147a("C7", "Ad has expired.");
                }
                m898D0();
                return null;
            }
            if (m1577Q() != 4 && m1577Q() != 6) {
                InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
                if (interfaceC3147f54 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f54).m2151b("C7", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling getPrimaryView().");
                }
                AbstractC2814I6.m1170a((byte) 1, "InMobi", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling getPrimaryView().");
                InterfaceC3147f5 interfaceC3147f55 = this.f1437j;
                if (interfaceC3147f55 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f55).m2151b("C7", "Ad Load is not complete");
                }
                WeakReference weakReference = this.f882M;
                if (weakReference == null || (view2 = (View) weakReference.get()) == null) {
                    return null;
                }
                View view3 = new View(C2849Kb.m1254d());
                view3.setLayoutParams(view2.getLayoutParams());
                return view3;
            }
            C3359t7 c3359t7M1568G = m1568G();
            if (c3359t7M1568G != null) {
                boolean z = this.f883N;
                InterfaceC3147f5 interfaceC3147f56 = c3359t7M1568G.f2584j;
                if (interfaceC3147f56 != null) {
                    String TAG = c3359t7M1568G.f2587m;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f56).m2152c(TAG, "showOnLockScreen - " + z);
                }
                c3359t7M1568G.f2558D = z;
                c3359t7M1568G.f2556B = i;
                final AbstractC3260md viewableAd = c3359t7M1568G.getViewableAd();
                viewMo956a = viewableAd != null ? viewableAd.mo956a(view, parent, true) : null;
                this.f882M = new WeakReference(viewMo956a);
                Handler handlerM1565D = m1565D();
                if (handlerM1565D != null) {
                    handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.C7$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            C2725C7.m897a(this.f$0, viewableAd);
                        }
                    });
                }
            }
            return viewMo956a;
        }
        InterfaceC3147f5 interfaceC3147f57 = this.f1437j;
        if (interfaceC3147f57 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f57).m2151b("C7", "getPrimaryView called on background thread");
        }
        m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.CALLED_FROM_WRONG_THREAD), false, (short) 2150);
        return null;
    }

    /* JADX INFO: renamed from: a */
    public static final void m897a(C2725C7 this$0, AbstractC3260md abstractC3260md) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f5).m2147a("C7", "start tracking for impression");
        }
        if (abstractC3260md != null) {
            abstractC3260md.mo962a((HashMap) null);
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: a */
    public final void mo907a(C3412x0 adSet) {
        Intrinsics.checkNotNullParameter(adSet, "adSet");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("C7", "handleAdFetchSuccessful");
        }
        if (m1577Q() == 1) {
            m1666e(adSet);
        }
        if (!Intrinsics.areEqual("html", m1566E()) && !Intrinsics.areEqual("htmlUrl", m1566E()) && !Intrinsics.areEqual("unknown", m1566E())) {
            super.mo907a(adSet);
            return;
        }
        m1602a(m1570I(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 57);
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f52).m2151b("C7", "invalid markup. fetch failed");
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: a */
    public final void mo904a(AbstractC2748E0 abstractC2748E0) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("C7", "handleAdScreenDismissed");
        }
        if (m1577Q() == 6) {
            int i = this.f884O;
            if (i > 0) {
                this.f884O = i - 1;
            } else {
                InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
                if (interfaceC3147f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f52).m2153d("C7", "AdUnit " + this + " state - READY");
                }
                m1658d((byte) 4);
            }
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
        if (interfaceC3147f53 != null) {
            ((C3162g5) interfaceC3147f53).m2147a("InMobi", "Successfully dismissed fullscreen for placement id: " + m1570I());
        }
        if (this.f884O == 0 && m1577Q() == 4) {
            if (abstractC2748E0 != null) {
                InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
                if (interfaceC3147f54 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f54).m2147a("C7", "callback - onAdDismissed");
                }
                abstractC2748E0.mo881b();
            } else {
                InterfaceC3147f5 interfaceC3147f55 = this.f1437j;
                if (interfaceC3147f55 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f55).m2151b("C7", "Listener was garbage collected. Unable to give callback");
                }
            }
            InterfaceC3147f5 interfaceC3147f56 = this.f1437j;
            if (interfaceC3147f56 != null) {
                ((C3162g5) interfaceC3147f56).m2146a();
            }
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: a */
    public final void mo905a(C3038Y placement, boolean z) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("C7", "handleAssetAvailabilityChanged");
        }
        super.mo905a(placement, z);
        if (!z) {
            if (Intrinsics.areEqual(m1570I(), placement)) {
                if (2 == m1577Q() || 4 == m1577Q()) {
                    m1658d((byte) 0);
                    InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
                    if (interfaceC3147f52 != null) {
                        Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                        ((C3162g5) interfaceC3147f52).m2153d("C7", "AdUnit " + this + " state - CREATED");
                    }
                    AbstractC2748E0 abstractC2748E0M1697r = m1697r();
                    if (abstractC2748E0M1697r != null) {
                        abstractC2748E0M1697r.mo878a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE));
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (!Intrinsics.areEqual(m1570I(), placement) || 2 != m1577Q() || m1697r() == null || m1700t() == null) {
            return;
        }
        if (m1627a0()) {
            m1656c(true);
            m1669f();
        } else {
            mo915r0();
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: a */
    public final void mo908a(boolean z, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("C7", "onDidParseAfterFetch");
        }
        super.mo908a(z, status);
        if (m1577Q() == 2) {
            AbstractC2748E0 abstractC2748E0M1697r = m1697r();
            if (abstractC2748E0M1697r != null) {
                InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
                if (interfaceC3147f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f52).m2147a("C7", "callback - onFetchSuccess");
                }
                m1665e(abstractC2748E0M1697r);
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
        if (interfaceC3147f53 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f53).m2151b("C7", "invalid state - ignore parse callback");
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.InterfaceC3200id
    /* JADX INFO: renamed from: a */
    public final void mo906a(C3171h ad, boolean z, short s) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("C7", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("C7", "onVastProcessCompleted");
        }
        if (!z) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b("C7", AbstractC3420x8.m2595a("C7", "TAG", "VAST processing failed - ", s));
            }
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s);
            return;
        }
        try {
            try {
                super.mo906a(ad, z, s);
            } catch (IllegalStateException e) {
                InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
                if (interfaceC3147f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f53).m2151b("C7", "Exception while onVastProcessCompleted : " + e.getMessage());
                }
            }
            C3171h c3171hM1688m = m1688m();
            if (c3171hM1688m == null) {
                InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
                if (interfaceC3147f54 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f54).m2151b("C7", "current ad is null. failing");
                }
                m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 55);
                return;
            }
            if (m1579T() == 0) {
                if (!c3171hM1688m.m2173G()) {
                    InterfaceC3147f5 interfaceC3147f55 = this.f1437j;
                    if (interfaceC3147f55 != null) {
                        Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                        ((C3162g5) interfaceC3147f55).m2152c("C7", "start OMID session for HTML ad");
                    }
                    m1621a(true, (GestureDetectorOnGestureListenerC3049Ya) null);
                }
            } else {
                InterfaceC3147f5 interfaceC3147f56 = this.f1437j;
                if (interfaceC3147f56 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f56).m2152c("C7", "start OMID session for current AD");
                }
                m1608a(c3171hM1688m);
            }
            if (c3171hM1688m.m2173G()) {
                m1640b(true);
                InterfaceC3147f5 interfaceC3147f57 = this.f1437j;
                if (interfaceC3147f57 != null) {
                    Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                    ((C3162g5) interfaceC3147f57).m2152c("C7", "handleInterActive");
                }
                m1580V();
            }
        } catch (Exception e2) {
            InterfaceC3147f5 interfaceC3147f58 = this.f1437j;
            if (interfaceC3147f58 != null) {
                Intrinsics.checkNotNullExpressionValue("C7", "TAG");
                ((C3162g5) interfaceC3147f58).m2148a("C7", "Exception while loading ad.", e2);
            }
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 13);
        }
    }
}
