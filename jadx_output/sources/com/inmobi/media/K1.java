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

/* JADX INFO: loaded from: classes6.dex */
public class K1 extends Q0 implements Application.ActivityLifecycleCallbacks {
    public final String M;
    public final String N;
    public boolean O;
    public int P;
    public final L1 Q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K1(Context context, Y placement, E0 e0) {
        super(context, placement, e0);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placement, "placement");
        this.M = "K1";
        this.N = "InMobi";
        this.Q = new L1();
        Intrinsics.checkNotNullExpressionValue("K1", "TAG");
        placement.l();
        a(context, placement, e0);
    }

    public static final void c(K1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC0298f5 interfaceC0298f5 = this$0.j;
        if (interfaceC0298f5 != null) {
            String TAG = this$0.M;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "start loading html ad");
        }
        this$0.s0();
    }

    public static final void e(K1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            if (this$0.Q() != 6) {
                if (this$0.Q() == 7) {
                    this$0.P++;
                    return;
                }
                return;
            }
            this$0.P++;
            this$0.d((byte) 7);
            InterfaceC0298f5 interfaceC0298f5 = this$0.j;
            if (interfaceC0298f5 != null) {
                String TAG = this$0.M;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).d(TAG, "AdUnit " + this$0 + " state - ACTIVE");
            }
            InterfaceC0298f5 interfaceC0298f52 = this$0.j;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).c(this$0.N, "Successfully displayed banner ad for placement Id : " + this$0.I());
            }
            E0 e0R = this$0.r();
            if (e0R != null) {
                this$0.d(e0R);
            }
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f53 = this$0.j;
            if (interfaceC0298f53 != null) {
                String str = this$0.M;
                ((C0314g5) interfaceC0298f53).b(str, Ed.a(e, AbstractC0363j6.a(str, "TAG", "BannerAdUnit.onAdScreenDisplayed threw unexpected error: ")));
            }
        }
    }

    public static final void f(K1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            if (this$0.Q() == 4) {
                this$0.d((byte) 6);
                InterfaceC0298f5 interfaceC0298f5 = this$0.j;
                if (interfaceC0298f5 != null) {
                    String TAG = this$0.M;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).d(TAG, "AdUnit " + this$0 + " state - RENDERED");
                }
            }
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f52 = this$0.j;
            if (interfaceC0298f52 != null) {
                String str = this$0.M;
                ((C0314g5) interfaceC0298f52).b(str, Ed.a(e, AbstractC0363j6.a(str, "TAG", "BannerAdUnit.onRenderViewVisible threw unexpected error: ")));
            }
        }
    }

    public static final void g(K1 this$0) {
        LinkedList<C0325h> linkedListF;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.b0()) {
            this$0.a(System.currentTimeMillis());
            C0560x0 c0560x0Y = this$0.y();
            if (c0560x0Y != null && (linkedListF = c0560x0Y.f()) != null) {
                int i = 0;
                for (Object obj : linkedListF) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    this$0.B().add(Integer.valueOf(i));
                    i = i2;
                }
            }
        }
        this$0.s0();
    }

    public boolean D0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "canProceedToLoad ", this));
        }
        if (f0()) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                String TAG = this.M;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f52).b(TAG, "Some of the dependency libraries for Banner not found");
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES), true, (short) 2007);
            return false;
        }
        if (1 == Q() || 2 == Q()) {
            I6.a((byte) 1, this.N, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad");
            InterfaceC0298f5 interfaceC0298f53 = this.j;
            if (interfaceC0298f53 != null) {
                String TAG2 = this.M;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f53).b(TAG2, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad");
            }
            if (1 == Q()) {
                a((short) 2008);
            } else {
                a((short) 2011);
            }
            return false;
        }
        if (7 != Q()) {
            InterfaceC0298f5 interfaceC0298f54 = this.j;
            if (interfaceC0298f54 != null) {
                ((C0314g5) interfaceC0298f54).c(this.N, "Fetching a Banner ad for placement id: " + I());
            }
            e0();
            return true;
        }
        b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE), false, (short) 2010);
        InterfaceC0298f5 interfaceC0298f55 = this.j;
        if (interfaceC0298f55 != null) {
            String str2 = this.M;
            ((C0314g5) interfaceC0298f55).b(str2, AbstractC0363j6.a(str2, "TAG", Mc.j).append(I().l()).toString());
        }
        return false;
    }

    public final boolean E0() {
        return Q() == 7;
    }

    public final void F0() {
        AbstractC0416md viewableAd;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).a(str, H1.a(str, "TAG", "onPause ", this));
        }
        byte bQ = Q();
        if (bQ == 4 || bQ == 6 || bQ == 7) {
            InterfaceC0559x interfaceC0559xK = k();
            Context contextT = t();
            if (interfaceC0559xK == null || contextT == null || (viewableAd = interfaceC0559xK.getViewableAd()) == null) {
                return;
            }
            viewableAd.a(contextT, (byte) 1);
        }
    }

    public final void G0() {
        AbstractC0416md viewableAd;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).a(str, H1.a(str, "TAG", "onResume ", this));
        }
        byte bQ = Q();
        if (bQ == 4 || bQ == 6 || bQ == 7) {
            InterfaceC0559x interfaceC0559xK = k();
            Context contextT = t();
            if (interfaceC0559xK == null || contextT == null || (viewableAd = interfaceC0559xK.getViewableAd()) == null) {
                return;
            }
            viewableAd.a(contextT, (byte) 0);
        }
    }

    public final void H0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "registerLifeCycleCallbacks ", this));
        }
        Context contextT = t();
        if (contextT != null) {
            Kb.a(contextT, this);
        }
    }

    public final void I0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String TAG = this.M;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "renderAdPostInternetCheck");
        }
        try {
            if (o0()) {
                return;
            }
            S0 s0S = s();
            s0S.getClass();
            s0S.g = SystemClock.elapsedRealtime();
            d0();
            Handler handlerD = D();
            if (handlerD != null) {
                handlerD.post(new Runnable() { // from class: com.inmobi.media.K1$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        K1.g(this.f$0);
                    }
                });
            }
        } catch (IllegalStateException e) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                String TAG2 = this.M;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).a(TAG2, "Exception while loading ad.", e);
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 2134);
        }
    }

    @Override // com.inmobi.media.Q0
    public final byte J() {
        return (byte) 0;
    }

    public final void J0() {
        Application application;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "unregisterLifeCycleCallbacks ", this));
        }
        Context contextT = t();
        Activity activity = contextT instanceof Activity ? (Activity) contextT : null;
        if (activity == null || (application = activity.getApplication()) == null) {
            return;
        }
        application.unregisterActivityLifecycleCallbacks(this);
    }

    @Override // com.inmobi.media.Q0
    public void c0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).a(str, H1.a(str, "TAG", "load ", this));
        }
        if (D0()) {
            super.c0();
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public synchronized void d(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).a(str, H1.a(str, "TAG", "onAdScreenDismissed ", this));
        }
        super.d(renderView);
        Handler handlerD = D();
        if (handlerD != null) {
            handlerD.post(new Runnable() { // from class: com.inmobi.media.K1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    K1.d(this.f$0);
                }
            });
        }
    }

    @Override // com.inmobi.media.Q0
    public boolean f0() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 == null) {
            return false;
        }
        String str = this.M;
        ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "missingPrerequisitesForAd ", this));
        return false;
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.AbstractC0227ab
    public void i(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "onRenderViewVisible ", this));
        }
        super.i(renderView);
        Handler handlerD = D();
        if (handlerD != null) {
            handlerD.post(new Runnable() { // from class: com.inmobi.media.K1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    K1.f(this.f$0);
                }
            });
        }
    }

    @Override // com.inmobi.media.Q0
    public void j0() {
        if (p0()) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                String TAG = this.M;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).a(TAG, "renderAd without internet check");
            }
            I0();
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            String TAG2 = this.M;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG2, "renderAd");
        }
        a(new I1(this), new J1(this));
    }

    @Override // com.inmobi.media.Q0
    public final void m(Ya ya) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).a(str, H1.a(str, "TAG", "handleRenderViewSignaledAdReady ", this));
        }
        super.m(ya);
        if (b0() && this.g.indexOf(ya) > 0 && Q() == 6) {
            b((byte) 1);
            Ya ya2 = (Ya) this.g.get(A());
            if (ya2 != null) {
                ya2.a(true);
                return;
            }
            return;
        }
        if (Q() != 2) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                String str2 = this.M;
                ((C0314g5) interfaceC0298f52).a(str2, AbstractC0363j6.a(str2, "TAG", "AdUnit is not in available state, ignoring the ad ready signal - ").append((int) Q()).toString());
                return;
            }
            return;
        }
        b((byte) 1);
        d((byte) 4);
        InterfaceC0298f5 interfaceC0298f53 = this.j;
        if (interfaceC0298f53 != null) {
            String TAG = this.M;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f53).d(TAG, "AdUnit " + this + " state - READY");
        }
        S0 s0S = s();
        s0S.getClass();
        s0S.i = SystemClock.elapsedRealtime();
        u0();
        z0();
        InterfaceC0298f5 interfaceC0298f54 = this.j;
        if (interfaceC0298f54 != null) {
            ((C0314g5) interfaceC0298f54).c(this.N, "Successfully loaded Banner ad markup in the WebView for placement id: " + I());
        }
        E0 e0R = r();
        if (e0R != null) {
            f(e0R);
        } else {
            InterfaceC0298f5 interfaceC0298f55 = this.j;
            if (interfaceC0298f55 != null) {
                String TAG2 = this.M;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f55).b(TAG2, "AdUnit listener is null");
            }
        }
        i();
    }

    @Override // com.inmobi.media.Q0
    public void o(Ya renderView) {
        int iIndexOf;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (b0() && (iIndexOf = this.g.indexOf(renderView)) > A() && renderView.z != qd.c) {
            B().remove(Integer.valueOf(iIndexOf));
        } else {
            C0();
            super.o(renderView);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "onActivityCreated ", this));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "onActivityDestroyed ", this));
        }
        Context contextT = t();
        if (Intrinsics.areEqual(contextT, activity)) {
            Intrinsics.checkNotNull(contextT, "null cannot be cast to non-null type android.app.Activity");
            ((Activity) contextT).getApplication().unregisterActivityLifecycleCallbacks(this);
            g();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "onActivityPaused ", this));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "onActivityResumed ", this));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "onActivitySaveInstanceState ", this));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "onActivityStarted ", this));
        }
        if (Intrinsics.areEqual(t(), activity)) {
            G0();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "onActivityStopped ", this));
        }
        if (Intrinsics.areEqual(t(), activity)) {
            F0();
        }
    }

    @Override // com.inmobi.media.Q0
    public String q() {
        return "banner";
    }

    @Override // com.inmobi.media.Q0
    public Ya w() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "htmlAdContainer getter ", this));
        }
        Ya yaW = super.w();
        if (I().p() && yaW != null) {
            yaW.e();
        }
        return yaW;
    }

    @Override // com.inmobi.media.Q0
    public void a(boolean z, InMobiAdRequestStatus status) {
        E0 e0R;
        Intrinsics.checkNotNullParameter(status, "status");
        super.a(z, status);
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "onDidParseAfterFetch ", this));
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).c(this.N, "Banner ad fetch successful for placement id: " + I());
        }
        if (Q() != 2 || (e0R = r()) == null) {
            return;
        }
        e(e0R);
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.Z
    public void b() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).a(str, H1.a(str, "TAG", "closeAll ", this));
        }
    }

    @Override // com.inmobi.media.Q0
    public final HashMap o() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).c(str, H1.a(str, "TAG", "adSpecificRequestParams getter ", this));
        }
        HashMap map = new HashMap();
        map.put("u-rt", this.O ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put("mk-ad-slot", I().a());
        return map;
    }

    public static final void a(K1 this$0, Ya renderView, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        int iIndexOf = this$0.g.indexOf(renderView);
        try {
            E0 e0R = this$0.r();
            InterfaceC0298f5 interfaceC0298f5 = this$0.j;
            if (interfaceC0298f5 != null) {
                String TAG = this$0.M;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).c(TAG, "callback onShowNextPodAd");
            }
            if (e0R != null) {
                e0R.a(i, iIndexOf, renderView);
            }
        } catch (Exception unused) {
            this$0.b(iIndexOf, false);
            this$0.f(iIndexOf);
        }
    }

    @Override // com.inmobi.media.Q0
    public final void a(Ya ya, short s) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).a(str, H1.a(str, "TAG", "handleRenderViewSignaledAdFailed ", this));
        }
        super.a(ya, s);
        if (b0()) {
            int iIndexOf = this.g.indexOf(ya);
            Q0.a(this, iIndexOf, false, 2, null);
            if (iIndexOf > 0 && Q() == 6) {
                b((byte) 1);
                Ya ya2 = (Ya) this.g.get(A());
                if (ya2 != null) {
                    ya2.a(false);
                }
            }
        }
        if (Q() == 2) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).c(this.N, "Failed to load the Banner markup in the WebView for placement id: " + I());
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, s);
        }
    }

    public static final void d(K1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            if (this$0.Q() == 7) {
                int i = this$0.P - 1;
                this$0.P = i;
                if (i == 0) {
                    this$0.d((byte) 6);
                    E0 e0R = this$0.r();
                    if (e0R != null) {
                        e0R.b();
                    }
                }
            }
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f5 = this$0.j;
            if (interfaceC0298f5 != null) {
                String str = this$0.M;
                ((C0314g5) interfaceC0298f5).b(str, Ed.a(e, AbstractC0363j6.a(str, "TAG", "BannerAdUnit.onAdScreenDismissed threw unexpected error: ")));
            }
        }
    }

    @Override // com.inmobi.media.Q0
    public void g() {
        this.Q.f165a = false;
        super.g();
    }

    public final void e(boolean z) {
        InterfaceC0298f5 interfaceC0298f5;
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f52).a(str, H1.a(str, "TAG", "load ", this));
        }
        if (z && (interfaceC0298f5 = this.j) != null) {
            ((C0314g5) interfaceC0298f5).c(this.N, "Initiating Banner refresh for placement id: " + I());
        }
        this.O = z;
        c0();
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.Z
    public void a(int i, Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).a(str, H1.a(str, "TAG", "loadPodAd ", this));
        }
        if (B().contains(Integer.valueOf(i)) && i > this.g.indexOf(renderView)) {
            g(i);
            Handler handlerD = D();
            if (handlerD != null) {
                handlerD.post(new Runnable() { // from class: com.inmobi.media.K1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        K1.c(this.f$0);
                    }
                });
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            String TAG = this.M;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG, "No more ads present in pod adSet or current adSet is not pod adSet");
        }
        ArrayList arrayList = this.g;
        Ya ya = (Ya) arrayList.get(arrayList.indexOf(renderView));
        if (ya != null) {
            ya.a(false);
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public synchronized void e(Ya renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str = this.M;
            ((C0314g5) interfaceC0298f5).a(str, H1.a(str, "TAG", "onAdScreenDisplayed ", this));
        }
        super.e(renderView);
        Handler handlerD = D();
        if (handlerD != null) {
            handlerD.post(new Runnable() { // from class: com.inmobi.media.K1$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    K1.e(this.f$0);
                }
            });
        }
    }

    public final void e(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str2 = this.M;
            ((C0314g5) interfaceC0298f5).c(str2, H1.a(str2, "TAG", "setAdSize ", this));
        }
        Y yI = I();
        Intrinsics.checkNotNull(str);
        yI.a(str);
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.Z
    public void a(final int i, final Ya renderView, Context context) {
        Ya ya;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String TAG = this.M;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "showPodAdAtIndex " + this + " index - " + i);
        }
        if (!b0()) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                String TAG2 = this.M;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).b(TAG2, "Cannot show an pod ad as isPod is not set.");
            }
            ArrayList arrayList = this.g;
            Ya ya2 = (Ya) arrayList.get(arrayList.indexOf(renderView));
            if (ya2 != null) {
                ya2.b(false);
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = this.j;
        if (interfaceC0298f53 != null) {
            String TAG3 = this.M;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((C0314g5) interfaceC0298f53).c(TAG3, "isInValidShowPodIndex " + i + ' ' + B() + ' ' + this.g.indexOf(renderView) + ' ' + this + ' ');
        }
        if (B().contains(Integer.valueOf(i)) && i > this.g.indexOf(renderView) && this.g.get(i) != null && ((ya = (Ya) this.g.get(i)) == null || ya.m0)) {
            super.a(i, renderView, context);
            Handler handlerD = D();
            if (handlerD != null) {
                handlerD.post(new Runnable() { // from class: com.inmobi.media.K1$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        K1.a(this.f$0, renderView, i);
                    }
                });
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f54 = this.j;
        if (interfaceC0298f54 != null) {
            String TAG4 = this.M;
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            ((C0314g5) interfaceC0298f54).b(TAG4, "Cannot show an pod ad with invalid index passed");
        }
        ArrayList arrayList2 = this.g;
        Ya ya3 = (Ya) arrayList2.get(arrayList2.indexOf(renderView));
        if (ya3 != null) {
            ya3.b(false);
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void a(B1 audioStatusInternal) {
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        E0 e0R = r();
        if (e0R != null) {
            e0R.a(audioStatusInternal);
        }
        L1 l1 = this.Q;
        l1.getClass();
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        if (!l1.f165a && audioStatusInternal == B1.e) {
            l1.f165a = true;
            C0236b5 c0236b5 = C0236b5.c;
            c0236b5.f220a = System.currentTimeMillis();
            c0236b5.b++;
        }
    }

    @Override // com.inmobi.media.AbstractC0227ab
    public void a(boolean z) {
        C0236b5 c0236b5 = C0236b5.c;
        Context contextD = Kb.d();
        if (contextD == null) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "banner_audio_pref_file");
        Intrinsics.checkNotNullParameter("user_mute_count", "key");
        int i = c0284e6A.f340a.getInt("user_mute_count", 0);
        C0284e6.a(c0284e6A, "user_mute_count", z ? Math.max(0, i - 1) : i + 1, false, 4, (Object) null);
    }

    @Override // com.inmobi.media.Q0, com.inmobi.media.AbstractC0227ab
    public void a(Ya renderView, boolean z) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        super.a(renderView, z);
        byte bQ = Q();
        if (bQ != 4 && bQ != 6) {
            if (bQ == 7) {
                renderView.a(z, Q() == 7 ? z ? (short) 2224 : (short) 2223 : (short) 2227);
                return;
            }
            return;
        }
        byte bQ2 = Q();
        if (bQ2 == 4) {
            s = z ? (short) 2220 : (short) 2219;
        } else if (bQ2 == 6) {
            s = z ? (short) 2222 : (short) 2221;
        }
        m0();
        renderView.a(z, s);
    }
}
