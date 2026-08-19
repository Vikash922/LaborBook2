package com.inmobi.media;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.w3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0549w3 extends yd {
    public final InterfaceC0298f5 n;
    public final String o;
    public final ViewTreeObserver.OnPreDrawListener p;
    public final WeakReference q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0549w3(sd visibilityChecker, Activity activity, InterfaceC0298f5 interfaceC0298f5) {
        super(visibilityChecker, (byte) 1, interfaceC0298f5);
        Intrinsics.checkNotNullParameter(visibilityChecker, "visibilityChecker");
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.n = interfaceC0298f5;
        this.o = "w3";
        View decorView = activity.getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        this.q = new WeakReference(decorView);
        ViewTreeObserver viewTreeObserver = decorView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.inmobi.media.w3$$ExternalSyntheticLambda0
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    return C0549w3.a(this.f$0);
                }
            };
            this.p = onPreDrawListener;
            viewTreeObserver.addOnPreDrawListener(onPreDrawListener);
        } else if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("w3", "TAG");
            ((C0314g5) interfaceC0298f5).b("w3", "Visibility Tracker was unable to track views because the  root view tree observer was not alive");
        }
    }

    public static final boolean a(C0549w3 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.g();
        return true;
    }

    @Override // com.inmobi.media.yd
    public final void b() {
        InterfaceC0298f5 interfaceC0298f5 = this.n;
        if (interfaceC0298f5 != null) {
            String TAG = this.o;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "unregisterPreDrawListener");
        }
        View view = (View) this.q.get();
        if (view != null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.p);
            }
        }
        super.b();
    }

    @Override // com.inmobi.media.yd
    public final int c() {
        return 100;
    }

    @Override // com.inmobi.media.yd
    public final void d() {
    }

    @Override // com.inmobi.media.yd
    public final void e() {
        InterfaceC0298f5 interfaceC0298f5 = this.n;
        if (interfaceC0298f5 != null) {
            String TAG = this.o;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "pause");
        }
        if (this.i.get()) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this.n;
        if (interfaceC0298f52 != null) {
            String TAG2 = this.o;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f52).c(TAG2, "unregisterPreDrawListener");
        }
        View view = (View) this.q.get();
        if (view != null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.p);
            }
        }
        super.e();
    }

    @Override // com.inmobi.media.yd
    public final void f() {
        InterfaceC0298f5 interfaceC0298f5 = this.n;
        if (interfaceC0298f5 != null) {
            String TAG = this.o;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "resume");
        }
        if (this.i.get()) {
            View view = (View) this.q.get();
            if (view != null) {
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnPreDrawListener(this.p);
                } else {
                    InterfaceC0298f5 interfaceC0298f52 = this.n;
                    if (interfaceC0298f52 != null) {
                        String TAG2 = this.o;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((C0314g5) interfaceC0298f52).b(TAG2, "Visibility Tracker was unable to track views because the root view tree observer was not alive");
                    }
                }
            }
            super.f();
        }
    }
}
