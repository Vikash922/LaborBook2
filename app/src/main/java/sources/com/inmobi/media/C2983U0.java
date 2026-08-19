package com.inmobi.media;

import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.U0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2983U0 extends Animatable2.AnimationCallback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2997V0 f1558a;

    public C2983U0(C2997V0 c2997v0) {
        this.f1558a = c2997v0;
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        super.onAnimationEnd(drawable);
        this.f1558a.m1871e();
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationStart(Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        super.onAnimationStart(drawable);
    }
}
