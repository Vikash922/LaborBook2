package com.inmobi.media;

import android.content.Context;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class O8 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f204a;
    public final WeakReference b;

    public O8(Context context, ImageView imageView) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        this.f204a = new WeakReference(context);
        this.b = new WeakReference(imageView);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context = (Context) this.f204a.get();
        ImageView imageView = (ImageView) this.b.get();
        if (context == null || imageView == null) {
            return;
        }
        HashMap map = C0271d9.c;
        N8.a(context, imageView);
    }
}
