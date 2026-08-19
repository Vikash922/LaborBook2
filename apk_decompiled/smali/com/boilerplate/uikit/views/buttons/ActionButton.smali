.class public Lcom/boilerplate/uikit/views/buttons/ActionButton;
.super Lcom/google/android/material/button/MaterialButton;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B#\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u001b\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\u0015\u0010$\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010#\u00a2\u0006\u0002\u0010&R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\u0016\u0010\u000e\"\u0004\u0008\u0017\u0010\u0010R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\u0019\u0010\u000e\"\u0004\u0008\u001a\u0010\u0010R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\u001c\u0010\u000e\"\u0004\u0008\u001d\u0010\u0010R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/boilerplate/uikit/views/buttons/ActionButton;",
        "Lcom/google/android/material/button/MaterialButton;",
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
        "enabledBackgroundTintColor",
        "getEnabledBackgroundTintColor",
        "()Ljava/lang/Integer;",
        "setEnabledBackgroundTintColor",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "disabledBackgroundTintColor",
        "getDisabledBackgroundTintColor",
        "setDisabledBackgroundTintColor",
        "enabledTextColor",
        "getEnabledTextColor",
        "setEnabledTextColor",
        "disabledTextColor",
        "getDisabledTextColor",
        "setDisabledTextColor",
        "progressBarColor",
        "getProgressBarColor",
        "setProgressBarColor",
        "textBeforeLoading",
        "",
        "setEnabled",
        "",
        "enabled",
        "",
        "setShowProgress",
        "showProgress",
        "(Ljava/lang/Boolean;)V",
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


# instance fields
.field private disabledBackgroundTintColor:Ljava/lang/Integer;

.field private disabledTextColor:Ljava/lang/Integer;

.field private enabledBackgroundTintColor:Ljava/lang/Integer;

.field private enabledTextColor:Ljava/lang/Integer;

.field private progressBarColor:Ljava/lang/Integer;

.field private textBeforeLoading:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/boilerplate/uikit/R$styleable;->ActionButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget v0, Lcom/boilerplate/uikit/R$styleable;->ActionButton_buttonEnabledBgColor:I

    sget v1, Lcom/boilerplate/uikit/R$color;->button_enabled_bg_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->enabledBackgroundTintColor:Ljava/lang/Integer;

    sget v0, Lcom/boilerplate/uikit/R$styleable;->ActionButton_buttonDisabledBgColor:I

    sget v1, Lcom/boilerplate/uikit/R$color;->button_disabled_bg_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->disabledBackgroundTintColor:Ljava/lang/Integer;

    sget v0, Lcom/boilerplate/uikit/R$styleable;->ActionButton_buttonEnabledTextColor:I

    sget v1, Lcom/boilerplate/uikit/R$color;->button_enabled_text_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->enabledTextColor:Ljava/lang/Integer;

    sget v0, Lcom/boilerplate/uikit/R$styleable;->ActionButton_buttonDisabledTextColor:I

    sget v1, Lcom/boilerplate/uikit/R$color;->button_disabled_text_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->disabledTextColor:Ljava/lang/Integer;

    sget v0, Lcom/boilerplate/uikit/R$styleable;->ActionButton_buttonProgressColor:I

    sget v1, Lcom/boilerplate/uikit/R$color;->progress_bar_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->progressBarColor:Ljava/lang/Integer;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/boilerplate/uikit/R$styleable;->ActionButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "obtainStyledAttributes(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget p3, Lcom/boilerplate/uikit/R$styleable;->ActionButton_buttonEnabledBgColor:I

    sget v0, Lcom/boilerplate/uikit/R$color;->button_enabled_bg_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->enabledBackgroundTintColor:Ljava/lang/Integer;

    iget-object p3, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->enabledTextColor:Ljava/lang/Integer;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p3}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    sget p3, Lcom/boilerplate/uikit/R$styleable;->ActionButton_buttonDisabledBgColor:I

    sget v0, Lcom/boilerplate/uikit/R$color;->button_disabled_bg_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->disabledBackgroundTintColor:Ljava/lang/Integer;

    sget p3, Lcom/boilerplate/uikit/R$styleable;->ActionButton_buttonEnabledTextColor:I

    sget v0, Lcom/boilerplate/uikit/R$color;->button_enabled_text_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->enabledTextColor:Ljava/lang/Integer;

    sget p3, Lcom/boilerplate/uikit/R$styleable;->ActionButton_buttonDisabledTextColor:I

    sget v0, Lcom/boilerplate/uikit/R$color;->button_disabled_text_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->disabledTextColor:Ljava/lang/Integer;

    sget p3, Lcom/boilerplate/uikit/R$styleable;->ActionButton_buttonProgressColor:I

    sget v0, Lcom/boilerplate/uikit/R$color;->progress_bar_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->progressBarColor:Ljava/lang/Integer;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final getDisabledBackgroundTintColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->disabledBackgroundTintColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDisabledTextColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->disabledTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEnabledBackgroundTintColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->enabledBackgroundTintColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEnabledTextColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->enabledTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getProgressBarColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->progressBarColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setDisabledBackgroundTintColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->disabledBackgroundTintColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setDisabledTextColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->disabledTextColor:Ljava/lang/Integer;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->enabledBackgroundTintColor:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->enabledTextColor:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/boilerplate/uikit/R$color;->present:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->disabledBackgroundTintColor:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->disabledTextColor:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/boilerplate/uikit/R$color;->absent:I

    :goto_0
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setEnabledBackgroundTintColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->enabledBackgroundTintColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setEnabledTextColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->enabledTextColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setProgressBarColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->progressBarColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setShowProgress(Ljava/lang/Boolean;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setIconGravity(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->textBeforeLoading:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStyle(I)V

    iget-object p1, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->progressBarColor:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setColorSchemeColors([I)V

    :cond_0
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->start()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->textBeforeLoading:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/boilerplate/uikit/views/buttons/ActionButton;->textBeforeLoading:Ljava/lang/String;

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Lcom/boilerplate/uikit/views/buttons/ActionButton$setShowProgress$3;

    invoke-direct {v0, p0}, Lcom/boilerplate/uikit/views/buttons/ActionButton$setShowProgress$3;-><init>(Lcom/boilerplate/uikit/views/buttons/ActionButton;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_3
    return-void
.end method
