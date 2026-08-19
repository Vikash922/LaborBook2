package com.inmobi.media;

import android.content.Context;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.j8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0365j8 extends J7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WeakReference f394a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0365j8(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final C0511t7 getNativeStrandAd() {
        WeakReference weakReference = this.f394a;
        if (weakReference != null) {
            return (C0511t7) weakReference.get();
        }
        return null;
    }

    public final void setNativeStrandAd(C0511t7 c0511t7) {
        this.f394a = new WeakReference(c0511t7);
    }
}
