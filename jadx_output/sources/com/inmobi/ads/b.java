package com.inmobi.ads;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.media.W0;
import com.inmobi.media.X0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b {
    public static final Animation a(InMobiBanner.AnimationType animationType, float f, float f2) {
        Intrinsics.checkNotNullParameter(animationType, "animationType");
        int i = a.f62a[animationType.ordinal()];
        if (i == 1) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 0.5f);
            alphaAnimation.setDuration(1000L);
            alphaAnimation.setFillAfter(false);
            alphaAnimation.setInterpolator(new DecelerateInterpolator());
            return alphaAnimation;
        }
        if (i == 2) {
            W0 w0 = new W0(f / 2.0f, f2 / 2.0f);
            w0.setDuration(500L);
            w0.setFillAfter(false);
            w0.setInterpolator(new AccelerateInterpolator());
            return w0;
        }
        if (i != 3) {
            return null;
        }
        X0 x0 = new X0(f / 2.0f, f2 / 2.0f);
        x0.setDuration(500L);
        x0.setFillAfter(false);
        x0.setInterpolator(new AccelerateInterpolator());
        return x0;
    }
}
