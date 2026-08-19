package com.inmobi.media;

import android.content.Context;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.j8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3210j8 extends C2830J7 {

    /* JADX INFO: renamed from: a */
    public WeakReference f2226a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3210j8(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final C3359t7 getNativeStrandAd() {
        WeakReference weakReference = this.f2226a;
        if (weakReference != null) {
            return (C3359t7) weakReference.get();
        }
        return null;
    }

    public final void setNativeStrandAd(C3359t7 c3359t7) {
        this.f2226a = new WeakReference(c3359t7);
    }
}
