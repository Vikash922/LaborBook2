package com.inmobi.media;

import android.view.View;
import com.facebook.internal.AnalyticsEvents;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.C4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2722C4 {

    /* JADX INFO: renamed from: k */
    public static final C3446z4 f870k = new C3446z4();

    /* JADX INFO: renamed from: a */
    public final byte f871a;

    /* JADX INFO: renamed from: b */
    public final String f872b;

    /* JADX INFO: renamed from: c */
    public final int f873c;

    /* JADX INFO: renamed from: d */
    public final int f874d;

    /* JADX INFO: renamed from: e */
    public final int f875e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC3147f5 f876f;

    /* JADX INFO: renamed from: g */
    public C2872M4 f877g;

    /* JADX INFO: renamed from: h */
    public C2767F4 f878h;

    /* JADX INFO: renamed from: i */
    public final LinkedHashMap f879i = new LinkedHashMap();

    /* JADX INFO: renamed from: j */
    public final C2692A4 f880j = new C2692A4(this);

    public C2722C4(byte b, String str, int i, int i2, int i3, InterfaceC3147f5 interfaceC3147f5) {
        this.f871a = b;
        this.f872b = str;
        this.f873c = i;
        this.f874d = i2;
        this.f875e = i3;
        this.f876f = interfaceC3147f5;
    }

    /* JADX INFO: renamed from: a */
    public final void m893a(View view) {
        C2872M4 c2872m4;
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC3147f5 interfaceC3147f5 = this.f876f;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("HtmlAdTracker", "stopTrackingForImpression");
        }
        if (Intrinsics.areEqual(this.f872b, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO) || Intrinsics.areEqual(this.f872b, "audio") || (c2872m4 = this.f877g) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(view, "view");
        c2872m4.f1248a.remove(view);
        c2872m4.f1249b.remove(view);
        c2872m4.f1250c.m2626a(view);
        if (c2872m4.f1248a.isEmpty()) {
            InterfaceC3147f5 interfaceC3147f52 = this.f876f;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2147a("HtmlAdTracker", "Impression tracker is free, removing it");
            }
            C2872M4 c2872m42 = this.f877g;
            if (c2872m42 != null) {
                c2872m42.f1248a.clear();
                c2872m42.f1249b.clear();
                c2872m42.f1250c.m2625a();
                c2872m42.f1252e.removeMessages(0);
                c2872m42.f1250c.mo2546b();
            }
            this.f877g = null;
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m895b(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC3147f5 interfaceC3147f5 = this.f876f;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("HtmlAdTracker", "stopTrackingForVisibility");
        }
        C2767F4 c2767f4 = this.f878h;
        if (c2767f4 != null) {
            c2767f4.m2626a(view);
            if (c2767f4.f2773a.isEmpty()) {
                InterfaceC3147f5 interfaceC3147f52 = this.f876f;
                if (interfaceC3147f52 != null) {
                    ((C3162g5) interfaceC3147f52).m2147a("HtmlAdTracker", "Visibility tracker is free, removing it");
                }
                C2767F4 c2767f42 = this.f878h;
                if (c2767f42 != null) {
                    c2767f42.mo2546b();
                }
                this.f878h = null;
            }
        }
        this.f879i.remove(view);
    }

    /* JADX INFO: renamed from: b */
    public final void m894b() {
        InterfaceC3147f5 interfaceC3147f5 = this.f876f;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("HtmlAdTracker", "onActivityStopped");
        }
        C2872M4 c2872m4 = this.f877g;
        if (c2872m4 != null) {
            String TAG = c2872m4.f1251d;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            c2872m4.f1250c.m2625a();
            c2872m4.f1252e.removeCallbacksAndMessages(null);
            c2872m4.f1249b.clear();
        }
        C2767F4 c2767f4 = this.f878h;
        if (c2767f4 != null) {
            c2767f4.mo2547e();
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m892a() {
        InterfaceC3147f5 interfaceC3147f5 = this.f876f;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("HtmlAdTracker", "onActivityStarted");
        }
        C2872M4 c2872m4 = this.f877g;
        if (c2872m4 != null) {
            String TAG = c2872m4.f1251d;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            for (Map.Entry entry : c2872m4.f1248a.entrySet()) {
                View view = (View) entry.getKey();
                C2842K4 c2842k4 = (C2842K4) entry.getValue();
                c2872m4.f1250c.m2627a(view, c2842k4.f1157a, c2842k4.f1158b);
            }
            if (!c2872m4.f1252e.hasMessages(0)) {
                c2872m4.f1252e.postDelayed(c2872m4.f1253f, c2872m4.f1254g);
            }
            c2872m4.f1250c.mo2548f();
        }
        C2767F4 c2767f4 = this.f878h;
        if (c2767f4 != null) {
            c2767f4.mo2548f();
        }
    }
}
