package com.inmobi.media;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f291a = "Z0";
    public final ArrayList b = new ArrayList();
    public boolean c;

    public static Y0 a(ValueAnimator valueAnimator, D7 d7) {
        valueAnimator.setDuration(0L);
        valueAnimator.setStartDelay(0L);
        C0456p8 c0456p8 = d7.d.k;
        if (c0456p8 != null) {
            C0441o8 c0441o8 = c0456p8.f456a;
            C0441o8 c0441o82 = c0456p8.b;
            if (c0441o82 != null) {
                valueAnimator.setDuration(c0441o82.a() * ((long) 1000));
            }
            if (c0441o8 != null) {
                valueAnimator.setStartDelay(c0441o8.a() * ((long) 1000));
            }
        }
        return new Y0(valueAnimator);
    }

    public static ValueAnimator b(final View view, float f, float f2) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, f2);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        final I7 i7 = layoutParams instanceof I7 ? (I7) layoutParams : null;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.inmobi.media.Z0$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                Z0.b(i7, view, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(valueAnimatorOfFloat);
        return valueAnimatorOfFloat;
    }

    public static final void b(I7 i7, View view, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(view, "$view");
        Intrinsics.checkNotNullParameter(valueAnimator, "valueAnimator");
        if (i7 != null) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            i7.b = (int) ((Float) animatedValue).floatValue();
        }
        view.setLayoutParams(i7);
        view.requestLayout();
    }

    public static ValueAnimator a(final View view, float f, float f2) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, f2);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        final I7 i7 = layoutParams instanceof I7 ? (I7) layoutParams : null;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.inmobi.media.Z0$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                Z0.a(i7, view, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(valueAnimatorOfFloat);
        return valueAnimatorOfFloat;
    }

    public static final void a(I7 i7, View view, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(view, "$view");
        Intrinsics.checkNotNullParameter(valueAnimator, "valueAnimator");
        if (i7 != null) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            i7.f140a = (int) ((Float) animatedValue).floatValue();
        }
        view.setLayoutParams(i7);
        view.requestLayout();
    }

    public final void a(ArrayList arrayList) {
        if (arrayList == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Y0 y0 = (Y0) it.next();
            if (!y0.c) {
                ValueAnimator valueAnimator = y0.f284a;
                Intrinsics.checkNotNull(valueAnimator, "null cannot be cast to non-null type android.animation.ValueAnimator");
                valueAnimator.setCurrentPlayTime(y0.b);
                valueAnimator.start();
            }
            if (!this.b.contains(y0)) {
                this.b.add(y0);
            }
        }
    }

    public final void a() {
        if (this.c) {
            this.c = false;
            for (Y0 y0 : this.b) {
                ValueAnimator valueAnimator = y0.f284a;
                Intrinsics.checkNotNull(valueAnimator, "null cannot be cast to non-null type android.animation.ValueAnimator");
                y0.b = valueAnimator.getCurrentPlayTime();
                if (valueAnimator.getAnimatedFraction() == 1.0d) {
                    y0.c = true;
                }
                valueAnimator.cancel();
            }
        }
    }
}
