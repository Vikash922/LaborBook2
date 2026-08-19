package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.WeakHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.M4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2872M4 {

    /* JADX INFO: renamed from: a */
    public final WeakHashMap f1248a;

    /* JADX INFO: renamed from: b */
    public final WeakHashMap f1249b;

    /* JADX INFO: renamed from: c */
    public final AbstractC3440yd f1250c;

    /* JADX INFO: renamed from: d */
    public final String f1251d;

    /* JADX INFO: renamed from: e */
    public final Handler f1252e;

    /* JADX INFO: renamed from: f */
    public final RunnableC2857L4 f1253f;

    /* JADX INFO: renamed from: g */
    public final long f1254g;

    /* JADX INFO: renamed from: h */
    public final InterfaceC2827J4 f1255h;

    public C2872M4(AdConfig.ViewabilityConfig viewabilityConfig, AbstractC3440yd visibilityTracker, InterfaceC2827J4 listener) {
        Intrinsics.checkNotNullParameter(viewabilityConfig, "viewabilityConfig");
        Intrinsics.checkNotNullParameter(visibilityTracker, "visibilityTracker");
        Intrinsics.checkNotNullParameter(listener, "listener");
        WeakHashMap weakHashMap = new WeakHashMap();
        WeakHashMap weakHashMap2 = new WeakHashMap();
        Handler handler = new Handler(Looper.getMainLooper());
        this.f1248a = weakHashMap;
        this.f1249b = weakHashMap2;
        this.f1250c = visibilityTracker;
        this.f1251d = "M4";
        this.f1254g = viewabilityConfig.getImpressionPollIntervalMillis();
        C2812I4 c2812i4 = new C2812I4(this);
        InterfaceC3147f5 interfaceC3147f5 = visibilityTracker.f2777e;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("VisibilityTracker", "setVisibilityTrackerListener logger");
        }
        visibilityTracker.f2782j = c2812i4;
        this.f1252e = handler;
        this.f1253f = new RunnableC2857L4(this);
        this.f1255h = listener;
    }

    /* JADX INFO: renamed from: a */
    public final void m1335a(View view, Object token, int i, int i2) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(token, "token");
        C2842K4 c2842k4 = (C2842K4) this.f1248a.get(view);
        if (Intrinsics.areEqual(c2842k4 != null ? c2842k4.f1157a : null, token)) {
            return;
        }
        m1334a(view);
        this.f1248a.put(view, new C2842K4(token, i, i2));
        this.f1250c.m2627a(view, token, i);
    }

    /* JADX INFO: renamed from: a */
    public final void m1334a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f1248a.remove(view);
        this.f1249b.remove(view);
        this.f1250c.m2626a(view);
    }
}
