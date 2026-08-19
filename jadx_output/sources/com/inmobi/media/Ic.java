package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Ic extends E1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ic(Q0 obj, byte b) {
        super(obj);
        Intrinsics.checkNotNullParameter(obj, "obj");
    }

    public static final void a(Ic this$0, Object obj) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(obj);
    }

    public abstract void a(Object obj);

    public final void b(final Object obj) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.Ic$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Ic.a(this.f$0, obj);
            }
        });
    }
}
