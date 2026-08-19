package com.inmobi.media;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Z0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3053Z0 {

    /* JADX INFO: renamed from: a */
    public final String f1790a = "Z0";

    /* JADX INFO: renamed from: b */
    public final ArrayList f1791b = new ArrayList();

    /* JADX INFO: renamed from: c */
    public boolean f1792c;

    /* JADX INFO: renamed from: a */
    public static C3039Y0 m1994a(ValueAnimator valueAnimator, C2740D7 c2740d7) {
        valueAnimator.setDuration(0L);
        valueAnimator.setStartDelay(0L);
        C3300p8 c3300p8 = c2740d7.f922d.f984k;
        if (c3300p8 != null) {
            C3285o8 c3285o8 = c3300p8.f2437a;
            C3285o8 c3285o82 = c3300p8.f2438b;
            if (c3285o82 != null) {
                valueAnimator.setDuration(c3285o82.m2336a() * ((long) 1000));
            }
            if (c3285o8 != null) {
                valueAnimator.setStartDelay(c3285o8.m2336a() * ((long) 1000));
            }
        }
        return new C3039Y0(valueAnimator);
    }

    /* JADX INFO: renamed from: b */
    public static ValueAnimator m1996b(final View view, float f, float f2) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, f2);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        final C2815I7 c2815i7 = layoutParams instanceof C2815I7 ? (C2815I7) layoutParams : null;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.inmobi.media.Z0$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C3053Z0.m1997b(c2815i7, view, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(valueAnimatorOfFloat);
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: renamed from: b */
    public static final void m1997b(C2815I7 c2815i7, View view, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(view, "$view");
        Intrinsics.checkNotNullParameter(valueAnimator, "valueAnimator");
        if (c2815i7 != null) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            c2815i7.f1112b = (int) ((Float) animatedValue).floatValue();
        }
        view.setLayoutParams(c2815i7);
        view.requestLayout();
    }

    /* JADX INFO: renamed from: a */
    public static ValueAnimator m1993a(final View view, float f, float f2) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, f2);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        final C2815I7 c2815i7 = layoutParams instanceof C2815I7 ? (C2815I7) layoutParams : null;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.inmobi.media.Z0$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C3053Z0.m1995a(c2815i7, view, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(valueAnimatorOfFloat);
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: renamed from: a */
    public static final void m1995a(C2815I7 c2815i7, View view, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(view, "$view");
        Intrinsics.checkNotNullParameter(valueAnimator, "valueAnimator");
        if (c2815i7 != null) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            c2815i7.f1111a = (int) ((Float) animatedValue).floatValue();
        }
        view.setLayoutParams(c2815i7);
        view.requestLayout();
    }

    /* JADX INFO: renamed from: a */
    public final void m1999a(ArrayList arrayList) {
        if (arrayList == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C3039Y0 c3039y0 = (C3039Y0) it.next();
            if (!c3039y0.f1666c) {
                ValueAnimator valueAnimator = c3039y0.f1664a;
                Intrinsics.checkNotNull(valueAnimator, "null cannot be cast to non-null type android.animation.ValueAnimator");
                valueAnimator.setCurrentPlayTime(c3039y0.f1665b);
                valueAnimator.start();
            }
            if (!this.f1791b.contains(c3039y0)) {
                this.f1791b.add(c3039y0);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1998a() {
        if (this.f1792c) {
            this.f1792c = false;
            for (C3039Y0 c3039y0 : this.f1791b) {
                ValueAnimator valueAnimator = c3039y0.f1664a;
                Intrinsics.checkNotNull(valueAnimator, "null cannot be cast to non-null type android.animation.ValueAnimator");
                c3039y0.f1665b = valueAnimator.getCurrentPlayTime();
                if (valueAnimator.getAnimatedFraction() == 1.0d) {
                    c3039y0.f1666c = true;
                }
                valueAnimator.cancel();
            }
        }
    }
}
