.class public Lcom/mukeshsolanki/OtpView;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "OtpView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mukeshsolanki/OtpView$Blink;
    }
.end annotation


# static fields
.field private static final BLINK:I = 0x1f4

.field private static final DBG:Z = false

.field private static final DEFAULT_COUNT:I = 0x4

.field private static final FILLED_STATE:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final SELECTED_STATE:[I

.field private static final VIEW_TYPE_LINE:I = 0x1

.field private static final VIEW_TYPE_NONE:I = 0x2

.field private static final VIEW_TYPE_RECTANGLE:I


# instance fields
.field private final animatorTextPaint:Landroid/text/TextPaint;

.field private blink:Lcom/mukeshsolanki/OtpView$Blink;

.field private cursorColor:I

.field private cursorHeight:F

.field private cursorLineColor:I

.field private cursorWidth:I

.field private defaultAddAnimator:Landroid/animation/ValueAnimator;

.field private drawCursor:Z

.field private hideLineWhenFilled:Z

.field private isAllCaps:Z

.field private isAnimationEnable:Z

.field private isCursorVisible:Z

.field private itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemBackgroundResource:I

.field private final itemBorderRect:Landroid/graphics/RectF;

.field private final itemCenterPoint:Landroid/graphics/PointF;

.field private final itemLineRect:Landroid/graphics/RectF;

.field private lineColor:Landroid/content/res/ColorStateList;

.field private lineWidth:I

.field private maskingChar:Ljava/lang/String;

.field private onOtpCompletionListener:Lcom/mukeshsolanki/OnOtpCompletionListener;

.field private otpViewItemCount:I

.field private otpViewItemHeight:I

.field private otpViewItemRadius:I

.field private otpViewItemSpacing:I

.field private otpViewItemWidth:I

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private rtlTextDirection:Z

.field private final textRect:Landroid/graphics/Rect;

.field private viewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Lcom/mukeshsolanki/OtpView;->NO_FILTERS:[Landroid/text/InputFilter;

    const v0, 0x10100a1

    .line 40
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/mukeshsolanki/OtpView;->SELECTED_STATE:[I

    .line 43
    sget v0, Lcom/mukeshsolanki/R$attr;->OtpState_filled:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/mukeshsolanki/OtpView;->FILLED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/mukeshsolanki/OtpView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 86
    sget v0, Lcom/mukeshsolanki/R$attr;->otpViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/mukeshsolanki/OtpView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/mukeshsolanki/OtpView;->animatorTextPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    .line 58
    iput v1, p0, Lcom/mukeshsolanki/OtpView;->cursorLineColor:I

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/mukeshsolanki/OtpView;->textRect:Landroid/graphics/Rect;

    .line 61
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    .line 62
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/mukeshsolanki/OtpView;->itemLineRect:Landroid/graphics/RectF;

    .line 63
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    .line 64
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/mukeshsolanki/OtpView;->itemCenterPoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    .line 66
    iput-boolean v1, p0, Lcom/mukeshsolanki/OtpView;->isAnimationEnable:Z

    .line 78
    iput-boolean v1, p0, Lcom/mukeshsolanki/OtpView;->isAllCaps:Z

    .line 91
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 92
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    .line 93
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 96
    sget-object v0, Lcom/mukeshsolanki/R$styleable;->OtpView:[I

    .line 97
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 98
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_OtpViewType:I

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mukeshsolanki/OtpView;->viewType:I

    .line 99
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_OtpItemCount:I

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    .line 100
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_OtpItemHeight:I

    sget p3, Lcom/mukeshsolanki/R$dimen;->otp_view_item_size:I

    .line 101
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    .line 100
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemHeight:I

    .line 102
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_OtpItemWidth:I

    sget p3, Lcom/mukeshsolanki/R$dimen;->otp_view_item_size:I

    .line 103
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    .line 102
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemWidth:I

    .line 104
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_OtpItemSpacing:I

    sget p3, Lcom/mukeshsolanki/R$dimen;->otp_view_item_spacing:I

    .line 105
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 104
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemSpacing:I

    .line 106
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_OtpItemRadius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemRadius:I

    .line 107
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_OtpLineWidth:I

    sget p3, Lcom/mukeshsolanki/R$dimen;->otp_view_item_line_width:I

    .line 108
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    .line 107
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    .line 109
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_OtpLineColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/mukeshsolanki/OtpView;->lineColor:Landroid/content/res/ColorStateList;

    .line 110
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_android_cursorVisible:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mukeshsolanki/OtpView;->isCursorVisible:Z

    .line 111
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_OtpCursorColor:I

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getCurrentTextColor()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mukeshsolanki/OtpView;->cursorColor:I

    .line 112
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_OtpCursorWidth:I

    sget p3, Lcom/mukeshsolanki/R$dimen;->otp_view_cursor_width:I

    .line 113
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 112
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/mukeshsolanki/OtpView;->cursorWidth:I

    .line 114
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_android_itemBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/mukeshsolanki/OtpView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 115
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_OtpHideLineWhenFilled:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mukeshsolanki/OtpView;->hideLineWhenFilled:Z

    .line 116
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_OtpRtlTextDirection:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mukeshsolanki/OtpView;->rtlTextDirection:Z

    .line 117
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_OtpMaskingChar:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mukeshsolanki/OtpView;->maskingChar:Ljava/lang/String;

    .line 118
    sget p2, Lcom/mukeshsolanki/R$styleable;->OtpView_android_textAllCaps:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mukeshsolanki/OtpView;->isAllCaps:Z

    .line 119
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    iget-object p1, p0, Lcom/mukeshsolanki/OtpView;->lineColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/mukeshsolanki/OtpView;->cursorLineColor:I

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->updateCursorHeight()V

    .line 124
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->checkItemRadius()V

    .line 125
    iget p1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    invoke-direct {p0, p1}, Lcom/mukeshsolanki/OtpView;->setMaxLength(I)V

    .line 126
    iget p1, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->setupAnimator()V

    .line 128
    invoke-virtual {p0, v1}, Lcom/mukeshsolanki/OtpView;->setTextIsSelectable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/mukeshsolanki/OtpView;)Landroid/text/TextPaint;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mukeshsolanki/OtpView;->animatorTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mukeshsolanki/OtpView;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->shouldBlink()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/mukeshsolanki/OtpView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/mukeshsolanki/OtpView;->drawCursor:Z

    return p0
.end method

.method static synthetic access$600(Lcom/mukeshsolanki/OtpView;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/mukeshsolanki/OtpView;->invalidateCursor(Z)V

    return-void
.end method

.method private checkItemRadius()V
    .locals 3

    .line 167
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->viewType:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    .line 168
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 169
    iget v1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemRadius:I

    int-to-float v1, v1

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The itemRadius can not be greater than lineWidth when viewType is line"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_3

    .line 174
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 175
    iget v1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemRadius:I

    int-to-float v1, v1

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_2

    goto :goto_0

    .line 176
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The itemRadius can not be greater than itemWidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method private dpToPx()I
    .locals 2

    .line 1076
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private drawAnchorLine(Landroid/graphics/Canvas;)V
    .locals 5

    .line 593
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->itemCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 594
    iget-object v1, p0, Lcom/mukeshsolanki/OtpView;->itemCenterPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 595
    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 596
    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 597
    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 598
    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 599
    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 600
    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 601
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 602
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 603
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 604
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 605
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 606
    iget-object p1, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 607
    iget-object p1, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 569
    invoke-direct {p0, p2}, Lcom/mukeshsolanki/OtpView;->getPaintByIndex(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lcom/mukeshsolanki/OtpView;->itemCenterPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 571
    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->itemCenterPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 572
    iget-boolean v3, p0, Lcom/mukeshsolanki/OtpView;->rtlTextDirection:Z

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_0

    .line 573
    iget v3, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    sub-int/2addr v3, p2

    .line 574
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getHint()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    sub-int/2addr v3, p2

    if-gtz v3, :cond_1

    .line 576
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p2

    div-float/2addr p2, v4

    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p2

    div-float/2addr p2, v4

    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;)V
    .locals 8

    .line 426
    iget-boolean v0, p0, Lcom/mukeshsolanki/OtpView;->drawCursor:Z

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->itemCenterPoint:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 428
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->itemCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 429
    iget v1, p0, Lcom/mukeshsolanki/OtpView;->cursorHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v3, v0, v1

    .line 430
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 431
    iget-object v1, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    .line 432
    iget-object v1, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mukeshsolanki/OtpView;->cursorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 433
    iget-object v1, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mukeshsolanki/OtpView;->cursorWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 434
    iget v1, p0, Lcom/mukeshsolanki/OtpView;->cursorHeight:F

    add-float v5, v3, v1

    iget-object v6, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 435
    iget-object p1, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    iget-object p1, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;I)V
    .locals 2

    .line 542
    invoke-direct {p0, p2}, Lcom/mukeshsolanki/OtpView;->getPaintByIndex(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 543
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getCurrentHintTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 544
    iget-boolean v1, p0, Lcom/mukeshsolanki/OtpView;->rtlTextDirection:Z

    if-eqz v1, :cond_0

    .line 545
    iget v1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    sub-int/2addr v1, p2

    .line 546
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getHint()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    sub-int/2addr v1, p2

    if-gtz v1, :cond_1

    .line 548
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getHint()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/mukeshsolanki/OtpView;->drawTextAtBox(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/mukeshsolanki/OtpView;->drawTextAtBox(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/CharSequence;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawInput(Landroid/graphics/Canvas;I)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->maskingChar:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getInputType()I

    move-result v0

    invoke-static {v0}, Lcom/mukeshsolanki/OtpView;->isNumberInputType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getInputType()I

    move-result v0

    invoke-static {v0}, Lcom/mukeshsolanki/OtpView;->isPasswordInputType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->maskingChar:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/mukeshsolanki/OtpView;->drawMaskingText(Landroid/graphics/Canvas;ILjava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getInputType()I

    move-result v0

    invoke-static {v0}, Lcom/mukeshsolanki/OtpView;->isPasswordInputType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/mukeshsolanki/OtpView;->drawCircle(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 347
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/mukeshsolanki/OtpView;->drawText(Landroid/graphics/Canvas;I)V

    :goto_0
    return-void
.end method

.method private drawItemBackground(Landroid/graphics/Canvas;[I)V
    .locals 5

    .line 357
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 361
    iget-object v1, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 362
    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 363
    iget-object v3, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 364
    iget-object v4, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 365
    iget-object v4, p0, Lcom/mukeshsolanki/OtpView;->itemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 366
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->viewType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 367
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getDrawableState()[I

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 369
    :cond_2
    iget-object p2, p0, Lcom/mukeshsolanki/OtpView;->itemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawMaskingText(Landroid/graphics/Canvas;ILjava/lang/String;)V
    .locals 3

    .line 522
    invoke-direct {p0, p2}, Lcom/mukeshsolanki/OtpView;->getPaintByIndex(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 523
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 524
    iget-boolean v1, p0, Lcom/mukeshsolanki/OtpView;->rtlTextDirection:Z

    const-string v2, "."

    if-eqz v1, :cond_1

    .line 525
    iget v1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    sub-int/2addr v1, p2

    .line 527
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    sub-int/2addr v1, p2

    :goto_0
    if-gtz v1, :cond_2

    .line 532
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 533
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 534
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 533
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mukeshsolanki/OtpView;->drawTextAtBox(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 537
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/mukeshsolanki/OtpView;->drawTextAtBox(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/CharSequence;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private drawOtpBox(Landroid/graphics/Canvas;I)V
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mukeshsolanki/OtpView;->hideLineWhenFilled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object p2, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtpLine(Landroid/graphics/Canvas;I)V
    .locals 9

    .line 397
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mukeshsolanki/OtpView;->hideLineWhenFilled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    return-void

    .line 403
    :cond_0
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemSpacing:I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    if-le v0, v1, :cond_3

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move v7, v1

    move v8, v2

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_2

    move v8, v1

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v2

    goto :goto_0

    :cond_3
    move v7, v1

    :goto_0
    move v8, v7

    .line 412
    :goto_1
    iget-object p2, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 413
    iget-object p2, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 414
    iget p2, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 415
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->itemLineRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, p2

    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, p2

    iget-object v3, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 421
    iget-object v4, p0, Lcom/mukeshsolanki/OtpView;->itemLineRect:Landroid/graphics/RectF;

    iget p2, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemRadius:I

    int-to-float v5, p2

    int-to-float v6, p2

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/mukeshsolanki/OtpView;->updateRoundRectPath(Landroid/graphics/RectF;FFZZ)V

    .line 422
    iget-object p2, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtpView(Landroid/graphics/Canvas;)V
    .locals 8

    .line 271
    iget-boolean v0, p0, Lcom/mukeshsolanki/OtpView;->rtlTextDirection:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 272
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v3, v1

    .line 280
    :goto_1
    iget v4, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    if-ge v3, v4, :cond_f

    .line 281
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v0, v3, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-ge v3, v0, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    if-eqz v5, :cond_4

    .line 285
    sget-object v5, Lcom/mukeshsolanki/OtpView;->FILLED_STATE:[I

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    .line 287
    sget-object v5, Lcom/mukeshsolanki/OtpView;->SELECTED_STATE:[I

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    .line 289
    :goto_4
    iget-object v6, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    if-eqz v5, :cond_6

    invoke-direct {p0, v5}, Lcom/mukeshsolanki/OtpView;->getLineColorForState([I)I

    move-result v7

    goto :goto_5

    :cond_6
    iget v7, p0, Lcom/mukeshsolanki/OtpView;->cursorLineColor:I

    :goto_5
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    invoke-direct {p0, v3}, Lcom/mukeshsolanki/OtpView;->updateItemRectF(I)V

    .line 291
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->updateCenterPoint()V

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 293
    iget v6, p0, Lcom/mukeshsolanki/OtpView;->viewType:I

    if-nez v6, :cond_7

    .line 294
    invoke-direct {p0, v3}, Lcom/mukeshsolanki/OtpView;->updateOtpViewBoxPath(I)V

    .line 295
    iget-object v6, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 297
    :cond_7
    invoke-direct {p0, p1, v5}, Lcom/mukeshsolanki/OtpView;->drawItemBackground(Landroid/graphics/Canvas;[I)V

    .line 298
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v4, :cond_8

    .line 300
    invoke-direct {p0, p1}, Lcom/mukeshsolanki/OtpView;->drawCursor(Landroid/graphics/Canvas;)V

    .line 302
    :cond_8
    iget v4, p0, Lcom/mukeshsolanki/OtpView;->viewType:I

    if-nez v4, :cond_9

    .line 303
    invoke-direct {p0, p1, v3}, Lcom/mukeshsolanki/OtpView;->drawOtpBox(Landroid/graphics/Canvas;I)V

    goto :goto_6

    :cond_9
    if-ne v4, v2, :cond_a

    .line 305
    invoke-direct {p0, p1, v3}, Lcom/mukeshsolanki/OtpView;->drawOtpLine(Landroid/graphics/Canvas;I)V

    .line 310
    :cond_a
    :goto_6
    iget-boolean v4, p0, Lcom/mukeshsolanki/OtpView;->rtlTextDirection:Z

    if-eqz v4, :cond_c

    .line 311
    iget v4, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    sub-int/2addr v4, v3

    .line 312
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-lt v5, v4, :cond_b

    .line 313
    invoke-direct {p0, p1, v3}, Lcom/mukeshsolanki/OtpView;->drawInput(Landroid/graphics/Canvas;I)V

    goto :goto_7

    .line 314
    :cond_b
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v5, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    if-ne v4, v5, :cond_e

    .line 315
    invoke-direct {p0, p1, v3}, Lcom/mukeshsolanki/OtpView;->drawHint(Landroid/graphics/Canvas;I)V

    goto :goto_7

    .line 318
    :cond_c
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-le v4, v3, :cond_d

    .line 319
    invoke-direct {p0, p1, v3}, Lcom/mukeshsolanki/OtpView;->drawInput(Landroid/graphics/Canvas;I)V

    goto :goto_7

    .line 320
    :cond_d
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v5, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    if-ne v4, v5, :cond_e

    .line 321
    invoke-direct {p0, p1, v3}, Lcom/mukeshsolanki/OtpView;->drawHint(Landroid/graphics/Canvas;I)V

    :cond_e
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 325
    :cond_f
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 326
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 327
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/mukeshsolanki/OtpView;->viewType:I

    if-nez v0, :cond_10

    .line 329
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 330
    invoke-direct {p0, v0}, Lcom/mukeshsolanki/OtpView;->updateItemRectF(I)V

    .line 331
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->updateCenterPoint()V

    .line 332
    invoke-direct {p0, v0}, Lcom/mukeshsolanki/OtpView;->updateOtpViewBoxPath(I)V

    .line 333
    iget-object v1, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    sget-object v2, Lcom/mukeshsolanki/OtpView;->SELECTED_STATE:[I

    invoke-direct {p0, v2}, Lcom/mukeshsolanki/OtpView;->getLineColorForState([I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    invoke-direct {p0, p1, v0}, Lcom/mukeshsolanki/OtpView;->drawOtpBox(Landroid/graphics/Canvas;I)V

    :cond_10
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;I)V
    .locals 2

    .line 503
    invoke-direct {p0, p2}, Lcom/mukeshsolanki/OtpView;->getPaintByIndex(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 504
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 505
    iget-boolean v1, p0, Lcom/mukeshsolanki/OtpView;->rtlTextDirection:Z

    if-eqz v1, :cond_1

    .line 506
    iget v1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    sub-int/2addr v1, p2

    .line 508
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    sub-int/2addr v1, p2

    :goto_0
    if-gtz v1, :cond_2

    .line 513
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 514
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/mukeshsolanki/OtpView;->drawTextAtBox(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 516
    :cond_1
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 517
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/mukeshsolanki/OtpView;->drawTextAtBox(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/CharSequence;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private drawTextAtBox(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/CharSequence;I)V
    .locals 8

    .line 556
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, p4, 0x1

    iget-object v1, p0, Lcom/mukeshsolanki/OtpView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0, p4, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 557
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->itemCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 558
    iget-object v1, p0, Lcom/mukeshsolanki/OtpView;->itemCenterPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 559
    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->textRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v5, v0, v2

    .line 560
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v3

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->textRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float v6, v1, v0

    .line 561
    iget-boolean v0, p0, Lcom/mukeshsolanki/OtpView;->isAllCaps:Z

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v3, p4

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v7, p2

    .line 564
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private varargs getLineColorForState([I)I
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->lineColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mukeshsolanki/OtpView;->cursorLineColor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_0

    .line 353
    :cond_0
    iget p1, p0, Lcom/mukeshsolanki/OtpView;->cursorLineColor:I

    :goto_0
    return p1
.end method

.method private getPaintByIndex(I)Landroid/graphics/Paint;
    .locals 1

    .line 584
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mukeshsolanki/OtpView;->isAnimationEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 585
    iget-object p1, p0, Lcom/mukeshsolanki/OtpView;->animatorTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 586
    iget-object p1, p0, Lcom/mukeshsolanki/OtpView;->animatorTextPaint:Landroid/text/TextPaint;

    return-object p1

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    return-object p1
.end method

.method private invalidateCursor(Z)V
    .locals 1

    .line 1033
    iget-boolean v0, p0, Lcom/mukeshsolanki/OtpView;->drawCursor:Z

    if-eq v0, p1, :cond_0

    .line 1034
    iput-boolean p1, p0, Lcom/mukeshsolanki/OtpView;->drawCursor:Z

    .line 1035
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->invalidate()V

    :cond_0
    return-void
.end method

.method private static isNumberInputType(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPasswordInputType(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0xfff

    const/16 v0, 0x81

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private makeBlink()V
    .locals 3

    .line 1004
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->blink:Lcom/mukeshsolanki/OtpView$Blink;

    if-nez v0, :cond_0

    .line 1006
    new-instance v0, Lcom/mukeshsolanki/OtpView$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mukeshsolanki/OtpView$Blink;-><init>(Lcom/mukeshsolanki/OtpView;Lcom/mukeshsolanki/OtpView$1;)V

    iput-object v0, p0, Lcom/mukeshsolanki/OtpView;->blink:Lcom/mukeshsolanki/OtpView$Blink;

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->blink:Lcom/mukeshsolanki/OtpView$Blink;

    invoke-virtual {p0, v0}, Lcom/mukeshsolanki/OtpView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 1009
    iput-boolean v0, p0, Lcom/mukeshsolanki/OtpView;->drawCursor:Z

    .line 1010
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->blink:Lcom/mukeshsolanki/OtpView$Blink;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/mukeshsolanki/OtpView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->blink:Lcom/mukeshsolanki/OtpView$Blink;

    if-eqz v0, :cond_2

    .line 1013
    invoke-virtual {p0, v0}, Lcom/mukeshsolanki/OtpView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private moveSelectionToEnd()V
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mukeshsolanki/OtpView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private resumeBlink()V
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->blink:Lcom/mukeshsolanki/OtpView$Blink;

    if-eqz v0, :cond_0

    .line 1027
    invoke-static {v0}, Lcom/mukeshsolanki/OtpView$Blink;->access$300(Lcom/mukeshsolanki/OtpView$Blink;)V

    .line 1028
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->makeBlink()V

    :cond_0
    return-void
.end method

.method private setMaxLength(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    .line 146
    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    goto :goto_0

    .line 147
    :cond_0
    sget-object v0, Lcom/mukeshsolanki/OtpView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 145
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mukeshsolanki/OtpView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private setupAnimator()V
    .locals 3

    const/4 v0, 0x2

    .line 151
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/mukeshsolanki/OtpView;->defaultAddAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 153
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->defaultAddAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->defaultAddAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/mukeshsolanki/OtpView$1;

    invoke-direct {v1, p0}, Lcom/mukeshsolanki/OtpView$1;-><init>(Lcom/mukeshsolanki/OtpView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private shouldBlink()Z
    .locals 1

    .line 1000
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->isCursorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private suspendBlink()V
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->blink:Lcom/mukeshsolanki/OtpView$Blink;

    if-eqz v0, :cond_0

    .line 1020
    invoke-static {v0}, Lcom/mukeshsolanki/OtpView$Blink;->access$200(Lcom/mukeshsolanki/OtpView$Blink;)V

    const/4 v0, 0x0

    .line 1021
    invoke-direct {p0, v0}, Lcom/mukeshsolanki/OtpView;->invalidateCursor(Z)V

    :cond_0
    return-void
.end method

.method private updateCenterPoint()V
    .locals 4

    .line 624
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 625
    iget-object v1, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 626
    iget-object v2, p0, Lcom/mukeshsolanki/OtpView;->itemCenterPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private updateColors()V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->lineColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getCurrentTextColor()I

    move-result v0

    .line 614
    :goto_0
    iget v1, p0, Lcom/mukeshsolanki/OtpView;->cursorLineColor:I

    if-eq v0, v1, :cond_1

    .line 615
    iput v0, p0, Lcom/mukeshsolanki/OtpView;->cursorLineColor:I

    .line 619
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->invalidate()V

    :cond_1
    return-void
.end method

.method private updateCursorHeight()V
    .locals 3

    .line 1040
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->dpToPx()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 1042
    iget v1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getTextSize()F

    move-result v2

    sub-float/2addr v1, v2

    int-to-float v0, v0

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getTextSize()F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getTextSize()F

    move-result v1

    :goto_0
    iput v1, p0, Lcom/mukeshsolanki/OtpView;->cursorHeight:F

    return-void
.end method

.method private updateItemRectF(I)V
    .locals 5

    .line 488
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 489
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getScrollX()I

    move-result v1

    .line 490
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemSpacing:I

    iget v3, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemWidth:I

    add-int v4, v2, v3

    mul-int/2addr v4, p1

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-float/2addr v1, v0

    if-nez v2, :cond_0

    if-lez p1, :cond_0

    .line 494
    iget v2, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    mul-int/2addr v2, p1

    int-to-float p1, v2

    sub-float/2addr v1, p1

    :cond_0
    int-to-float p1, v3

    add-float/2addr p1, v1

    .line 496
    iget v2, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 497
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 498
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemHeight:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    iget v3, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 499
    iget-object v3, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private updateOtpViewBoxPath(I)V
    .locals 10

    .line 375
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemSpacing:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v8, v1

    move v9, v8

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 378
    iget v2, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    sub-int/2addr v2, v1

    if-eq p1, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 381
    :goto_0
    iget v3, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    sub-int/2addr v3, v1

    if-ne p1, v3, :cond_2

    if-eqz p1, :cond_2

    move v9, v1

    goto :goto_1

    :cond_2
    move v9, v0

    :goto_1
    move v8, v2

    .line 385
    :goto_2
    iget-object v5, p0, Lcom/mukeshsolanki/OtpView;->itemBorderRect:Landroid/graphics/RectF;

    iget p1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemRadius:I

    int-to-float v6, p1

    int-to-float v7, p1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/mukeshsolanki/OtpView;->updateRoundRectPath(Landroid/graphics/RectF;FFZZ)V

    return-void
.end method

.method private updatePaints()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mukeshsolanki/OtpView;->cursorLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 266
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method private updateRoundRectPath(Landroid/graphics/RectF;FFZZ)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p5

    move v7, p4

    .line 441
    invoke-direct/range {v0 .. v7}, Lcom/mukeshsolanki/OtpView;->updateRoundRectPath(Landroid/graphics/RectF;FFZZZZ)V

    return-void
.end method

.method private updateRoundRectPath(Landroid/graphics/RectF;FFZZZZ)V
    .locals 5

    .line 446
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 447
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 448
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 449
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 450
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    sub-float/2addr p1, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, p2, v3

    sub-float/2addr v2, v4

    mul-float/2addr v3, p3

    sub-float/2addr p1, v3

    .line 455
    iget-object v3, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    add-float/2addr v1, p3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 457
    iget-object p4, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    neg-float v1, p3

    invoke-virtual {p4, v0, v1, p2, v1}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_0

    .line 459
    :cond_0
    iget-object p4, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    neg-float v1, p3

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 460
    iget-object p4, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    invoke-virtual {p4, p2, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 462
    :goto_0
    iget-object p4, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    invoke-virtual {p4, v2, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    if-eqz p5, :cond_1

    .line 464
    iget-object p4, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    invoke-virtual {p4, p2, v0, p2, p3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_1

    .line 466
    :cond_1
    iget-object p4, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    invoke-virtual {p4, p2, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 467
    iget-object p4, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    invoke-virtual {p4, v0, p3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 469
    :goto_1
    iget-object p4, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    invoke-virtual {p4, v0, p1}, Landroid/graphics/Path;->rLineTo(FF)V

    if-eqz p6, :cond_2

    .line 471
    iget-object p4, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    neg-float p5, p2

    invoke-virtual {p4, v0, p3, p5, p3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_2

    .line 473
    :cond_2
    iget-object p4, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    invoke-virtual {p4, v0, p3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 474
    iget-object p4, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    neg-float p5, p2

    invoke-virtual {p4, p5, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 476
    :goto_2
    iget-object p4, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    neg-float p5, v2

    invoke-virtual {p4, p5, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    if-eqz p7, :cond_3

    .line 478
    iget-object p4, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    neg-float p2, p2

    neg-float p3, p3

    invoke-virtual {p4, p2, v0, p2, p3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_3

    .line 480
    :cond_3
    iget-object p4, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    neg-float p2, p2

    invoke-virtual {p4, p2, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 481
    iget-object p2, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    neg-float p3, p3

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 483
    :goto_3
    iget-object p2, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    neg-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 484
    iget-object p1, p0, Lcom/mukeshsolanki/OtpView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 248
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->drawableStateChanged()V

    .line 249
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->lineColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->updateColors()V

    :cond_1
    return-void
.end method

.method public getCurrentLineColor()I
    .locals 1

    .line 699
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->cursorLineColor:I

    return v0
.end method

.method public getCursorColor()I
    .locals 1

    .line 951
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->cursorColor:I

    return v0
.end method

.method public getCursorWidth()I
    .locals 1

    .line 925
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->cursorWidth:I

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .line 646
    invoke-static {}, Lcom/mukeshsolanki/DefaultMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 739
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    return v0
.end method

.method public getItemHeight()I
    .locals 1

    .line 799
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemHeight:I

    return v0
.end method

.method public getItemRadius()I
    .locals 1

    .line 759
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemRadius:I

    return v0
.end method

.method public getItemSpacing()I
    .locals 1

    .line 779
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemSpacing:I

    return v0
.end method

.method public getItemWidth()I
    .locals 1

    .line 819
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemWidth:I

    return v0
.end method

.method public getLineColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->lineColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLineWidth()I
    .locals 1

    .line 719
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    return v0
.end method

.method public getMaskingChar()Ljava/lang/String;
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->maskingChar:Ljava/lang/String;

    return-object v0
.end method

.method public isCursorVisible()Z
    .locals 1

    .line 974
    iget-boolean v0, p0, Lcom/mukeshsolanki/OtpView;->isCursorVisible:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 989
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onAttachedToWindow()V

    .line 990
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->resumeBlink()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 995
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onDetachedFromWindow()V

    .line 996
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->suspendBlink()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 256
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 257
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->updatePaints()V

    .line 258
    invoke-direct {p0, p1}, Lcom/mukeshsolanki/OtpView;->drawOtpView(Landroid/graphics/Canvas;)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 225
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->moveSelectionToEnd()V

    .line 228
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->makeBlink()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 183
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 184
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 185
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 186
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 189
    iget v2, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemHeight:I

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iget p1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    add-int/lit8 v0, p1, -0x1

    iget v4, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemSpacing:I

    mul-int/2addr v0, v4

    iget v4, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemWidth:I

    mul-int/2addr p1, v4

    add-int/2addr v0, p1

    .line 195
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v0

    .line 196
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemSpacing:I

    if-nez v0, :cond_1

    .line 197
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    add-int/lit8 v0, v0, -0x1

    iget v4, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    mul-int/2addr v0, v4

    sub-int/2addr p1, v0

    :cond_1
    :goto_0
    if-ne v1, v3, :cond_2

    goto :goto_1

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getPaddingTop()I

    move-result p2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getPaddingBottom()I

    move-result p2

    add-int/2addr p2, v2

    .line 202
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/mukeshsolanki/OtpView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    .line 979
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onScreenStateChanged(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 981
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->resumeBlink()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 983
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->suspendBlink()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 0

    .line 234
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onSelectionChanged(II)V

    .line 235
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eq p2, p1, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->moveSelectionToEnd()V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 207
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->moveSelectionToEnd()V

    .line 210
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iget v0, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/mukeshsolanki/OtpView;->onOtpCompletionListener:Lcom/mukeshsolanki/OnOtpCompletionListener;

    if-eqz p2, :cond_1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mukeshsolanki/OnOtpCompletionListener;->onOtpCompleted(Ljava/lang/String;)V

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->makeBlink()V

    .line 214
    iget-boolean p1, p0, Lcom/mukeshsolanki/OtpView;->isAnimationEnable:Z

    if-eqz p1, :cond_2

    sub-int/2addr p4, p3

    if-lez p4, :cond_2

    .line 216
    iget-object p1, p0, Lcom/mukeshsolanki/OtpView;->defaultAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 217
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 218
    iget-object p1, p0, Lcom/mukeshsolanki/OtpView;->defaultAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0

    .line 829
    iput-boolean p1, p0, Lcom/mukeshsolanki/OtpView;->isAnimationEnable:Z

    return-void
.end method

.method public setCursorColor(I)V
    .locals 0

    .line 938
    iput p1, p0, Lcom/mukeshsolanki/OtpView;->cursorColor:I

    .line 939
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->isCursorVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 940
    invoke-direct {p0, p1}, Lcom/mukeshsolanki/OtpView;->invalidateCursor(Z)V

    :cond_0
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1

    .line 965
    iget-boolean v0, p0, Lcom/mukeshsolanki/OtpView;->isCursorVisible:Z

    if-eq v0, p1, :cond_0

    .line 966
    iput-boolean p1, p0, Lcom/mukeshsolanki/OtpView;->isCursorVisible:Z

    .line 967
    invoke-direct {p0, p1}, Lcom/mukeshsolanki/OtpView;->invalidateCursor(Z)V

    .line 968
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->makeBlink()V

    :cond_0
    return-void
.end method

.method public setCursorWidth(I)V
    .locals 0

    .line 914
    iput p1, p0, Lcom/mukeshsolanki/OtpView;->cursorWidth:I

    .line 915
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->isCursorVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 916
    invoke-direct {p0, p1}, Lcom/mukeshsolanki/OtpView;->invalidateCursor(Z)V

    :cond_0
    return-void
.end method

.method public setHideLineWhenFilled(Z)V
    .locals 0

    .line 841
    iput-boolean p1, p0, Lcom/mukeshsolanki/OtpView;->hideLineWhenFilled:Z

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 899
    iput v0, p0, Lcom/mukeshsolanki/OtpView;->itemBackgroundResource:I

    .line 900
    iput-object p1, p0, Lcom/mukeshsolanki/OtpView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 901
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->invalidate()V

    return-void
.end method

.method public setItemBackgroundColor(I)V
    .locals 2

    .line 884
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView;->itemBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 885
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    const/4 p1, 0x0

    .line 886
    iput p1, p0, Lcom/mukeshsolanki/OtpView;->itemBackgroundResource:I

    goto :goto_0

    .line 888
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/mukeshsolanki/OtpView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setItemBackgroundResources(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 870
    iget v0, p0, Lcom/mukeshsolanki/OtpView;->itemBackgroundResource:I

    if-eq v0, p1, :cond_0

    return-void

    .line 873
    :cond_0
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mukeshsolanki/OtpView;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 874
    invoke-virtual {p0, v0}, Lcom/mukeshsolanki/OtpView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 875
    iput p1, p0, Lcom/mukeshsolanki/OtpView;->itemBackgroundResource:I

    return-void
.end method

.method public setItemCount(I)V
    .locals 0

    .line 729
    iput p1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemCount:I

    .line 730
    invoke-direct {p0, p1}, Lcom/mukeshsolanki/OtpView;->setMaxLength(I)V

    .line 731
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->requestLayout()V

    return-void
.end method

.method public setItemHeight(I)V
    .locals 0

    .line 789
    iput p1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemHeight:I

    .line 790
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->updateCursorHeight()V

    .line 791
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->requestLayout()V

    return-void
.end method

.method public setItemRadius(I)V
    .locals 0

    .line 749
    iput p1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemRadius:I

    .line 750
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->checkItemRadius()V

    .line 751
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->requestLayout()V

    return-void
.end method

.method public setItemSpacing(I)V
    .locals 0

    .line 769
    iput p1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemSpacing:I

    .line 770
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->requestLayout()V

    return-void
.end method

.method public setItemWidth(I)V
    .locals 0

    .line 809
    iput p1, p0, Lcom/mukeshsolanki/OtpView;->otpViewItemWidth:I

    .line 810
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->checkItemRadius()V

    .line 811
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->requestLayout()V

    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    .line 661
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/mukeshsolanki/OtpView;->lineColor:Landroid/content/res/ColorStateList;

    .line 662
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->updateColors()V

    return-void
.end method

.method public setLineColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 677
    iput-object p1, p0, Lcom/mukeshsolanki/OtpView;->lineColor:Landroid/content/res/ColorStateList;

    .line 678
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->updateColors()V

    return-void

    .line 674
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Color cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLineWidth(I)V
    .locals 0

    .line 709
    iput p1, p0, Lcom/mukeshsolanki/OtpView;->lineWidth:I

    .line 710
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->checkItemRadius()V

    .line 711
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->requestLayout()V

    return-void
.end method

.method public setMaskingChar(Ljava/lang/String;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/mukeshsolanki/OtpView;->maskingChar:Ljava/lang/String;

    .line 956
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->requestLayout()V

    return-void
.end method

.method public setOtpCompletionListener(Lcom/mukeshsolanki/OnOtpCompletionListener;)V
    .locals 0

    .line 857
    iput-object p1, p0, Lcom/mukeshsolanki/OtpView;->onOtpCompletionListener:Lcom/mukeshsolanki/OnOtpCompletionListener;

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 846
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setTextSize(F)V

    .line 847
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->updateCursorHeight()V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 852
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setTextSize(IF)V

    .line 853
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView;->updateCursorHeight()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 138
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 139
    iget-object p1, p0, Lcom/mukeshsolanki/OtpView;->animatorTextPaint:Landroid/text/TextPaint;

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/mukeshsolanki/OtpView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
