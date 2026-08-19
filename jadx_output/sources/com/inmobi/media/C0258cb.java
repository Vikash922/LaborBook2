package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.cb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0258cb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Ya f323a;
    public final long b;

    public C0258cb(Ya view, long j) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f323a = view;
        this.b = j;
    }

    public final void a() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.inmobi.media.cb$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0258cb.a(this.f$0);
            }
        }, this.b);
    }

    public static final void a(C0258cb this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Ya ya = this$0.f323a;
        if (ya != null) {
            InterfaceC0298f5 interfaceC0298f5 = ya.i;
            if (interfaceC0298f5 != null) {
                String str = Ya.P0;
                ((C0314g5) interfaceC0298f5).a(str, Wa.a(ya, str, "TAG", "deferredDestroy "));
            }
            ya.destroy();
        }
        this$0.f323a = null;
    }
}
