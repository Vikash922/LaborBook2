.class public final Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;
.super Landroid/graphics/drawable/Drawable;
.source "LanguageBottomSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->setupNewLanguageAvatars()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0012\u0010\u000c\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000bH\u0016J\u0008\u0010\u0010\u001a\u00020\u000bH\u0016J\u0008\u0010\u0011\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "com/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1",
        "Landroid/graphics/drawable/Drawable;",
        "paint",
        "Landroid/graphics/Paint;",
        "textPaint",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "setAlpha",
        "alpha",
        "",
        "setColorFilter",
        "cf",
        "Landroid/graphics/ColorFilter;",
        "getOpacity",
        "getIntrinsicWidth",
        "getIntrinsicHeight",
        "base_release"
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
.field final synthetic $bgColor:I

.field final synthetic $letter:Ljava/lang/String;

.field final synthetic $size:I

.field private final paint:Landroid/graphics/Paint;

.field private final textPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(ILcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;ILjava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->$bgColor:I

    iput-object p4, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->$letter:Ljava/lang/String;

    iput p5, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->$size:I

    .line 88
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 89
    new-instance p3, Landroid/graphics/Paint;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->paint:Landroid/graphics/Paint;

    .line 90
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p4}, Landroid/graphics/Paint;-><init>(I)V

    .line 91
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0xc

    int-to-float p1, p1

    .line 92
    invoke-virtual {p2}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, p2

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 93
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 94
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 90
    iput-object p3, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->textPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 98
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 99
    iget-object v1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->$bgColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 101
    iget-object v1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v3, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v1, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    .line 102
    iget-object v1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->$letter:Ljava/lang/String;

    iget-object v3, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->$size:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;->$size:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
