package com.inmobi.ads;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.media.C3011W0;
import com.inmobi.media.C3025X0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.ads.b */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2676b {
    /* JADX INFO: renamed from: a */
    public static final Animation m814a(InMobiBanner.AnimationType animationType, float f, float f2) {
        Intrinsics.checkNotNullParameter(animationType, "animationType");
        int i = AbstractC2675a.f779a[animationType.ordinal()];
        if (i == 1) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 0.5f);
            alphaAnimation.setDuration(1000L);
            alphaAnimation.setFillAfter(false);
            alphaAnimation.setInterpolator(new DecelerateInterpolator());
            return alphaAnimation;
        }
        if (i == 2) {
            C3011W0 c3011w0 = new C3011W0(f / 2.0f, f2 / 2.0f);
            c3011w0.setDuration(500L);
            c3011w0.setFillAfter(false);
            c3011w0.setInterpolator(new AccelerateInterpolator());
            return c3011w0;
        }
        if (i != 3) {
            return null;
        }
        C3025X0 c3025x0 = new C3025X0(f / 2.0f, f2 / 2.0f);
        c3025x0.setDuration(500L);
        c3025x0.setFillAfter(false);
        c3025x0.setInterpolator(new AccelerateInterpolator());
        return c3025x0;
    }
}
