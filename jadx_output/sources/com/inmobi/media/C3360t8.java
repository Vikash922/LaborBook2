package com.inmobi.media;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.core.view.ViewCompat;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.t8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3360t8 extends View {

    /* JADX INFO: renamed from: a */
    public Bitmap f2601a;

    /* JADX INFO: renamed from: b */
    public Canvas f2602b;

    /* JADX INFO: renamed from: c */
    public RectF f2603c;

    /* JADX INFO: renamed from: d */
    public RectF f2604d;

    /* JADX INFO: renamed from: e */
    public final Rect f2605e;

    /* JADX INFO: renamed from: f */
    public long f2606f;

    /* JADX INFO: renamed from: g */
    public final Paint f2607g;

    /* JADX INFO: renamed from: h */
    public final Paint f2608h;

    /* JADX INFO: renamed from: i */
    public final Paint f2609i;

    /* JADX INFO: renamed from: j */
    public final Paint f2610j;

    /* JADX INFO: renamed from: k */
    public final Paint f2611k;

    /* JADX INFO: renamed from: l */
    public float f2612l;

    /* JADX INFO: renamed from: m */
    public long f2613m;

    /* JADX INFO: renamed from: n */
    public ValueAnimator f2614n;

    /* JADX INFO: renamed from: o */
    public InterfaceC3345s8 f2615o;

    public C3360t8(Context context) {
        super(context);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(-723724);
        this.f2607g = paint;
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        paint2.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint2.setTextAlign(Paint.Align.CENTER);
        paint2.setAntiAlias(true);
        this.f2611k = paint2;
        this.f2605e = new Rect();
        Paint paint3 = new Paint();
        paint3.setAntiAlias(true);
        paint3.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f2608h = paint3;
        Paint paint4 = new Paint();
        paint4.setAntiAlias(true);
        paint4.setColor(0);
        paint4.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.f2609i = paint4;
        Paint paint5 = new Paint();
        paint5.setStyle(Paint.Style.STROKE);
        paint5.setAntiAlias(true);
        paint5.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f2610j = paint5;
    }

    /* JADX INFO: renamed from: a */
    public final void m2453a() {
        InterfaceC3345s8 interfaceC3345s8 = this.f2615o;
        if (interfaceC3345s8 != null) {
            C3105c8 c3105c8 = (C3105c8) interfaceC3345s8;
            C3032X7 c3032x7 = c3105c8.f1947a.f2015p;
            if (c3032x7 != null) {
                C3315q8 timerAsset = c3105c8.f1948b;
                Intrinsics.checkNotNullParameter(timerAsset, "timerAsset");
                if (timerAsset.f928j == 1) {
                    c3032x7.f1646b.mo1950a();
                }
            }
        }
        ValueAnimator valueAnimator = this.f2614n;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f2614n = null;
    }

    /* JADX INFO: renamed from: b */
    public final void m2454b() {
        ValueAnimator valueAnimator = this.f2614n;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.f2613m = valueAnimator.getCurrentPlayTime();
        valueAnimator.cancel();
    }

    /* JADX INFO: renamed from: c */
    public final void m2455c() {
        ValueAnimator valueAnimator = this.f2614n;
        if (valueAnimator == null || valueAnimator.isRunning()) {
            return;
        }
        valueAnimator.setCurrentPlayTime(this.f2613m);
        valueAnimator.start();
    }

    /* JADX INFO: renamed from: d */
    public final void m2456d() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(TimeUnit.SECONDS.toMillis(this.f2606f));
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new C3330r8(this));
        this.f2614n = valueAnimatorOfFloat;
        valueAnimatorOfFloat.start();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Canvas canvas2;
        Canvas canvas3;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Canvas canvas4 = this.f2602b;
        if (canvas4 != null) {
            canvas4.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        int iMin = Math.min(width, height);
        C2901O3 c2901o3 = AbstractC2886N3.f1293a;
        int iM1384b = (int) (AbstractC2886N3.m1384b() * ((int) (getWidth() * 7.0f * 0.007f)));
        float f = width;
        float f2 = height;
        canvas.drawCircle(f, f2, iMin, this.f2607g);
        canvas.drawCircle(f, f2, iMin - iM1384b, this.f2610j);
        ValueAnimator valueAnimator = this.f2614n;
        if (valueAnimator != null) {
            int currentPlayTime = (int) (this.f2606f - (valueAnimator.getCurrentPlayTime() / ((long) 1000)));
            Intrinsics.checkNotNull(valueAnimator.getAnimatedValue(), "null cannot be cast to non-null type kotlin.Float");
            if (((Float) r4).floatValue() >= 1.0d) {
                currentPlayTime = 0;
            }
            Paint paint = this.f2611k;
            Rect rect = this.f2605e;
            String strValueOf = String.valueOf(currentPlayTime);
            paint.getTextBounds(strValueOf, 0, strValueOf.length(), rect);
            canvas.drawText(strValueOf, getWidth() / 2, (getHeight() / 2) + (((paint.descent() - paint.ascent()) / 2) - paint.descent()), paint);
            Intrinsics.checkNotNull(valueAnimator.getAnimatedValue(), "null cannot be cast to non-null type kotlin.Float");
            if (((Float) r0).floatValue() >= 1.0d) {
                m2453a();
            }
        }
        float f3 = this.f2612l;
        if (f3 > 0.0f) {
            RectF rectF = this.f2603c;
            if (rectF != null && (canvas3 = this.f2602b) != null) {
                canvas3.drawArc(rectF, 270.0f, f3, true, this.f2608h);
            }
            RectF rectF2 = this.f2604d;
            if (rectF2 != null && (canvas2 = this.f2602b) != null) {
                canvas2.drawOval(rectF2, this.f2609i);
            }
        }
        Bitmap bitmap = this.f2601a;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        if (i != i3 || i2 != i4) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
            bitmapCreateBitmap.eraseColor(0);
            this.f2601a = bitmapCreateBitmap;
            this.f2602b = new Canvas(bitmapCreateBitmap);
        }
        super.onSizeChanged(i, i2, i3, i4);
        C2901O3 c2901o3 = AbstractC2886N3.f1293a;
        float fM1384b = (int) (AbstractC2886N3.m1384b() * ((int) (getWidth() * 4.0f * 0.007f)));
        float fM1384b2 = (int) (AbstractC2886N3.m1384b() * ((int) (getWidth() * 14.0f * 0.007f)));
        float fM1384b3 = (int) (AbstractC2886N3.m1384b() * ((int) (getWidth() * 5.0f * 0.007f)));
        float fM1384b4 = (int) (AbstractC2886N3.m1384b() * ((int) (getWidth() * 1.5f * 0.007f)));
        RectF rectF = new RectF(fM1384b3, fM1384b3, getWidth() - fM1384b3, getHeight() - fM1384b3);
        this.f2603c = rectF;
        this.f2604d = new RectF(rectF.left + fM1384b, rectF.top + fM1384b, rectF.right - fM1384b, rectF.bottom - fM1384b);
        this.f2610j.setStrokeWidth(fM1384b4);
        this.f2611k.setTextSize(fM1384b2);
        invalidate();
    }

    public final void setTimerEventsListener(InterfaceC3345s8 interfaceC3345s8) {
        this.f2615o = interfaceC3345s8;
    }

    public final void setTimerValue(long j) {
        this.f2606f = j;
    }
}
