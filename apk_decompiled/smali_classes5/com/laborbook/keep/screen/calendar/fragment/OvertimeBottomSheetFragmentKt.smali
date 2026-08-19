.class public final Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt;
.super Ljava/lang/Object;
.source "OvertimeBottomSheetFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "applyConsistentStyling",
        "",
        "Landroid/widget/NumberPicker;",
        "context",
        "Landroid/content/Context;",
        "keep_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$GSMgyDmh0_2ltZE7NaSeO1mF6CU(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt;->applyConsistentStyling$lambda$0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$applyConsistentStyling(Landroid/widget/NumberPicker;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt;->applyConsistentStyling(Landroid/widget/NumberPicker;Landroid/content/Context;)V

    return-void
.end method

.method private static final applyConsistentStyling(Landroid/widget/NumberPicker;Landroid/content/Context;)V
    .locals 8

    .line 36
    const-string v0, "null cannot be cast to non-null type android.graphics.Paint"

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/NumberPicker;->setFocusable(Z)V

    .line 37
    invoke-virtual {p0, v1}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 40
    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v2}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_0
    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, 0x1

    if-ge v3, v2, :cond_1

    .line 44
    invoke-virtual {p0, v3}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 45
    instance-of v7, v6, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 46
    check-cast v6, Landroid/widget/EditText;

    .line 47
    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 48
    invoke-virtual {v6}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 49
    sget v4, Lcom/boilerplate/uikit/R$color;->text_20_color:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 50
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 51
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 52
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 53
    invoke-virtual {v6, v1, v1, v1, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_1
    :try_start_0
    const-class v2, Landroid/widget/NumberPicker;

    .line 63
    const-string v3, "mSelectorWheelPaint"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 64
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/graphics/Paint;

    .line 66
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 68
    sget v6, Lcom/boilerplate/uikit/R$color;->text_20_color:I

    invoke-static {p1, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    const-string v3, "mInputText"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "null cannot be cast to non-null type android.widget.EditText"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/EditText;

    .line 76
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 77
    invoke-virtual {v3}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 78
    sget v6, Lcom/boilerplate/uikit/R$color;->text_20_color:I

    invoke-static {p1, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 79
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 80
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 81
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :try_start_1
    const-string v1, "mSelectorElementPaint"

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/Paint;

    .line 89
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 91
    sget v0, Lcom/boilerplate/uikit/R$color;->text_20_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method private static final applyConsistentStyling$lambda$0(I)Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
