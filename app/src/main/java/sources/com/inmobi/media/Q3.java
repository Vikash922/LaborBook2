package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Q3 extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Activity f221a;
    public int b;
    public Y3 c;
    public T3 d;
    public Vc e;
    public InterfaceC0298f5 f;
    public Pd g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q3(Activity activity) {
        super(activity);
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f221a = activity;
        this.b = -1;
    }

    public final void a(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        C0507t3 c0507t3 = new C0507t3(context, (byte) 4, this.f);
        c0507t3.setId(65503);
        c0507t3.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.media.Q3$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return Q3.a(this.f$0, view, motionEvent);
            }
        });
        linearLayout.addView(c0507t3, layoutParams);
    }

    public final void b(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        C0507t3 c0507t3 = new C0507t3(context, (byte) 2, this.f);
        c0507t3.setId(65516);
        c0507t3.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.media.Q3$$ExternalSyntheticLambda2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return Q3.b(this.f$0, view, motionEvent);
            }
        });
        linearLayout.addView(c0507t3, layoutParams);
    }

    public final void c(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        C0507t3 c0507t3 = new C0507t3(context, (byte) 6, this.f);
        c0507t3.setId(1048283);
        c0507t3.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.media.Q3$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return Q3.c(this.f$0, view, motionEvent);
            }
        });
        linearLayout.addView(c0507t3, layoutParams);
    }

    public final void d(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        C0507t3 c0507t3 = new C0507t3(context, (byte) 3, this.f);
        c0507t3.setId(65502);
        c0507t3.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.media.Q3$$ExternalSyntheticLambda3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return Q3.d(this.f$0, view, motionEvent);
            }
        });
        linearLayout.addView(c0507t3, layoutParams);
    }

    public final Vc getUserLeftApplicationListener() {
        return this.e;
    }

    public final void setEmbeddedBrowserUpdateListener(T3 browserUpdateListener) {
        Intrinsics.checkNotNullParameter(browserUpdateListener, "browserUpdateListener");
        this.d = browserUpdateListener;
    }

    public final void setLogger(InterfaceC0298f5 logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.f = logger;
    }

    public final void setUserLeftApplicationListener(Vc vc) {
        this.e = vc;
    }

    public static final boolean b(Q3 this$0, View view, MotionEvent motionEvent) {
        U3 u3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            Y3 y3 = this$0.c;
            if (y3 != null && (u3 = y3.g) != null) {
                U3.a(u3, 5, true, null, 12);
            }
            T3 t3 = this$0.d;
            if (t3 != null) {
                P4.a(((O4) t3).f200a);
            }
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }

    public static final boolean d(Q3 this$0, View view, MotionEvent motionEvent) {
        U3 u3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            Y3 y3 = this$0.c;
            if (y3 != null && (u3 = y3.g) != null) {
                U3.a(u3, 6, true, null, 12);
            }
            Y3 y32 = this$0.c;
            if (y32 != null) {
                y32.reload();
            }
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }

    public static final boolean c(Q3 this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Y3 y3 = this$0.c;
        if (y3 == null) {
            return true;
        }
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            if (y3.canGoForward()) {
                y3.goForward();
            }
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }

    public static final boolean a(Q3 this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Y3 y3 = this$0.c;
        if (y3 == null) {
            T3 t3 = this$0.d;
            if (t3 != null) {
                P4.a(((O4) t3).f200a);
            }
            return true;
        }
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            if (y3.canGoBack()) {
                y3.goBack();
            } else {
                T3 t32 = this$0.d;
                if (t32 != null) {
                    P4.a(((O4) t32).f200a);
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
