package com.inmobi.media;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.W0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3011W0 extends Animation {

    /* JADX INFO: renamed from: b */
    public final float f1611b;

    /* JADX INFO: renamed from: c */
    public final float f1612c;

    /* JADX INFO: renamed from: e */
    public Camera f1614e;

    /* JADX INFO: renamed from: a */
    public final float f1610a = 90.0f;

    /* JADX INFO: renamed from: d */
    public final boolean f1613d = true;

    public C3011W0(float f, float f2) {
        this.f1611b = f;
        this.f1612c = f2;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation t) {
        Intrinsics.checkNotNullParameter(t, "t");
        float f2 = ((this.f1610a - 0.0f) * f) + 0.0f;
        float f3 = this.f1611b;
        float f4 = this.f1612c;
        Camera camera = this.f1614e;
        Matrix matrix = t.getMatrix();
        if (camera != null) {
            camera.save();
            if (this.f1613d) {
                camera.translate(0.0f, 0.0f, f * 0.0f);
            } else {
                camera.translate(0.0f, 0.0f, (1.0f - f) * 0.0f);
            }
            camera.rotateX(f2);
            camera.getMatrix(matrix);
            camera.restore();
        }
        matrix.preTranslate(-f3, -f4);
        matrix.postTranslate(f3, f4);
    }

    @Override // android.view.animation.Animation
    public final void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
        this.f1614e = new Camera();
    }
}
