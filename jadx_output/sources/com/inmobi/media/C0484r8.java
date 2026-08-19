package com.inmobi.media;

import android.animation.ValueAnimator;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.r8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0484r8 implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f472a;

    public C0484r8(C0512t8 view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f472a = new WeakReference(view);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        C0512t8 c0512t8 = (C0512t8) this.f472a.get();
        if (c0512t8 == null) {
            return;
        }
        int visibility = c0512t8.getVisibility();
        if (visibility == 4 || visibility == 8) {
            Intrinsics.checkNotNull(animation.getAnimatedValue(), "null cannot be cast to non-null type kotlin.Float");
            if (((Float) r6).floatValue() >= 1.0d) {
                c0512t8.a();
                return;
            }
            return;
        }
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        c0512t8.l = 360 * ((Float) animatedValue).floatValue();
        c0512t8.invalidate();
    }
}
