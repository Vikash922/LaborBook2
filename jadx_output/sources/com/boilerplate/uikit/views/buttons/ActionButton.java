package com.boilerplate.uikit.views.buttons;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.core.content.ContextCompat;
import androidx.swiperefreshlayout.widget.CircularProgressDrawable;
import com.boilerplate.uikit.C1111R;
import com.google.android.material.button.MaterialButton;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B#\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tB\u001b\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\u000bJ\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\u0015\u0010$\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010#¢\u0006\u0002\u0010&R\u001e\u0010\f\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\u0016\u0010\u000e\"\u0004\b\u0017\u0010\u0010R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\u0019\u0010\u000e\"\u0004\b\u001a\u0010\u0010R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\u001c\u0010\u000e\"\u0004\b\u001d\u0010\u0010R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, m2722d2 = {"Lcom/boilerplate/uikit/views/buttons/ActionButton;", "Lcom/google/android/material/button/MaterialButton;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyle", "", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "enabledBackgroundTintColor", "getEnabledBackgroundTintColor", "()Ljava/lang/Integer;", "setEnabledBackgroundTintColor", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "disabledBackgroundTintColor", "getDisabledBackgroundTintColor", "setDisabledBackgroundTintColor", "enabledTextColor", "getEnabledTextColor", "setEnabledTextColor", "disabledTextColor", "getDisabledTextColor", "setDisabledTextColor", "progressBarColor", "getProgressBarColor", "setProgressBarColor", "textBeforeLoading", "", "setEnabled", "", CommonCssConstants.ENABLED, "", "setShowProgress", "showProgress", "(Ljava/lang/Boolean;)V", "uikit_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public class ActionButton extends MaterialButton {
    private Integer disabledBackgroundTintColor;
    private Integer disabledTextColor;
    private Integer enabledBackgroundTintColor;
    private Integer enabledTextColor;
    private Integer progressBarColor;
    private String textBeforeLoading;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionButton(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final Integer getDisabledBackgroundTintColor() {
        return this.disabledBackgroundTintColor;
    }

    public final Integer getDisabledTextColor() {
        return this.disabledTextColor;
    }

    public final Integer getEnabledBackgroundTintColor() {
        return this.enabledBackgroundTintColor;
    }

    public final Integer getEnabledTextColor() {
        return this.enabledTextColor;
    }

    public final Integer getProgressBarColor() {
        return this.progressBarColor;
    }

    public final void setDisabledBackgroundTintColor(Integer num) {
        this.disabledBackgroundTintColor = num;
    }

    public final void setDisabledTextColor(Integer num) {
        this.disabledTextColor = num;
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean enabled) {
        Context context;
        int i;
        super.setEnabled(enabled);
        if (isEnabled()) {
            Integer num = this.enabledBackgroundTintColor;
            setBackgroundTintList(num != null ? ColorStateList.valueOf(num.intValue()) : null);
            Integer num2 = this.enabledTextColor;
            if (num2 != null) {
                setTextColor(ColorStateList.valueOf(num2.intValue()));
            }
            context = getContext();
            i = C1111R.color.present;
        } else {
            Integer num3 = this.disabledBackgroundTintColor;
            setBackgroundTintList(num3 != null ? ColorStateList.valueOf(num3.intValue()) : null);
            Integer num4 = this.disabledTextColor;
            if (num4 != null) {
                setTextColor(ColorStateList.valueOf(num4.intValue()));
            }
            context = getContext();
            i = C1111R.color.absent;
        }
        setStrokeColor(ColorStateList.valueOf(ContextCompat.getColor(context, i)));
    }

    public final void setEnabledBackgroundTintColor(Integer num) {
        this.enabledBackgroundTintColor = num;
    }

    public final void setEnabledTextColor(Integer num) {
        this.enabledTextColor = num;
    }

    public final void setProgressBarColor(Integer num) {
        this.progressBarColor = num;
    }

    public final void setShowProgress(Boolean showProgress) {
        CircularProgressDrawable circularProgressDrawable;
        if (Intrinsics.areEqual(showProgress, Boolean.TRUE)) {
            setMaxLines(1);
            setEllipsize(TextUtils.TruncateAt.END);
            setIconGravity(2);
            this.textBeforeLoading = getText().toString();
            setText("");
            circularProgressDrawable = new CircularProgressDrawable(getContext());
            circularProgressDrawable.setStyle(1);
            Integer num = this.progressBarColor;
            if (num != null) {
                circularProgressDrawable.setColorSchemeColors(num.intValue());
            }
            circularProgressDrawable.start();
        } else {
            CharSequence charSequence = this.textBeforeLoading;
            circularProgressDrawable = null;
            if (charSequence != null) {
                setText(charSequence);
                this.textBeforeLoading = null;
            }
        }
        setIcon(circularProgressDrawable);
        if (getIcon() != null) {
            getIcon().setCallback(new Drawable.Callback() { // from class: com.boilerplate.uikit.views.buttons.ActionButton.setShowProgress.3
                @Override // android.graphics.drawable.Drawable.Callback
                public void invalidateDrawable(Drawable who) {
                    Intrinsics.checkNotNullParameter(who, "who");
                    ActionButton.this.invalidate();
                }

                @Override // android.graphics.drawable.Drawable.Callback
                public void scheduleDrawable(Drawable who, Runnable what, long when) {
                    Intrinsics.checkNotNullParameter(who, "who");
                    Intrinsics.checkNotNullParameter(what, "what");
                }

                @Override // android.graphics.drawable.Drawable.Callback
                public void unscheduleDrawable(Drawable who, Runnable what) {
                    Intrinsics.checkNotNullParameter(who, "who");
                    Intrinsics.checkNotNullParameter(what, "what");
                }
            });
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1111R.styleable.ActionButton);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        try {
            Result.Companion companion = Result.INSTANCE;
            this.enabledBackgroundTintColor = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(C1111R.styleable.ActionButton_buttonEnabledBgColor, ContextCompat.getColor(context, C1111R.color.button_enabled_bg_color)));
            this.disabledBackgroundTintColor = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(C1111R.styleable.ActionButton_buttonDisabledBgColor, ContextCompat.getColor(context, C1111R.color.button_disabled_bg_color)));
            this.enabledTextColor = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(C1111R.styleable.ActionButton_buttonEnabledTextColor, ContextCompat.getColor(context, C1111R.color.button_enabled_text_color)));
            this.disabledTextColor = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(C1111R.styleable.ActionButton_buttonDisabledTextColor, ContextCompat.getColor(context, C1111R.color.button_disabled_text_color)));
            this.progressBarColor = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(C1111R.styleable.ActionButton_buttonProgressColor, ContextCompat.getColor(context, C1111R.color.progress_bar_color)));
            Result.m3325constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3325constructorimpl(ResultKt.createFailure(th));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1111R.styleable.ActionButton, i, 0);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        try {
            Result.Companion companion = Result.INSTANCE;
            this.enabledBackgroundTintColor = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(C1111R.styleable.ActionButton_buttonEnabledBgColor, ContextCompat.getColor(context, C1111R.color.button_enabled_bg_color)));
            Integer num = this.enabledTextColor;
            setBackgroundTintList(num != null ? ColorStateList.valueOf(num.intValue()) : null);
            this.disabledBackgroundTintColor = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(C1111R.styleable.ActionButton_buttonDisabledBgColor, ContextCompat.getColor(context, C1111R.color.button_disabled_bg_color)));
            this.enabledTextColor = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(C1111R.styleable.ActionButton_buttonEnabledTextColor, ContextCompat.getColor(context, C1111R.color.button_enabled_text_color)));
            this.disabledTextColor = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(C1111R.styleable.ActionButton_buttonDisabledTextColor, ContextCompat.getColor(context, C1111R.color.button_disabled_text_color)));
            this.progressBarColor = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(C1111R.styleable.ActionButton_buttonProgressColor, ContextCompat.getColor(context, C1111R.color.progress_bar_color)));
            Result.m3325constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3325constructorimpl(ResultKt.createFailure(th));
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
