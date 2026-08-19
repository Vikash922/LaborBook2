package com.inmobi.media;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.widget.RelativeLayout;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: renamed from: com.inmobi.media.P */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2912P {

    /* JADX INFO: renamed from: a */
    public final RelativeLayout f1346a;

    /* JADX INFO: renamed from: b */
    public EnumC2817I9 f1347b;

    /* JADX INFO: renamed from: c */
    public float f1348c;

    /* JADX INFO: renamed from: d */
    public boolean f1349d;

    public AbstractC2912P(RelativeLayout adBackgroundView) {
        Intrinsics.checkNotNullParameter(adBackgroundView, "adBackgroundView");
        this.f1346a = adBackgroundView;
        this.f1347b = AbstractC2832J9.m1195a(AbstractC2886N3.m1391g());
        this.f1348c = 1.0f;
    }

    /* JADX INFO: renamed from: a */
    public abstract void mo937a();

    /* JADX INFO: renamed from: a */
    public void mo938a(EnumC2817I9 orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        this.f1347b = orientation;
    }

    /* JADX INFO: renamed from: b */
    public abstract void mo939b();

    /* JADX INFO: renamed from: c */
    public abstract void mo940c();

    /* JADX INFO: renamed from: d */
    public abstract void mo941d();

    /* JADX INFO: renamed from: e */
    public final void m1425e() {
        C2871M3 c2871m3;
        C2871M3 c2871m32;
        RelativeLayout.LayoutParams layoutParams;
        if (this.f1348c == 1.0f) {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams2.addRule(10);
            this.f1346a.setLayoutParams(layoutParams2);
            return;
        }
        if (this.f1349d) {
            C2901O3 c2901o3 = AbstractC2886N3.f1293a;
            Context context = this.f1346a.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            Intrinsics.checkNotNullParameter(context, "context");
            Display displayM1377a = AbstractC2886N3.m1377a(context);
            if (displayM1377a == null) {
                c2871m32 = AbstractC2886N3.f1294b;
            } else {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                displayM1377a.getRealMetrics(displayMetrics);
                c2871m3 = new C2871M3(displayMetrics.widthPixels, displayMetrics.heightPixels);
                c2871m32 = c2871m3;
            }
        } else {
            C2901O3 c2901o32 = AbstractC2886N3.f1293a;
            Context context2 = this.f1346a.getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            Intrinsics.checkNotNullParameter(context2, "context");
            Display displayM1377a2 = AbstractC2886N3.m1377a(context2);
            if (displayM1377a2 == null) {
                c2871m32 = AbstractC2886N3.f1294b;
            } else {
                DisplayMetrics displayMetrics2 = new DisplayMetrics();
                displayM1377a2.getMetrics(displayMetrics2);
                c2871m3 = new C2871M3(displayMetrics2.widthPixels, displayMetrics2.heightPixels);
                c2871m32 = c2871m3;
            }
        }
        Objects.toString(this.f1347b);
        if (AbstractC2832J9.m1196b(this.f1347b)) {
            layoutParams = new RelativeLayout.LayoutParams(MathKt.roundToInt(c2871m32.f1246a * this.f1348c), -1);
            layoutParams.addRule(9);
        } else {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, MathKt.roundToInt(c2871m32.f1247b * this.f1348c));
            layoutParams3.addRule(10);
            layoutParams = layoutParams3;
        }
        this.f1346a.setLayoutParams(layoutParams);
    }

    /* JADX INFO: renamed from: f */
    public abstract void mo942f();

    /* JADX INFO: renamed from: g */
    public abstract void mo943g();
}
