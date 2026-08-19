package com.inmobi.media;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.d8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3120d8 {

    /* JADX INFO: renamed from: a */
    public final AdConfig f2000a;

    /* JADX INFO: renamed from: b */
    public final C3359t7 f2001b;

    /* JADX INFO: renamed from: c */
    public final C2920P7 f2002c;

    /* JADX INFO: renamed from: d */
    public final C3018W7 f2003d;

    /* JADX INFO: renamed from: e */
    public final C3004V7 f2004e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC3147f5 f2005f;

    /* JADX INFO: renamed from: g */
    public final String f2006g;

    /* JADX INFO: renamed from: h */
    public final Handler f2007h;

    /* JADX INFO: renamed from: i */
    public final WeakReference f2008i;

    /* JADX INFO: renamed from: j */
    public InterfaceC3240l8 f2009j;

    /* JADX INFO: renamed from: k */
    public int f2010k;

    /* JADX INFO: renamed from: l */
    public final C3053Z0 f2011l;

    /* JADX INFO: renamed from: m */
    public final C3121d9 f2012m;

    /* JADX INFO: renamed from: n */
    public boolean f2013n;

    /* JADX INFO: renamed from: o */
    public GestureDetectorOnGestureListenerC3049Ya f2014o;

    /* JADX INFO: renamed from: p */
    public C3032X7 f2015p;

    public C3120d8(Context context, AdConfig adConfig, C3359t7 nativeAdContainer, C2920P7 dataModel, C3018W7 viewEventListener, C3004V7 clickEventListener, C3032X7 timerFinishListener, InterfaceC3147f5 interfaceC3147f5) {
        C3121d9 c3121d9;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(nativeAdContainer, "nativeAdContainer");
        Intrinsics.checkNotNullParameter(dataModel, "dataModel");
        Intrinsics.checkNotNullParameter(viewEventListener, "viewEventListener");
        Intrinsics.checkNotNullParameter(clickEventListener, "clickEventListener");
        Intrinsics.checkNotNullParameter(timerFinishListener, "timerFinishListener");
        this.f2000a = adConfig;
        this.f2001b = nativeAdContainer;
        this.f2002c = dataModel;
        this.f2003d = viewEventListener;
        this.f2004e = clickEventListener;
        this.f2005f = interfaceC3147f5;
        this.f2006g = "d8";
        this.f2007h = new Handler(Looper.getMainLooper());
        this.f2008i = new WeakReference(context);
        this.f2011l = new C3053Z0();
        HashMap map = C3121d9.f2016c;
        Intrinsics.checkNotNullParameter(context, "context");
        WeakReference weakReference = C3121d9.f2017d;
        C3121d9 c3121d92 = weakReference != null ? (C3121d9) weakReference.get() : null;
        if (c3121d92 == null) {
            synchronized (C3121d9.class) {
                WeakReference weakReference2 = C3121d9.f2017d;
                if (weakReference2 == null || (c3121d9 = (C3121d9) weakReference2.get()) == null) {
                    c3121d9 = new C3121d9(context);
                    C3121d9.f2017d = new WeakReference(c3121d9);
                }
                Intrinsics.checkNotNull(c3121d9);
            }
            c3121d92 = c3121d9;
        }
        this.f2012m = c3121d92;
        this.f2015p = timerFinishListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.ViewGroup m2064a(android.view.ViewGroup r4, com.inmobi.media.C2800H7 r5) {
        /*
            r3 = this;
            java.lang.String r0 = "parent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "root"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.ref.WeakReference r0 = r3.f2008i
            java.lang.Object r0 = r0.get()
            android.content.Context r0 = (android.content.Context) r0
            if (r0 == 0) goto L23
            com.inmobi.media.d9 r1 = r3.f2012m
            com.inmobi.commons.core.configs.AdConfig r2 = r3.f2000a
            android.view.View r0 = r1.m2075a(r0, r5, r2)
            boolean r1 = r0 instanceof android.view.ViewGroup
            if (r1 == 0) goto L23
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            goto L24
        L23:
            r0 = 0
        L24:
            if (r0 != 0) goto L27
            goto L30
        L27:
            java.util.HashMap r1 = com.inmobi.media.C3121d9.f2016c
            android.view.ViewGroup$LayoutParams r4 = com.inmobi.media.C2891N8.m1397a(r5, r4)
            r0.setLayoutParams(r4)
        L30:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3120d8.m2064a(android.view.ViewGroup, com.inmobi.media.H7):android.view.ViewGroup");
    }

    /* JADX INFO: renamed from: b */
    public final void m2069b(View view, final C2740D7 c2740d7) {
        if (c2740d7.f924f) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.media.d8$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C3120d8.m2060a(this.f$0, c2740d7, view2);
                }
            });
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x012d, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual("UNKNOWN", r0.f2069y) != false) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x013d, code lost:
    
        if (r12.f923e == null) goto L205;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x015a  */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v33, types: [com.inmobi.media.C8, com.inmobi.media.D7] */
    /* JADX WARN: Type inference failed for: r0v99 */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r13v11, types: [android.view.TextureView, android.view.View, com.inmobi.media.L8] */
    /* JADX WARN: Type inference failed for: r13v2, types: [android.media.MediaMetadataRetriever] */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v41, types: [com.inmobi.media.A8] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17, types: [int] */
    /* JADX WARN: Type inference failed for: r3v54 */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.ViewGroup m2068b(android.view.ViewGroup r24, com.inmobi.media.C2800H7 r25) {
        /*
            Method dump skipped, instruction units count: 1115
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3120d8.m2068b(android.view.ViewGroup, com.inmobi.media.H7):android.view.ViewGroup");
    }

    /* JADX INFO: renamed from: a */
    public final C3210j8 m2066a(C3210j8 c3210j8, final ViewGroup parent, GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.f2014o = gestureDetectorOnGestureListenerC3049Ya;
        final C3210j8 c3210j8M2065a = m2065a(c3210j8, parent);
        this.f2007h.post(new Runnable() { // from class: com.inmobi.media.d8$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3120d8.m2061a(this.f$0, c3210j8M2065a, parent);
            }
        });
        return c3210j8M2065a;
    }

    /* JADX INFO: renamed from: a */
    public static final void m2061a(C3120d8 this$0, C3210j8 container, ViewGroup parent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(parent, "$parent");
        if (this$0.f2013n) {
            return;
        }
        C2800H7 root = this$0.f2002c.f1380e;
        if (container == null || root == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(root, "root");
        this$0.m2068b((ViewGroup) container, root);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.inmobi.media.C3210j8 m2065a(com.inmobi.media.C3210j8 r5, android.view.ViewGroup r6) {
        /*
            r4 = this;
            com.inmobi.media.P7 r0 = r4.f2002c
            com.inmobi.media.H7 r0 = r0.f1380e
            if (r5 != 0) goto L23
            java.lang.ref.WeakReference r1 = r4.f2008i
            java.lang.Object r1 = r1.get()
            android.content.Context r1 = (android.content.Context) r1
            if (r1 == 0) goto L21
            if (r0 == 0) goto L21
            com.inmobi.media.d9 r2 = r4.f2012m
            com.inmobi.commons.core.configs.AdConfig r3 = r4.f2000a
            android.view.View r1 = r2.m2075a(r1, r0, r3)
            boolean r2 = r1 instanceof com.inmobi.media.C3210j8
            if (r2 == 0) goto L21
            com.inmobi.media.j8 r1 = (com.inmobi.media.C3210j8) r1
            goto L24
        L21:
            r1 = 0
            goto L24
        L23:
            r1 = r5
        L24:
            if (r1 == 0) goto L61
            if (r5 == 0) goto L61
            android.view.ViewParent r5 = r1.getParent()
            boolean r2 = r5 instanceof android.view.ViewGroup
            if (r2 == 0) goto L35
            android.view.ViewGroup r5 = (android.view.ViewGroup) r5
            r5.removeView(r1)
        L35:
            com.inmobi.media.d9 r5 = r4.f2012m
            r5.getClass()
            java.lang.String r2 = "viewGroup"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r2)
            int r2 = r1.getChildCount()
            int r2 = r2 + (-1)
        L45:
            r3 = -1
            if (r3 >= r2) goto L58
            android.view.View r3 = r1.getChildAt(r2)
            r1.removeViewAt(r2)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            r5.m2076a(r3)
            int r2 = r2 + (-1)
            goto L45
        L58:
            if (r0 == 0) goto L61
            java.util.HashMap r5 = com.inmobi.media.C3121d9.f2016c
            com.inmobi.media.E7 r5 = r0.f922d
            com.inmobi.media.C2891N8.m1400a(r1, r5)
        L61:
            if (r0 == 0) goto L70
            com.inmobi.media.d9 r5 = r4.f2012m
            com.inmobi.media.E7 r2 = r0.f922d
            android.graphics.Point r2 = r2.f974a
            int r2 = r2.x
            r5.getClass()
            com.inmobi.media.C3121d9.f2020g = r2
        L70:
            if (r1 == 0) goto L7d
            if (r0 == 0) goto L7d
            java.util.HashMap r5 = com.inmobi.media.C3121d9.f2016c
            android.view.ViewGroup$LayoutParams r5 = com.inmobi.media.C2891N8.m1397a(r0, r6)
            r1.setLayoutParams(r5)
        L7d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3120d8.m2065a(com.inmobi.media.j8, android.view.ViewGroup):com.inmobi.media.j8");
    }

    /* JADX INFO: renamed from: b */
    public static final void m2063b(WeakReference childViewRef) {
        Intrinsics.checkNotNullParameter(childViewRef, "$childViewRef");
        View view = (View) childViewRef.get();
        if (view != null) {
            view.setVisibility(0);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2067a(View view, C2740D7 nativeAsset) {
        C3053Z0 c3053z0 = this.f2011l;
        c3053z0.getClass();
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(nativeAsset, "nativeAsset");
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        try {
            HashMap map = C3121d9.f2016c;
            float fM1396a = C2891N8.m1396a(nativeAsset.f922d.f976c.x);
            float fM1396a2 = C2891N8.m1396a(nativeAsset.f922d.f977d.x);
            if (fM1396a != fM1396a2) {
                arrayList.add(C3053Z0.m1994a(C3053Z0.m1993a(view, fM1396a, fM1396a2), nativeAsset));
            }
            float fM1396a3 = C2891N8.m1396a(nativeAsset.f922d.f976c.y);
            float fM1396a4 = C2891N8.m1396a(nativeAsset.f922d.f977d.y);
            if (fM1396a3 != fM1396a4) {
                arrayList.add(C3053Z0.m1994a(C3053Z0.m1996b(view, fM1396a3, fM1396a4), nativeAsset));
            }
            float fM1396a5 = C2891N8.m1396a(nativeAsset.f922d.f974a.x);
            float fM1396a6 = C2891N8.m1396a(nativeAsset.f922d.f975b.x);
            if (fM1396a5 != fM1396a6) {
                view.setPivotX(0.0f);
                view.setPivotY(0.0f);
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "scaleX", fM1396a6 / fM1396a5);
                Intrinsics.checkNotNullExpressionValue(objectAnimatorOfFloat, "ofFloat(...)");
                arrayList.add(C3053Z0.m1994a(objectAnimatorOfFloat, nativeAsset));
            }
            float fM1396a7 = C2891N8.m1396a(nativeAsset.f922d.f974a.y);
            float fM1396a8 = C2891N8.m1396a(nativeAsset.f922d.f975b.y);
            if (fM1396a7 != fM1396a8) {
                view.setPivotX(0.0f);
                view.setPivotY(0.0f);
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "scaleY", fM1396a8 / fM1396a7);
                Intrinsics.checkNotNullExpressionValue(objectAnimatorOfFloat2, "ofFloat(...)");
                arrayList.add(C3053Z0.m1994a(objectAnimatorOfFloat2, nativeAsset));
            }
        } catch (Exception unused) {
            String TAG = c3053z0.f1790a;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        Intrinsics.checkNotNullParameter("creativeView", "eventType");
        Iterator it = nativeAsset.f937s.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (Intrinsics.areEqual("creativeView", ((C3375u8) it.next()).f2662b)) {
                break;
            }
        }
        if (arrayList != null || z) {
            view.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC3046Y7(this, arrayList, nativeAsset));
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2062a(WeakReference childViewRef) {
        Intrinsics.checkNotNullParameter(childViewRef, "$childViewRef");
        View view = (View) childViewRef.get();
        if (view != null) {
            view.setVisibility(4);
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2060a(C3120d8 this$0, C2740D7 asset, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(asset, "$asset");
        C3004V7 c3004v7 = this$0.f2004e;
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        C3032X7 c3032x7 = c3004v7.f1594a;
        if (c3032x7.f1645a) {
            return;
        }
        c3032x7.f1646b.m2437a(view, asset);
        c3004v7.f1594a.f1646b.m2441a(asset, false);
    }
}
