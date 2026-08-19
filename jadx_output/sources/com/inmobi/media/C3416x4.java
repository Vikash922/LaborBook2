package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.x4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3416x4 extends ImageView {

    /* JADX INFO: renamed from: a */
    public InterfaceC3386v4 f2737a;

    /* JADX INFO: renamed from: b */
    public float f2738b;

    /* JADX INFO: renamed from: c */
    public boolean f2739c;

    /* JADX INFO: renamed from: d */
    public String f2740d;

    public C3416x4(Context context) {
        super(context, null);
        this.f2738b = 1.0f;
        this.f2739c = true;
        this.f2740d = "unspecified";
        setLayerType(1, null);
    }

    private final int getDensity() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (!(getContext() instanceof Activity)) {
            return 240;
        }
        Context context = getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
        ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.densityDpi;
    }

    private static /* synthetic */ void getMContentMode$annotations() {
    }

    private final float getScale() {
        float density = getContext().getResources().getDisplayMetrics().densityDpi / getDensity();
        this.f2738b = density;
        if (density < 0.1f) {
            this.f2738b = 0.1f;
        }
        if (this.f2738b > 5.0f) {
            this.f2738b = 5.0f;
        }
        return this.f2738b;
    }

    /* JADX INFO: renamed from: a */
    public final void m2594a(Canvas canvas) {
        float fMin;
        float f;
        float f2;
        canvas.save();
        float f3 = this.f2738b;
        canvas.scale(f3, f3);
        float width = getWidth();
        float height = getHeight();
        float fMo1870d = (this.f2737a != null ? r2.mo1870d() : 0) * this.f2738b;
        float fMo1864a = (this.f2737a != null ? r4.mo1864a() : 0) * this.f2738b;
        String str = this.f2740d;
        if (Intrinsics.areEqual(str, "aspectFill")) {
            fMin = Math.max(height / fMo1864a, width / fMo1870d);
            float f4 = width - (fMo1870d * fMin);
            float f5 = 2;
            float f6 = this.f2738b * fMin;
            f = (f4 / f5) / f6;
            f2 = ((height - (fMo1864a * fMin)) / f5) / f6;
            canvas.scale(fMin, fMin);
        } else if (Intrinsics.areEqual(str, "aspectFit")) {
            fMin = Math.min(height / fMo1864a, width / fMo1870d);
            float f7 = width - (fMo1870d * fMin);
            float f8 = 2;
            float f9 = this.f2738b * fMin;
            f = (f7 / f8) / f9;
            f2 = ((height - (fMo1864a * fMin)) / f8) / f9;
            canvas.scale(fMin, fMin);
        } else {
            fMin = height / fMo1864a;
            canvas.scale(width / fMo1870d, fMin);
            f = 0.0f;
            f2 = 0.0f;
        }
        float[] fArr = {f, f2, fMin};
        InterfaceC3386v4 interfaceC3386v4 = this.f2737a;
        if (interfaceC3386v4 != null) {
            interfaceC3386v4.mo1865a(canvas, fArr[0], fArr[1]);
        }
        canvas.restore();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        InterfaceC3386v4 interfaceC3386v4 = this.f2737a;
        if (interfaceC3386v4 != null) {
            if (!interfaceC3386v4.mo1869c()) {
                m2594a(canvas);
                return;
            }
            interfaceC3386v4.mo1868b();
            m2594a(canvas);
            if (this.f2739c) {
                postInvalidateOnAnimation();
            }
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f2739c = getVisibility() == 0;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        int intrinsicWidth;
        this.f2738b = getScale();
        Drawable drawable = getDrawable();
        InterfaceC3386v4 interfaceC3386v4 = this.f2737a;
        if (drawable != null) {
            intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth <= 0) {
                intrinsicWidth = 1;
            }
            if (intrinsicHeight > 0) {
                i = intrinsicHeight;
            }
        } else if (interfaceC3386v4 != null) {
            int iMo1870d = interfaceC3386v4.mo1870d();
            int iMo1864a = interfaceC3386v4.mo1864a();
            if (iMo1870d <= 0) {
                iMo1870d = 1;
            }
            i = iMo1864a > 0 ? iMo1864a : 1;
            intrinsicWidth = iMo1870d;
        } else {
            i = 0;
            intrinsicWidth = 0;
        }
        setMeasuredDimension(View.resolveSize(Math.max(getPaddingLeft() + getPaddingRight() + intrinsicWidth, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(getPaddingTop() + getPaddingBottom() + i, getSuggestedMinimumHeight()), i2));
    }

    @Override // android.view.View
    public final void onScreenStateChanged(int i) {
        super.onScreenStateChanged(i);
        boolean z = i == 1;
        this.f2739c = z;
        if (z) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View changedView, int i) {
        Intrinsics.checkNotNullParameter(changedView, "changedView");
        super.onVisibilityChanged(changedView, i);
        boolean z = i == 0;
        this.f2739c = z;
        if (z) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        boolean z = i == 0;
        this.f2739c = z;
        if (z) {
            postInvalidateOnAnimation();
        }
    }

    public final void setContentMode(String contentMode) {
        Intrinsics.checkNotNullParameter(contentMode, "contentMode");
        this.f2740d = contentMode;
    }

    public final void setGifImpl(InterfaceC3386v4 interfaceC3386v4) {
        this.f2737a = interfaceC3386v4;
        if (interfaceC3386v4 != null) {
            interfaceC3386v4.mo1866a(this);
            interfaceC3386v4.start();
        }
        requestLayout();
    }

    public final void setPaused(boolean z) {
        InterfaceC3386v4 interfaceC3386v4 = this.f2737a;
        if (interfaceC3386v4 != null) {
            interfaceC3386v4.mo1867a(z);
        }
    }
}
