package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.cb */
/* JADX INFO: loaded from: classes6.dex */
public final class C3108cb {

    /* JADX INFO: renamed from: a */
    public GestureDetectorOnGestureListenerC3049Ya f1964a;

    /* JADX INFO: renamed from: b */
    public final long f1965b;

    public C3108cb(GestureDetectorOnGestureListenerC3049Ya view, long j) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f1964a = view;
        this.f1965b = j;
    }

    /* JADX INFO: renamed from: a */
    public final void m2052a() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.inmobi.media.cb$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3108cb.m2051a(this.f$0);
            }
        }, this.f1965b);
    }

    /* JADX INFO: renamed from: a */
    public static final void m2051a(C3108cb this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this$0.f1964a;
        if (gestureDetectorOnGestureListenerC3049Ya != null) {
            InterfaceC3147f5 interfaceC3147f5 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
            if (interfaceC3147f5 != null) {
                String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya, str, "TAG", "deferredDestroy "));
            }
            gestureDetectorOnGestureListenerC3049Ya.destroy();
        }
        this$0.f1964a = null;
    }
}
