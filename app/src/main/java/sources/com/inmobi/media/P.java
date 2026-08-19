package com.inmobi.media;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.widget.RelativeLayout;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes6.dex */
public abstract class P {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RelativeLayout f209a;
    public I9 b;
    public float c;
    public boolean d;

    public P(RelativeLayout adBackgroundView) {
        Intrinsics.checkNotNullParameter(adBackgroundView, "adBackgroundView");
        this.f209a = adBackgroundView;
        this.b = J9.a(N3.g());
        this.c = 1.0f;
    }

    public abstract void a();

    public void a(I9 orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        this.b = orientation;
    }

    public abstract void b();

    public abstract void c();

    public abstract void d();

    public final void e() {
        M3 m3;
        M3 m32;
        RelativeLayout.LayoutParams layoutParams;
        if (this.c == 1.0f) {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams2.addRule(10);
            this.f209a.setLayoutParams(layoutParams2);
            return;
        }
        if (this.d) {
            O3 o3 = N3.f189a;
            Context context = this.f209a.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            Intrinsics.checkNotNullParameter(context, "context");
            Display displayA = N3.a(context);
            if (displayA == null) {
                m32 = N3.b;
            } else {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                displayA.getRealMetrics(displayMetrics);
                m3 = new M3(displayMetrics.widthPixels, displayMetrics.heightPixels);
                m32 = m3;
            }
        } else {
            O3 o32 = N3.f189a;
            Context context2 = this.f209a.getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            Intrinsics.checkNotNullParameter(context2, "context");
            Display displayA2 = N3.a(context2);
            if (displayA2 == null) {
                m32 = N3.b;
            } else {
                DisplayMetrics displayMetrics2 = new DisplayMetrics();
                displayA2.getMetrics(displayMetrics2);
                m3 = new M3(displayMetrics2.widthPixels, displayMetrics2.heightPixels);
                m32 = m3;
            }
        }
        Objects.toString(this.b);
        if (J9.b(this.b)) {
            layoutParams = new RelativeLayout.LayoutParams(MathKt.roundToInt(m32.f176a * this.c), -1);
            layoutParams.addRule(9);
        } else {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, MathKt.roundToInt(m32.b * this.c));
            layoutParams3.addRule(10);
            layoutParams = layoutParams3;
        }
        this.f209a.setLayoutParams(layoutParams);
    }

    public abstract void f();

    public abstract void g();
}
