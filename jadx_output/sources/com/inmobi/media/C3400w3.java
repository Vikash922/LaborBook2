package com.inmobi.media;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.w3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3400w3 extends AbstractC3440yd {

    /* JADX INFO: renamed from: n */
    public final InterfaceC3147f5 f2700n;

    /* JADX INFO: renamed from: o */
    public final String f2701o;

    /* JADX INFO: renamed from: p */
    public final ViewTreeObserver.OnPreDrawListener f2702p;

    /* JADX INFO: renamed from: q */
    public final WeakReference f2703q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3400w3(InterfaceC3350sd visibilityChecker, Activity activity, InterfaceC3147f5 interfaceC3147f5) {
        super(visibilityChecker, (byte) 1, interfaceC3147f5);
        Intrinsics.checkNotNullParameter(visibilityChecker, "visibilityChecker");
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f2700n = interfaceC3147f5;
        this.f2701o = "w3";
        View decorView = activity.getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        this.f2703q = new WeakReference(decorView);
        ViewTreeObserver viewTreeObserver = decorView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.inmobi.media.w3$$ExternalSyntheticLambda0
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    return C3400w3.m2545a(this.f$0);
                }
            };
            this.f2702p = onPreDrawListener;
            viewTreeObserver.addOnPreDrawListener(onPreDrawListener);
        } else if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("w3", "TAG");
            ((C3162g5) interfaceC3147f5).m2151b("w3", "Visibility Tracker was unable to track views because the  root view tree observer was not alive");
        }
    }

    /* JADX INFO: renamed from: a */
    public static final boolean m2545a(C3400w3 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m2628g();
        return true;
    }

    @Override // com.inmobi.media.AbstractC3440yd
    /* JADX INFO: renamed from: b */
    public final void mo2546b() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2700n;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2701o;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "unregisterPreDrawListener");
        }
        View view = (View) this.f2703q.get();
        if (view != null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f2702p);
            }
        }
        super.mo2546b();
    }

    @Override // com.inmobi.media.AbstractC3440yd
    /* JADX INFO: renamed from: c */
    public final int mo1115c() {
        return 100;
    }

    @Override // com.inmobi.media.AbstractC3440yd
    /* JADX INFO: renamed from: d */
    public final void mo1821d() {
    }

    @Override // com.inmobi.media.AbstractC3440yd
    /* JADX INFO: renamed from: e */
    public final void mo2547e() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2700n;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2701o;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "pause");
        }
        if (this.f2781i.get()) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f2700n;
        if (interfaceC3147f52 != null) {
            String TAG2 = this.f2701o;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f52).m2152c(TAG2, "unregisterPreDrawListener");
        }
        View view = (View) this.f2703q.get();
        if (view != null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f2702p);
            }
        }
        super.mo2547e();
    }

    @Override // com.inmobi.media.AbstractC3440yd
    /* JADX INFO: renamed from: f */
    public final void mo2548f() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2700n;
        if (interfaceC3147f5 != null) {
            String TAG = this.f2701o;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "resume");
        }
        if (this.f2781i.get()) {
            View view = (View) this.f2703q.get();
            if (view != null) {
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnPreDrawListener(this.f2702p);
                } else {
                    InterfaceC3147f5 interfaceC3147f52 = this.f2700n;
                    if (interfaceC3147f52 != null) {
                        String TAG2 = this.f2701o;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((C3162g5) interfaceC3147f52).m2151b(TAG2, "Visibility Tracker was unable to track views because the root view tree observer was not alive");
                    }
                }
            }
            super.mo2548f();
        }
    }
}
