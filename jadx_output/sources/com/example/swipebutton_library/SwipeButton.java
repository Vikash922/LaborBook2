package com.example.swipebutton_library;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes3.dex */
public class SwipeButton extends RelativeLayout {
    private static final int CENTER = 1;
    private static final int END = 2;
    private static final int START = 0;
    private ViewGroup background;
    private TextView centerText;
    private int collapsedHeight;
    private int collapsedWidth;
    private Context context;
    private boolean hasActiveStatus;
    private boolean hasFinishAnimation;
    private boolean isActive;
    private OnActiveListener onActiveListener;
    private ImageView swipeBtn;
    private ViewGroup trail;
    private boolean trailEnabled;

    public SwipeButton(Context context) {
        super(context);
        this.trailEnabled = false;
        this.hasActiveStatus = false;
        this.hasFinishAnimation = true;
        this.isActive = false;
        init(context, null, -1, -1);
    }

    public SwipeButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.trailEnabled = false;
        this.hasActiveStatus = false;
        this.hasFinishAnimation = true;
        this.isActive = false;
        init(context, attributeSet, -1, -1);
    }

    public SwipeButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.trailEnabled = false;
        this.hasActiveStatus = false;
        this.hasFinishAnimation = true;
        this.isActive = false;
        init(context, attributeSet, i, -1);
    }

    public SwipeButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.trailEnabled = false;
        this.hasActiveStatus = false;
        this.hasFinishAnimation = true;
        this.isActive = false;
        init(context, attributeSet, i, i2);
    }

    public void setOnActiveListener(OnActiveListener onActiveListener) {
        this.onActiveListener = onActiveListener;
    }

    public void setInnerText(String str) {
        this.centerText.setText(str);
    }

    public void setInnerTextColor(int i) {
        this.centerText.setTextColor(i);
    }

    public void setInnerTextSize(int i) {
        this.centerText.setTextSize(i);
    }

    public void setInnerTextPadding(int i) {
        this.centerText.setPadding(i, i, i, i);
    }

    public void setInnerTextPaddings(int i, int i2, int i3, int i4) {
        this.centerText.setPadding(i, i2, i3, i4);
    }

    public void setInnerTextGravity(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (i == 0) {
            layoutParams.addRule(9, -1);
            layoutParams.leftMargin = 32;
        } else if (i == 1) {
            layoutParams.addRule(13, -1);
        } else if (i == 2) {
            layoutParams.addRule(21, -1);
            layoutParams.rightMargin = 32;
        }
        layoutParams.addRule(15, -1);
        this.background.updateViewLayout(this.centerText, layoutParams);
    }

    public void setOuterBackgroundDrawable(Drawable drawable) {
        if (drawable != null) {
            this.background.setBackground(drawable);
        } else {
            this.background.setBackground(ContextCompat.getDrawable(this.context, C1195R.drawable.rounded_background));
        }
    }

    public void setOuterBackgroundTint(int i) {
        if (i != -1) {
            this.background.setBackgroundTintList(ColorStateList.valueOf(i));
        }
    }

    public void setOuterBackgroundHeight(float f) {
        ViewGroup.LayoutParams layoutParams = this.background.getLayoutParams();
        layoutParams.height = (int) f;
        this.background.setLayoutParams(layoutParams);
    }

    public void setButtonBackgroundDrawable(Drawable drawable) {
        if (drawable != null) {
            this.swipeBtn.setBackground(drawable);
        } else {
            this.swipeBtn.setBackground(ContextCompat.getDrawable(this.context, C1195R.drawable.swipe_btn_background));
        }
    }

    public void setButtonBackgroundTint(int i) {
        if (i != -1) {
            this.swipeBtn.setBackgroundTintList(ColorStateList.valueOf(i));
        }
    }

    public void setButtonBackgroundImage(Drawable drawable) {
        this.swipeBtn.setImageDrawable(drawable);
    }

    public void setButtonWidth(int i) {
        ViewGroup.LayoutParams layoutParams = this.swipeBtn.getLayoutParams();
        layoutParams.width = i;
        this.swipeBtn.setLayoutParams(layoutParams);
    }

    public void setButtonHeight(int i) {
        ViewGroup.LayoutParams layoutParams = this.swipeBtn.getLayoutParams();
        layoutParams.height = i;
        this.swipeBtn.setLayoutParams(layoutParams);
    }

    public void setButtonPadding(int i) {
        this.swipeBtn.setPadding(i, i, i, i);
    }

    public void setTrailEnabled(boolean z) {
        this.trailEnabled = z;
    }

    public void setTrailBackgroundTint(int i) {
        this.trail.setBackgroundTintList(ColorStateList.valueOf(i));
    }

    public void init(Context context, AttributeSet attributeSet, int i, int i2) {
        this.context = context;
        this.background = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13, -1);
        addView(this.background, layoutParams);
        TextView textView = new TextView(context);
        this.centerText = textView;
        textView.setGravity(17);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13, -1);
        this.background.addView(textView, layoutParams2);
        this.swipeBtn = new ImageView(context);
        if (attributeSet != null && i == -1 && i2 == -1) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1195R.styleable.SwipeButton, i, C1195R.style.default_swipe_button_style);
            setOuterBackgroundDrawable(typedArrayObtainStyledAttributes.getDrawable(C1195R.styleable.SwipeButton_outer_background_drawable));
            setOuterBackgroundTint(typedArrayObtainStyledAttributes.getColor(C1195R.styleable.SwipeButton_outer_background_tint, -1));
            setOuterBackgroundHeight(typedArrayObtainStyledAttributes.getDimension(C1195R.styleable.SwipeButton_outer_background_height, -2.0f));
            textView.setText(typedArrayObtainStyledAttributes.getText(C1195R.styleable.SwipeButton_inner_text));
            textView.setTextColor(typedArrayObtainStyledAttributes.getColor(C1195R.styleable.SwipeButton_inner_text_color, -1));
            float dimension = typedArrayObtainStyledAttributes.getDimension(C1195R.styleable.SwipeButton_inner_text_padding, -1.0f);
            float dimension2 = typedArrayObtainStyledAttributes.getDimension(C1195R.styleable.SwipeButton_inner_text_left_padding, 0.0f);
            float dimension3 = typedArrayObtainStyledAttributes.getDimension(C1195R.styleable.SwipeButton_inner_text_top_padding, 0.0f);
            float dimension4 = typedArrayObtainStyledAttributes.getDimension(C1195R.styleable.SwipeButton_inner_text_right_padding, 0.0f);
            float dimension5 = typedArrayObtainStyledAttributes.getDimension(C1195R.styleable.SwipeButton_inner_text_bottom_padding, 0.0f);
            if (dimension != -1.0f) {
                int i3 = (int) dimension;
                textView.setPadding(i3, i3, i3, i3);
            } else {
                textView.setPadding((int) dimension2, (int) dimension3, (int) dimension4, (int) dimension5);
            }
            float fConvertPixelsToSp = convertPixelsToSp(typedArrayObtainStyledAttributes.getDimension(C1195R.styleable.SwipeButton_inner_text_size, 0.0f), context);
            if (fConvertPixelsToSp != 0.0f) {
                textView.setTextSize(fConvertPixelsToSp);
            } else {
                textView.setTextSize(12.0f);
            }
            setInnerTextGravity(typedArrayObtainStyledAttributes.getInt(C1195R.styleable.SwipeButton_inner_text_gravity, 1));
            this.collapsedWidth = (int) typedArrayObtainStyledAttributes.getDimension(C1195R.styleable.SwipeButton_button_width, -2.0f);
            this.collapsedHeight = (int) typedArrayObtainStyledAttributes.getDimension(C1195R.styleable.SwipeButton_button_height, -2.0f);
            setButtonBackgroundDrawable(typedArrayObtainStyledAttributes.getDrawable(C1195R.styleable.SwipeButton_button_background_drawable));
            setButtonBackgroundTint(typedArrayObtainStyledAttributes.getColor(C1195R.styleable.SwipeButton_button_background_tint, -1));
            setButtonBackgroundImage(typedArrayObtainStyledAttributes.getDrawable(C1195R.styleable.SwipeButton_button_background_src));
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(this.collapsedWidth, this.collapsedHeight);
            layoutParams3.addRule(9, -1);
            layoutParams3.addRule(15, -1);
            addView(this.swipeBtn, layoutParams3);
            setButtonPadding((int) typedArrayObtainStyledAttributes.getDimension(C1195R.styleable.SwipeButton_button_background_padding, 0.0f));
            this.swipeBtn.setElevation(1.0f);
            this.trailEnabled = typedArrayObtainStyledAttributes.getBoolean(C1195R.styleable.SwipeButton_trail_enabled, false);
            int color = typedArrayObtainStyledAttributes.getColor(C1195R.styleable.SwipeButton_trail_background_tint, getResources().getColor(C1195R.color.gray));
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(C1195R.styleable.SwipeButton_outer_background_drawable);
            if (this.trailEnabled) {
                this.trail = new RelativeLayout(context);
                RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(this.collapsedWidth, this.collapsedHeight);
                layoutParams4.addRule(9, -1);
                layoutParams4.addRule(15, -1);
                this.trail.setBackgroundTintList(ColorStateList.valueOf(color));
                this.trail.setElevation(0.0f);
                if (drawable != null) {
                    this.trail.setBackground(drawable);
                } else {
                    this.trail.setBackground(ContextCompat.getDrawable(context, C1195R.drawable.rounded_background));
                }
                addView(this.trail, layoutParams4);
            }
            this.hasActiveStatus = typedArrayObtainStyledAttributes.getBoolean(C1195R.styleable.SwipeButton_has_active_status, false);
            this.hasFinishAnimation = typedArrayObtainStyledAttributes.getBoolean(C1195R.styleable.SwipeButton_has_finish_animation, true);
            typedArrayObtainStyledAttributes.recycle();
        }
        setOnTouchListener(getButtonTouchListener());
    }

    private View.OnTouchListener getButtonTouchListener() {
        return new View.OnTouchListener() { // from class: com.example.swipebutton_library.SwipeButton.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    SwipeButton swipeButton = SwipeButton.this;
                    return !swipeButton.isTouchOutsideInitialPosition(motionEvent, swipeButton.swipeBtn);
                }
                if (action != 1) {
                    if (action != 2) {
                        return false;
                    }
                    if (motionEvent.getX() > SwipeButton.this.swipeBtn.getWidth() / 2 && motionEvent.getX() + (SwipeButton.this.swipeBtn.getWidth() / 2) < SwipeButton.this.getWidth()) {
                        SwipeButton.this.swipeBtn.setX(motionEvent.getX() - (SwipeButton.this.swipeBtn.getWidth() / 2));
                        SwipeButton.this.centerText.setAlpha(1.0f - (((SwipeButton.this.swipeBtn.getX() + SwipeButton.this.swipeBtn.getWidth()) * 1.3f) / SwipeButton.this.getWidth()));
                    }
                    if (motionEvent.getX() + (SwipeButton.this.swipeBtn.getWidth() / 2) > SwipeButton.this.getWidth() && SwipeButton.this.swipeBtn.getX() + (SwipeButton.this.swipeBtn.getWidth() / 2) < SwipeButton.this.getWidth()) {
                        SwipeButton.this.swipeBtn.setX(SwipeButton.this.getWidth() - SwipeButton.this.swipeBtn.getWidth());
                    }
                    if (motionEvent.getX() < SwipeButton.this.swipeBtn.getWidth() / 2) {
                        SwipeButton.this.swipeBtn.setX(0.0f);
                    }
                    SwipeButton.this.expandTrail();
                    return true;
                }
                if (SwipeButton.this.isActive) {
                    if (SwipeButton.this.hasFinishAnimation) {
                        SwipeButton.this.deactivateButton();
                    }
                    if (SwipeButton.this.onActiveListener != null) {
                        SwipeButton.this.onActiveListener.onActive();
                    }
                } else if (SwipeButton.this.swipeBtn.getX() + SwipeButton.this.swipeBtn.getWidth() > ((double) SwipeButton.this.background.getWidth()) * 0.9d) {
                    if (SwipeButton.this.hasActiveStatus) {
                        SwipeButton.this.activateButton();
                    } else {
                        if (SwipeButton.this.onActiveListener != null) {
                            SwipeButton.this.onActiveListener.onActive();
                        }
                        if (SwipeButton.this.hasFinishAnimation) {
                            SwipeButton.this.moveButtonBack();
                        }
                    }
                } else {
                    SwipeButton.this.moveButtonBack();
                }
                return true;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void activateButton() {
        final ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.swipeBtn.getX(), this.background.getX());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.example.swipebutton_library.SwipeButton$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.m77x2453b342(valueAnimatorOfFloat, valueAnimator);
            }
        });
        final ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.collapsedWidth, this.background.getWidth());
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.example.swipebutton_library.SwipeButton$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.m78xbef475c3(valueAnimatorOfInt, valueAnimator);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.example.swipebutton_library.SwipeButton.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                SwipeButton.this.isActive = true;
            }
        });
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfInt);
        animatorSet.start();
    }

    /* JADX INFO: renamed from: lambda$activateButton$0$com-example-swipebutton_library-SwipeButton */
    /* synthetic */ void m77x2453b342(ValueAnimator valueAnimator, ValueAnimator valueAnimator2) {
        this.swipeBtn.setX(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: renamed from: lambda$activateButton$1$com-example-swipebutton_library-SwipeButton */
    /* synthetic */ void m78xbef475c3(ValueAnimator valueAnimator, ValueAnimator valueAnimator2) {
        ViewGroup.LayoutParams layoutParams = this.swipeBtn.getLayoutParams();
        layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.swipeBtn.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deactivateButton() {
        final ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.swipeBtn.getWidth(), this.collapsedWidth);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.example.swipebutton_library.SwipeButton$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.m79xaa372a05(valueAnimatorOfInt, valueAnimator);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.example.swipebutton_library.SwipeButton.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                SwipeButton.this.isActive = false;
            }
        });
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.centerText, "alpha", 1.0f), valueAnimatorOfInt);
        animatorSet.start();
    }

    /* JADX INFO: renamed from: lambda$deactivateButton$2$com-example-swipebutton_library-SwipeButton */
    /* synthetic */ void m79xaa372a05(ValueAnimator valueAnimator, ValueAnimator valueAnimator2) {
        ViewGroup.LayoutParams layoutParams = this.swipeBtn.getLayoutParams();
        layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.swipeBtn.setLayoutParams(layoutParams);
        expandTrail();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expandTrail() {
        if (this.trailEnabled) {
            ViewGroup.LayoutParams layoutParams = this.trail.getLayoutParams();
            layoutParams.width = (int) (this.swipeBtn.getX() + this.collapsedWidth);
            this.trail.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveButtonBack() {
        final ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.swipeBtn.getX(), 0.0f);
        valueAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.example.swipebutton_library.SwipeButton$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.m80xc06fc9ea(valueAnimatorOfFloat, valueAnimator);
            }
        });
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.centerText, "alpha", 1.0f);
        valueAnimatorOfFloat.setDuration(200L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat, valueAnimatorOfFloat);
        animatorSet.start();
    }

    /* JADX INFO: renamed from: lambda$moveButtonBack$3$com-example-swipebutton_library-SwipeButton */
    /* synthetic */ void m80xc06fc9ea(ValueAnimator valueAnimator, ValueAnimator valueAnimator2) {
        this.swipeBtn.setX(((Float) valueAnimator.getAnimatedValue()).floatValue());
        expandTrail();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isTouchOutsideInitialPosition(MotionEvent motionEvent, View view) {
        return motionEvent.getX() > view.getX() + ((float) view.getWidth());
    }

    float convertPixelsToSp(float f, Context context) {
        return f / context.getResources().getDisplayMetrics().scaledDensity;
    }
}
