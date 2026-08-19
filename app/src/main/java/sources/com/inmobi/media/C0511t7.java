package com.inmobi.media;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.TelemetryConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: renamed from: com.inmobi.media.t7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public class C0511t7 implements InterfaceC0559x, Application.ActivityLifecycleCallbacks {
    public boolean A;
    public int B;
    public C0511t7 C;
    public boolean D;
    public D7 E;
    public String F;
    public Intent G;
    public Ya H;
    public Ya I;
    public C0511t7 J;
    public byte K;
    public C0497s7 L;
    public final A M;
    public final C0455p7 N;
    public final C0395l7 O;
    public final C0470q7 P;
    public final C0379k7 Q;
    public LinkedHashMap R;
    public final String S;
    public final C0440o7 T;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte f490a;
    public final P7 b;
    public final String c;
    public final Set d;
    public final long e;
    public final boolean f;
    public final String g;
    public final Z2 h;
    public final C0524u6 i;
    public final InterfaceC0298f5 j;
    public final Lazy k;
    public final C0483r7 l;
    public final String m;
    public final HashSet n;
    public final ArrayList o;
    public AbstractC0401ld p;
    public C0270d8 q;
    public boolean r;
    public final AdConfig s;
    public boolean t;
    public boolean u;
    public C0511t7 v;
    public O0 w;
    public WeakReference x;
    public int y;
    public WeakReference z;

    public C0511t7(Context context, byte b, P7 mNativeDataModel, String impressionId, Set set, AdConfig adConfig, long j, boolean z, String creativeId, Z2 z2, C0524u6 c0524u6, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mNativeDataModel, "mNativeDataModel");
        Intrinsics.checkNotNullParameter(impressionId, "impressionId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(creativeId, "creativeId");
        this.f490a = b;
        this.b = mNativeDataModel;
        this.c = impressionId;
        this.d = set;
        this.e = j;
        this.f = z;
        this.g = creativeId;
        this.h = z2;
        this.i = c0524u6;
        this.j = interfaceC0298f5;
        this.k = LazyKt.lazy(C0425n7.f434a);
        this.l = new C0483r7(this);
        this.m = "t7";
        this.n = new HashSet();
        this.o = new ArrayList();
        this.s = adConfig;
        this.v = this;
        this.x = new WeakReference(null);
        this.y = -1;
        this.N = new C0455p7(this);
        this.O = new C0395l7(this);
        this.P = new C0470q7(this);
        this.Q = new C0379k7(this);
        this.x = new WeakReference(context);
        Kb.a(context, this);
        H7 h7 = mNativeDataModel.e;
        if (h7 != null) {
            h7.y = System.currentTimeMillis();
        }
        this.K = (byte) -1;
        this.M = A.f69a;
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.t7$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0511t7.a(this.f$0);
            }
        });
        this.S = AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE;
        this.T = new C0440o7(this);
    }

    public final D7 a(P7 p7, D7 asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        if (p7 == null) {
            return null;
        }
        String str = asset.h;
        if (str.length() == 0) {
            asset.k = (byte) 0;
            return asset;
        }
        String[] strArr = (String[]) new Regex("\\|").split(str, 0).toArray(new String[0]);
        if (strArr.length == 1) {
            asset.k = a(strArr[0]);
            return asset;
        }
        D7 d7M = p7.m(strArr[0]);
        if (d7M == null) {
            return a(p7.g, asset);
        }
        if (Intrinsics.areEqual(d7M, asset)) {
            return null;
        }
        d7M.k = a(strArr[1]);
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String str2 = this.m;
            ((C0314g5) interfaceC0298f5).a(str2, AbstractC0363j6.a(str2, "TAG", "Referenced asset (").append(d7M.b).append(')').toString());
        }
        return d7M;
    }

    public final D7 b(P7 p7, D7 d7) {
        InterfaceC0298f5 interfaceC0298f5;
        if (p7 == null) {
            return null;
        }
        String str = d7.p;
        String str2 = d7.q;
        D7 d7A = a(d7, p7, str);
        if (d7A == null) {
            d7A = a(d7, p7, str2);
        }
        if (d7A != null && (interfaceC0298f5 = this.j) != null) {
            String str3 = this.m;
            ((C0314g5) interfaceC0298f5).a(str3, AbstractC0363j6.a(str3, "TAG", "Referenced asset (").append(d7A.b).append(')').toString());
        }
        return d7A;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final boolean c() {
        return this.t;
    }

    public final Context d() {
        Activity activityF = f();
        return activityF != null ? activityF : (Context) this.x.get();
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final void e() {
    }

    public final Activity f() {
        WeakReference weakReference = this.z;
        if (weakReference != null) {
            return (Activity) weakReference.get();
        }
        return null;
    }

    public final View g() {
        AbstractC0401ld abstractC0401ld = this.p;
        if (abstractC0401ld != null) {
            return abstractC0401ld.b();
        }
        return null;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final AdConfig getAdConfig() {
        return this.s;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final String getAdType() {
        return this.S;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public String getCreativeId() {
        return this.g;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final Object getDataModel() {
        return this.b;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public InterfaceC0545w getFullScreenEventsListener() {
        return this.N;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public String getImpressionId() {
        return this.c;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final String getMarkupType() {
        return "inmobiJson";
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final byte getPlacementType() {
        return this.f490a;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public View getVideoContainerView() {
        return null;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public AbstractC0416md getViewableAd() {
        Context contextJ = j();
        if (this.p == null && contextJ != null) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                String TAG = this.m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).c(TAG, "fireLoadedAndServedBeacons");
            }
            H7 h7 = this.b.e;
            if (h7 != null) {
                HashMap mapA = a(h7);
                a((byte) 1, mapA);
                a((byte) 2, mapA);
            }
            this.p = new C0481r5(contextJ, this, new C0446od(this, this.H, this.j), this.j);
            Set<Hc> set = this.d;
            if (set != null) {
                for (Hc hc : set) {
                    try {
                        if (hc.f132a == 3) {
                            InterfaceC0298f5 interfaceC0298f52 = this.j;
                            if (interfaceC0298f52 != null) {
                                String TAG2 = this.m;
                                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                                ((C0314g5) interfaceC0298f52).a(TAG2, "OMID tracker");
                            }
                            Object obj = hc.b.get("omidAdSession");
                            C0599z9 c0599z9 = obj instanceof C0599z9 ? (C0599z9) obj : null;
                            AbstractC0401ld abstractC0401ld = this.p;
                            if (c0599z9 == null || abstractC0401ld == null) {
                                InterfaceC0298f5 interfaceC0298f53 = this.j;
                                if (interfaceC0298f53 != null) {
                                    String TAG3 = this.m;
                                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                                    ((C0314g5) interfaceC0298f53).b(TAG3, "Did not find a OMID ad session; the OMID decorator will not be applied.");
                                }
                            } else {
                                this.p = this.K == 0 ? new D9(this, abstractC0401ld, c0599z9, this.j) : new E9(this, abstractC0401ld, c0599z9, this.j);
                            }
                        }
                    } catch (Exception e) {
                        InterfaceC0298f5 interfaceC0298f54 = this.j;
                        if (interfaceC0298f54 != null) {
                            String str = this.m;
                            ((C0314g5) interfaceC0298f54).b(str, Ed.a(e, AbstractC0363j6.a(str, "TAG", "Exception occurred while creating the Display viewable ad : ")));
                        }
                        C0551w5 c0551w5 = C0551w5.f513a;
                        C0551w5.d.a(AbstractC0251c5.a(e, "event"));
                    }
                }
            }
        }
        return this.p;
    }

    public final C0270d8 h() {
        AbstractC0401ld abstractC0401ld = this.p;
        X7 x7C = abstractC0401ld != null ? abstractC0401ld.c() : null;
        X7 x7 = x7C instanceof X7 ? x7C : null;
        if (x7 != null) {
            this.q = x7.e;
        }
        return this.q;
    }

    public rd i() {
        return this.T;
    }

    public final Context j() {
        return (1 == this.f490a || k()) ? f() : (Context) this.x.get();
    }

    public boolean k() {
        return this.f490a == 0 && f() != null;
    }

    public void l() {
        AbstractC0401ld abstractC0401ld;
        Z0 z0;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String TAG = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onPause");
        }
        this.u = true;
        C0512t8 c0512t8A = a(g());
        if (c0512t8A != null) {
            c0512t8A.b();
        }
        C0270d8 c0270d8H = h();
        if (c0270d8H != null && (z0 = c0270d8H.l) != null) {
            z0.a();
        }
        Context contextD = d();
        if (contextD == null || (abstractC0401ld = this.p) == null) {
            return;
        }
        abstractC0401ld.a(contextD, (byte) 1);
    }

    public final void m() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String TAG = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "reportFirstPageRendered");
        }
        H7 h7B = this.b.b(0);
        if (this.n.contains(0) || h7B == null || this.t) {
            return;
        }
        this.n.add(0);
        h7B.y = System.currentTimeMillis();
        if (!this.r) {
            this.o.add(h7B);
            return;
        }
        HashMap mapA = a(h7B);
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            String TAG2 = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG2, "Page-view impression record request");
        }
        h7B.a("page_view", mapA, (C0395l7) null, this.j);
    }

    public boolean n() {
        return false;
    }

    public final void o() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.t7$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C0511t7.d(this.f$0);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String TAG = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onActivityDestroyed");
        }
        AbstractC0401ld abstractC0401ld = this.p;
        if (abstractC0401ld != null) {
            abstractC0401ld.a(activity, (byte) 2);
        }
        Z2 z2 = this.h;
        if (z2 != null) {
            z2.b();
        }
        Context context = (Context) this.x.get();
        if (context instanceof Activity) {
            ((Activity) context).getApplication().unregisterActivityLifecycleCallbacks(this);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        AbstractC0401ld abstractC0401ld;
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (Intrinsics.areEqual(d(), activity)) {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                String TAG = this.m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).c(TAG, "onResume");
            }
            this.u = false;
            C0512t8 c0512t8A = a(g());
            if (c0512t8A != null) {
                c0512t8A.c();
            }
            p();
            Context contextD = d();
            if (contextD == null || (abstractC0401ld = this.p) == null) {
                return;
            }
            abstractC0401ld.a(contextD, (byte) 0);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (Intrinsics.areEqual(d(), activity)) {
            l();
        }
    }

    public final void p() {
        Z0 z0;
        C0270d8 c0270d8H = h();
        if (c0270d8H == null || (z0 = c0270d8H.l) == null || z0.c) {
            return;
        }
        z0.c = true;
        z0.a(z0.b);
    }

    public final void q() {
        O0 o0;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String TAG = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "unlockRewards");
        }
        if (n()) {
            this.A = true;
            HashMap rewards = this.b.h;
            if (rewards == null || (o0 = this.w) == null) {
                return;
            }
            Intrinsics.checkNotNullParameter(rewards, "rewards");
            InterfaceC0298f5 interfaceC0298f52 = o0.f197a.j;
            if (interfaceC0298f52 != null) {
                String strE = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f52).a(strE, "onAdRewardsUnlocked");
            }
            if (o0.f197a.Z()) {
                return;
            }
            E0 e0 = (E0) o0.b.get();
            if (e0 != null) {
                e0.b(new HashMap(rewards));
                return;
            }
            InterfaceC0298f5 interfaceC0298f53 = o0.f197a.j;
            if (interfaceC0298f53 != null) {
                ((C0314g5) interfaceC0298f53).b("InMobi", "Listener was garbage collected.Unable to give callback");
            }
        }
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final void setFullScreenActivityContext(Activity activity) {
        this.z = new WeakReference(activity);
    }

    public static final void d(C0511t7 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.A = true;
        this$0.b((D7) null);
    }

    public void c(D7 asset) {
        C0512t8 c0512t8A;
        ValueAnimator valueAnimator;
        Intrinsics.checkNotNullParameter(asset, "asset");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String TAG = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "triggerAssetAction");
        }
        byte b = asset.k;
        if (b == 0 || b == 5) {
            return;
        }
        if (b == 2) {
            this.A = true;
            Ya ya = this.H;
            if (ya != null && ya != null) {
                InterfaceC0298f5 interfaceC0298f52 = ya.i;
                if (interfaceC0298f52 != null) {
                    String TAG2 = Ya.P0;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C0314g5) interfaceC0298f52).a(TAG2, "skipToInterActive");
                }
                ya.b("window.imraid.broadcastEvent('skip');");
            }
            C0512t8 c0512t8A2 = a(g());
            if (c0512t8A2 != null) {
                c0512t8A2.b();
            }
            b(asset);
            Z2 z2 = this.h;
            if (z2 == null || z2.g.get()) {
                return;
            }
            z2.d.h = 1;
            Intrinsics.checkNotNull(z2.c);
            return;
        }
        if (b == 3) {
            try {
                Ya ya2 = this.H;
                if (ya2 != null) {
                    InterfaceC0298f5 interfaceC0298f53 = ya2.i;
                    if (interfaceC0298f53 != null) {
                        String TAG3 = Ya.P0;
                        Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                        ((C0314g5) interfaceC0298f53).a(TAG3, "replayToInterActive");
                    }
                    ya2.b("window.imraid.broadcastEvent('replay');");
                }
                View viewG = g();
                if (viewG != null) {
                    ViewParent parent = viewG.getParent();
                    ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (viewGroup != null) {
                        viewGroup.removeView(viewG);
                    }
                }
                C0511t7 c0511t7 = this.v;
                C0511t7 c0511t72 = c0511t7 instanceof C0511t7 ? c0511t7 : null;
                if (c0511t72 != null && (c0512t8A = a(c0511t72.g())) != null && (valueAnimator = c0512t8A.n) != null && valueAnimator.isRunning()) {
                    valueAnimator.setCurrentPlayTime(c0512t8A.f * ((long) 1000));
                    c0512t8A.l = 360 * 1.0f;
                    c0512t8A.invalidate();
                }
                if (!Intrinsics.areEqual(ShareConstants.VIDEO_URL, asset.c)) {
                    InterfaceC0298f5 interfaceC0298f54 = this.j;
                    if (interfaceC0298f54 != null) {
                        String TAG4 = this.m;
                        Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                        ((C0314g5) interfaceC0298f54).b(TAG4, "Action 3 not valid for asset of type: " + asset.c);
                        return;
                    }
                    return;
                }
                if (c0511t7 instanceof A8) {
                    View videoContainerView = ((A8) c0511t7).getVideoContainerView();
                    M8 m8 = videoContainerView instanceof M8 ? (M8) videoContainerView : null;
                    if (m8 != null) {
                        L8 videoView = m8.getVideoView();
                        Object tag = videoView.getTag();
                        C8 c8 = tag instanceof C8 ? (C8) tag : null;
                        if (c8 != null) {
                            if (c8.c()) {
                                videoView.k();
                            } else {
                                videoView.c();
                            }
                        } else if (1 == this.f490a) {
                            videoView.k();
                        } else {
                            videoView.c();
                        }
                        if (c8 != null) {
                            a(c8);
                        }
                        videoView.start();
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f55 = this.j;
                if (interfaceC0298f55 != null) {
                    String str = this.m;
                    ((C0314g5) interfaceC0298f55).b(str, Ed.a(e, AbstractC0363j6.a(str, "TAG", "Encountered unexpected error in handling replay action on video: ")));
                }
                I6.a((byte) 2, "InMobi", "SDK encountered unexpected error in replaying video");
                C0551w5 c0551w5 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e, "event"));
                return;
            }
        }
        if (b == 1) {
            try {
                Ya ya3 = this.H;
                if (ya3 != null) {
                    InterfaceC0298f5 interfaceC0298f56 = ya3.i;
                    if (interfaceC0298f56 != null) {
                        String TAG5 = Ya.P0;
                        Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                        ((C0314g5) interfaceC0298f56).a(TAG5, "closeToInterActive");
                    }
                    ya3.b("window.imraid.broadcastEvent('close');");
                }
                a();
                return;
            } catch (Exception e2) {
                InterfaceC0298f5 interfaceC0298f57 = this.j;
                if (interfaceC0298f57 != null) {
                    String str2 = this.m;
                    ((C0314g5) interfaceC0298f57).b(str2, Ed.a(e2, AbstractC0363j6.a(str2, "TAG", "Encountered unexpected error in handling exit action on video: ")));
                }
                I6.a((byte) 2, "InMobi", "SDK encountered unexpected error in exiting video");
                C0551w5 c0551w52 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e2, "event"));
                return;
            }
        }
        if (b != 4) {
            this.A = true;
            Ya ya4 = this.H;
            if (ya4 != null && ya4 != null) {
                InterfaceC0298f5 interfaceC0298f58 = ya4.i;
                if (interfaceC0298f58 != null) {
                    String TAG6 = Ya.P0;
                    Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
                    ((C0314g5) interfaceC0298f58).a(TAG6, "skipToInterActive");
                }
                ya4.b("window.imraid.broadcastEvent('skip');");
            }
            C0512t8 c0512t8A3 = a(g());
            if (c0512t8A3 != null) {
                c0512t8A3.b();
            }
            b(asset);
            return;
        }
        try {
            if (this.f490a == 0) {
                InterfaceC0298f5 interfaceC0298f59 = this.j;
                if (interfaceC0298f59 != null) {
                    String TAG7 = this.m;
                    Intrinsics.checkNotNullExpressionValue(TAG7, "TAG");
                    ((C0314g5) interfaceC0298f59).c(TAG7, "launchFullscreen");
                }
                C0511t7 c0511t7C = c(this);
                if (c0511t7C == null) {
                    return;
                }
                O0 o0 = c0511t7C.w;
                if (o0 != null) {
                    o0.e();
                }
                A a2 = this.M;
                int iHashCode = hashCode();
                C0410m7 c0410m7 = new C0410m7(this, c0511t7C);
                a2.getClass();
                A.a(iHashCode, c0410m7);
            }
        } catch (Exception e3) {
            InterfaceC0298f5 interfaceC0298f510 = this.j;
            if (interfaceC0298f510 != null) {
                String str3 = this.m;
                ((C0314g5) interfaceC0298f510).b(str3, Ed.a(e3, AbstractC0363j6.a(str3, "TAG", "Encountered unexpected error in handling fullscreen action ")));
            }
            I6.a((byte) 2, "InMobi", "SDK encountered unexpected error in launching fullscreen ad");
            C0551w5 c0551w53 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e3, "event"));
        }
    }

    public void b(View view) {
        O0 o0;
        if (this.r || this.t) {
            return;
        }
        this.r = true;
        Z2 z2 = this.h;
        if (z2 != null) {
            z2.a();
        }
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String TAG = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "A viewable impression is reported on ad view.");
        }
        H7 h7 = this.b.e;
        if (h7 != null) {
            h7.a("Impression", a(h7), this.O, this.j);
        }
        m();
        for (D7 d7 : this.o) {
            HashMap mapA = a(d7);
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                String TAG2 = this.m;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).a(TAG2, "Page-view impression record request");
            }
            d7.a("page_view", mapA, (C0395l7) null, this.j);
        }
        this.o.clear();
        AbstractC0401ld abstractC0401ld = this.p;
        if (abstractC0401ld != null) {
            abstractC0401ld.a((byte) 0);
        }
        C0511t7 c0511t7C = c(this);
        if (c0511t7C == null || (o0 = c0511t7C.w) == null) {
            return;
        }
        o0.f();
    }

    public static final void b(C0511t7 it) {
        Intrinsics.checkNotNullParameter(it, "$it");
        A a2 = it.M;
        int iHashCode = it.hashCode();
        C0470q7 c0470q7 = it.P;
        a2.getClass();
        A.a(iHashCode, c0470q7);
    }

    public final void b(D7 d7) {
        AbstractC0416md viewableAd;
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String TAG = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "showEndCard");
        }
        C0511t7 c0511t7 = this.J;
        if (c0511t7 != null && g() != null) {
            try {
                View viewG = g();
                ViewGroup viewGroup = viewG instanceof ViewGroup ? (ViewGroup) viewG : null;
                View viewA = (viewGroup == null || (viewableAd = c0511t7.getViewableAd()) == null) ? null : viewableAd.a(null, viewGroup, false);
                if (viewA != null) {
                    if (viewGroup != null) {
                        viewGroup.addView(viewA);
                    }
                    viewA.setClickable(true);
                    c0511t7.p();
                    if (d7 instanceof C8) {
                        InterfaceC0385kd interfaceC0385kdD = ((C8) d7).d();
                        C0229ad c0229ad = interfaceC0385kdD != null ? ((C0370jd) interfaceC0385kdD).j : null;
                        if (c0229ad == null) {
                            return;
                        }
                        c0229ad.g = true;
                        return;
                    }
                    return;
                }
                InterfaceC0298f5 interfaceC0298f52 = this.j;
                if (interfaceC0298f52 != null) {
                    String TAG2 = this.m;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C0314g5) interfaceC0298f52).b(TAG2, "Could not inflate the end card. Closing the ad");
                }
                a();
                return;
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f53 = this.j;
                if (interfaceC0298f53 != null) {
                    String TAG3 = this.m;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((C0314g5) interfaceC0298f53).a(TAG3, "Failed to show end card Exception", e);
                }
                a();
                C0551w5 c0551w5 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e, "event"));
                return;
            }
        }
        InterfaceC0298f5 interfaceC0298f54 = this.j;
        if (interfaceC0298f54 != null) {
            String TAG4 = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            ((C0314g5) interfaceC0298f54).b(TAG4, "End card container is null; end card will not be shown");
        }
        I6.a((byte) 2, "InMobi", "Failed to show end card");
        a();
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public void b() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String TAG = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "destroyContainer");
        }
        if (this.t) {
            return;
        }
        this.t = true;
        Z2 z2 = this.h;
        if (z2 != null) {
            z2.b();
        }
        this.y = -1;
        C0511t7 c0511t7 = this.C;
        if (c0511t7 != null) {
            c0511t7.a();
        }
        this.w = null;
        C0270d8 c0270d8H = h();
        if (c0270d8H != null) {
            Z0 z0 = c0270d8H.l;
            Iterator it = z0.b.iterator();
            while (it.hasNext()) {
                ((Y0) it.next()).f284a.cancel();
            }
            z0.b.clear();
            c0270d8H.n = true;
            c0270d8H.i.clear();
            c0270d8H.p = null;
            InterfaceC0396l8 interfaceC0396l8 = c0270d8H.j;
            if (interfaceC0396l8 != null) {
                interfaceC0396l8.destroy();
            }
            c0270d8H.j = null;
        }
        this.q = null;
        this.o.clear();
        AbstractC0401ld abstractC0401ld = this.p;
        if (abstractC0401ld != null) {
            abstractC0401ld.e();
        }
        AbstractC0401ld abstractC0401ld2 = this.p;
        if (abstractC0401ld2 != null) {
            abstractC0401ld2.a();
        }
        Context context = (Context) this.x.get();
        if (context instanceof Activity) {
            ((Activity) context).getApplication().unregisterActivityLifecycleCallbacks(this);
        }
        this.x.clear();
        WeakReference weakReference = this.z;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.H = null;
        C0511t7 c0511t72 = this.J;
        if (c0511t72 != null) {
            c0511t72.b();
        }
        this.J = null;
        A a2 = this.M;
        int iHashCode = hashCode();
        a2.getClass();
        SparseArray sparseArray = A.b;
        sparseArray.remove(iHashCode);
        Intrinsics.checkNotNullExpressionValue("A", "TAG");
        sparseArray.size();
    }

    public final void a(Context context) {
        this.x = new WeakReference(context);
        Kb.a(context, this);
    }

    public static final void a(C0511t7 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        A a2 = this$0.M;
        int iHashCode = this$0.hashCode();
        C0470q7 c0470q7 = this$0.P;
        a2.getClass();
        A.a(iHashCode, c0470q7);
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final void a(byte b, Map map) {
        H7 h7;
        if (this.t || b == 0 || b == 3) {
            return;
        }
        if (b == 1) {
            H7 h72 = this.b.e;
            if (h72 != null) {
                InterfaceC0298f5 interfaceC0298f5 = this.j;
                if (interfaceC0298f5 != null) {
                    String TAG = this.m;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).a(TAG, "reportAdLoad");
                }
                h72.a("load", (HashMap) map, (C0395l7) null, this.j);
                return;
            }
            return;
        }
        if (b != 2 || (h7 = this.b.e) == null) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            String TAG2 = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG2, "reportAdServed");
        }
        h7.a("client_fill", (HashMap) map, (C0395l7) null, this.j);
    }

    public final void a(View view, D7 asset) {
        String strA;
        O0 o0;
        Intrinsics.checkNotNullParameter(asset, "asset");
        if (this.t) {
            return;
        }
        m();
        D7 d7B = b(this.b, asset);
        if (d7B != null) {
            HashMap mapA = a(d7B);
            a(d7B, mapA);
            if (!Intrinsics.areEqual(d7B, asset)) {
                a(asset, mapA);
            }
        } else {
            InterfaceC0298f5 interfaceC0298f5 = this.j;
            if (interfaceC0298f5 != null) {
                String TAG = this.m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).b(TAG, "Couldn't find an asset reference for this asset click URL");
            }
            a(asset, a(asset));
        }
        C0511t7 c0511t7C = c(this);
        if (c0511t7C == null) {
            return;
        }
        String str = asset.p;
        if (str != null) {
            int length = str.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            strA = AbstractC0348i7.a(length, 1, str, i);
        } else {
            strA = null;
        }
        if (AbstractC0576y2.a(strA) && (o0 = c0511t7C.w) != null) {
            o0.a();
        }
        D7 d7A = a(this.b, asset);
        if (d7A != null) {
            if (view != null && Intrinsics.areEqual(ShareConstants.VIDEO_URL, d7A.c) && 5 == d7A.k) {
                view.setVisibility(4);
                asset.v = 4;
            }
            c(d7A);
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.j;
        if (interfaceC0298f52 != null) {
            String TAG2 = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f52).b(TAG2, "Couldn't find an asset reference for this asset action! Ignoring the asset action ...");
        }
    }

    public final D7 a(D7 d7, P7 p7, String str) {
        if (AbstractC0548w2.a((Context) this.x.get(), str) || str == null || str.length() == 0) {
            return d7;
        }
        String[] strArr = (String[]) new Regex("\\|").split(str, 0).toArray(new String[0]);
        D7 d7M = p7.m(strArr[0]);
        if (d7M == null) {
            return b(p7.g, d7);
        }
        if (Intrinsics.areEqual(d7M, d7)) {
            return null;
        }
        if (strArr.length <= 2) {
            d7M.l = (byte) 1;
        } else {
            d7M.l = M7.a(strArr[2]);
        }
        return d7M;
    }

    public static C0511t7 c(C0511t7 c0511t7) {
        if (c0511t7 == null) {
            return null;
        }
        if (c0511t7.f() != null || Intrinsics.areEqual(c0511t7, c0511t7.v)) {
            return c0511t7;
        }
        C0511t7 c0511t72 = c0511t7.v;
        return c(c0511t72 instanceof C0511t7 ? c0511t72 : null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
    
        if (r7.equals("replay") == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0089, code lost:
    
        if (r7.equals("reload") == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008c, code lost:
    
        return 3;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte a(java.lang.String r7) {
        /*
            java.util.Locale r0 = java.util.Locale.US
            java.lang.String r1 = "US"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r7 = r7.toLowerCase(r0)
            java.lang.String r0 = "this as java.lang.String).toLowerCase(locale)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r0)
            int r0 = r7.length()
            r1 = 1
            int r0 = r0 - r1
            r2 = 0
            r3 = r2
            r4 = r3
        L19:
            if (r3 > r0) goto L3e
            if (r4 != 0) goto L1f
            r5 = r3
            goto L20
        L1f:
            r5 = r0
        L20:
            char r5 = r7.charAt(r5)
            r6 = 32
            int r5 = kotlin.jvm.internal.Intrinsics.compare(r5, r6)
            if (r5 > 0) goto L2e
            r5 = r1
            goto L2f
        L2e:
            r5 = r2
        L2f:
            if (r4 != 0) goto L38
            if (r5 != 0) goto L35
            r4 = r1
            goto L19
        L35:
            int r3 = r3 + 1
            goto L19
        L38:
            if (r5 != 0) goto L3b
            goto L3e
        L3b:
            int r0 = r0 + (-1)
            goto L19
        L3e:
            java.lang.String r7 = com.inmobi.media.AbstractC0348i7.a(r0, r1, r7, r3)
            int r0 = r7.hashCode()
            switch(r0) {
                case -934641255: goto L83;
                case -934524953: goto L7a;
                case 0: goto L74;
                case 3127582: goto L6b;
                case 3443508: goto L60;
                case 3532159: goto L55;
                case 110066619: goto L4a;
                default: goto L49;
            }
        L49:
            goto L8e
        L4a:
            java.lang.String r0 = "fullscreen"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L53
            goto L8e
        L53:
            r1 = 4
            goto L8f
        L55:
            java.lang.String r0 = "skip"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L5e
            goto L8e
        L5e:
            r1 = 2
            goto L8f
        L60:
            java.lang.String r0 = "play"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L69
            goto L8e
        L69:
            r1 = 5
            goto L8f
        L6b:
            java.lang.String r0 = "exit"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L8f
            goto L8e
        L74:
            java.lang.String r0 = ""
            r7.equals(r0)
            goto L8e
        L7a:
            java.lang.String r0 = "replay"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L8c
            goto L8e
        L83:
            java.lang.String r0 = "reload"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L8c
            goto L8e
        L8c:
            r1 = 3
            goto L8f
        L8e:
            r1 = r2
        L8f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0511t7.a(java.lang.String):byte");
    }

    public final void a(D7 asset, boolean z) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        P7 p7 = this.b;
        if (!p7.q || this.t) {
            return;
        }
        D7 d7B = b(p7, asset);
        if (d7B != null) {
            HashMap mapA = a(d7B);
            String str = asset.g;
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            d7B.g = str;
            String strA = null;
            C0510t6 c0510t6 = ((TelemetryConfig.LandingPageConfig) this.k.getValue()).getNativeEnabled() ? new C0510t6(this.i, C0393l6.a(d7B.p), 0, 12) : null;
            C0393l6.a(EnumC0332h6.d, c0510t6, (Integer) null, 12);
            if (Intrinsics.areEqual(ShareConstants.VIDEO_URL, d7B.c) || d7B.f) {
                InterfaceC0298f5 interfaceC0298f5 = this.j;
                if (interfaceC0298f5 != null) {
                    String TAG = this.m;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).a(TAG, "Asset interaction requested");
                }
                String str2 = d7B.g;
                AbstractC0401ld abstractC0401ld = this.p;
                if (abstractC0401ld != null) {
                    abstractC0401ld.a((byte) 4);
                }
                if (Intrinsics.areEqual("NO_ACTION", str2)) {
                    C0393l6.a(EnumC0332h6.e, c0510t6, (Integer) 10, 8);
                    return;
                }
                String str3 = d7B.p;
                if (2 == d7B.l) {
                    Intrinsics.checkNotNull(d7B, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset");
                    InterfaceC0385kd interfaceC0385kdD = ((C8) d7B).d();
                    C0229ad c0229ad = interfaceC0385kdD != null ? ((C0370jd) interfaceC0385kdD).j : null;
                    String str4 = c0229ad != null ? c0229ad.c : null;
                    if (str4 != null) {
                        int length = str4.length() - 1;
                        int i = 0;
                        boolean z2 = false;
                        while (i <= length) {
                            boolean z3 = Intrinsics.compare((int) str4.charAt(!z2 ? i : length), 32) <= 0;
                            if (z2) {
                                if (!z3) {
                                    break;
                                } else {
                                    length--;
                                }
                            } else if (z3) {
                                i++;
                            } else {
                                z2 = true;
                            }
                        }
                        strA = AbstractC0348i7.a(length, 1, str4, i);
                    }
                    if (AbstractC0576y2.a(strA)) {
                        str3 = str4;
                    }
                }
                if (!AbstractC0548w2.a(d(), str3)) {
                    InterfaceC0298f5 interfaceC0298f52 = this.j;
                    if (interfaceC0298f52 != null) {
                        String TAG2 = this.m;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((C0314g5) interfaceC0298f52).b(TAG2, "Invalid url:" + str3 + " will use fallback");
                    }
                    str3 = d7B.q;
                    if (!AbstractC0548w2.a(d(), str3)) {
                        InterfaceC0298f5 interfaceC0298f53 = this.j;
                        if (interfaceC0298f53 != null) {
                            String str5 = this.m;
                            ((C0314g5) interfaceC0298f53).b(str5, AbstractC0378k6.a(str5, "TAG", "Invalid fallback url:", str3));
                        }
                        C0393l6.a(EnumC0332h6.e, c0510t6, (Integer) 3, 8);
                        return;
                    }
                }
                boolean z4 = C0457p9.f457a;
                Intrinsics.checkNotNull(str3);
                String strA2 = C0457p9.a(str3, mapA);
                Z2 z22 = this.h;
                if (z22 != null && !z22.g.get()) {
                    z22.d.g = 1;
                    Intrinsics.checkNotNull(z22.c);
                }
                if (this.D && !z) {
                    C0511t7 c0511t7C = c(this);
                    if (c0511t7C == null) {
                        return;
                    }
                    O0 o0 = c0511t7C.w;
                    if (o0 != null) {
                        if (Intrinsics.areEqual("INAPP", str2) && AbstractC0548w2.a(strA2)) {
                            o0.e();
                        } else {
                            o0.g();
                        }
                    }
                    this.E = d7B;
                    this.F = strA2;
                    return;
                }
                a(d7B, str2, strA2, c0510t6);
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f54 = this.j;
        if (interfaceC0298f54 != null) {
            String TAG3 = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((C0314g5) interfaceC0298f54).b(TAG3, "Couldn't find an asset reference for this asset click URL");
        }
    }

    public final void a(D7 d7, HashMap map) {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String TAG = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "Click impression record requested");
        }
        if (2 == d7.l) {
            C8 c8 = d7 instanceof C8 ? (C8) d7 : null;
            InterfaceC0385kd interfaceC0385kdD = c8 != null ? c8.d() : null;
            C0229ad c0229ad = interfaceC0385kdD != null ? ((C0370jd) interfaceC0385kdD).j : null;
            if ((c0229ad != null ? c0229ad.c : null) != null && d7.p != null) {
                if (c0229ad.f.isEmpty()) {
                    return;
                }
                Iterator it = c0229ad.a("click").iterator();
                while (it.hasNext()) {
                    D7.a((C0526u8) it.next(), map, (C0395l7) null, this.j);
                }
                return;
            }
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                String TAG2 = this.m;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).a(TAG2, "reportAdClick");
            }
            d7.a("click", map, (C0395l7) null, this.j);
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = this.j;
        if (interfaceC0298f53 != null) {
            String TAG3 = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((C0314g5) interfaceC0298f53).a(TAG3, "reportAdClick");
        }
        d7.a("click", map, (C0395l7) null, this.j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0032, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.HashMap a(com.inmobi.media.D7 r9) {
        /*
            r8 = this;
            java.lang.String r0 = "asset"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.util.HashMap r0 = new java.util.HashMap
            r1 = 4
            r0.<init>(r1)
            boolean r1 = r8.t
            if (r1 == 0) goto L10
            return r0
        L10:
            java.lang.String r1 = "child"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r1)
            boolean r1 = r9 instanceof com.inmobi.media.H7
            r2 = 1
            java.lang.String r3 = "card_scrollable"
            if (r1 == 0) goto L28
            r1 = r9
            com.inmobi.media.H7 r1 = (com.inmobi.media.H7) r1
            java.lang.String r4 = r1.b
            boolean r4 = kotlin.text.StringsKt.equals(r3, r4, r2)
            if (r4 == 0) goto L28
            goto L45
        L28:
            com.inmobi.media.H7 r9 = r9.r
            boolean r1 = r9 instanceof com.inmobi.media.H7
            r4 = 0
            if (r1 == 0) goto L31
            r1 = r9
            goto L32
        L31:
            r1 = r4
        L32:
            if (r1 == 0) goto L44
            java.lang.String r9 = r1.b
            boolean r9 = kotlin.text.StringsKt.equals(r3, r9, r2)
            if (r9 == 0) goto L3d
            goto L45
        L3d:
            com.inmobi.media.H7 r1 = r1.r
            boolean r9 = r1 instanceof com.inmobi.media.H7
            if (r9 == 0) goto L31
            goto L32
        L44:
            r1 = r4
        L45:
            long r2 = java.lang.System.currentTimeMillis()
            r4 = 0
            if (r1 == 0) goto L54
            long r6 = r1.y
            int r9 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r9 == 0) goto L54
            r2 = r6
        L54:
            com.inmobi.media.P7 r9 = r8.b
            com.inmobi.media.H7 r9 = r9.e
            if (r9 == 0) goto L5c
            long r4 = r9.y
        L5c:
            java.lang.String r9 = java.lang.String.valueOf(r4)
            java.lang.String r1 = "$LTS"
            r0.put(r1, r9)
            java.lang.String r9 = java.lang.String.valueOf(r2)
            java.lang.String r1 = "$STS"
            r0.put(r1, r9)
            long r1 = java.lang.System.currentTimeMillis()
            java.lang.String r9 = java.lang.String.valueOf(r1)
            java.lang.String r1 = "$TS"
            r0.put(r1, r9)
            com.inmobi.media.P7 r9 = r8.b
            java.util.Map r9 = r9.t
            if (r9 != 0) goto L86
            java.util.HashMap r9 = new java.util.HashMap
            r9.<init>()
        L86:
            r0.putAll(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0511t7.a(com.inmobi.media.D7):java.util.HashMap");
    }

    public static C0512t8 a(View view) {
        View viewFindViewWithTag = view != null ? view.findViewWithTag("timerView") : null;
        if (viewFindViewWithTag instanceof C0512t8) {
            return (C0512t8) viewFindViewWithTag;
        }
        return null;
    }

    public final void a(C8 c8) {
        InterfaceC0385kd interfaceC0385kdD = c8.d();
        C0229ad c0229ad = interfaceC0385kdD != null ? ((C0370jd) interfaceC0385kdD).j : null;
        if (c0229ad == null || !c0229ad.g) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String TAG = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "Invoking close end card trackers.");
        }
        Iterator it = c0229ad.a("closeEndCard").iterator();
        while (it.hasNext()) {
            D7.a((C0526u8) it.next(), a((D7) c8), (C0395l7) null, this.j);
        }
        c0229ad.g = false;
    }

    @Override // com.inmobi.media.InterfaceC0559x
    public final void a() {
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String TAG = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "dismissCurrentViewContainer");
        }
        if (this.t) {
            return;
        }
        try {
            C0511t7 container = c(this);
            if (container == null) {
                return;
            }
            container.q();
            SparseArray sparseArray = InMobiAdActivity.k;
            Intrinsics.checkNotNullParameter(container, "container");
            InMobiAdActivity.k.remove(container.hashCode());
            if (container instanceof A8) {
                View videoContainerView = container.getVideoContainerView();
                M8 m8 = videoContainerView instanceof M8 ? (M8) videoContainerView : null;
                if (m8 != null) {
                    L8 videoView = m8.getVideoView();
                    Object tag = videoView.getTag();
                    if (tag instanceof C8) {
                        HashMap map = ((C8) tag).t;
                        map.put("seekPosition", Integer.valueOf(videoView.getCurrentPosition()));
                        map.put("lastMediaVolume", Integer.valueOf(videoView.getVolume()));
                        D7 d7 = ((C8) tag).w;
                        if (d7 instanceof C8) {
                            ((C8) d7).a((C8) tag);
                        }
                        a((C8) tag);
                    }
                }
            }
            WeakReference weakReference = container.z;
            Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
            if (activity instanceof InMobiAdActivity) {
                ((InMobiAdActivity) activity).e = true;
                ((InMobiAdActivity) activity).finish();
                int i = this.y;
                if (i != -1) {
                    ((InMobiAdActivity) activity).overridePendingTransition(0, i);
                }
            }
            final C0511t7 c0511t7 = this.v;
            if (!(c0511t7 instanceof C0511t7)) {
                c0511t7 = null;
            }
            if (c0511t7 != null) {
                c0511t7.C = null;
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.t7$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0511t7.b(this.f$0);
                    }
                });
            }
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                String str = this.m;
                ((C0314g5) interfaceC0298f52).b(str, Ed.a(e, AbstractC0363j6.a(str, "TAG", "Encountered unexpected error in handling exit action on video: ")));
            }
            I6.a((byte) 2, "InMobi", "SDK encountered unexpected error in exiting video");
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public final void a(D7 asset, String interactionMode, String url, C0510t6 c0510t6) {
        boolean cctEnabled;
        Unit unit;
        O0 o0;
        Unit unit2;
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(interactionMode, "interactionMode");
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC0298f5 interfaceC0298f5 = this.j;
        if (interfaceC0298f5 != null) {
            String TAG = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "openUrl");
        }
        if (Intrinsics.areEqual("EMBEDDED", interactionMode)) {
            if (c0510t6 != null) {
                c0510t6.g = "IN_CUSTOM";
            }
            Integer numA = a(url, asset, c0510t6);
            if (numA != null) {
                C0393l6.a(EnumC0332h6.g, c0510t6, Integer.valueOf(numA.intValue()), 8);
                unit2 = Unit.INSTANCE;
            } else {
                unit2 = null;
            }
            if (unit2 == null) {
                C0393l6.a(EnumC0332h6.f, c0510t6, (Integer) null, 12);
                return;
            }
            return;
        }
        if (Intrinsics.areEqual("INAPP", interactionMode)) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                String TAG2 = this.m;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).c(TAG2, "openUrlInCCT");
            }
            Context context = (Context) this.x.get();
            if (context == null) {
                return;
            }
            if (f() == null && (o0 = this.w) != null) {
                o0.e();
            }
            String strA = AbstractC0493s3.a(context);
            try {
                cctEnabled = this.s.getCctEnabled();
            } catch (Exception e) {
                e = e;
            }
            try {
                if (strA != null && cctEnabled) {
                    new C0328h2(url, null, context, this.Q, this.l, c0510t6, "NATIVE").a();
                    return;
                }
                InterfaceC0298f5 interfaceC0298f53 = this.j;
                if (interfaceC0298f53 != null) {
                    String TAG3 = this.m;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((C0314g5) interfaceC0298f53).a(TAG3, "ChromeCustomTab fallback to Embedded");
                }
                if (c0510t6 != null) {
                    c0510t6.g = "IN_CUSTOM";
                }
                Integer numA2 = a(url, asset, c0510t6);
                if (numA2 != null) {
                    C0393l6.a(EnumC0332h6.g, c0510t6, Integer.valueOf(numA2.intValue()), 8);
                    unit = Unit.INSTANCE;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    C0393l6.a(EnumC0332h6.f, c0510t6, (Integer) null, 12);
                    return;
                }
                return;
            } catch (Exception e2) {
                e = e2;
                Exception exc = e;
                try {
                    AbstractC0548w2.a(context, url, this.l, "NATIVE");
                    if (c0510t6 != null) {
                        c0510t6.g = "EX_NATIVE";
                    }
                    C0393l6.a(EnumC0332h6.f, c0510t6, (Integer) null, 12);
                } catch (Exception e3) {
                    InterfaceC0298f5 interfaceC0298f54 = this.j;
                    if (interfaceC0298f54 != null) {
                        String TAG4 = this.m;
                        Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                        ((C0314g5) interfaceC0298f54).a(TAG4, "Exception occurred while opening External ", e3);
                    }
                    C0393l6.a(EnumC0332h6.g, c0510t6, (Integer) 9, 8);
                }
                InterfaceC0298f5 interfaceC0298f55 = this.j;
                if (interfaceC0298f55 != null) {
                    String TAG5 = this.m;
                    Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                    ((C0314g5) interfaceC0298f55).a(TAG5, "Fallback to External while opening cct", exc);
                    return;
                }
                return;
            }
        }
        String str = asset.q;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(asset, "asset");
        InterfaceC0298f5 interfaceC0298f56 = this.j;
        if (interfaceC0298f56 != null) {
            String TAG6 = this.m;
            Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
            ((C0314g5) interfaceC0298f56).c(TAG6, "openUrlUsingExternalBrowser");
        }
        if (this.x.get() == null) {
            return;
        }
        if (c0510t6 != null) {
            c0510t6.g = "EX_NATIVE";
        }
        String strA2 = AbstractC0548w2.a((Context) this.x.get(), this.l, url, str);
        if (strA2 != null) {
            C0511t7 c0511t7C = c(this);
            if (c0511t7C == null) {
                return;
            }
            O0 o02 = c0511t7C.w;
            if (!this.D && o02 != null) {
                o02.g();
            }
            if (Intrinsics.areEqual(strA2, str)) {
                asset.a("TRACKER_EVENT_TYPE_FALLBACK_URL", a(asset), (C0395l7) null, this.j);
            }
            C0393l6.a(EnumC0332h6.f, c0510t6, (Integer) null, 12);
            return;
        }
        C0393l6.a(EnumC0332h6.g, c0510t6, (Integer) 6, 8);
    }

    public final Integer a(String url, D7 asset, C0510t6 c0510t6) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(asset, "asset");
        try {
            Context context = (Context) this.x.get();
            if (context == null) {
                return 7;
            }
            if (AbstractC0548w2.a(url)) {
                InterfaceC0298f5 interfaceC0298f5 = this.j;
                if (interfaceC0298f5 != null) {
                    String TAG = this.m;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).c(TAG, "openUrlUsingEmbeddedBrowser");
                }
                InMobiAdActivity.l = null;
                C0497s7 c0497s7 = this.L;
                if (c0497s7 == null) {
                    c0497s7 = new C0497s7(this);
                    this.L = c0497s7;
                }
                InMobiAdActivity.m = c0497s7;
                Intent intent = new Intent(context, (Class<?>) InMobiAdActivity.class);
                intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 100);
                intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.IN_APP_BROWSER_URL", url);
                intent.putExtra("placementId", this.e);
                intent.putExtra("creativeId", getCreativeId());
                intent.putExtra("impressionId", getImpressionId());
                intent.putExtra("allowAutoRedirection", this.f);
                if (c0510t6 != null) {
                    intent.putExtra("lpTelemetryControlInfo", c0510t6);
                }
                if (asset.i) {
                    intent.putExtra("supportLockScreen", true);
                }
                Kb.f162a.a(context, intent);
                return null;
            }
            return 10;
        } catch (Exception e) {
            InterfaceC0298f5 interfaceC0298f52 = this.j;
            if (interfaceC0298f52 != null) {
                String TAG2 = this.m;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).a(TAG2, "Error while opening Embedded Browser", e);
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            return 9;
        }
    }
}
