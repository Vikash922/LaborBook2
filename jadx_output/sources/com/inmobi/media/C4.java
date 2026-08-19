package com.inmobi.media;

import android.view.View;
import com.facebook.internal.AnalyticsEvents;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class C4 {
    public static final C0594z4 k = new C0594z4();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte f89a;
    public final String b;
    public final int c;
    public final int d;
    public final int e;
    public final InterfaceC0298f5 f;
    public M4 g;
    public F4 h;
    public final LinkedHashMap i = new LinkedHashMap();
    public final A4 j = new A4(this);

    public C4(byte b, String str, int i, int i2, int i3, InterfaceC0298f5 interfaceC0298f5) {
        this.f89a = b;
        this.b = str;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = interfaceC0298f5;
    }

    public final void a(View view) {
        M4 m4;
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("HtmlAdTracker", "stopTrackingForImpression");
        }
        if (Intrinsics.areEqual(this.b, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO) || Intrinsics.areEqual(this.b, "audio") || (m4 = this.g) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(view, "view");
        m4.f177a.remove(view);
        m4.b.remove(view);
        m4.c.a(view);
        if (m4.f177a.isEmpty()) {
            InterfaceC0298f5 interfaceC0298f52 = this.f;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).a("HtmlAdTracker", "Impression tracker is free, removing it");
            }
            M4 m42 = this.g;
            if (m42 != null) {
                m42.f177a.clear();
                m42.b.clear();
                m42.c.a();
                m42.e.removeMessages(0);
                m42.c.b();
            }
            this.g = null;
        }
    }

    public final void b(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("HtmlAdTracker", "stopTrackingForVisibility");
        }
        F4 f4 = this.h;
        if (f4 != null) {
            f4.a(view);
            if (f4.f540a.isEmpty()) {
                InterfaceC0298f5 interfaceC0298f52 = this.f;
                if (interfaceC0298f52 != null) {
                    ((C0314g5) interfaceC0298f52).a("HtmlAdTracker", "Visibility tracker is free, removing it");
                }
                F4 f42 = this.h;
                if (f42 != null) {
                    f42.b();
                }
                this.h = null;
            }
        }
        this.i.remove(view);
    }

    public final void b() {
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("HtmlAdTracker", "onActivityStopped");
        }
        M4 m4 = this.g;
        if (m4 != null) {
            String TAG = m4.d;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            m4.c.a();
            m4.e.removeCallbacksAndMessages(null);
            m4.b.clear();
        }
        F4 f4 = this.h;
        if (f4 != null) {
            f4.e();
        }
    }

    public final void a() {
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("HtmlAdTracker", "onActivityStarted");
        }
        M4 m4 = this.g;
        if (m4 != null) {
            String TAG = m4.d;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            for (Map.Entry entry : m4.f177a.entrySet()) {
                View view = (View) entry.getKey();
                K4 k4 = (K4) entry.getValue();
                m4.c.a(view, k4.f156a, k4.b);
            }
            if (!m4.e.hasMessages(0)) {
                m4.e.postDelayed(m4.f, m4.g);
            }
            m4.c.f();
        }
        F4 f4 = this.h;
        if (f4 != null) {
            f4.f();
        }
    }
}
