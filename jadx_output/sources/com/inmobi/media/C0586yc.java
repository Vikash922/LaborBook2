package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.yc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0586yc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Q0 f539a;
    public final HashMap b;

    public C0586yc(Q0 timeOutInformer) {
        Intrinsics.checkNotNullParameter(timeOutInformer, "timeOutInformer");
        this.f539a = timeOutInformer;
        this.b = new HashMap();
    }

    public final void a(final byte b) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.yc$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0586yc.a(this.f$0, b);
            }
        });
    }

    public static final void a(C0586yc this$0, byte b) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f539a.a(b);
    }
}
