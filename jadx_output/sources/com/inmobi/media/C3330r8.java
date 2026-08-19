package com.inmobi.media;

import android.animation.ValueAnimator;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.r8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3330r8 implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a */
    public final WeakReference f2506a;

    public C3330r8(C3360t8 view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f2506a = new WeakReference(view);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        C3360t8 c3360t8 = (C3360t8) this.f2506a.get();
        if (c3360t8 == null) {
            return;
        }
        int visibility = c3360t8.getVisibility();
        if (visibility == 4 || visibility == 8) {
            Intrinsics.checkNotNull(animation.getAnimatedValue(), "null cannot be cast to non-null type kotlin.Float");
            if (((Float) r6).floatValue() >= 1.0d) {
                c3360t8.m2453a();
                return;
            }
            return;
        }
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        c3360t8.f2612l = 360 * ((Float) animatedValue).floatValue();
        c3360t8.invalidate();
    }
}
