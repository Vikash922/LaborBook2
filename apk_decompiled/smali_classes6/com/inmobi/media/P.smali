.class public abstract Lcom/inmobi/media/P;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/RelativeLayout;

.field public b:Lcom/inmobi/media/I9;

.field public c:F

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;)V
    .locals 1

    const-string v0, "adBackgroundView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/P;->a:Landroid/widget/RelativeLayout;

    .line 8
    invoke-static {}, Lcom/inmobi/media/N3;->g()B

    move-result p1

    invoke-static {p1}, Lcom/inmobi/media/J9;->a(B)Lcom/inmobi/media/I9;

    move-result-object p1

    iput-object p1, p0, Lcom/inmobi/media/P;->b:Lcom/inmobi/media/I9;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, p0, Lcom/inmobi/media/P;->c:F

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lcom/inmobi/media/I9;)V
    .locals 1

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/P;->b:Lcom/inmobi/media/I9;

    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public final e()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/inmobi/media/P;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/16 v1, 0xa

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6
    iget-object v1, p0, Lcom/inmobi/media/P;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/media/P;->d:Z

    const-string v3, "context"

    const-string v4, "getContext(...)"

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Lcom/inmobi/media/N3;->a:Lcom/inmobi/media/O3;

    iget-object v0, p0, Lcom/inmobi/media/P;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v0}, Lcom/inmobi/media/N3;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/inmobi/media/N3;->b:Lcom/inmobi/media/M3;

    goto :goto_1

    .line 10
    :cond_1
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 16
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 17
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 18
    new-instance v4, Lcom/inmobi/media/M3;

    invoke-direct {v4, v0, v3}, Lcom/inmobi/media/M3;-><init>(II)V

    goto :goto_0

    .line 19
    :cond_2
    sget-object v0, Lcom/inmobi/media/N3;->a:Lcom/inmobi/media/O3;

    iget-object v0, p0, Lcom/inmobi/media/P;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-static {v0}, Lcom/inmobi/media/N3;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/inmobi/media/N3;->b:Lcom/inmobi/media/M3;

    goto :goto_1

    .line 284
    :cond_3
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 285
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 286
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 287
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 288
    new-instance v4, Lcom/inmobi/media/M3;

    invoke-direct {v4, v0, v3}, Lcom/inmobi/media/M3;-><init>(II)V

    :goto_0
    move-object v0, v4

    .line 289
    :goto_1
    iget-object v3, p0, Lcom/inmobi/media/P;->b:Lcom/inmobi/media/I9;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 292
    iget-object v3, p0, Lcom/inmobi/media/P;->b:Lcom/inmobi/media/I9;

    invoke-static {v3}, Lcom/inmobi/media/J9;->b(Lcom/inmobi/media/I9;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 293
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 294
    iget v0, v0, Lcom/inmobi/media/M3;->a:I

    int-to-float v0, v0

    .line 295
    iget v3, p0, Lcom/inmobi/media/P;->c:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 296
    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    .line 300
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 303
    :cond_4
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 304
    iget v0, v0, Lcom/inmobi/media/M3;->b:I

    int-to-float v0, v0

    .line 305
    iget v4, p0, Lcom/inmobi/media/P;->c:F

    mul-float/2addr v0, v4

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 306
    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 310
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v1, v3

    .line 313
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/P;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method
