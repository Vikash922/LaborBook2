package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.o2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0435o2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0465q2 f440a;
    public final InterfaceC0298f5 b;

    public C0435o2(InterfaceC0465q2 mEventHandler, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(mEventHandler, "mEventHandler");
        this.f440a = mEventHandler;
        this.b = interfaceC0298f5;
    }

    public final void a(final C0343i2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        click.i.set(false);
        final Handler handler = new Handler(Looper.getMainLooper());
        handler.post(new Runnable() { // from class: com.inmobi.media.o2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0435o2.a(click, this, handler);
            }
        });
    }

    public static final void a(C0343i2 click, C0435o2 this$0, Handler handler) {
        Intrinsics.checkNotNullParameter(click, "$click");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(handler, "$handler");
        C0397l9 c0397l9 = new C0397l9(click.b, this$0.b);
        c0397l9.x = false;
        c0397l9.t = false;
        c0397l9.u = false;
        HashMap mapA = C0520u2.a(C0520u2.f496a, click);
        if (!mapA.isEmpty()) {
            c0397l9.i.putAll(mapA);
        }
        new Hd(c0397l9, new C0420n2(click, this$0, handler)).a();
    }
}
