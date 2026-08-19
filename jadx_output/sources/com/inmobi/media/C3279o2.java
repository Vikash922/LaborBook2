package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.o2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3279o2 {

    /* JADX INFO: renamed from: a */
    public final InterfaceC3309q2 f2396a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC3147f5 f2397b;

    public C3279o2(InterfaceC3309q2 mEventHandler, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(mEventHandler, "mEventHandler");
        this.f2396a = mEventHandler;
        this.f2397b = interfaceC3147f5;
    }

    /* JADX INFO: renamed from: a */
    public final void m2323a(final C3189i2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        click.f2176i.set(false);
        final Handler handler = new Handler(Looper.getMainLooper());
        handler.post(new Runnable() { // from class: com.inmobi.media.o2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3279o2.m2322a(click, this, handler);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m2322a(C3189i2 click, C3279o2 this$0, Handler handler) {
        Intrinsics.checkNotNullParameter(click, "$click");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(handler, "$handler");
        C3241l9 c3241l9 = new C3241l9(click.f2169b, this$0.f2397b);
        c3241l9.f2297x = false;
        c3241l9.f2293t = false;
        c3241l9.f2294u = false;
        HashMap mapM2460a = C3369u2.m2460a(C3369u2.f2627a, click);
        if (!mapM2460a.isEmpty()) {
            c3241l9.f2282i.putAll(mapM2460a);
        }
        new C2806Hd(c3241l9, new C3264n2(click, this$0, handler)).m1154a();
    }
}
