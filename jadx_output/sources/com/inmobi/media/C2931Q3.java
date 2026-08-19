package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Q3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2931Q3 extends RelativeLayout {

    /* JADX INFO: renamed from: a */
    public final Activity f1461a;

    /* JADX INFO: renamed from: b */
    public int f1462b;

    /* JADX INFO: renamed from: c */
    public C3042Y3 f1463c;

    /* JADX INFO: renamed from: d */
    public InterfaceC2972T3 f1464d;

    /* JADX INFO: renamed from: e */
    public InterfaceC3009Vc f1465e;

    /* JADX INFO: renamed from: f */
    public InterfaceC3147f5 f1466f;

    /* JADX INFO: renamed from: g */
    public C2926Pd f1467g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2931Q3(Activity activity) {
        super(activity);
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f1461a = activity;
        this.f1462b = -1;
    }

    /* JADX INFO: renamed from: a */
    public final void m1717a(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        C3355t3 c3355t3 = new C3355t3(context, (byte) 4, this.f1466f);
        c3355t3.setId(65503);
        c3355t3.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.media.Q3$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return C2931Q3.m1713a(this.f$0, view, motionEvent);
            }
        });
        linearLayout.addView(c3355t3, layoutParams);
    }

    /* JADX INFO: renamed from: b */
    public final void m1718b(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        C3355t3 c3355t3 = new C3355t3(context, (byte) 2, this.f1466f);
        c3355t3.setId(65516);
        c3355t3.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.media.Q3$$ExternalSyntheticLambda2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return C2931Q3.m1714b(this.f$0, view, motionEvent);
            }
        });
        linearLayout.addView(c3355t3, layoutParams);
    }

    /* JADX INFO: renamed from: c */
    public final void m1719c(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        C3355t3 c3355t3 = new C3355t3(context, (byte) 6, this.f1466f);
        c3355t3.setId(1048283);
        c3355t3.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.media.Q3$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return C2931Q3.m1715c(this.f$0, view, motionEvent);
            }
        });
        linearLayout.addView(c3355t3, layoutParams);
    }

    /* JADX INFO: renamed from: d */
    public final void m1720d(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        C3355t3 c3355t3 = new C3355t3(context, (byte) 3, this.f1466f);
        c3355t3.setId(65502);
        c3355t3.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.media.Q3$$ExternalSyntheticLambda3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return C2931Q3.m1716d(this.f$0, view, motionEvent);
            }
        });
        linearLayout.addView(c3355t3, layoutParams);
    }

    public final InterfaceC3009Vc getUserLeftApplicationListener() {
        return this.f1465e;
    }

    public final void setEmbeddedBrowserUpdateListener(InterfaceC2972T3 browserUpdateListener) {
        Intrinsics.checkNotNullParameter(browserUpdateListener, "browserUpdateListener");
        this.f1464d = browserUpdateListener;
    }

    public final void setLogger(InterfaceC3147f5 logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.f1466f = logger;
    }

    public final void setUserLeftApplicationListener(InterfaceC3009Vc interfaceC3009Vc) {
        this.f1465e = interfaceC3009Vc;
    }

    /* JADX INFO: renamed from: b */
    public static final boolean m1714b(C2931Q3 this$0, View view, MotionEvent motionEvent) {
        C2986U3 c2986u3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            C3042Y3 c3042y3 = this$0.f1463c;
            if (c3042y3 != null && (c2986u3 = c3042y3.f1673g) != null) {
                C2986U3.m1833a(c2986u3, 5, true, null, 12);
            }
            InterfaceC2972T3 interfaceC2972T3 = this$0.f1464d;
            if (interfaceC2972T3 != null) {
                C2917P4.m1455a(((C2902O4) interfaceC2972T3).f1333a);
            }
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }

    /* JADX INFO: renamed from: d */
    public static final boolean m1716d(C2931Q3 this$0, View view, MotionEvent motionEvent) {
        C2986U3 c2986u3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            C3042Y3 c3042y3 = this$0.f1463c;
            if (c3042y3 != null && (c2986u3 = c3042y3.f1673g) != null) {
                C2986U3.m1833a(c2986u3, 6, true, null, 12);
            }
            C3042Y3 c3042y32 = this$0.f1463c;
            if (c3042y32 != null) {
                c3042y32.reload();
            }
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }

    /* JADX INFO: renamed from: c */
    public static final boolean m1715c(C2931Q3 this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C3042Y3 c3042y3 = this$0.f1463c;
        if (c3042y3 == null) {
            return true;
        }
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            if (c3042y3.canGoForward()) {
                c3042y3.goForward();
            }
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }

    /* JADX INFO: renamed from: a */
    public static final boolean m1713a(C2931Q3 this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C3042Y3 c3042y3 = this$0.f1463c;
        if (c3042y3 == null) {
            InterfaceC2972T3 interfaceC2972T3 = this$0.f1464d;
            if (interfaceC2972T3 != null) {
                C2917P4.m1455a(((C2902O4) interfaceC2972T3).f1333a);
            }
            return true;
        }
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            if (c3042y3.canGoBack()) {
                c3042y3.goBack();
            } else {
                InterfaceC2972T3 interfaceC2972T32 = this$0.f1464d;
                if (interfaceC2972T32 != null) {
                    C2917P4.m1455a(((C2902O4) interfaceC2972T32).f1333a);
                }
            }
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }
}
