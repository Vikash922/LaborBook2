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

/* JADX INFO: renamed from: com.inmobi.media.z7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0597z7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte f547a;
    public final InterfaceC0298f5 b;
    public final String c = "z7";
    public final WeakHashMap d = new WeakHashMap();
    public final WeakHashMap e = new WeakHashMap();
    public final LinkedHashMap f = new LinkedHashMap();
    public final C0553w7 g = new C0553w7();
    public final C0581y7 h = new C0581y7(this);
    public final C0567x7 i = new C0567x7();

    public C0597z7(byte b, InterfaceC0298f5 interfaceC0298f5) {
        this.f547a = b;
        this.b = interfaceC0298f5;
    }

    public final void a(Context context, View view, C0511t7 token, AdConfig.ViewabilityConfig viewabilityConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(viewabilityConfig, "viewabilityConfig");
        M4 m4 = (M4) this.d.get(context);
        if (m4 == null) {
            m4 = context instanceof Activity ? new M4(viewabilityConfig, new C0549w3(this.i, (Activity) context, this.b), this.g) : new M4(viewabilityConfig, new T9(this.i, viewabilityConfig, (byte) 1, this.b), this.g);
            this.d.put(context, m4);
        }
        byte b = this.f547a;
        if (b == 0) {
            m4.a(view, token, viewabilityConfig.getVideoImpressionMinPercentageViewed(), viewabilityConfig.getVideoImpressionMinTimeViewed());
        } else if (b == 1) {
            m4.a(view, token, viewabilityConfig.getImpressionMinPercentageViewed(), viewabilityConfig.getImpressionMinTimeViewed());
        } else {
            m4.a(view, token, viewabilityConfig.getImpressionMinPercentageViewed(), viewabilityConfig.getImpressionMinTimeViewed());
        }
    }

    public final void a(Context context, C0511t7 token) {
        View view;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(token, "token");
        M4 m4 = (M4) this.d.get(context);
        if (m4 != null) {
            Intrinsics.checkNotNullParameter(token, "token");
            Iterator it = m4.f177a.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    view = null;
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (Intrinsics.areEqual(((K4) entry.getValue()).f156a, token)) {
                    view = (View) entry.getKey();
                    break;
                }
            }
            if (view != null) {
                Intrinsics.checkNotNullParameter(view, "view");
                m4.f177a.remove(view);
                m4.b.remove(view);
                m4.c.a(view);
            }
            if (m4.f177a.isEmpty()) {
                InterfaceC0298f5 interfaceC0298f5 = this.b;
                if (interfaceC0298f5 != null) {
                    String TAG = this.c;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).a(TAG, "Impression tracker is free, removing it");
                }
                M4 m42 = (M4) this.d.remove(context);
                if (m42 != null) {
                    m42.f177a.clear();
                    m42.b.clear();
                    m42.c.a();
                    m42.e.removeMessages(0);
                    m42.c.b();
                }
                if (context instanceof Activity) {
                    this.d.isEmpty();
                }
            }
        }
    }

    public final void a(Context context, View view, C0511t7 token) {
        View view2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(token, "token");
        yd ydVar = (yd) this.e.get(context);
        if (ydVar != null) {
            if (token != null) {
                Iterator it = ydVar.f540a.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        view2 = null;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    if (Intrinsics.areEqual(((vd) entry.getValue()).d, token)) {
                        view2 = (View) entry.getKey();
                        break;
                    }
                }
                if (view2 != null) {
                    ydVar.a(view2);
                }
            }
            if (ydVar.f540a.isEmpty()) {
                InterfaceC0298f5 interfaceC0298f5 = this.b;
                if (interfaceC0298f5 != null) {
                    String TAG = this.c;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).a(TAG, "Impression tracker is free, removing it");
                }
                yd ydVar2 = (yd) this.e.remove(context);
                if (ydVar2 != null) {
                    ydVar2.b();
                }
                if (context instanceof Activity) {
                    this.e.isEmpty();
                }
            }
        }
        this.f.remove(view);
    }

    public final void a(Context context, View view, C0511t7 token, rd listener, AdConfig.ViewabilityConfig config) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(config, "config");
        yd t9 = (yd) this.e.get(context);
        if (t9 == null) {
            if (context instanceof Activity) {
                t9 = new C0549w3(this.i, (Activity) context, this.b);
            } else {
                t9 = new T9(this.i, config, (byte) 1, this.b);
            }
            C0581y7 c0581y7 = this.h;
            InterfaceC0298f5 interfaceC0298f5 = t9.e;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).c("VisibilityTracker", "setVisibilityTrackerListener logger");
            }
            t9.j = c0581y7;
            this.e.put(context, t9);
        }
        this.f.put(view, listener);
        byte b = this.f547a;
        if (b == 0) {
            t9.a(view, token, config.getVideoMinPercentagePlay());
        } else if (b == 1) {
            t9.a(view, token, config.getDisplayMinPercentageAnimate());
        } else {
            t9.a(view, token, config.getDisplayMinPercentageAnimate());
        }
    }
}
