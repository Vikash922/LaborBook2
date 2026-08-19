.class public final Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;
.super Lcom/boilerplate/uikit/views/buttons/ActionButton;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B#\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u001b\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;",
        "Lcom/boilerplate/uikit/views/buttons/ActionButton;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyle",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "(Landroid/content/Context;)V",
        "uikit_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/boilerplate/uikit/views/buttons/ActionButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setAllCaps(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setElevation(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    sget-object v0, Lcom/boilerplate/uikit/views/util/Utils;->INSTANCE:Lcom/boilerplate/uikit/views/util/Utils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v0, v3, v1}, Lcom/boilerplate/uikit/views/util/Utils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setInsetBottom(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setInsetTop(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/boilerplate/uikit/R$font;->inter_bold:I

    invoke-virtual {v0, p1, v1}, Lcom/boilerplate/uikit/views/util/Utils;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/boilerplate/uikit/R$attr;->buttonEnabledBgColor:I

    invoke-virtual {v0, p1, v1}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/boilerplate/uikit/R$attr;->buttonEnabledTextColor:I

    invoke-virtual {v0, p1, v1}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/boilerplate/uikit/R$attr;->buttonEnabledBgColor:I

    invoke-virtual {v0, p1, v1}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/buttons/ActionButton;->setEnabledBackgroundTintColor(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/boilerplate/uikit/R$attr;->buttonDisabledBgColor:I

    invoke-virtual {v0, p1, v1}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/buttons/ActionButton;->setDisabledBackgroundTintColor(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/boilerplate/uikit/R$attr;->buttonEnabledTextColor:I

    invoke-virtual {v0, p1, v1}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/buttons/ActionButton;->setEnabledTextColor(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/boilerplate/uikit/R$attr;->buttonDisabledTextColor:I

    invoke-virtual {v0, p1, v1}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/buttons/ActionButton;->setDisabledTextColor(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/boilerplate/uikit/R$color;->ripple:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/boilerplate/uikit/views/buttons/ActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setAllCaps(Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->setElevation(F)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    sget-object p2, Lcom/boilerplate/uikit/views/util/Utils;->INSTANCE:Lcom/boilerplate/uikit/views/util/Utils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {p2, v2, v0}, Lcom/boilerplate/uikit/views/util/Utils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setInsetBottom(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setInsetTop(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/boilerplate/uikit/R$font;->inter_bold:I

    invoke-virtual {p2, p1, v0}, Lcom/boilerplate/uikit/views/util/Utils;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/boilerplate/uikit/R$attr;->buttonEnabledBgColor:I

    invoke-virtual {p2, p1, v0}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/boilerplate/uikit/R$attr;->buttonEnabledTextColor:I

    invoke-virtual {p2, p1, v0}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/boilerplate/uikit/R$attr;->buttonEnabledBgColor:I

    invoke-virtual {p2, p1, v0}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/buttons/ActionButton;->setEnabledBackgroundTintColor(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/boilerplate/uikit/R$attr;->buttonDisabledBgColor:I

    invoke-virtual {p2, p1, v0}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/buttons/ActionButton;->setDisabledBackgroundTintColor(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/boilerplate/uikit/R$attr;->buttonEnabledTextColor:I

    invoke-virtual {p2, p1, v0}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/buttons/ActionButton;->setEnabledTextColor(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/boilerplate/uikit/R$attr;->buttonDisabledTextColor:I

    invoke-virtual {p2, p1, v0}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/buttons/ActionButton;->setDisabledTextColor(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/boilerplate/uikit/R$color;->ripple:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/boilerplate/uikit/views/buttons/ActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setAllCaps(Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->setElevation(F)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    sget-object p2, Lcom/boilerplate/uikit/views/util/Utils;->INSTANCE:Lcom/boilerplate/uikit/views/util/Utils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "getContext(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p2, v1, p3}, Lcom/boilerplate/uikit/views/util/Utils;->dpToPx(FLandroid/content/Context;)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setInsetBottom(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setInsetTop(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/boilerplate/uikit/R$font;->inter_bold:I

    invoke-virtual {p2, p1, p3}, Lcom/boilerplate/uikit/views/util/Utils;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/boilerplate/uikit/R$attr;->buttonEnabledBgColor:I

    invoke-virtual {p2, p1, p3}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/boilerplate/uikit/R$attr;->buttonEnabledTextColor:I

    invoke-virtual {p2, p1, p3}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/boilerplate/uikit/R$attr;->buttonEnabledBgColor:I

    invoke-virtual {p2, p1, p3}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/buttons/ActionButton;->setEnabledBackgroundTintColor(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/boilerplate/uikit/R$attr;->buttonDisabledBgColor:I

    invoke-virtual {p2, p1, p3}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/buttons/ActionButton;->setDisabledBackgroundTintColor(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/boilerplate/uikit/R$attr;->buttonEnabledTextColor:I

    invoke-virtual {p2, p1, p3}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/buttons/ActionButton;->setEnabledTextColor(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/boilerplate/uikit/R$attr;->buttonDisabledTextColor:I

    invoke-virtual {p2, p1, p3}, Lcom/boilerplate/uikit/views/util/Utils;->getThemeAttrData(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/buttons/ActionButton;->setDisabledTextColor(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/boilerplate/uikit/R$color;->ripple:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
