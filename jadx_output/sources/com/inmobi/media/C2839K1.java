package com.inmobi.media;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import com.facebook.appevents.AppEventsConstants;
import com.inmobi.ads.InMobiAdRequestStatus;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.K1 */
/* JADX INFO: loaded from: classes6.dex */
public class C2839K1 extends AbstractC2928Q0 implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: M */
    public final String f1145M;

    /* JADX INFO: renamed from: N */
    public final String f1146N;

    /* JADX INFO: renamed from: O */
    public boolean f1147O;

    /* JADX INFO: renamed from: P */
    public int f1148P;

    /* JADX INFO: renamed from: Q */
    public final C2854L1 f1149Q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2839K1(Context context, C3038Y placement, AbstractC2748E0 abstractC2748E0) {
        super(context, placement, abstractC2748E0);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placement, "placement");
        this.f1145M = "K1";
        this.f1146N = "InMobi";
        this.f1149Q = new C2854L1();
        Intrinsics.checkNotNullExpressionValue("K1", "TAG");
        placement.m1938l();
        m1595a(context, placement, abstractC2748E0);
    }

    /* JADX INFO: renamed from: c */
    public static final void m1209c(C2839K1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1437j;
        if (interfaceC3147f5 != null) {
            String TAG = this$0.f1145M;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "start loading html ad");
        }
        this$0.m1699s0();
    }

    /* JADX INFO: renamed from: e */
    public static final void m1211e(C2839K1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            if (this$0.m1577Q() != 6) {
                if (this$0.m1577Q() == 7) {
                    this$0.f1148P++;
                    return;
                }
                return;
            }
            this$0.f1148P++;
            this$0.m1658d((byte) 7);
            InterfaceC3147f5 interfaceC3147f5 = this$0.f1437j;
            if (interfaceC3147f5 != null) {
                String TAG = this$0.f1145M;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2153d(TAG, "AdUnit " + this$0 + " state - ACTIVE");
            }
            InterfaceC3147f5 interfaceC3147f52 = this$0.f1437j;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2152c(this$0.f1146N, "Successfully displayed banner ad for placement Id : " + this$0.m1570I());
            }
            AbstractC2748E0 abstractC2748E0M1697r = this$0.m1697r();
            if (abstractC2748E0M1697r != null) {
                this$0.m1659d(abstractC2748E0M1697r);
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f53 = this$0.f1437j;
            if (interfaceC3147f53 != null) {
                String str = this$0.f1145M;
                ((C3162g5) interfaceC3147f53).m2151b(str, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str, "TAG", "BannerAdUnit.onAdScreenDisplayed threw unexpected error: ")));
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public static final void m1212f(C2839K1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            if (this$0.m1577Q() == 4) {
                this$0.m1658d((byte) 6);
                InterfaceC3147f5 interfaceC3147f5 = this$0.f1437j;
                if (interfaceC3147f5 != null) {
                    String TAG = this$0.f1145M;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2153d(TAG, "AdUnit " + this$0 + " state - RENDERED");
                }
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f52 = this$0.f1437j;
            if (interfaceC3147f52 != null) {
                String str = this$0.f1145M;
                ((C3162g5) interfaceC3147f52).m2151b(str, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str, "TAG", "BannerAdUnit.onRenderViewVisible threw unexpected error: ")));
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public static final void m1213g(C2839K1 this$0) {
        LinkedList<C3171h> linkedListM2576f;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.m1644b0()) {
            this$0.m1594a(System.currentTimeMillis());
            C3412x0 c3412x0M1709y = this$0.m1709y();
            if (c3412x0M1709y != null && (linkedListM2576f = c3412x0M1709y.m2576f()) != null) {
                int i = 0;
                for (Object obj : linkedListM2576f) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    this$0.m1561B().add(Integer.valueOf(i));
                    i = i2;
                }
            }
        }
        this$0.m1699s0();
    }

    /* JADX INFO: renamed from: D0 */
    public boolean mo1214D0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "canProceedToLoad ", this));
        }
        if (mo1230f0()) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                String TAG = this.f1145M;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f52).m2151b(TAG, "Some of the dependency libraries for Banner not found");
            }
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES), true, (short) 2007);
            return false;
        }
        if (1 == m1577Q() || 2 == m1577Q()) {
            AbstractC2814I6.m1170a((byte) 1, this.f1146N, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad");
            InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
            if (interfaceC3147f53 != null) {
                String TAG2 = this.f1145M;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f53).m2151b(TAG2, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad");
            }
            if (1 == m1577Q()) {
                m1620a((short) 2008);
            } else {
                m1620a((short) 2011);
            }
            return false;
        }
        if (7 != m1577Q()) {
            InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
            if (interfaceC3147f54 != null) {
                ((C3162g5) interfaceC3147f54).m2152c(this.f1146N, "Fetching a Banner ad for placement id: " + m1570I());
            }
            m1668e0();
            return true;
        }
        m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE), false, (short) 2010);
        InterfaceC3147f5 interfaceC3147f55 = this.f1437j;
        if (interfaceC3147f55 != null) {
            String str2 = this.f1145M;
            ((C3162g5) interfaceC3147f55).m2151b(str2, AbstractC3208j6.m2261a(str2, "TAG", AbstractC2880Mc.f1270j).append(m1570I().m1938l()).toString());
        }
        return false;
    }

    /* JADX INFO: renamed from: E0 */
    public final boolean m1215E0() {
        return m1577Q() == 7;
    }

    /* JADX INFO: renamed from: F0 */
    public final void m1216F0() {
        AbstractC3260md viewableAd;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC2794H1.m1148a(str, "TAG", "onPause ", this));
        }
        byte bM1577Q = m1577Q();
        if (bM1577Q == 4 || bM1577Q == 6 || bM1577Q == 7) {
            InterfaceC3411x interfaceC3411xM1682k = m1682k();
            Context contextM1700t = m1700t();
            if (interfaceC3411xM1682k == null || contextM1700t == null || (viewableAd = interfaceC3411xM1682k.getViewableAd()) == null) {
                return;
            }
            viewableAd.mo959a(contextM1700t, (byte) 1);
        }
    }

    /* JADX INFO: renamed from: G0 */
    public final void m1217G0() {
        AbstractC3260md viewableAd;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC2794H1.m1148a(str, "TAG", "onResume ", this));
        }
        byte bM1577Q = m1577Q();
        if (bM1577Q == 4 || bM1577Q == 6 || bM1577Q == 7) {
            InterfaceC3411x interfaceC3411xM1682k = m1682k();
            Context contextM1700t = m1700t();
            if (interfaceC3411xM1682k == null || contextM1700t == null || (viewableAd = interfaceC3411xM1682k.getViewableAd()) == null) {
                return;
            }
            viewableAd.mo959a(contextM1700t, (byte) 0);
        }
    }

    /* JADX INFO: renamed from: H0 */
    public final void m1218H0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "registerLifeCycleCallbacks ", this));
        }
        Context contextM1700t = m1700t();
        if (contextM1700t != null) {
            C2849Kb.m1245a(contextM1700t, this);
        }
    }

    /* JADX INFO: renamed from: I0 */
    public final void m1219I0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String TAG = this.f1145M;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "renderAdPostInternetCheck");
        }
        try {
            if (m1693o0()) {
                return;
            }
            C2955S0 c2955s0M1698s = m1698s();
            c2955s0M1698s.getClass();
            c2955s0M1698s.f1521g = SystemClock.elapsedRealtime();
            m1663d0();
            Handler handlerM1565D = m1565D();
            if (handlerM1565D != null) {
                handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.K1$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2839K1.m1213g(this.f$0);
                    }
                });
            }
        } catch (IllegalStateException e) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                String TAG2 = this.f1145M;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2148a(TAG2, "Exception while loading ad.", e);
            }
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2134);
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: J */
    public final byte mo900J() {
        return (byte) 0;
    }

    /* JADX INFO: renamed from: J0 */
    public final void m1220J0() {
        Application application;
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "unregisterLifeCycleCallbacks ", this));
        }
        Context contextM1700t = m1700t();
        Activity activity = contextM1700t instanceof Activity ? (Activity) contextM1700t : null;
        if (activity == null || (application = activity.getApplication()) == null) {
            return;
        }
        application.unregisterActivityLifecycleCallbacks(this);
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: c0 */
    public void mo911c0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC2794H1.m1148a(str, "TAG", "load ", this));
        }
        if (mo1214D0()) {
            super.mo911c0();
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: d */
    public synchronized void mo1226d(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC2794H1.m1148a(str, "TAG", "onAdScreenDismissed ", this));
        }
        super.mo1226d(renderView);
        Handler handlerM1565D = m1565D();
        if (handlerM1565D != null) {
            handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.K1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C2839K1.m1210d(this.f$0);
                }
            });
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: f0 */
    public boolean mo1230f0() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 == null) {
            return false;
        }
        String str = this.f1145M;
        ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "missingPrerequisitesForAd ", this));
        return false;
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: i */
    public void mo1232i(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "onRenderViewVisible ", this));
        }
        super.mo1232i(renderView);
        Handler handlerM1565D = m1565D();
        if (handlerM1565D != null) {
            handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.K1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    C2839K1.m1212f(this.f$0);
                }
            });
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: j0 */
    public void mo912j0() {
        if (m1695p0()) {
            InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
            if (interfaceC3147f5 != null) {
                String TAG = this.f1145M;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2147a(TAG, "renderAd without internet check");
            }
            m1219I0();
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            String TAG2 = this.f1145M;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG2, "renderAd");
        }
        m1618a(new C2809I1(this), new C2824J1(this));
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: m */
    public final void mo1233m(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC2794H1.m1148a(str, "TAG", "handleRenderViewSignaledAdReady ", this));
        }
        super.mo1233m(gestureDetectorOnGestureListenerC3049Ya);
        if (m1644b0() && this.f1434g.indexOf(gestureDetectorOnGestureListenerC3049Ya) > 0 && m1577Q() == 6) {
            m1629b((byte) 1);
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = (GestureDetectorOnGestureListenerC3049Ya) this.f1434g.get(m1559A());
            if (gestureDetectorOnGestureListenerC3049Ya2 != null) {
                gestureDetectorOnGestureListenerC3049Ya2.m1958a(true);
                return;
            }
            return;
        }
        if (m1577Q() != 2) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                String str2 = this.f1145M;
                ((C3162g5) interfaceC3147f52).m2147a(str2, AbstractC3208j6.m2261a(str2, "TAG", "AdUnit is not in available state, ignoring the ad ready signal - ").append((int) m1577Q()).toString());
                return;
            }
            return;
        }
        m1629b((byte) 1);
        m1658d((byte) 4);
        InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
        if (interfaceC3147f53 != null) {
            String TAG = this.f1145M;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f53).m2153d(TAG, "AdUnit " + this + " state - READY");
        }
        C2955S0 c2955s0M1698s = m1698s();
        c2955s0M1698s.getClass();
        c2955s0M1698s.f1523i = SystemClock.elapsedRealtime();
        m1703u0();
        m1712z0();
        InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
        if (interfaceC3147f54 != null) {
            ((C3162g5) interfaceC3147f54).m2152c(this.f1146N, "Successfully loaded Banner ad markup in the WebView for placement id: " + m1570I());
        }
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (abstractC2748E0M1697r != null) {
            m1671f(abstractC2748E0M1697r);
        } else {
            InterfaceC3147f5 interfaceC3147f55 = this.f1437j;
            if (interfaceC3147f55 != null) {
                String TAG2 = this.f1145M;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f55).m2151b(TAG2, "AdUnit listener is null");
            }
        }
        m1678i();
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: o */
    public void mo1234o(GestureDetectorOnGestureListenerC3049Ya renderView) {
        int iIndexOf;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (m1644b0() && (iIndexOf = this.f1434g.indexOf(renderView)) > m1559A() && renderView.f1783z != EnumC3320qd.f2472c) {
            m1561B().remove(Integer.valueOf(iIndexOf));
        } else {
            m1564C0();
            super.mo1234o(renderView);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "onActivityCreated ", this));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "onActivityDestroyed ", this));
        }
        Context contextM1700t = m1700t();
        if (Intrinsics.areEqual(contextM1700t, activity)) {
            Intrinsics.checkNotNull(contextM1700t, "null cannot be cast to non-null type android.app.Activity");
            ((Activity) contextM1700t).getApplication().unregisterActivityLifecycleCallbacks(this);
            mo1231g();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "onActivityPaused ", this));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "onActivityResumed ", this));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "onActivitySaveInstanceState ", this));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "onActivityStarted ", this));
        }
        if (Intrinsics.areEqual(m1700t(), activity)) {
            m1217G0();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "onActivityStopped ", this));
        }
        if (Intrinsics.areEqual(m1700t(), activity)) {
            m1216F0();
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: q */
    public String mo914q() {
        return "banner";
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: w */
    public GestureDetectorOnGestureListenerC3049Ya mo1235w() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "htmlAdContainer getter ", this));
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049YaMo1235w = super.mo1235w();
        if (m1570I().m1941p() && gestureDetectorOnGestureListenerC3049YaMo1235w != null) {
            gestureDetectorOnGestureListenerC3049YaMo1235w.mo1969e();
        }
        return gestureDetectorOnGestureListenerC3049YaMo1235w;
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: a */
    public void mo908a(boolean z, InMobiAdRequestStatus status) {
        AbstractC2748E0 abstractC2748E0M1697r;
        Intrinsics.checkNotNullParameter(status, "status");
        super.mo908a(z, status);
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "onDidParseAfterFetch ", this));
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2152c(this.f1146N, "Banner ad fetch successful for placement id: " + m1570I());
        }
        if (m1577Q() != 2 || (abstractC2748E0M1697r = m1697r()) == null) {
            return;
        }
        m1665e(abstractC2748E0M1697r);
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.InterfaceC3052Z
    /* JADX INFO: renamed from: b */
    public void mo909b() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC2794H1.m1148a(str, "TAG", "closeAll ", this));
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: o */
    public final HashMap mo913o() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC2794H1.m1148a(str, "TAG", "adSpecificRequestParams getter ", this));
        }
        HashMap map = new HashMap();
        map.put("u-rt", this.f1147O ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put("mk-ad-slot", m1570I().m1926a());
        return map;
    }

    /* JADX INFO: renamed from: a */
    public static final void m1207a(C2839K1 this$0, GestureDetectorOnGestureListenerC3049Ya renderView, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        int iIndexOf = this$0.f1434g.indexOf(renderView);
        try {
            AbstractC2748E0 abstractC2748E0M1697r = this$0.m1697r();
            InterfaceC3147f5 interfaceC3147f5 = this$0.f1437j;
            if (interfaceC3147f5 != null) {
                String TAG = this$0.f1145M;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2152c(TAG, "callback onShowNextPodAd");
            }
            if (abstractC2748E0M1697r != null) {
                abstractC2748E0M1697r.mo972a(i, iIndexOf, renderView);
            }
        } catch (Exception unused) {
            this$0.m1630b(iIndexOf, false);
            this$0.m1670f(iIndexOf);
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: a */
    public final void mo1223a(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya, short s) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC2794H1.m1148a(str, "TAG", "handleRenderViewSignaledAdFailed ", this));
        }
        super.mo1223a(gestureDetectorOnGestureListenerC3049Ya, s);
        if (m1644b0()) {
            int iIndexOf = this.f1434g.indexOf(gestureDetectorOnGestureListenerC3049Ya);
            AbstractC2928Q0.m1541a(this, iIndexOf, false, 2, null);
            if (iIndexOf > 0 && m1577Q() == 6) {
                m1629b((byte) 1);
                GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = (GestureDetectorOnGestureListenerC3049Ya) this.f1434g.get(m1559A());
                if (gestureDetectorOnGestureListenerC3049Ya2 != null) {
                    gestureDetectorOnGestureListenerC3049Ya2.m1958a(false);
                }
            }
        }
        if (m1577Q() == 2) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2152c(this.f1146N, "Failed to load the Banner markup in the WebView for placement id: " + m1570I());
            }
            m1632b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s);
        }
    }

    /* JADX INFO: renamed from: d */
    public static final void m1210d(C2839K1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            if (this$0.m1577Q() == 7) {
                int i = this$0.f1148P - 1;
                this$0.f1148P = i;
                if (i == 0) {
                    this$0.m1658d((byte) 6);
                    AbstractC2748E0 abstractC2748E0M1697r = this$0.m1697r();
                    if (abstractC2748E0M1697r != null) {
                        abstractC2748E0M1697r.mo881b();
                    }
                }
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f5 = this$0.f1437j;
            if (interfaceC3147f5 != null) {
                String str = this$0.f1145M;
                ((C3162g5) interfaceC3147f5).m2151b(str, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str, "TAG", "BannerAdUnit.onAdScreenDismissed threw unexpected error: ")));
            }
        }
    }

    @Override // com.inmobi.media.AbstractC2928Q0
    /* JADX INFO: renamed from: g */
    public void mo1231g() {
        this.f1149Q.f1185a = false;
        super.mo1231g();
    }

    /* JADX INFO: renamed from: e */
    public final void m1229e(boolean z) {
        InterfaceC3147f5 interfaceC3147f5;
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f52).m2147a(str, AbstractC2794H1.m1148a(str, "TAG", "load ", this));
        }
        if (z && (interfaceC3147f5 = this.f1437j) != null) {
            ((C3162g5) interfaceC3147f5).m2152c(this.f1146N, "Initiating Banner refresh for placement id: " + m1570I());
        }
        this.f1147O = z;
        mo911c0();
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.InterfaceC3052Z
    /* JADX INFO: renamed from: a */
    public void mo902a(int i, GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC2794H1.m1148a(str, "TAG", "loadPodAd ", this));
        }
        if (m1561B().contains(Integer.valueOf(i)) && i > this.f1434g.indexOf(renderView)) {
            m1672g(i);
            Handler handlerM1565D = m1565D();
            if (handlerM1565D != null) {
                handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.K1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2839K1.m1209c(this.f$0);
                    }
                });
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
        if (interfaceC3147f52 != null) {
            String TAG = this.f1145M;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG, "No more ads present in pod adSet or current adSet is not pod adSet");
        }
        ArrayList arrayList = this.f1434g;
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) arrayList.get(arrayList.indexOf(renderView));
        if (gestureDetectorOnGestureListenerC3049Ya != null) {
            gestureDetectorOnGestureListenerC3049Ya.m1958a(false);
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: e */
    public synchronized void mo1227e(GestureDetectorOnGestureListenerC3049Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC2794H1.m1148a(str, "TAG", "onAdScreenDisplayed ", this));
        }
        super.mo1227e(renderView);
        Handler handlerM1565D = m1565D();
        if (handlerM1565D != null) {
            handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.K1$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    C2839K1.m1211e(this.f$0);
                }
            });
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m1228e(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String str2 = this.f1145M;
            ((C3162g5) interfaceC3147f5).m2152c(str2, AbstractC2794H1.m1148a(str2, "TAG", "setAdSize ", this));
        }
        C3038Y c3038yM1570I = m1570I();
        Intrinsics.checkNotNull(str);
        c3038yM1570I.m1927a(str);
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.InterfaceC3052Z
    /* JADX INFO: renamed from: a */
    public void mo1221a(final int i, final GestureDetectorOnGestureListenerC3049Ya renderView, Context context) {
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3147f5 interfaceC3147f5 = this.f1437j;
        if (interfaceC3147f5 != null) {
            String TAG = this.f1145M;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "showPodAdAtIndex " + this + " index - " + i);
        }
        if (!m1644b0()) {
            InterfaceC3147f5 interfaceC3147f52 = this.f1437j;
            if (interfaceC3147f52 != null) {
                String TAG2 = this.f1145M;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2151b(TAG2, "Cannot show an pod ad as isPod is not set.");
            }
            ArrayList arrayList = this.f1434g;
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = (GestureDetectorOnGestureListenerC3049Ya) arrayList.get(arrayList.indexOf(renderView));
            if (gestureDetectorOnGestureListenerC3049Ya2 != null) {
                gestureDetectorOnGestureListenerC3049Ya2.m1963b(false);
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f1437j;
        if (interfaceC3147f53 != null) {
            String TAG3 = this.f1145M;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((C3162g5) interfaceC3147f53).m2152c(TAG3, "isInValidShowPodIndex " + i + ' ' + m1561B() + ' ' + this.f1434g.indexOf(renderView) + ' ' + this + ' ');
        }
        if (m1561B().contains(Integer.valueOf(i)) && i > this.f1434g.indexOf(renderView) && this.f1434g.get(i) != null && ((gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) this.f1434g.get(i)) == null || gestureDetectorOnGestureListenerC3049Ya.f1758m0)) {
            super.mo1221a(i, renderView, context);
            Handler handlerM1565D = m1565D();
            if (handlerM1565D != null) {
                handlerM1565D.post(new Runnable() { // from class: com.inmobi.media.K1$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2839K1.m1207a(this.f$0, renderView, i);
                    }
                });
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1437j;
        if (interfaceC3147f54 != null) {
            String TAG4 = this.f1145M;
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            ((C3162g5) interfaceC3147f54).m2151b(TAG4, "Cannot show an pod ad with invalid index passed");
        }
        ArrayList arrayList2 = this.f1434g;
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya3 = (GestureDetectorOnGestureListenerC3049Ya) arrayList2.get(arrayList2.indexOf(renderView));
        if (gestureDetectorOnGestureListenerC3049Ya3 != null) {
            gestureDetectorOnGestureListenerC3049Ya3.m1963b(false);
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public void mo1222a(EnumC2704B1 audioStatusInternal) {
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        AbstractC2748E0 abstractC2748E0M1697r = m1697r();
        if (abstractC2748E0M1697r != null) {
            abstractC2748E0M1697r.mo974a(audioStatusInternal);
        }
        C2854L1 c2854l1 = this.f1149Q;
        c2854l1.getClass();
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        if (!c2854l1.f1185a && audioStatusInternal == EnumC2704B1.f842e) {
            c2854l1.f1185a = true;
            C3087b5 c3087b5 = C3087b5.f1875c;
            c3087b5.f1454a = System.currentTimeMillis();
            c3087b5.f1455b++;
        }
    }

    @Override // com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public void mo1225a(boolean z) {
        C3087b5 c3087b5 = C3087b5.f1875c;
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "banner_audio_pref_file");
        Intrinsics.checkNotNullParameter("user_mute_count", "key");
        int i = c3133e6M2058a.f2045a.getInt("user_mute_count", 0);
        C3133e6.m2099a(c3133e6M2058a, "user_mute_count", z ? Math.max(0, i - 1) : i + 1, false, 4, (Object) null);
    }

    @Override // com.inmobi.media.AbstractC2928Q0, com.inmobi.media.AbstractC3078ab
    /* JADX INFO: renamed from: a */
    public void mo1224a(GestureDetectorOnGestureListenerC3049Ya renderView, boolean z) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        super.mo1224a(renderView, z);
        byte bM1577Q = m1577Q();
        if (bM1577Q != 4 && bM1577Q != 6) {
            if (bM1577Q == 7) {
                renderView.m1959a(z, m1577Q() == 7 ? z ? (short) 2224 : (short) 2223 : (short) 2227);
                return;
            }
            return;
        }
        byte bM1577Q2 = m1577Q();
        if (bM1577Q2 == 4) {
            s = z ? (short) 2220 : (short) 2219;
        } else if (bM1577Q2 == 6) {
            s = z ? (short) 2222 : (short) 2221;
        }
        m1689m0();
        renderView.m1959a(z, s);
    }
}
