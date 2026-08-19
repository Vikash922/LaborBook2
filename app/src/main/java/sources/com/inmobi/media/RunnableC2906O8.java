package com.inmobi.media;

import android.content.Context;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.O8 */
/* JADX INFO: loaded from: classes6.dex */
public final class RunnableC2906O8 implements Runnable {

    /* JADX INFO: renamed from: a */
    public final WeakReference f1339a;

    /* JADX INFO: renamed from: b */
    public final WeakReference f1340b;

    public RunnableC2906O8(Context context, ImageView imageView) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        this.f1339a = new WeakReference(context);
        this.f1340b = new WeakReference(imageView);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context = (Context) this.f1339a.get();
        ImageView imageView = (ImageView) this.f1340b.get();
        if (context == null || imageView == null) {
            return;
        }
        HashMap map = C3121d9.f2016c;
        C2891N8.m1398a(context, imageView);
    }
}
