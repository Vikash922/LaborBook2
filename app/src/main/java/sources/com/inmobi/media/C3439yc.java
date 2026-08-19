package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.yc */
/* JADX INFO: loaded from: classes6.dex */
public final class C3439yc {

    /* JADX INFO: renamed from: a */
    public final AbstractC2928Q0 f2771a;

    /* JADX INFO: renamed from: b */
    public final HashMap f2772b;

    public C3439yc(AbstractC2928Q0 timeOutInformer) {
        Intrinsics.checkNotNullParameter(timeOutInformer, "timeOutInformer");
        this.f2771a = timeOutInformer;
        this.f2772b = new HashMap();
    }

    /* JADX INFO: renamed from: a */
    public final void m2624a(final byte b) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.yc$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3439yc.m2623a(this.f$0, b);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m2623a(C3439yc this$0, byte b) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f2771a.mo1591a(b);
    }
}
