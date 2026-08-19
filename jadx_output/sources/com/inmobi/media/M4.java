package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.WeakHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class M4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakHashMap f177a;
    public final WeakHashMap b;
    public final yd c;
    public final String d;
    public final Handler e;
    public final L4 f;
    public final long g;
    public final J4 h;

    public M4(AdConfig.ViewabilityConfig viewabilityConfig, yd visibilityTracker, J4 listener) {
        Intrinsics.checkNotNullParameter(viewabilityConfig, "viewabilityConfig");
        Intrinsics.checkNotNullParameter(visibilityTracker, "visibilityTracker");
        Intrinsics.checkNotNullParameter(listener, "listener");
        WeakHashMap weakHashMap = new WeakHashMap();
        WeakHashMap weakHashMap2 = new WeakHashMap();
        Handler handler = new Handler(Looper.getMainLooper());
        this.f177a = weakHashMap;
        this.b = weakHashMap2;
        this.c = visibilityTracker;
        this.d = "M4";
        this.g = viewabilityConfig.getImpressionPollIntervalMillis();
        I4 i4 = new I4(this);
        InterfaceC0298f5 interfaceC0298f5 = visibilityTracker.e;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("VisibilityTracker", "setVisibilityTrackerListener logger");
        }
        visibilityTracker.j = i4;
        this.e = handler;
        this.f = new L4(this);
        this.h = listener;
    }

    public final void a(View view, Object token, int i, int i2) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(token, "token");
        K4 k4 = (K4) this.f177a.get(view);
        if (Intrinsics.areEqual(k4 != null ? k4.f156a : null, token)) {
            return;
        }
        a(view);
        this.f177a.put(view, new K4(token, i, i2));
        this.c.a(view, token, i);
    }

    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f177a.remove(view);
        this.b.remove(view);
        this.c.a(view);
    }
}
