package com.boilerplate.uikit.views.buttons;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import androidx.core.content.ContextCompat;
import com.boilerplate.uikit.C1111R;
import com.boilerplate.uikit.views.util.Utils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B#\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tB\u001b\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\u000b¨\u0006\f"}, m2722d2 = {"Lcom/boilerplate/uikit/views/buttons/RoundedGreenButton;", "Lcom/boilerplate/uikit/views/buttons/ActionButton;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyle", "", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "uikit_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class RoundedGreenButton extends ActionButton {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoundedGreenButton(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        setAllCaps(false);
        setElevation(0.0f);
        setStateListAnimator(null);
        Utils utils = Utils.INSTANCE;
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        setCornerRadius(utils.dpToPx(100.0f, context2));
        setInsetBottom(0);
        setInsetTop(0);
        Context context3 = getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "getContext(...)");
        setTypeface(utils.getFont(context3, C1111R.font.inter_bold));
        Context context4 = getContext();
        Intrinsics.checkNotNullExpressionValue(context4, "getContext(...)");
        setBackgroundTintList(ColorStateList.valueOf(utils.getThemeAttrData(context4, C1111R.attr.buttonGreenColor)));
        Context context5 = getContext();
        Intrinsics.checkNotNullExpressionValue(context5, "getContext(...)");
        setTextColor(utils.getThemeAttrData(context5, C1111R.attr.buttonEnabledTextColor));
        Context context6 = getContext();
        Intrinsics.checkNotNullExpressionValue(context6, "getContext(...)");
        setEnabledBackgroundTintColor(Integer.valueOf(utils.getThemeAttrData(context6, C1111R.attr.buttonGreenColor)));
        Context context7 = getContext();
        Intrinsics.checkNotNullExpressionValue(context7, "getContext(...)");
        setDisabledBackgroundTintColor(Integer.valueOf(utils.getThemeAttrData(context7, C1111R.attr.buttonDisabledBgColor)));
        Context context8 = getContext();
        Intrinsics.checkNotNullExpressionValue(context8, "getContext(...)");
        setEnabledTextColor(Integer.valueOf(utils.getThemeAttrData(context8, C1111R.attr.buttonEnabledTextColor)));
        Context context9 = getContext();
        Intrinsics.checkNotNullExpressionValue(context9, "getContext(...)");
        setDisabledTextColor(Integer.valueOf(utils.getThemeAttrData(context9, C1111R.attr.buttonDisabledTextColor)));
        setRippleColor(ColorStateList.valueOf(ContextCompat.getColor(getContext(), C1111R.color.ripple)));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoundedGreenButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        setAllCaps(false);
        setElevation(0.0f);
        setStateListAnimator(null);
        Utils utils = Utils.INSTANCE;
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        setCornerRadius(utils.dpToPx(100.0f, context2));
        setInsetBottom(0);
        setInsetTop(0);
        Context context3 = getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "getContext(...)");
        setTypeface(utils.getFont(context3, C1111R.font.inter_bold));
        Context context4 = getContext();
        Intrinsics.checkNotNullExpressionValue(context4, "getContext(...)");
        setBackgroundTintList(ColorStateList.valueOf(utils.getThemeAttrData(context4, C1111R.attr.buttonGreenColor)));
        Context context5 = getContext();
        Intrinsics.checkNotNullExpressionValue(context5, "getContext(...)");
        setTextColor(utils.getThemeAttrData(context5, C1111R.attr.buttonEnabledTextColor));
        Context context6 = getContext();
        Intrinsics.checkNotNullExpressionValue(context6, "getContext(...)");
        setEnabledBackgroundTintColor(Integer.valueOf(utils.getThemeAttrData(context6, C1111R.attr.buttonGreenColor)));
        Context context7 = getContext();
        Intrinsics.checkNotNullExpressionValue(context7, "getContext(...)");
        setDisabledBackgroundTintColor(Integer.valueOf(utils.getThemeAttrData(context7, C1111R.attr.buttonDisabledBgColor)));
        Context context8 = getContext();
        Intrinsics.checkNotNullExpressionValue(context8, "getContext(...)");
        setEnabledTextColor(Integer.valueOf(utils.getThemeAttrData(context8, C1111R.attr.buttonEnabledTextColor)));
        Context context9 = getContext();
        Intrinsics.checkNotNullExpressionValue(context9, "getContext(...)");
        setDisabledTextColor(Integer.valueOf(utils.getThemeAttrData(context9, C1111R.attr.buttonDisabledTextColor)));
        setRippleColor(ColorStateList.valueOf(ContextCompat.getColor(getContext(), C1111R.color.ripple)));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoundedGreenButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        setAllCaps(false);
        setElevation(0.0f);
        setStateListAnimator(null);
        Utils utils = Utils.INSTANCE;
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        setCornerRadius(utils.dpToPx(100.0f, context2));
        setInsetBottom(0);
        setInsetTop(0);
        Context context3 = getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "getContext(...)");
        setTypeface(utils.getFont(context3, C1111R.font.inter_bold));
        Context context4 = getContext();
        Intrinsics.checkNotNullExpressionValue(context4, "getContext(...)");
        setBackgroundTintList(ColorStateList.valueOf(utils.getThemeAttrData(context4, C1111R.attr.buttonGreenColor)));
        Context context5 = getContext();
        Intrinsics.checkNotNullExpressionValue(context5, "getContext(...)");
        setTextColor(utils.getThemeAttrData(context5, C1111R.attr.buttonEnabledTextColor));
        Context context6 = getContext();
        Intrinsics.checkNotNullExpressionValue(context6, "getContext(...)");
        setEnabledBackgroundTintColor(Integer.valueOf(utils.getThemeAttrData(context6, C1111R.attr.buttonGreenColor)));
        Context context7 = getContext();
        Intrinsics.checkNotNullExpressionValue(context7, "getContext(...)");
        setDisabledBackgroundTintColor(Integer.valueOf(utils.getThemeAttrData(context7, C1111R.attr.buttonDisabledBgColor)));
        Context context8 = getContext();
        Intrinsics.checkNotNullExpressionValue(context8, "getContext(...)");
        setEnabledTextColor(Integer.valueOf(utils.getThemeAttrData(context8, C1111R.attr.buttonEnabledTextColor)));
        Context context9 = getContext();
        Intrinsics.checkNotNullExpressionValue(context9, "getContext(...)");
        setDisabledTextColor(Integer.valueOf(utils.getThemeAttrData(context9, C1111R.attr.buttonDisabledTextColor)));
        setRippleColor(ColorStateList.valueOf(ContextCompat.getColor(getContext(), C1111R.color.ripple)));
    }
}
