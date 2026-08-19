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

/* JADX INFO: renamed from: com.inmobi.media.t7 */
/* JADX INFO: loaded from: classes6.dex */
public class C3359t7 implements InterfaceC3411x, Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: A */
    public boolean f2555A;

    /* JADX INFO: renamed from: B */
    public int f2556B;

    /* JADX INFO: renamed from: C */
    public C3359t7 f2557C;

    /* JADX INFO: renamed from: D */
    public boolean f2558D;

    /* JADX INFO: renamed from: E */
    public C2740D7 f2559E;

    /* JADX INFO: renamed from: F */
    public String f2560F;

    /* JADX INFO: renamed from: G */
    public Intent f2561G;

    /* JADX INFO: renamed from: H */
    public GestureDetectorOnGestureListenerC3049Ya f2562H;

    /* JADX INFO: renamed from: I */
    public GestureDetectorOnGestureListenerC3049Ya f2563I;

    /* JADX INFO: renamed from: J */
    public C3359t7 f2564J;

    /* JADX INFO: renamed from: K */
    public byte f2565K;

    /* JADX INFO: renamed from: L */
    public C3344s7 f2566L;

    /* JADX INFO: renamed from: M */
    public final C2687A f2567M;

    /* JADX INFO: renamed from: N */
    public final C3299p7 f2568N;

    /* JADX INFO: renamed from: O */
    public final C3239l7 f2569O;

    /* JADX INFO: renamed from: P */
    public final C3314q7 f2570P;

    /* JADX INFO: renamed from: Q */
    public final C3224k7 f2571Q;

    /* JADX INFO: renamed from: R */
    public LinkedHashMap f2572R;

    /* JADX INFO: renamed from: S */
    public final String f2573S;

    /* JADX INFO: renamed from: T */
    public final C3284o7 f2574T;

    /* JADX INFO: renamed from: a */
    public final byte f2575a;

    /* JADX INFO: renamed from: b */
    public final C2920P7 f2576b;

    /* JADX INFO: renamed from: c */
    public final String f2577c;

    /* JADX INFO: renamed from: d */
    public final Set f2578d;

    /* JADX INFO: renamed from: e */
    public final long f2579e;

    /* JADX INFO: renamed from: f */
    public final boolean f2580f;

    /* JADX INFO: renamed from: g */
    public final String f2581g;

    /* JADX INFO: renamed from: h */
    public final C3055Z2 f2582h;

    /* JADX INFO: renamed from: i */
    public final C3373u6 f2583i;

    /* JADX INFO: renamed from: j */
    public final InterfaceC3147f5 f2584j;

    /* JADX INFO: renamed from: k */
    public final Lazy f2585k;

    /* JADX INFO: renamed from: l */
    public final C3329r7 f2586l;

    /* JADX INFO: renamed from: m */
    public final String f2587m;

    /* JADX INFO: renamed from: n */
    public final HashSet f2588n;

    /* JADX INFO: renamed from: o */
    public final ArrayList f2589o;

    /* JADX INFO: renamed from: p */
    public AbstractC3245ld f2590p;

    /* JADX INFO: renamed from: q */
    public C3120d8 f2591q;

    /* JADX INFO: renamed from: r */
    public boolean f2592r;

    /* JADX INFO: renamed from: s */
    public final AdConfig f2593s;

    /* JADX INFO: renamed from: t */
    public boolean f2594t;

    /* JADX INFO: renamed from: u */
    public boolean f2595u;

    /* JADX INFO: renamed from: v */
    public C3359t7 f2596v;

    /* JADX INFO: renamed from: w */
    public C2898O0 f2597w;

    /* JADX INFO: renamed from: x */
    public WeakReference f2598x;

    /* JADX INFO: renamed from: y */
    public int f2599y;

    /* JADX INFO: renamed from: z */
    public WeakReference f2600z;

    public C3359t7(Context context, byte b, C2920P7 mNativeDataModel, String impressionId, Set set, AdConfig adConfig, long j, boolean z, String creativeId, C3055Z2 c3055z2, C3373u6 c3373u6, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mNativeDataModel, "mNativeDataModel");
        Intrinsics.checkNotNullParameter(impressionId, "impressionId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(creativeId, "creativeId");
        this.f2575a = b;
        this.f2576b = mNativeDataModel;
        this.f2577c = impressionId;
        this.f2578d = set;
        this.f2579e = j;
        this.f2580f = z;
        this.f2581g = creativeId;
        this.f2582h = c3055z2;
        this.f2583i = c3373u6;
        this.f2584j = interfaceC3147f5;
        this.f2585k = LazyKt.lazy(C3269n7.f2382a);
        this.f2586l = new C3329r7(this);
        this.f2587m = "t7";
        this.f2588n = new HashSet();
        this.f2589o = new ArrayList();
        this.f2593s = adConfig;
        this.f2596v = this;
        this.f2598x = new WeakReference(null);
        this.f2599y = -1;
        this.f2568N = new C3299p7(this);
        this.f2569O = new C3239l7(this);
        this.f2570P = new C3314q7(this);
        this.f2571Q = new C3224k7(this);
        this.f2598x = new WeakReference(context);
        C2849Kb.m1245a(context, this);
        C2800H7 c2800h7 = mNativeDataModel.f1380e;
        if (c2800h7 != null) {
            c2800h7.f1079y = System.currentTimeMillis();
        }
        this.f2565K = (byte) -1;
        this.f2567M = C2687A.f806a;
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.t7$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3359t7.m2428a(this.f$0);
            }
        });
        this.f2573S = AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE;
        this.f2574T = new C3284o7(this);
    }

    /* JADX INFO: renamed from: a */
    public final C2740D7 m2433a(C2920P7 c2920p7, C2740D7 asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        if (c2920p7 == null) {
            return null;
        }
        String str = asset.f926h;
        if (str.length() == 0) {
            asset.f929k = (byte) 0;
            return asset;
        }
        String[] strArr = (String[]) new Regex("\\|").split(str, 0).toArray(new String[0]);
        if (strArr.length == 1) {
            asset.f929k = m2426a(strArr[0]);
            return asset;
        }
        C2740D7 c2740d7M1512m = c2920p7.m1512m(strArr[0]);
        if (c2740d7M1512m == null) {
            return m2433a(c2920p7.f1382g, asset);
        }
        if (Intrinsics.areEqual(c2740d7M1512m, asset)) {
            return null;
        }
        c2740d7M1512m.f929k = m2426a(strArr[1]);
        InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
        if (interfaceC3147f5 != null) {
            String str2 = this.f2587m;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3208j6.m2261a(str2, "TAG", "Referenced asset (").append(c2740d7M1512m.f920b).append(')').toString());
        }
        return c2740d7M1512m;
    }

    /* JADX INFO: renamed from: b */
    public final C2740D7 m2442b(C2920P7 c2920p7, C2740D7 c2740d7) {
        InterfaceC3147f5 interfaceC3147f5;
        if (c2920p7 == null) {
            return null;
        }
        String str = c2740d7.f934p;
        String str2 = c2740d7.f935q;
        C2740D7 c2740d7M2432a = m2432a(c2740d7, c2920p7, str);
        if (c2740d7M2432a == null) {
            c2740d7M2432a = m2432a(c2740d7, c2920p7, str2);
        }
        if (c2740d7M2432a != null && (interfaceC3147f5 = this.f2584j) != null) {
            String str3 = this.f2587m;
            ((C3162g5) interfaceC3147f5).m2147a(str3, AbstractC3208j6.m2261a(str3, "TAG", "Referenced asset (").append(c2740d7M2432a.f920b).append(')').toString());
        }
        return c2740d7M2432a;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    /* JADX INFO: renamed from: c */
    public final boolean mo1966c() {
        return this.f2594t;
    }

    /* JADX INFO: renamed from: d */
    public final Context m2444d() {
        Activity activityM2445f = m2445f();
        return activityM2445f != null ? activityM2445f : (Context) this.f2598x.get();
    }

    @Override // com.inmobi.media.InterfaceC3411x
    /* JADX INFO: renamed from: e */
    public final void mo1969e() {
    }

    /* JADX INFO: renamed from: f */
    public final Activity m2445f() {
        WeakReference weakReference = this.f2600z;
        if (weakReference != null) {
            return (Activity) weakReference.get();
        }
        return null;
    }

    /* JADX INFO: renamed from: g */
    public final View m2446g() {
        AbstractC3245ld abstractC3245ld = this.f2590p;
        if (abstractC3245ld != null) {
            return abstractC3245ld.mo963b();
        }
        return null;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public final AdConfig getAdConfig() {
        return this.f2593s;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public final String getAdType() {
        return this.f2573S;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public String getCreativeId() {
        return this.f2581g;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public final Object getDataModel() {
        return this.f2576b;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public InterfaceC3396w getFullScreenEventsListener() {
        return this.f2568N;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public String getImpressionId() {
        return this.f2577c;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public final String getMarkupType() {
        return "inmobiJson";
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public final byte getPlacementType() {
        return this.f2575a;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public View getVideoContainerView() {
        return null;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public AbstractC3260md getViewableAd() {
        Context contextM2448j = m2448j();
        if (this.f2590p == null && contextM2448j != null) {
            InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
            if (interfaceC3147f5 != null) {
                String TAG = this.f2587m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2152c(TAG, "fireLoadedAndServedBeacons");
            }
            C2800H7 c2800h7 = this.f2576b.f1380e;
            if (c2800h7 != null) {
                HashMap mapM2435a = m2435a(c2800h7);
                mo1951a((byte) 1, mapM2435a);
                mo1951a((byte) 2, mapM2435a);
            }
            this.f2590p = new C3327r5(contextM2448j, this, new C3290od(this, this.f2562H, this.f2584j), this.f2584j);
            Set<C2805Hc> set = this.f2578d;
            if (set != null) {
                for (C2805Hc c2805Hc : set) {
                    try {
                        if (c2805Hc.f1084a == 3) {
                            InterfaceC3147f5 interfaceC3147f52 = this.f2584j;
                            if (interfaceC3147f52 != null) {
                                String TAG2 = this.f2587m;
                                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                                ((C3162g5) interfaceC3147f52).m2147a(TAG2, "OMID tracker");
                            }
                            Object obj = c2805Hc.f1085b.get("omidAdSession");
                            C3451z9 c3451z9 = obj instanceof C3451z9 ? (C3451z9) obj : null;
                            AbstractC3245ld abstractC3245ld = this.f2590p;
                            if (c3451z9 == null || abstractC3245ld == null) {
                                InterfaceC3147f5 interfaceC3147f53 = this.f2584j;
                                if (interfaceC3147f53 != null) {
                                    String TAG3 = this.f2587m;
                                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                                    ((C3162g5) interfaceC3147f53).m2151b(TAG3, "Did not find a OMID ad session; the OMID decorator will not be applied.");
                                }
                            } else {
                                this.f2590p = this.f2565K == 0 ? new C2742D9(this, abstractC3245ld, c3451z9, this.f2584j) : new C2757E9(this, abstractC3245ld, c3451z9, this.f2584j);
                            }
                        }
                    } catch (Exception e) {
                        InterfaceC3147f5 interfaceC3147f54 = this.f2584j;
                        if (interfaceC3147f54 != null) {
                            String str = this.f2587m;
                            ((C3162g5) interfaceC3147f54).m2151b(str, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str, "TAG", "Exception occurred while creating the Display viewable ad : ")));
                        }
                        C3402w5 c3402w5 = C3402w5.f2709a;
                        C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
                    }
                }
            }
        }
        return this.f2590p;
    }

    /* JADX INFO: renamed from: h */
    public final C3120d8 m2447h() {
        AbstractC3245ld abstractC3245ld = this.f2590p;
        C3032X7 c3032x7Mo1121c = abstractC3245ld != null ? abstractC3245ld.mo1121c() : null;
        C3032X7 c3032x7 = c3032x7Mo1121c instanceof C3032X7 ? c3032x7Mo1121c : null;
        if (c3032x7 != null) {
            this.f2591q = c3032x7.f1649e;
        }
        return this.f2591q;
    }

    /* JADX INFO: renamed from: i */
    public InterfaceC3335rd mo856i() {
        return this.f2574T;
    }

    /* JADX INFO: renamed from: j */
    public final Context m2448j() {
        return (1 == this.f2575a || mo859k()) ? m2445f() : (Context) this.f2598x.get();
    }

    /* JADX INFO: renamed from: k */
    public boolean mo859k() {
        return this.f2575a == 0 && m2445f() != null;
    }

    /* JADX INFO: renamed from: l */
    public void mo860l() {
        AbstractC3245ld abstractC3245ld;
        C3053Z0 c3053z0;
        InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onPause");
        }
        this.f2595u = true;
        C3360t8 c3360t8M2427a = m2427a(m2446g());
        if (c3360t8M2427a != null) {
            c3360t8M2427a.m2454b();
        }
        C3120d8 c3120d8M2447h = m2447h();
        if (c3120d8M2447h != null && (c3053z0 = c3120d8M2447h.f2011l) != null) {
            c3053z0.m1998a();
        }
        Context contextM2444d = m2444d();
        if (contextM2444d == null || (abstractC3245ld = this.f2590p) == null) {
            return;
        }
        abstractC3245ld.mo959a(contextM2444d, (byte) 1);
    }

    /* JADX INFO: renamed from: m */
    public final void m2449m() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "reportFirstPageRendered");
        }
        C2800H7 c2800h7M1491b = this.f2576b.m1491b(0);
        if (this.f2588n.contains(0) || c2800h7M1491b == null || this.f2594t) {
            return;
        }
        this.f2588n.add(0);
        c2800h7M1491b.f1079y = System.currentTimeMillis();
        if (!this.f2592r) {
            this.f2589o.add(c2800h7M1491b);
            return;
        }
        HashMap mapM2435a = m2435a(c2800h7M1491b);
        InterfaceC3147f5 interfaceC3147f52 = this.f2584j;
        if (interfaceC3147f52 != null) {
            String TAG2 = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG2, "Page-view impression record request");
        }
        c2800h7M1491b.m951a("page_view", mapM2435a, (C3239l7) null, this.f2584j);
    }

    /* JADX INFO: renamed from: n */
    public boolean mo861n() {
        return false;
    }

    /* JADX INFO: renamed from: o */
    public final void m2450o() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.t7$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3359t7.m2431d(this.f$0);
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
        InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onActivityDestroyed");
        }
        AbstractC3245ld abstractC3245ld = this.f2590p;
        if (abstractC3245ld != null) {
            abstractC3245ld.mo959a(activity, (byte) 2);
        }
        C3055Z2 c3055z2 = this.f2582h;
        if (c3055z2 != null) {
            c3055z2.m2002b();
        }
        Context context = (Context) this.f2598x.get();
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
        AbstractC3245ld abstractC3245ld;
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (Intrinsics.areEqual(m2444d(), activity)) {
            InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
            if (interfaceC3147f5 != null) {
                String TAG = this.f2587m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2152c(TAG, "onResume");
            }
            this.f2595u = false;
            C3360t8 c3360t8M2427a = m2427a(m2446g());
            if (c3360t8M2427a != null) {
                c3360t8M2427a.m2455c();
            }
            m2451p();
            Context contextM2444d = m2444d();
            if (contextM2444d == null || (abstractC3245ld = this.f2590p) == null) {
                return;
            }
            abstractC3245ld.mo959a(contextM2444d, (byte) 0);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (Intrinsics.areEqual(m2444d(), activity)) {
            mo860l();
        }
    }

    /* JADX INFO: renamed from: p */
    public final void m2451p() {
        C3053Z0 c3053z0;
        C3120d8 c3120d8M2447h = m2447h();
        if (c3120d8M2447h == null || (c3053z0 = c3120d8M2447h.f2011l) == null || c3053z0.f1792c) {
            return;
        }
        c3053z0.f1792c = true;
        c3053z0.m1999a(c3053z0.f1791b);
    }

    /* JADX INFO: renamed from: q */
    public final void m2452q() {
        C2898O0 c2898o0;
        InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "unlockRewards");
        }
        if (mo861n()) {
            this.f2555A = true;
            HashMap rewards = this.f2576b.f1383h;
            if (rewards == null || (c2898o0 = this.f2597w) == null) {
                return;
            }
            Intrinsics.checkNotNullParameter(rewards, "rewards");
            InterfaceC3147f5 interfaceC3147f52 = c2898o0.f1326a.f1437j;
            if (interfaceC3147f52 != null) {
                String strM1558e = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f52).m2147a(strM1558e, "onAdRewardsUnlocked");
            }
            if (c2898o0.f1326a.m1584Z()) {
                return;
            }
            AbstractC2748E0 abstractC2748E0 = (AbstractC2748E0) c2898o0.f1327b.get();
            if (abstractC2748E0 != null) {
                abstractC2748E0.mo983b(new HashMap(rewards));
                return;
            }
            InterfaceC3147f5 interfaceC3147f53 = c2898o0.f1326a.f1437j;
            if (interfaceC3147f53 != null) {
                ((C3162g5) interfaceC3147f53).m2151b("InMobi", "Listener was garbage collected.Unable to give callback");
            }
        }
    }

    @Override // com.inmobi.media.InterfaceC3411x
    public final void setFullScreenActivityContext(Activity activity) {
        this.f2600z = new WeakReference(activity);
    }

    /* JADX INFO: renamed from: d */
    public static final void m2431d(C3359t7 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f2555A = true;
        this$0.m2443b((C2740D7) null);
    }

    /* JADX INFO: renamed from: c */
    public void mo850c(C2740D7 asset) {
        C3360t8 c3360t8M2427a;
        ValueAnimator valueAnimator;
        Intrinsics.checkNotNullParameter(asset, "asset");
        InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "triggerAssetAction");
        }
        byte b = asset.f929k;
        if (b == 0 || b == 5) {
            return;
        }
        if (b == 2) {
            this.f2555A = true;
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f2562H;
            if (gestureDetectorOnGestureListenerC3049Ya != null && gestureDetectorOnGestureListenerC3049Ya != null) {
                InterfaceC3147f5 interfaceC3147f52 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
                if (interfaceC3147f52 != null) {
                    String TAG2 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C3162g5) interfaceC3147f52).m2147a(TAG2, "skipToInterActive");
                }
                gestureDetectorOnGestureListenerC3049Ya.m1960b("window.imraid.broadcastEvent('skip');");
            }
            C3360t8 c3360t8M2427a2 = m2427a(m2446g());
            if (c3360t8M2427a2 != null) {
                c3360t8M2427a2.m2454b();
            }
            m2443b(asset);
            C3055Z2 c3055z2 = this.f2582h;
            if (c3055z2 == null || c3055z2.f1799g.get()) {
                return;
            }
            c3055z2.f1796d.f1983h = 1;
            Intrinsics.checkNotNull(c3055z2.f1795c);
            return;
        }
        if (b == 3) {
            try {
                GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = this.f2562H;
                if (gestureDetectorOnGestureListenerC3049Ya2 != null) {
                    InterfaceC3147f5 interfaceC3147f53 = gestureDetectorOnGestureListenerC3049Ya2.f1749i;
                    if (interfaceC3147f53 != null) {
                        String TAG3 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                        Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                        ((C3162g5) interfaceC3147f53).m2147a(TAG3, "replayToInterActive");
                    }
                    gestureDetectorOnGestureListenerC3049Ya2.m1960b("window.imraid.broadcastEvent('replay');");
                }
                View viewM2446g = m2446g();
                if (viewM2446g != null) {
                    ViewParent parent = viewM2446g.getParent();
                    ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (viewGroup != null) {
                        viewGroup.removeView(viewM2446g);
                    }
                }
                C3359t7 c3359t7 = this.f2596v;
                C3359t7 c3359t72 = c3359t7 instanceof C3359t7 ? c3359t7 : null;
                if (c3359t72 != null && (c3360t8M2427a = m2427a(c3359t72.m2446g())) != null && (valueAnimator = c3360t8M2427a.f2614n) != null && valueAnimator.isRunning()) {
                    valueAnimator.setCurrentPlayTime(c3360t8M2427a.f2606f * ((long) 1000));
                    c3360t8M2427a.f2612l = 360 * 1.0f;
                    c3360t8M2427a.invalidate();
                }
                if (!Intrinsics.areEqual(ShareConstants.VIDEO_URL, asset.f921c)) {
                    InterfaceC3147f5 interfaceC3147f54 = this.f2584j;
                    if (interfaceC3147f54 != null) {
                        String TAG4 = this.f2587m;
                        Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                        ((C3162g5) interfaceC3147f54).m2151b(TAG4, "Action 3 not valid for asset of type: " + asset.f921c);
                        return;
                    }
                    return;
                }
                if (c3359t7 instanceof C2696A8) {
                    View videoContainerView = ((C2696A8) c3359t7).getVideoContainerView();
                    C2876M8 c2876m8 = videoContainerView instanceof C2876M8 ? (C2876M8) videoContainerView : null;
                    if (c2876m8 != null) {
                        C2861L8 videoView = c2876m8.getVideoView();
                        Object tag = videoView.getTag();
                        C2726C8 c2726c8 = tag instanceof C2726C8 ? (C2726C8) tag : null;
                        if (c2726c8 != null) {
                            if (c2726c8.m920c()) {
                                videoView.m1311k();
                            } else {
                                videoView.m1303c();
                            }
                        } else if (1 == this.f2575a) {
                            videoView.m1311k();
                        } else {
                            videoView.m1303c();
                        }
                        if (c2726c8 != null) {
                            m2438a(c2726c8);
                        }
                        videoView.start();
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception e) {
                InterfaceC3147f5 interfaceC3147f55 = this.f2584j;
                if (interfaceC3147f55 != null) {
                    String str = this.f2587m;
                    ((C3162g5) interfaceC3147f55).m2151b(str, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str, "TAG", "Encountered unexpected error in handling replay action on video: ")));
                }
                AbstractC2814I6.m1170a((byte) 2, "InMobi", "SDK encountered unexpected error in replaying video");
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
                return;
            }
        }
        if (b == 1) {
            try {
                GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya3 = this.f2562H;
                if (gestureDetectorOnGestureListenerC3049Ya3 != null) {
                    InterfaceC3147f5 interfaceC3147f56 = gestureDetectorOnGestureListenerC3049Ya3.f1749i;
                    if (interfaceC3147f56 != null) {
                        String TAG5 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                        Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                        ((C3162g5) interfaceC3147f56).m2147a(TAG5, "closeToInterActive");
                    }
                    gestureDetectorOnGestureListenerC3049Ya3.m1960b("window.imraid.broadcastEvent('close');");
                }
                mo1950a();
                return;
            } catch (Exception e2) {
                InterfaceC3147f5 interfaceC3147f57 = this.f2584j;
                if (interfaceC3147f57 != null) {
                    String str2 = this.f2587m;
                    ((C3162g5) interfaceC3147f57).m2151b(str2, AbstractC2761Ed.m1111a(e2, AbstractC3208j6.m2261a(str2, "TAG", "Encountered unexpected error in handling exit action on video: ")));
                }
                AbstractC2814I6.m1170a((byte) 2, "InMobi", "SDK encountered unexpected error in exiting video");
                C3402w5 c3402w52 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e2, "event"));
                return;
            }
        }
        if (b != 4) {
            this.f2555A = true;
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya4 = this.f2562H;
            if (gestureDetectorOnGestureListenerC3049Ya4 != null && gestureDetectorOnGestureListenerC3049Ya4 != null) {
                InterfaceC3147f5 interfaceC3147f58 = gestureDetectorOnGestureListenerC3049Ya4.f1749i;
                if (interfaceC3147f58 != null) {
                    String TAG6 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                    Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
                    ((C3162g5) interfaceC3147f58).m2147a(TAG6, "skipToInterActive");
                }
                gestureDetectorOnGestureListenerC3049Ya4.m1960b("window.imraid.broadcastEvent('skip');");
            }
            C3360t8 c3360t8M2427a3 = m2427a(m2446g());
            if (c3360t8M2427a3 != null) {
                c3360t8M2427a3.m2454b();
            }
            m2443b(asset);
            return;
        }
        try {
            if (this.f2575a == 0) {
                InterfaceC3147f5 interfaceC3147f59 = this.f2584j;
                if (interfaceC3147f59 != null) {
                    String TAG7 = this.f2587m;
                    Intrinsics.checkNotNullExpressionValue(TAG7, "TAG");
                    ((C3162g5) interfaceC3147f59).m2152c(TAG7, "launchFullscreen");
                }
                C3359t7 c3359t7M2430c = m2430c(this);
                if (c3359t7M2430c == null) {
                    return;
                }
                C2898O0 c2898o0 = c3359t7M2430c.f2597w;
                if (c2898o0 != null) {
                    c2898o0.m1415e();
                }
                C2687A c2687a = this.f2567M;
                int iHashCode = hashCode();
                C3254m7 c3254m7 = new C3254m7(this, c3359t7M2430c);
                c2687a.getClass();
                C2687A.m825a(iHashCode, c3254m7);
            }
        } catch (Exception e3) {
            InterfaceC3147f5 interfaceC3147f510 = this.f2584j;
            if (interfaceC3147f510 != null) {
                String str3 = this.f2587m;
                ((C3162g5) interfaceC3147f510).m2151b(str3, AbstractC2761Ed.m1111a(e3, AbstractC3208j6.m2261a(str3, "TAG", "Encountered unexpected error in handling fullscreen action ")));
            }
            AbstractC2814I6.m1170a((byte) 2, "InMobi", "SDK encountered unexpected error in launching fullscreen ad");
            C3402w5 c3402w53 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e3, "event"));
        }
    }

    /* JADX INFO: renamed from: b */
    public void mo846b(View view) {
        C2898O0 c2898o0;
        if (this.f2592r || this.f2594t) {
            return;
        }
        this.f2592r = true;
        C3055Z2 c3055z2 = this.f2582h;
        if (c3055z2 != null) {
            c3055z2.m2001a();
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "A viewable impression is reported on ad view.");
        }
        C2800H7 c2800h7 = this.f2576b.f1380e;
        if (c2800h7 != null) {
            c2800h7.m951a("Impression", m2435a(c2800h7), this.f2569O, this.f2584j);
        }
        m2449m();
        for (C2740D7 c2740d7 : this.f2589o) {
            HashMap mapM2435a = m2435a(c2740d7);
            InterfaceC3147f5 interfaceC3147f52 = this.f2584j;
            if (interfaceC3147f52 != null) {
                String TAG2 = this.f2587m;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2147a(TAG2, "Page-view impression record request");
            }
            c2740d7.m951a("page_view", mapM2435a, (C3239l7) null, this.f2584j);
        }
        this.f2589o.clear();
        AbstractC3245ld abstractC3245ld = this.f2590p;
        if (abstractC3245ld != null) {
            abstractC3245ld.mo958a((byte) 0);
        }
        C3359t7 c3359t7M2430c = m2430c(this);
        if (c3359t7M2430c == null || (c2898o0 = c3359t7M2430c.f2597w) == null) {
            return;
        }
        c2898o0.m1416f();
    }

    /* JADX INFO: renamed from: b */
    public static final void m2429b(C3359t7 it) {
        Intrinsics.checkNotNullParameter(it, "$it");
        C2687A c2687a = it.f2567M;
        int iHashCode = it.hashCode();
        C3314q7 c3314q7 = it.f2570P;
        c2687a.getClass();
        C2687A.m825a(iHashCode, c3314q7);
    }

    /* JADX INFO: renamed from: b */
    public final void m2443b(C2740D7 c2740d7) {
        AbstractC3260md viewableAd;
        InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "showEndCard");
        }
        C3359t7 c3359t7 = this.f2564J;
        if (c3359t7 != null && m2446g() != null) {
            try {
                View viewM2446g = m2446g();
                ViewGroup viewGroup = viewM2446g instanceof ViewGroup ? (ViewGroup) viewM2446g : null;
                View viewMo956a = (viewGroup == null || (viewableAd = c3359t7.getViewableAd()) == null) ? null : viewableAd.mo956a(null, viewGroup, false);
                if (viewMo956a != null) {
                    if (viewGroup != null) {
                        viewGroup.addView(viewMo956a);
                    }
                    viewMo956a.setClickable(true);
                    c3359t7.m2451p();
                    if (c2740d7 instanceof C2726C8) {
                        InterfaceC3230kd interfaceC3230kdM921d = ((C2726C8) c2740d7).m921d();
                        C3080ad c3080ad = interfaceC3230kdM921d != null ? ((C3215jd) interfaceC3230kdM921d).f2240j : null;
                        if (c3080ad == null) {
                            return;
                        }
                        c3080ad.f1861g = true;
                        return;
                    }
                    return;
                }
                InterfaceC3147f5 interfaceC3147f52 = this.f2584j;
                if (interfaceC3147f52 != null) {
                    String TAG2 = this.f2587m;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((C3162g5) interfaceC3147f52).m2151b(TAG2, "Could not inflate the end card. Closing the ad");
                }
                mo1950a();
                return;
            } catch (Exception e) {
                InterfaceC3147f5 interfaceC3147f53 = this.f2584j;
                if (interfaceC3147f53 != null) {
                    String TAG3 = this.f2587m;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((C3162g5) interfaceC3147f53).m2148a(TAG3, "Failed to show end card Exception", e);
                }
                mo1950a();
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
                return;
            }
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f2584j;
        if (interfaceC3147f54 != null) {
            String TAG4 = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            ((C3162g5) interfaceC3147f54).m2151b(TAG4, "End card container is null; end card will not be shown");
        }
        AbstractC2814I6.m1170a((byte) 2, "InMobi", "Failed to show end card");
        mo1950a();
    }

    @Override // com.inmobi.media.InterfaceC3411x
    /* JADX INFO: renamed from: b */
    public void mo845b() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "destroyContainer");
        }
        if (this.f2594t) {
            return;
        }
        this.f2594t = true;
        C3055Z2 c3055z2 = this.f2582h;
        if (c3055z2 != null) {
            c3055z2.m2002b();
        }
        this.f2599y = -1;
        C3359t7 c3359t7 = this.f2557C;
        if (c3359t7 != null) {
            c3359t7.mo1950a();
        }
        this.f2597w = null;
        C3120d8 c3120d8M2447h = m2447h();
        if (c3120d8M2447h != null) {
            C3053Z0 c3053z0 = c3120d8M2447h.f2011l;
            Iterator it = c3053z0.f1791b.iterator();
            while (it.hasNext()) {
                ((C3039Y0) it.next()).f1664a.cancel();
            }
            c3053z0.f1791b.clear();
            c3120d8M2447h.f2013n = true;
            c3120d8M2447h.f2008i.clear();
            c3120d8M2447h.f2015p = null;
            InterfaceC3240l8 interfaceC3240l8 = c3120d8M2447h.f2009j;
            if (interfaceC3240l8 != null) {
                interfaceC3240l8.destroy();
            }
            c3120d8M2447h.f2009j = null;
        }
        this.f2591q = null;
        this.f2589o.clear();
        AbstractC3245ld abstractC3245ld = this.f2590p;
        if (abstractC3245ld != null) {
            abstractC3245ld.mo965e();
        }
        AbstractC3245ld abstractC3245ld2 = this.f2590p;
        if (abstractC3245ld2 != null) {
            abstractC3245ld2.mo957a();
        }
        Context context = (Context) this.f2598x.get();
        if (context instanceof Activity) {
            ((Activity) context).getApplication().unregisterActivityLifecycleCallbacks(this);
        }
        this.f2598x.clear();
        WeakReference weakReference = this.f2600z;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f2562H = null;
        C3359t7 c3359t72 = this.f2564J;
        if (c3359t72 != null) {
            c3359t72.mo845b();
        }
        this.f2564J = null;
        C2687A c2687a = this.f2567M;
        int iHashCode = hashCode();
        c2687a.getClass();
        SparseArray sparseArray = C2687A.f807b;
        sparseArray.remove(iHashCode);
        Intrinsics.checkNotNullExpressionValue("A", "TAG");
        sparseArray.size();
    }

    /* JADX INFO: renamed from: a */
    public final void m2436a(Context context) {
        this.f2598x = new WeakReference(context);
        C2849Kb.m1245a(context, this);
    }

    /* JADX INFO: renamed from: a */
    public static final void m2428a(C3359t7 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C2687A c2687a = this$0.f2567M;
        int iHashCode = this$0.hashCode();
        C3314q7 c3314q7 = this$0.f2570P;
        c2687a.getClass();
        C2687A.m825a(iHashCode, c3314q7);
    }

    @Override // com.inmobi.media.InterfaceC3411x
    /* JADX INFO: renamed from: a */
    public final void mo1951a(byte b, Map map) {
        C2800H7 c2800h7;
        if (this.f2594t || b == 0 || b == 3) {
            return;
        }
        if (b == 1) {
            C2800H7 c2800h72 = this.f2576b.f1380e;
            if (c2800h72 != null) {
                InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
                if (interfaceC3147f5 != null) {
                    String TAG = this.f2587m;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2147a(TAG, "reportAdLoad");
                }
                c2800h72.m951a("load", (HashMap) map, (C3239l7) null, this.f2584j);
                return;
            }
            return;
        }
        if (b != 2 || (c2800h7 = this.f2576b.f1380e) == null) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f2584j;
        if (interfaceC3147f52 != null) {
            String TAG2 = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG2, "reportAdServed");
        }
        c2800h7.m951a("client_fill", (HashMap) map, (C3239l7) null, this.f2584j);
    }

    /* JADX INFO: renamed from: a */
    public final void m2437a(View view, C2740D7 asset) {
        String strM2246a;
        C2898O0 c2898o0;
        Intrinsics.checkNotNullParameter(asset, "asset");
        if (this.f2594t) {
            return;
        }
        m2449m();
        C2740D7 c2740d7M2442b = m2442b(this.f2576b, asset);
        if (c2740d7M2442b != null) {
            HashMap mapM2435a = m2435a(c2740d7M2442b);
            m2440a(c2740d7M2442b, mapM2435a);
            if (!Intrinsics.areEqual(c2740d7M2442b, asset)) {
                m2440a(asset, mapM2435a);
            }
        } else {
            InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
            if (interfaceC3147f5 != null) {
                String TAG = this.f2587m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2151b(TAG, "Couldn't find an asset reference for this asset click URL");
            }
            m2440a(asset, m2435a(asset));
        }
        C3359t7 c3359t7M2430c = m2430c(this);
        if (c3359t7M2430c == null) {
            return;
        }
        String str = asset.f934p;
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
            strM2246a = AbstractC3194i7.m2246a(length, 1, str, i);
        } else {
            strM2246a = null;
        }
        if (AbstractC3429y2.m2607a(strM2246a) && (c2898o0 = c3359t7M2430c.f2597w) != null) {
            c2898o0.m1411a();
        }
        C2740D7 c2740d7M2433a = m2433a(this.f2576b, asset);
        if (c2740d7M2433a != null) {
            if (view != null && Intrinsics.areEqual(ShareConstants.VIDEO_URL, c2740d7M2433a.f921c) && 5 == c2740d7M2433a.f929k) {
                view.setVisibility(4);
                asset.f940v = 4;
            }
            mo850c(c2740d7M2433a);
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f2584j;
        if (interfaceC3147f52 != null) {
            String TAG2 = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f52).m2151b(TAG2, "Couldn't find an asset reference for this asset action! Ignoring the asset action ...");
        }
    }

    /* JADX INFO: renamed from: a */
    public final C2740D7 m2432a(C2740D7 c2740d7, C2920P7 c2920p7, String str) {
        if (AbstractC3399w2.m2540a((Context) this.f2598x.get(), str) || str == null || str.length() == 0) {
            return c2740d7;
        }
        String[] strArr = (String[]) new Regex("\\|").split(str, 0).toArray(new String[0]);
        C2740D7 c2740d7M1512m = c2920p7.m1512m(strArr[0]);
        if (c2740d7M1512m == null) {
            return m2442b(c2920p7.f1382g, c2740d7);
        }
        if (Intrinsics.areEqual(c2740d7M1512m, c2740d7)) {
            return null;
        }
        if (strArr.length <= 2) {
            c2740d7M1512m.f930l = (byte) 1;
        } else {
            c2740d7M1512m.f930l = AbstractC2875M7.m1336a(strArr[2]);
        }
        return c2740d7M1512m;
    }

    /* JADX INFO: renamed from: c */
    public static C3359t7 m2430c(C3359t7 c3359t7) {
        if (c3359t7 == null) {
            return null;
        }
        if (c3359t7.m2445f() != null || Intrinsics.areEqual(c3359t7, c3359t7.f2596v)) {
            return c3359t7;
        }
        C3359t7 c3359t72 = c3359t7.f2596v;
        return m2430c(c3359t72 instanceof C3359t7 ? c3359t72 : null);
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
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte m2426a(java.lang.String r7) {
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
            java.lang.String r7 = com.inmobi.media.AbstractC3194i7.m2246a(r0, r1, r7, r3)
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
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3359t7.m2426a(java.lang.String):byte");
    }

    /* JADX INFO: renamed from: a */
    public final void m2441a(C2740D7 asset, boolean z) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        C2920P7 c2920p7 = this.f2576b;
        if (!c2920p7.f1392q || this.f2594t) {
            return;
        }
        C2740D7 c2740d7M2442b = m2442b(c2920p7, asset);
        if (c2740d7M2442b != null) {
            HashMap mapM2435a = m2435a(c2740d7M2442b);
            String str = asset.f925g;
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            c2740d7M2442b.f925g = str;
            String strM2246a = null;
            C3358t6 c3358t6 = ((TelemetryConfig.LandingPageConfig) this.f2585k.getValue()).getNativeEnabled() ? new C3358t6(this.f2583i, C3238l6.m2280a(c2740d7M2442b.f934p), 0, 12) : null;
            C3238l6.m2281a(EnumC3178h6.f2135d, c3358t6, (Integer) null, 12);
            if (Intrinsics.areEqual(ShareConstants.VIDEO_URL, c2740d7M2442b.f921c) || c2740d7M2442b.f924f) {
                InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
                if (interfaceC3147f5 != null) {
                    String TAG = this.f2587m;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2147a(TAG, "Asset interaction requested");
                }
                String str2 = c2740d7M2442b.f925g;
                AbstractC3245ld abstractC3245ld = this.f2590p;
                if (abstractC3245ld != null) {
                    abstractC3245ld.mo958a((byte) 4);
                }
                if (Intrinsics.areEqual("NO_ACTION", str2)) {
                    C3238l6.m2281a(EnumC3178h6.f2136e, c3358t6, (Integer) 10, 8);
                    return;
                }
                String str3 = c2740d7M2442b.f934p;
                if (2 == c2740d7M2442b.f930l) {
                    Intrinsics.checkNotNull(c2740d7M2442b, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset");
                    InterfaceC3230kd interfaceC3230kdM921d = ((C2726C8) c2740d7M2442b).m921d();
                    C3080ad c3080ad = interfaceC3230kdM921d != null ? ((C3215jd) interfaceC3230kdM921d).f2240j : null;
                    String str4 = c3080ad != null ? c3080ad.f1857c : null;
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
                        strM2246a = AbstractC3194i7.m2246a(length, 1, str4, i);
                    }
                    if (AbstractC3429y2.m2607a(strM2246a)) {
                        str3 = str4;
                    }
                }
                if (!AbstractC3399w2.m2540a(m2444d(), str3)) {
                    InterfaceC3147f5 interfaceC3147f52 = this.f2584j;
                    if (interfaceC3147f52 != null) {
                        String TAG2 = this.f2587m;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((C3162g5) interfaceC3147f52).m2151b(TAG2, "Invalid url:" + str3 + " will use fallback");
                    }
                    str3 = c2740d7M2442b.f935q;
                    if (!AbstractC3399w2.m2540a(m2444d(), str3)) {
                        InterfaceC3147f5 interfaceC3147f53 = this.f2584j;
                        if (interfaceC3147f53 != null) {
                            String str5 = this.f2587m;
                            ((C3162g5) interfaceC3147f53).m2151b(str5, AbstractC3223k6.m2276a(str5, "TAG", "Invalid fallback url:", str3));
                        }
                        C3238l6.m2281a(EnumC3178h6.f2136e, c3358t6, (Integer) 3, 8);
                        return;
                    }
                }
                boolean z4 = C3301p9.f2439a;
                Intrinsics.checkNotNull(str3);
                String strM2343a = C3301p9.m2343a(str3, mapM2435a);
                C3055Z2 c3055z2 = this.f2582h;
                if (c3055z2 != null && !c3055z2.f1799g.get()) {
                    c3055z2.f1796d.f1982g = 1;
                    Intrinsics.checkNotNull(c3055z2.f1795c);
                }
                if (this.f2558D && !z) {
                    C3359t7 c3359t7M2430c = m2430c(this);
                    if (c3359t7M2430c == null) {
                        return;
                    }
                    C2898O0 c2898o0 = c3359t7M2430c.f2597w;
                    if (c2898o0 != null) {
                        if (Intrinsics.areEqual("INAPP", str2) && AbstractC3399w2.m2542a(strM2343a)) {
                            c2898o0.m1415e();
                        } else {
                            c2898o0.m1417g();
                        }
                    }
                    this.f2559E = c2740d7M2442b;
                    this.f2560F = strM2343a;
                    return;
                }
                m2439a(c2740d7M2442b, str2, strM2343a, c3358t6);
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f2584j;
        if (interfaceC3147f54 != null) {
            String TAG3 = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((C3162g5) interfaceC3147f54).m2151b(TAG3, "Couldn't find an asset reference for this asset click URL");
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2440a(C2740D7 c2740d7, HashMap map) {
        InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "Click impression record requested");
        }
        if (2 == c2740d7.f930l) {
            C2726C8 c2726c8 = c2740d7 instanceof C2726C8 ? (C2726C8) c2740d7 : null;
            InterfaceC3230kd interfaceC3230kdM921d = c2726c8 != null ? c2726c8.m921d() : null;
            C3080ad c3080ad = interfaceC3230kdM921d != null ? ((C3215jd) interfaceC3230kdM921d).f2240j : null;
            if ((c3080ad != null ? c3080ad.f1857c : null) != null && c2740d7.f934p != null) {
                if (c3080ad.f1860f.isEmpty()) {
                    return;
                }
                Iterator it = c3080ad.m2031a("click").iterator();
                while (it.hasNext()) {
                    C2740D7.m944a((C3375u8) it.next(), map, (C3239l7) null, this.f2584j);
                }
                return;
            }
            InterfaceC3147f5 interfaceC3147f52 = this.f2584j;
            if (interfaceC3147f52 != null) {
                String TAG2 = this.f2587m;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2147a(TAG2, "reportAdClick");
            }
            c2740d7.m951a("click", map, (C3239l7) null, this.f2584j);
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f2584j;
        if (interfaceC3147f53 != null) {
            String TAG3 = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((C3162g5) interfaceC3147f53).m2147a(TAG3, "reportAdClick");
        }
        c2740d7.m951a("click", map, (C3239l7) null, this.f2584j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0032, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.HashMap m2435a(com.inmobi.media.C2740D7 r9) {
        /*
            r8 = this;
            java.lang.String r0 = "asset"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.util.HashMap r0 = new java.util.HashMap
            r1 = 4
            r0.<init>(r1)
            boolean r1 = r8.f2594t
            if (r1 == 0) goto L10
            return r0
        L10:
            java.lang.String r1 = "child"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r1)
            boolean r1 = r9 instanceof com.inmobi.media.C2800H7
            r2 = 1
            java.lang.String r3 = "card_scrollable"
            if (r1 == 0) goto L28
            r1 = r9
            com.inmobi.media.H7 r1 = (com.inmobi.media.C2800H7) r1
            java.lang.String r4 = r1.f920b
            boolean r4 = kotlin.text.StringsKt.equals(r3, r4, r2)
            if (r4 == 0) goto L28
            goto L45
        L28:
            com.inmobi.media.H7 r9 = r9.f936r
            boolean r1 = r9 instanceof com.inmobi.media.C2800H7
            r4 = 0
            if (r1 == 0) goto L31
            r1 = r9
            goto L32
        L31:
            r1 = r4
        L32:
            if (r1 == 0) goto L44
            java.lang.String r9 = r1.f920b
            boolean r9 = kotlin.text.StringsKt.equals(r3, r9, r2)
            if (r9 == 0) goto L3d
            goto L45
        L3d:
            com.inmobi.media.H7 r1 = r1.f936r
            boolean r9 = r1 instanceof com.inmobi.media.C2800H7
            if (r9 == 0) goto L31
            goto L32
        L44:
            r1 = r4
        L45:
            long r2 = java.lang.System.currentTimeMillis()
            r4 = 0
            if (r1 == 0) goto L54
            long r6 = r1.f1079y
            int r9 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r9 == 0) goto L54
            r2 = r6
        L54:
            com.inmobi.media.P7 r9 = r8.f2576b
            com.inmobi.media.H7 r9 = r9.f1380e
            if (r9 == 0) goto L5c
            long r4 = r9.f1079y
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
            com.inmobi.media.P7 r9 = r8.f2576b
            java.util.Map r9 = r9.f1395t
            if (r9 != 0) goto L86
            java.util.HashMap r9 = new java.util.HashMap
            r9.<init>()
        L86:
            r0.putAll(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3359t7.m2435a(com.inmobi.media.D7):java.util.HashMap");
    }

    /* JADX INFO: renamed from: a */
    public static C3360t8 m2427a(View view) {
        View viewFindViewWithTag = view != null ? view.findViewWithTag("timerView") : null;
        if (viewFindViewWithTag instanceof C3360t8) {
            return (C3360t8) viewFindViewWithTag;
        }
        return null;
    }

    /* JADX INFO: renamed from: a */
    public final void m2438a(C2726C8 c2726c8) {
        InterfaceC3230kd interfaceC3230kdM921d = c2726c8.m921d();
        C3080ad c3080ad = interfaceC3230kdM921d != null ? ((C3215jd) interfaceC3230kdM921d).f2240j : null;
        if (c3080ad == null || !c3080ad.f1861g) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "Invoking close end card trackers.");
        }
        Iterator it = c3080ad.m2031a("closeEndCard").iterator();
        while (it.hasNext()) {
            C2740D7.m944a((C3375u8) it.next(), m2435a((C2740D7) c2726c8), (C3239l7) null, this.f2584j);
        }
        c3080ad.f1861g = false;
    }

    @Override // com.inmobi.media.InterfaceC3411x
    /* JADX INFO: renamed from: a */
    public final void mo1950a() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "dismissCurrentViewContainer");
        }
        if (this.f2594t) {
            return;
        }
        try {
            C3359t7 container = m2430c(this);
            if (container == null) {
                return;
            }
            container.m2452q();
            SparseArray sparseArray = InMobiAdActivity.f787k;
            Intrinsics.checkNotNullParameter(container, "container");
            InMobiAdActivity.f787k.remove(container.hashCode());
            if (container instanceof C2696A8) {
                View videoContainerView = container.getVideoContainerView();
                C2876M8 c2876m8 = videoContainerView instanceof C2876M8 ? (C2876M8) videoContainerView : null;
                if (c2876m8 != null) {
                    C2861L8 videoView = c2876m8.getVideoView();
                    Object tag = videoView.getTag();
                    if (tag instanceof C2726C8) {
                        HashMap map = ((C2726C8) tag).f938t;
                        map.put("seekPosition", Integer.valueOf(videoView.getCurrentPosition()));
                        map.put("lastMediaVolume", Integer.valueOf(videoView.getVolume()));
                        C2740D7 c2740d7 = ((C2726C8) tag).f941w;
                        if (c2740d7 instanceof C2726C8) {
                            ((C2726C8) c2740d7).m916a((C2726C8) tag);
                        }
                        m2438a((C2726C8) tag);
                    }
                }
            }
            WeakReference weakReference = container.f2600z;
            Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
            if (activity instanceof InMobiAdActivity) {
                ((InMobiAdActivity) activity).f794e = true;
                ((InMobiAdActivity) activity).finish();
                int i = this.f2599y;
                if (i != -1) {
                    ((InMobiAdActivity) activity).overridePendingTransition(0, i);
                }
            }
            final C3359t7 c3359t7 = this.f2596v;
            if (!(c3359t7 instanceof C3359t7)) {
                c3359t7 = null;
            }
            if (c3359t7 != null) {
                c3359t7.f2557C = null;
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.t7$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3359t7.m2429b(this.f$0);
                    }
                });
            }
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f52 = this.f2584j;
            if (interfaceC3147f52 != null) {
                String str = this.f2587m;
                ((C3162g5) interfaceC3147f52).m2151b(str, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str, "TAG", "Encountered unexpected error in handling exit action on video: ")));
            }
            AbstractC2814I6.m1170a((byte) 2, "InMobi", "SDK encountered unexpected error in exiting video");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2439a(C2740D7 asset, String interactionMode, String url, C3358t6 c3358t6) {
        boolean cctEnabled;
        Unit unit;
        C2898O0 c2898o0;
        Unit unit2;
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(interactionMode, "interactionMode");
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "openUrl");
        }
        if (Intrinsics.areEqual("EMBEDDED", interactionMode)) {
            if (c3358t6 != null) {
                c3358t6.f2554g = "IN_CUSTOM";
            }
            Integer numM2434a = m2434a(url, asset, c3358t6);
            if (numM2434a != null) {
                C3238l6.m2281a(EnumC3178h6.f2138g, c3358t6, Integer.valueOf(numM2434a.intValue()), 8);
                unit2 = Unit.INSTANCE;
            } else {
                unit2 = null;
            }
            if (unit2 == null) {
                C3238l6.m2281a(EnumC3178h6.f2137f, c3358t6, (Integer) null, 12);
                return;
            }
            return;
        }
        if (Intrinsics.areEqual("INAPP", interactionMode)) {
            InterfaceC3147f5 interfaceC3147f52 = this.f2584j;
            if (interfaceC3147f52 != null) {
                String TAG2 = this.f2587m;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2152c(TAG2, "openUrlInCCT");
            }
            Context context = (Context) this.f2598x.get();
            if (context == null) {
                return;
            }
            if (m2445f() == null && (c2898o0 = this.f2597w) != null) {
                c2898o0.m1415e();
            }
            String strM2397a = AbstractC3340s3.m2397a(context);
            try {
                cctEnabled = this.f2593s.getCctEnabled();
            } catch (Exception e) {
                e = e;
            }
            try {
                if (strM2397a != null && cctEnabled) {
                    new C3174h2(url, null, context, this.f2571Q, this.f2586l, c3358t6, "NATIVE").m2211a();
                    return;
                }
                InterfaceC3147f5 interfaceC3147f53 = this.f2584j;
                if (interfaceC3147f53 != null) {
                    String TAG3 = this.f2587m;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((C3162g5) interfaceC3147f53).m2147a(TAG3, "ChromeCustomTab fallback to Embedded");
                }
                if (c3358t6 != null) {
                    c3358t6.f2554g = "IN_CUSTOM";
                }
                Integer numM2434a2 = m2434a(url, asset, c3358t6);
                if (numM2434a2 != null) {
                    C3238l6.m2281a(EnumC3178h6.f2138g, c3358t6, Integer.valueOf(numM2434a2.intValue()), 8);
                    unit = Unit.INSTANCE;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    C3238l6.m2281a(EnumC3178h6.f2137f, c3358t6, (Integer) null, 12);
                    return;
                }
                return;
            } catch (Exception e2) {
                e = e2;
                Exception exc = e;
                try {
                    AbstractC3399w2.m2538a(context, url, this.f2586l, "NATIVE");
                    if (c3358t6 != null) {
                        c3358t6.f2554g = "EX_NATIVE";
                    }
                    C3238l6.m2281a(EnumC3178h6.f2137f, c3358t6, (Integer) null, 12);
                } catch (Exception e3) {
                    InterfaceC3147f5 interfaceC3147f54 = this.f2584j;
                    if (interfaceC3147f54 != null) {
                        String TAG4 = this.f2587m;
                        Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                        ((C3162g5) interfaceC3147f54).m2148a(TAG4, "Exception occurred while opening External ", e3);
                    }
                    C3238l6.m2281a(EnumC3178h6.f2138g, c3358t6, (Integer) 9, 8);
                }
                InterfaceC3147f5 interfaceC3147f55 = this.f2584j;
                if (interfaceC3147f55 != null) {
                    String TAG5 = this.f2587m;
                    Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                    ((C3162g5) interfaceC3147f55).m2148a(TAG5, "Fallback to External while opening cct", exc);
                    return;
                }
                return;
            }
        }
        String str = asset.f935q;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(asset, "asset");
        InterfaceC3147f5 interfaceC3147f56 = this.f2584j;
        if (interfaceC3147f56 != null) {
            String TAG6 = this.f2587m;
            Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
            ((C3162g5) interfaceC3147f56).m2152c(TAG6, "openUrlUsingExternalBrowser");
        }
        if (this.f2598x.get() == null) {
            return;
        }
        if (c3358t6 != null) {
            c3358t6.f2554g = "EX_NATIVE";
        }
        String strM2539a = AbstractC3399w2.m2539a((Context) this.f2598x.get(), this.f2586l, url, str);
        if (strM2539a != null) {
            C3359t7 c3359t7M2430c = m2430c(this);
            if (c3359t7M2430c == null) {
                return;
            }
            C2898O0 c2898o02 = c3359t7M2430c.f2597w;
            if (!this.f2558D && c2898o02 != null) {
                c2898o02.m1417g();
            }
            if (Intrinsics.areEqual(strM2539a, str)) {
                asset.m951a("TRACKER_EVENT_TYPE_FALLBACK_URL", m2435a(asset), (C3239l7) null, this.f2584j);
            }
            C3238l6.m2281a(EnumC3178h6.f2137f, c3358t6, (Integer) null, 12);
            return;
        }
        C3238l6.m2281a(EnumC3178h6.f2138g, c3358t6, (Integer) 6, 8);
    }

    /* JADX INFO: renamed from: a */
    public final Integer m2434a(String url, C2740D7 asset, C3358t6 c3358t6) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(asset, "asset");
        try {
            Context context = (Context) this.f2598x.get();
            if (context == null) {
                return 7;
            }
            if (AbstractC3399w2.m2542a(url)) {
                InterfaceC3147f5 interfaceC3147f5 = this.f2584j;
                if (interfaceC3147f5 != null) {
                    String TAG = this.f2587m;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2152c(TAG, "openUrlUsingEmbeddedBrowser");
                }
                InMobiAdActivity.f788l = null;
                C3344s7 c3344s7 = this.f2566L;
                if (c3344s7 == null) {
                    c3344s7 = new C3344s7(this);
                    this.f2566L = c3344s7;
                }
                InMobiAdActivity.f789m = c3344s7;
                Intent intent = new Intent(context, (Class<?>) InMobiAdActivity.class);
                intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 100);
                intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.IN_APP_BROWSER_URL", url);
                intent.putExtra("placementId", this.f2579e);
                intent.putExtra("creativeId", getCreativeId());
                intent.putExtra("impressionId", getImpressionId());
                intent.putExtra("allowAutoRedirection", this.f2580f);
                if (c3358t6 != null) {
                    intent.putExtra("lpTelemetryControlInfo", c3358t6);
                }
                if (asset.f927i) {
                    intent.putExtra("supportLockScreen", true);
                }
                C2849Kb.f1171a.m1272a(context, intent);
                return null;
            }
            return 10;
        } catch (Exception e) {
            InterfaceC3147f5 interfaceC3147f52 = this.f2584j;
            if (interfaceC3147f52 != null) {
                String TAG2 = this.f2587m;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2148a(TAG2, "Error while opening Embedded Browser", e);
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return 9;
        }
    }
}
