package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.z7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3449z7 {

    /* JADX INFO: renamed from: a */
    public final byte f2797a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC3147f5 f2798b;

    /* JADX INFO: renamed from: c */
    public final String f2799c = "z7";

    /* JADX INFO: renamed from: d */
    public final WeakHashMap f2800d = new WeakHashMap();

    /* JADX INFO: renamed from: e */
    public final WeakHashMap f2801e = new WeakHashMap();

    /* JADX INFO: renamed from: f */
    public final LinkedHashMap f2802f = new LinkedHashMap();

    /* JADX INFO: renamed from: g */
    public final C3404w7 f2803g = new C3404w7();

    /* JADX INFO: renamed from: h */
    public final C3434y7 f2804h = new C3434y7(this);

    /* JADX INFO: renamed from: i */
    public final C3419x7 f2805i = new C3419x7();

    public C3449z7(byte b, InterfaceC3147f5 interfaceC3147f5) {
        this.f2797a = b;
        this.f2798b = interfaceC3147f5;
    }

    /* JADX INFO: renamed from: a */
    public final void m2635a(Context context, View view, C3359t7 token, AdConfig.ViewabilityConfig viewabilityConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(viewabilityConfig, "viewabilityConfig");
        C2872M4 c2872m4 = (C2872M4) this.f2800d.get(context);
        if (c2872m4 == null) {
            c2872m4 = context instanceof Activity ? new C2872M4(viewabilityConfig, new C3400w3(this.f2805i, (Activity) context, this.f2798b), this.f2803g) : new C2872M4(viewabilityConfig, new C2978T9(this.f2805i, viewabilityConfig, (byte) 1, this.f2798b), this.f2803g);
            this.f2800d.put(context, c2872m4);
        }
        byte b = this.f2797a;
        if (b == 0) {
            c2872m4.m1335a(view, token, viewabilityConfig.getVideoImpressionMinPercentageViewed(), viewabilityConfig.getVideoImpressionMinTimeViewed());
        } else if (b == 1) {
            c2872m4.m1335a(view, token, viewabilityConfig.getImpressionMinPercentageViewed(), viewabilityConfig.getImpressionMinTimeViewed());
        } else {
            c2872m4.m1335a(view, token, viewabilityConfig.getImpressionMinPercentageViewed(), viewabilityConfig.getImpressionMinTimeViewed());
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2637a(Context context, C3359t7 token) {
        View view;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(token, "token");
        C2872M4 c2872m4 = (C2872M4) this.f2800d.get(context);
        if (c2872m4 != null) {
            Intrinsics.checkNotNullParameter(token, "token");
            Iterator it = c2872m4.f1248a.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    view = null;
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (Intrinsics.areEqual(((C2842K4) entry.getValue()).f1157a, token)) {
                    view = (View) entry.getKey();
                    break;
                }
            }
            if (view != null) {
                Intrinsics.checkNotNullParameter(view, "view");
                c2872m4.f1248a.remove(view);
                c2872m4.f1249b.remove(view);
                c2872m4.f1250c.m2626a(view);
            }
            if (c2872m4.f1248a.isEmpty()) {
                InterfaceC3147f5 interfaceC3147f5 = this.f2798b;
                if (interfaceC3147f5 != null) {
                    String TAG = this.f2799c;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2147a(TAG, "Impression tracker is free, removing it");
                }
                C2872M4 c2872m42 = (C2872M4) this.f2800d.remove(context);
                if (c2872m42 != null) {
                    c2872m42.f1248a.clear();
                    c2872m42.f1249b.clear();
                    c2872m42.f1250c.m2625a();
                    c2872m42.f1252e.removeMessages(0);
                    c2872m42.f1250c.mo2546b();
                }
                if (context instanceof Activity) {
                    this.f2800d.isEmpty();
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2634a(Context context, View view, C3359t7 token) {
        View view2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(token, "token");
        AbstractC3440yd abstractC3440yd = (AbstractC3440yd) this.f2801e.get(context);
        if (abstractC3440yd != null) {
            if (token != null) {
                Iterator it = abstractC3440yd.f2773a.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        view2 = null;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    if (Intrinsics.areEqual(((C3395vd) entry.getValue()).f2695d, token)) {
                        view2 = (View) entry.getKey();
                        break;
                    }
                }
                if (view2 != null) {
                    abstractC3440yd.m2626a(view2);
                }
            }
            if (abstractC3440yd.f2773a.isEmpty()) {
                InterfaceC3147f5 interfaceC3147f5 = this.f2798b;
                if (interfaceC3147f5 != null) {
                    String TAG = this.f2799c;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2147a(TAG, "Impression tracker is free, removing it");
                }
                AbstractC3440yd abstractC3440yd2 = (AbstractC3440yd) this.f2801e.remove(context);
                if (abstractC3440yd2 != null) {
                    abstractC3440yd2.mo2546b();
                }
                if (context instanceof Activity) {
                    this.f2801e.isEmpty();
                }
            }
        }
        this.f2802f.remove(view);
    }

    /* JADX INFO: renamed from: a */
    public final void m2636a(Context context, View view, C3359t7 token, InterfaceC3335rd listener, AdConfig.ViewabilityConfig config) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(config, "config");
        AbstractC3440yd c2978t9 = (AbstractC3440yd) this.f2801e.get(context);
        if (c2978t9 == null) {
            if (context instanceof Activity) {
                c2978t9 = new C3400w3(this.f2805i, (Activity) context, this.f2798b);
            } else {
                c2978t9 = new C2978T9(this.f2805i, config, (byte) 1, this.f2798b);
            }
            C3434y7 c3434y7 = this.f2804h;
            InterfaceC3147f5 interfaceC3147f5 = c2978t9.f2777e;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2152c("VisibilityTracker", "setVisibilityTrackerListener logger");
            }
            c2978t9.f2782j = c3434y7;
            this.f2801e.put(context, c2978t9);
        }
        this.f2802f.put(view, listener);
        byte b = this.f2797a;
        if (b == 0) {
            c2978t9.m2627a(view, token, config.getVideoMinPercentagePlay());
        } else if (b == 1) {
            c2978t9.m2627a(view, token, config.getDisplayMinPercentageAnimate());
        } else {
            c2978t9.m2627a(view, token, config.getDisplayMinPercentageAnimate());
        }
    }
}
