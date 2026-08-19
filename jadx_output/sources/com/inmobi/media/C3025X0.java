package com.inmobi.media;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.X0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3025X0 extends Animation {

    /* JADX INFO: renamed from: b */
    public final float f1635b;

    /* JADX INFO: renamed from: c */
    public final float f1636c;

    /* JADX INFO: renamed from: e */
    public Camera f1638e;

    /* JADX INFO: renamed from: a */
    public final float f1634a = 90.0f;

    /* JADX INFO: renamed from: d */
    public final boolean f1637d = true;

    public C3025X0(float f, float f2) {
        this.f1635b = f;
        this.f1636c = f2;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation t) {
        Intrinsics.checkNotNullParameter(t, "t");
        float f2 = ((this.f1634a - 0.0f) * f) + 0.0f;
        float f3 = this.f1635b;
        float f4 = this.f1636c;
        Camera camera = this.f1638e;
        Matrix matrix = t.getMatrix();
        if (camera != null) {
            camera.save();
            if (this.f1637d) {
                camera.translate(0.0f, 0.0f, f * 0.0f);
            } else {
                camera.translate(0.0f, 0.0f, (1.0f - f) * 0.0f);
            }
            camera.rotateY(f2);
            camera.getMatrix(matrix);
            camera.restore();
        }
        matrix.preTranslate(-f3, -f4);
        matrix.postTranslate(f3, f4);
    }

    @Override // android.view.animation.Animation
    public final void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
        this.f1638e = new Camera();
    }
}
