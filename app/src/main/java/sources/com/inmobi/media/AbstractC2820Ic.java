package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Ic */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2820Ic extends AbstractRunnableC2749E1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC2820Ic(AbstractC2928Q0 obj, byte b) {
        super(obj);
        Intrinsics.checkNotNullParameter(obj, "obj");
    }

    /* JADX INFO: renamed from: a */
    public static final void m1176a(AbstractC2820Ic this$0, Object obj) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.mo1177a(obj);
    }

    /* JADX INFO: renamed from: a */
    public abstract void mo1177a(Object obj);

    /* JADX INFO: renamed from: b */
    public final void m1178b(final Object obj) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.Ic$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2820Ic.m1176a(this.f$0, obj);
            }
        });
    }
}
