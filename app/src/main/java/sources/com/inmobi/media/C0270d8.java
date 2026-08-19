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

/* JADX INFO: renamed from: com.inmobi.media.d8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0270d8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AdConfig f332a;
    public final C0511t7 b;
    public final P7 c;
    public final W7 d;
    public final V7 e;
    public final InterfaceC0298f5 f;
    public final String g;
    public final Handler h;
    public final WeakReference i;
    public InterfaceC0396l8 j;
    public int k;
    public final Z0 l;
    public final C0271d9 m;
    public boolean n;
    public Ya o;
    public X7 p;

    public C0270d8(Context context, AdConfig adConfig, C0511t7 nativeAdContainer, P7 dataModel, W7 viewEventListener, V7 clickEventListener, X7 timerFinishListener, InterfaceC0298f5 interfaceC0298f5) {
        C0271d9 c0271d9;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(nativeAdContainer, "nativeAdContainer");
        Intrinsics.checkNotNullParameter(dataModel, "dataModel");
        Intrinsics.checkNotNullParameter(viewEventListener, "viewEventListener");
        Intrinsics.checkNotNullParameter(clickEventListener, "clickEventListener");
        Intrinsics.checkNotNullParameter(timerFinishListener, "timerFinishListener");
        this.f332a = adConfig;
        this.b = nativeAdContainer;
        this.c = dataModel;
        this.d = viewEventListener;
        this.e = clickEventListener;
        this.f = interfaceC0298f5;
        this.g = "d8";
        this.h = new Handler(Looper.getMainLooper());
        this.i = new WeakReference(context);
        this.l = new Z0();
        HashMap map = C0271d9.c;
        Intrinsics.checkNotNullParameter(context, "context");
        WeakReference weakReference = C0271d9.d;
        C0271d9 c0271d92 = weakReference != null ? (C0271d9) weakReference.get() : null;
        if (c0271d92 == null) {
            synchronized (C0271d9.class) {
                WeakReference weakReference2 = C0271d9.d;
                if (weakReference2 == null || (c0271d9 = (C0271d9) weakReference2.get()) == null) {
                    c0271d9 = new C0271d9(context);
                    C0271d9.d = new WeakReference(c0271d9);
                }
                Intrinsics.checkNotNull(c0271d9);
            }
            c0271d92 = c0271d9;
        }
        this.m = c0271d92;
        this.p = timerFinishListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.ViewGroup a(android.view.ViewGroup r4, com.inmobi.media.H7 r5) {
        /*
            r3 = this;
            java.lang.String r0 = "parent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "root"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.ref.WeakReference r0 = r3.i
            java.lang.Object r0 = r0.get()
            android.content.Context r0 = (android.content.Context) r0
            if (r0 == 0) goto L23
            com.inmobi.media.d9 r1 = r3.m
            com.inmobi.commons.core.configs.AdConfig r2 = r3.f332a
            android.view.View r0 = r1.a(r0, r5, r2)
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
            java.util.HashMap r1 = com.inmobi.media.C0271d9.c
            android.view.ViewGroup$LayoutParams r4 = com.inmobi.media.N8.a(r5, r4)
            r0.setLayoutParams(r4)
        L30:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0270d8.a(android.view.ViewGroup, com.inmobi.media.H7):android.view.ViewGroup");
    }

    public final void b(View view, final D7 d7) {
        if (d7.f) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.media.d8$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C0270d8.a(this.f$0, d7, view2);
                }
            });
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x012d, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual("UNKNOWN", r0.y) != false) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x013d, code lost:
    
        if (r12.e == null) goto L205;
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.ViewGroup b(android.view.ViewGroup r24, com.inmobi.media.H7 r25) {
        /*
            Method dump skipped, instruction units count: 1115
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0270d8.b(android.view.ViewGroup, com.inmobi.media.H7):android.view.ViewGroup");
    }

    public final C0365j8 a(C0365j8 c0365j8, final ViewGroup parent, Ya ya) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.o = ya;
        final C0365j8 c0365j8A = a(c0365j8, parent);
        this.h.post(new Runnable() { // from class: com.inmobi.media.d8$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0270d8.a(this.f$0, c0365j8A, parent);
            }
        });
        return c0365j8A;
    }

    public static final void a(C0270d8 this$0, C0365j8 container, ViewGroup parent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(parent, "$parent");
        if (this$0.n) {
            return;
        }
        H7 root = this$0.c.e;
        if (container == null || root == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(root, "root");
        this$0.b((ViewGroup) container, root);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.inmobi.media.C0365j8 a(com.inmobi.media.C0365j8 r5, android.view.ViewGroup r6) {
        /*
            r4 = this;
            com.inmobi.media.P7 r0 = r4.c
            com.inmobi.media.H7 r0 = r0.e
            if (r5 != 0) goto L23
            java.lang.ref.WeakReference r1 = r4.i
            java.lang.Object r1 = r1.get()
            android.content.Context r1 = (android.content.Context) r1
            if (r1 == 0) goto L21
            if (r0 == 0) goto L21
            com.inmobi.media.d9 r2 = r4.m
            com.inmobi.commons.core.configs.AdConfig r3 = r4.f332a
            android.view.View r1 = r2.a(r1, r0, r3)
            boolean r2 = r1 instanceof com.inmobi.media.C0365j8
            if (r2 == 0) goto L21
            com.inmobi.media.j8 r1 = (com.inmobi.media.C0365j8) r1
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
            com.inmobi.media.d9 r5 = r4.m
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
            r5.a(r3)
            int r2 = r2 + (-1)
            goto L45
        L58:
            if (r0 == 0) goto L61
            java.util.HashMap r5 = com.inmobi.media.C0271d9.c
            com.inmobi.media.E7 r5 = r0.d
            com.inmobi.media.N8.a(r1, r5)
        L61:
            if (r0 == 0) goto L70
            com.inmobi.media.d9 r5 = r4.m
            com.inmobi.media.E7 r2 = r0.d
            android.graphics.Point r2 = r2.f107a
            int r2 = r2.x
            r5.getClass()
            com.inmobi.media.C0271d9.g = r2
        L70:
            if (r1 == 0) goto L7d
            if (r0 == 0) goto L7d
            java.util.HashMap r5 = com.inmobi.media.C0271d9.c
            android.view.ViewGroup$LayoutParams r5 = com.inmobi.media.N8.a(r0, r6)
            r1.setLayoutParams(r5)
        L7d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0270d8.a(com.inmobi.media.j8, android.view.ViewGroup):com.inmobi.media.j8");
    }

    public static final void b(WeakReference childViewRef) {
        Intrinsics.checkNotNullParameter(childViewRef, "$childViewRef");
        View view = (View) childViewRef.get();
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public final void a(View view, D7 nativeAsset) {
        Z0 z0 = this.l;
        z0.getClass();
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(nativeAsset, "nativeAsset");
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        try {
            HashMap map = C0271d9.c;
            float fA = N8.a(nativeAsset.d.c.x);
            float fA2 = N8.a(nativeAsset.d.d.x);
            if (fA != fA2) {
                arrayList.add(Z0.a(Z0.a(view, fA, fA2), nativeAsset));
            }
            float fA3 = N8.a(nativeAsset.d.c.y);
            float fA4 = N8.a(nativeAsset.d.d.y);
            if (fA3 != fA4) {
                arrayList.add(Z0.a(Z0.b(view, fA3, fA4), nativeAsset));
            }
            float fA5 = N8.a(nativeAsset.d.f107a.x);
            float fA6 = N8.a(nativeAsset.d.b.x);
            if (fA5 != fA6) {
                view.setPivotX(0.0f);
                view.setPivotY(0.0f);
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "scaleX", fA6 / fA5);
                Intrinsics.checkNotNullExpressionValue(objectAnimatorOfFloat, "ofFloat(...)");
                arrayList.add(Z0.a(objectAnimatorOfFloat, nativeAsset));
            }
            float fA7 = N8.a(nativeAsset.d.f107a.y);
            float fA8 = N8.a(nativeAsset.d.b.y);
            if (fA7 != fA8) {
                view.setPivotX(0.0f);
                view.setPivotY(0.0f);
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "scaleY", fA8 / fA7);
                Intrinsics.checkNotNullExpressionValue(objectAnimatorOfFloat2, "ofFloat(...)");
                arrayList.add(Z0.a(objectAnimatorOfFloat2, nativeAsset));
            }
        } catch (Exception unused) {
            String TAG = z0.f291a;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        Intrinsics.checkNotNullParameter("creativeView", "eventType");
        Iterator it = nativeAsset.s.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (Intrinsics.areEqual("creativeView", ((C0526u8) it.next()).b)) {
                break;
            }
        }
        if (arrayList != null || z) {
            view.addOnAttachStateChangeListener(new Y7(this, arrayList, nativeAsset));
        }
    }

    public static final void a(WeakReference childViewRef) {
        Intrinsics.checkNotNullParameter(childViewRef, "$childViewRef");
        View view = (View) childViewRef.get();
        if (view != null) {
            view.setVisibility(4);
        }
    }

    public static final void a(C0270d8 this$0, D7 asset, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(asset, "$asset");
        V7 v7 = this$0.e;
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        X7 x7 = v7.f263a;
        if (x7.f279a) {
            return;
        }
        x7.b.a(view, asset);
        v7.f263a.b.a(asset, false);
    }
}
