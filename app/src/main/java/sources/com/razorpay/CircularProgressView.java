package com.razorpay;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.inmobi.commons.core.configs.AdConfig;

/* JADX INFO: loaded from: classes5.dex */
class CircularProgressView extends View {
    private static final float l$1_I$l$ = 15.0f;
    private int $$_$I1l1_;
    private boolean $I__I;
    private float $l$I1I11I1;
    private int $l_I$1;
    private int $lll$_lIl;
    private ValueAnimator I1I_l1;
    private int I1lII;
    private float IIII$1$_I;
    private RectF I__1l;
    private float _$_l_$1l$;
    private boolean _1__;
    private int __II$$;
    private int __Il11I1l;
    private float ___Il$;
    private Context __l1_;
    private int _l_1l__;
    private float _l_l_1IlI;
    private Paint _llI;
    private float l$$$11Il1;
    private float lI_l1Il_;
    private ValueAnimator llIl;
    private AnimatorSet ll_$$111;

    public CircularProgressView(Context context) {
        super(context);
        this._l_1l__ = 0;
        init(null, 0, context);
    }

    public CircularProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._l_1l__ = 0;
        init(attributeSet, 0, context);
    }

    public CircularProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._l_1l__ = 0;
        init(attributeSet, i, context);
    }

    protected void init(AttributeSet attributeSet, int i, Context context) {
        l$1_I$l$(attributeSet, i, context);
        this._llI = new Paint(1);
        __l1_();
        this.I__1l = new RectF();
    }

    private void l$1_I$l$(AttributeSet attributeSet, int i, Context context) {
        getResources();
        this.$l$I1I11I1 = 0.0f;
        this.lI_l1Il_ = 100.0f;
        this.$lll$_lIl = l$1_I$l$(context, 3);
        this._1__ = true;
        this.$I__I = true;
        this._l_l_1IlI = -90.0f;
        this.l$$$11Il1 = -90.0f;
        this.__II$$ = Color.parseColor("#4aa3df");
        this.__Il11I1l = 4000;
        this.$l_I$1 = AdConfig.DEFAULT_AD_QUALITY_RETRY_INTERVAL;
        this.I1lII = 500;
        this.$$_$I1l1_ = 3;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int measuredWidth = getMeasuredWidth() - paddingLeft;
        int measuredHeight = getMeasuredHeight() - paddingTop;
        if (measuredWidth >= measuredHeight) {
            measuredWidth = measuredHeight;
        }
        this._l_1l__ = measuredWidth;
        setMeasuredDimension(paddingLeft + measuredWidth, measuredWidth + paddingTop);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i >= i2) {
            i = i2;
        }
        this._l_1l__ = i;
        l$1_I$l$();
    }

    private void l$1_I$l$() {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        RectF rectF = this.I__1l;
        int i = this.$lll$_lIl;
        int i2 = this._l_1l__;
        rectF.set(paddingLeft + i, paddingTop + i, (i2 - paddingLeft) - i, (i2 - paddingTop) - i);
    }

    private void __l1_() {
        this._llI.setColor(this.__II$$);
        this._llI.setStyle(Paint.Style.STROKE);
        this._llI.setStrokeWidth(this.$lll$_lIl);
        this._llI.setStrokeCap(Paint.Cap.BUTT);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = ((isInEditMode() ? this.$l$I1I11I1 : this.___Il$) / this.lI_l1Il_) * 360.0f;
        if (!this._1__) {
            canvas.drawArc(this.I__1l, this.l$$$11Il1, f, false, this._llI);
        } else {
            canvas.drawArc(this.I__1l, this.l$$$11Il1 + this.IIII$1$_I, this._$_l_$1l$, false, this._llI);
        }
    }

    public boolean isIndeterminate() {
        return this._1__;
    }

    public void setIndeterminate(boolean z) {
        boolean z2 = this._1__ == z;
        this._1__ = z;
        if (z2) {
            resetAnimation();
        }
    }

    public int getThickness() {
        return this.$lll$_lIl;
    }

    public void setThickness(int i) {
        this.$lll$_lIl = i;
        __l1_();
        l$1_I$l$();
        invalidate();
    }

    public int getColor() {
        return this.__II$$;
    }

    public void setColor(int i) {
        this.__II$$ = i;
        __l1_();
        invalidate();
    }

    public float getMaxProgress() {
        return this.lI_l1Il_;
    }

    public void setMaxProgress(float f) {
        this.lI_l1Il_ = f;
        invalidate();
    }

    public float getProgress() {
        return this.$l$I1I11I1;
    }

    public void setProgress(float f) {
        this.$l$I1I11I1 = f;
        if (!this._1__) {
            ValueAnimator valueAnimator = this.I1I_l1;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.I1I_l1.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.___Il$, f);
            this.I1I_l1 = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(this.I1lII);
            this.I1I_l1.setInterpolator(new LinearInterpolator());
            this.I1I_l1.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.razorpay.CircularProgressView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    CircularProgressView.this.___Il$ = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    CircularProgressView.this.invalidate();
                }
            });
            this.I1I_l1.start();
        }
        invalidate();
    }

    public void startAnimation() {
        resetAnimation();
    }

    public void resetAnimation() {
        ValueAnimator valueAnimator = this.llIl;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.llIl.cancel();
        }
        ValueAnimator valueAnimator2 = this.I1I_l1;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.I1I_l1.cancel();
        }
        AnimatorSet animatorSet = this.ll_$$111;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.ll_$$111.cancel();
        }
        int i = 0;
        if (!this._1__) {
            float f = this._l_l_1IlI;
            this.l$$$11Il1 = f;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, 360.0f + f);
            this.llIl = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(this.$l_I$1);
            this.llIl.setInterpolator(new DecelerateInterpolator(2.0f));
            this.llIl.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.razorpay.CircularProgressView.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    CircularProgressView.this.l$$$11Il1 = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                    CircularProgressView.this.invalidate();
                }
            });
            this.llIl.start();
            this.___Il$ = 0.0f;
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, this.$l$I1I11I1);
            this.I1I_l1 = valueAnimatorOfFloat2;
            valueAnimatorOfFloat2.setDuration(this.I1lII);
            this.I1I_l1.setInterpolator(new LinearInterpolator());
            this.I1I_l1.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.razorpay.CircularProgressView.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    CircularProgressView.this.___Il$ = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                    CircularProgressView.this.invalidate();
                }
            });
            this.I1I_l1.start();
            return;
        }
        this._$_l_$1l$ = l$1_I$l$;
        this.ll_$$111 = new AnimatorSet();
        AnimatorSet animatorSet2 = null;
        while (i < this.$$_$I1l1_) {
            AnimatorSet animatorSetL$1_I$l$ = l$1_I$l$(i);
            AnimatorSet.Builder builderPlay = this.ll_$$111.play(animatorSetL$1_I$l$);
            if (animatorSet2 != null) {
                builderPlay.after(animatorSet2);
            }
            i++;
            animatorSet2 = animatorSetL$1_I$l$;
        }
        this.ll_$$111.addListener(new AnimatorListenerAdapter() { // from class: com.razorpay.CircularProgressView.4
            boolean wasCancelled = false;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.wasCancelled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (this.wasCancelled) {
                    return;
                }
                CircularProgressView.this.resetAnimation();
            }
        });
        this.ll_$$111.start();
    }

    public void stopAnimation() {
        ValueAnimator valueAnimator = this.llIl;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.llIl = null;
        }
        ValueAnimator valueAnimator2 = this.I1I_l1;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.I1I_l1 = null;
        }
        AnimatorSet animatorSet = this.ll_$$111;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.ll_$$111 = null;
        }
    }

    private AnimatorSet l$1_I$l$(float f) {
        final float f2 = (((r0 - 1) * 360.0f) / this.$$_$I1l1_) + l$1_I$l$;
        final float f3 = ((f2 - l$1_I$l$) * f) - 90.0f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(l$1_I$l$, f2);
        valueAnimatorOfFloat.setDuration((this.__Il11I1l / this.$$_$I1l1_) / 2);
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator(1.0f));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.razorpay.CircularProgressView.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularProgressView.this._$_l_$1l$ = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CircularProgressView.this.invalidate();
            }
        });
        int i = this.$$_$I1l1_;
        float f4 = (0.5f + f) * 720.0f;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat((f * 720.0f) / i, f4 / i);
        valueAnimatorOfFloat2.setDuration((this.__Il11I1l / this.$$_$I1l1_) / 2);
        valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.razorpay.CircularProgressView.6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularProgressView.this.IIII$1$_I = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(f3, (f3 + f2) - l$1_I$l$);
        valueAnimatorOfFloat3.setDuration((this.__Il11I1l / this.$$_$I1l1_) / 2);
        valueAnimatorOfFloat3.setInterpolator(new DecelerateInterpolator(1.0f));
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.razorpay.CircularProgressView.7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularProgressView.this.l$$$11Il1 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CircularProgressView circularProgressView = CircularProgressView.this;
                circularProgressView._$_l_$1l$ = (f2 - circularProgressView.l$$$11Il1) + f3;
                CircularProgressView.this.invalidate();
            }
        });
        int i2 = this.$$_$I1l1_;
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(f4 / i2, ((f + 1.0f) * 720.0f) / i2);
        valueAnimatorOfFloat4.setDuration((this.__Il11I1l / this.$$_$I1l1_) / 2);
        valueAnimatorOfFloat4.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.razorpay.CircularProgressView.8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularProgressView.this.IIII$1$_I = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(valueAnimatorOfFloat).with(valueAnimatorOfFloat2);
        animatorSet.play(valueAnimatorOfFloat3).with(valueAnimatorOfFloat4).after(valueAnimatorOfFloat2);
        return animatorSet;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.$I__I) {
            startAnimation();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopAnimation();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        int visibility = getVisibility();
        super.setVisibility(i);
        if (i != visibility) {
            if (i == 0) {
                resetAnimation();
            } else if (i == 8 || i == 4) {
                stopAnimation();
            }
        }
    }

    private int l$1_I$l$(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }
}
