.class public final Lcom/inmobi/media/E8;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/inmobi/media/A8;

.field public final c:Lcom/inmobi/media/D8;

.field public d:Lcom/inmobi/media/L8;

.field public e:Z

.field public final f:Lcom/inmobi/media/t3;

.field public final g:Lcom/inmobi/media/t3;

.field public final h:Landroid/widget/ProgressBar;

.field public final i:Landroid/widget/RelativeLayout;

.field public j:Z

.field public final k:F

.field public final l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    const-string p2, "E8"

    iput-object p2, p0, Lcom/inmobi/media/E8;->a:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/inmobi/media/N3;->d()Lcom/inmobi/media/O3;

    move-result-object p2

    .line 20
    iget p2, p2, Lcom/inmobi/media/O3;->c:F

    .line 21
    iput p2, p0, Lcom/inmobi/media/E8;->k:F

    .line 22
    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/inmobi/media/E8;->i:Landroid/widget/RelativeLayout;

    .line 23
    new-instance p3, Lcom/inmobi/media/t3;

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 24
    invoke-direct {p3, p1, v0, v1}, Lcom/inmobi/media/t3;-><init>(Landroid/content/Context;BLcom/inmobi/media/f5;)V

    .line 25
    iput-object p3, p0, Lcom/inmobi/media/E8;->f:Lcom/inmobi/media/t3;

    .line 26
    new-instance p3, Lcom/inmobi/media/t3;

    const/16 v0, 0xa

    .line 27
    invoke-direct {p3, p1, v0, v1}, Lcom/inmobi/media/t3;-><init>(Landroid/content/Context;BLcom/inmobi/media/f5;)V

    .line 28
    iput-object p3, p0, Lcom/inmobi/media/E8;->g:Lcom/inmobi/media/t3;

    .line 29
    new-instance p3, Landroid/widget/ProgressBar;

    const v0, 0x1010078

    invoke-direct {p3, p1, v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p3, p0, Lcom/inmobi/media/E8;->h:Landroid/widget/ProgressBar;

    const p1, 0x3f4ccccd    # 0.8f

    .line 30
    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setScaleY(F)V

    .line 31
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    invoke-virtual {p0}, Lcom/inmobi/media/E8;->a()V

    .line 38
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 42
    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43
    invoke-static {}, Lcom/inmobi/media/N3;->d()Lcom/inmobi/media/O3;

    move-result-object v3

    .line 44
    iget v3, v3, Lcom/inmobi/media/O3;->c:F

    const/4 v4, -0x6

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/4 v5, -0x8

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v3, v5

    .line 45
    invoke-virtual {v2, p1, v4, p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 46
    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v4, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_0

    move-object v1, v3

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    :cond_0
    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 p1, 0x2

    .line 50
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, -0x4fffa

    invoke-direct {v0, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 52
    :cond_1
    invoke-virtual {p2, p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance p1, Lcom/inmobi/media/D8;

    invoke-direct {p1, p0}, Lcom/inmobi/media/D8;-><init>(Lcom/inmobi/media/E8;)V

    iput-object p1, p0, Lcom/inmobi/media/E8;->c:Lcom/inmobi/media/D8;

    .line 252
    new-instance p1, Lcom/inmobi/media/E8$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/inmobi/media/E8$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/E8;)V

    iput-object p1, p0, Lcom/inmobi/media/E8;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/E8;Landroid/view/View;)V
    .locals 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/inmobi/media/E8;->d:Lcom/inmobi/media/L8;

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/inmobi/media/C8;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/inmobi/media/C8;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/media/E8;->j:Z

    const-string v1, "event"

    const-string v2, "TAG"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/inmobi/media/E8;->d:Lcom/inmobi/media/L8;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/L8;->k()V

    .line 17
    :cond_1
    iput-boolean v3, p0, Lcom/inmobi/media/E8;->j:Z

    .line 18
    iget-object v0, p0, Lcom/inmobi/media/E8;->i:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/inmobi/media/E8;->g:Lcom/inmobi/media/t3;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    iget-object v0, p0, Lcom/inmobi/media/E8;->i:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/inmobi/media/E8;->f:Lcom/inmobi/media/t3;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    invoke-virtual {p0}, Lcom/inmobi/media/E8;->a()V

    if-eqz p1, :cond_4

    .line 21
    iget-object v0, p0, Lcom/inmobi/media/E8;->b:Lcom/inmobi/media/A8;

    if-eqz v0, :cond_4

    .line 23
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/inmobi/media/A8;->i(Lcom/inmobi/media/C8;)V

    .line 24
    iput-boolean v4, p1, Lcom/inmobi/media/C8;->z:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 25
    iget-object p0, p0, Lcom/inmobi/media/E8;->a:Ljava/lang/String;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object p0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 28
    invoke-static {p1, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p0

    .line 29
    sget-object p1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    goto :goto_1

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/E8;->d:Lcom/inmobi/media/L8;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/inmobi/media/L8;->c()V

    .line 31
    :cond_3
    iput-boolean v4, p0, Lcom/inmobi/media/E8;->j:Z

    .line 32
    iget-object v0, p0, Lcom/inmobi/media/E8;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/inmobi/media/E8;->f:Lcom/inmobi/media/t3;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Lcom/inmobi/media/E8;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/inmobi/media/E8;->g:Lcom/inmobi/media/t3;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lcom/inmobi/media/E8;->b()V

    if-eqz p1, :cond_4

    .line 35
    iget-object v0, p0, Lcom/inmobi/media/E8;->b:Lcom/inmobi/media/A8;

    if-eqz v0, :cond_4

    .line 37
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/inmobi/media/A8;->e(Lcom/inmobi/media/C8;)V

    .line 38
    iput-boolean v3, p1, Lcom/inmobi/media/C8;->z:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 39
    iget-object p0, p0, Lcom/inmobi/media/E8;->a:Ljava/lang/String;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object p0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 42
    invoke-static {p1, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p0

    .line 43
    sget-object p1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x1e

    int-to-float v1, v1

    .line 2
    iget v2, p0, Lcom/inmobi/media/E8;->k:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 3
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    const/4 v2, -0x1

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xc

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 11
    iget-object v1, p0, Lcom/inmobi/media/E8;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/media/E8;->f:Lcom/inmobi/media/t3;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v0, p0, Lcom/inmobi/media/E8;->f:Lcom/inmobi/media/t3;

    iget-object v1, p0, Lcom/inmobi/media/E8;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x1e

    int-to-float v1, v1

    .line 2
    iget v2, p0, Lcom/inmobi/media/E8;->k:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 3
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    const/4 v2, -0x1

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xc

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 11
    iget-object v1, p0, Lcom/inmobi/media/E8;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/media/E8;->g:Lcom/inmobi/media/t3;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v0, p0, Lcom/inmobi/media/E8;->g:Lcom/inmobi/media/t3;

    iget-object v1, p0, Lcom/inmobi/media/E8;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/E8;->e:Z

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/E8;->c:Lcom/inmobi/media/D8;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/inmobi/media/E8;->a:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v1, Lcom/inmobi/media/d2;

    invoke-direct {v1, v0}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 8
    const-string v0, "event"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :goto_0
    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/inmobi/media/E8;->e:Z

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/E8;->e:Z

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/E8;->d:Lcom/inmobi/media/L8;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/L8;->getCurrentPosition()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/inmobi/media/L8;->getDuration()I

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v2, p0, Lcom/inmobi/media/E8;->h:Landroid/widget/ProgressBar;

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/inmobi/media/E8;->e:Z

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/E8;->d:Lcom/inmobi/media/L8;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/inmobi/media/C8;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/inmobi/media/C8;

    :cond_2
    const/4 v0, 0x0

    if-eqz v1, :cond_5

    .line 10
    iget-object v2, p0, Lcom/inmobi/media/E8;->f:Lcom/inmobi/media/t3;

    .line 11
    iget-boolean v3, v1, Lcom/inmobi/media/C8;->A:Z

    const/4 v4, 0x4

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v4

    .line 12
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v2, p0, Lcom/inmobi/media/E8;->h:Landroid/widget/ProgressBar;

    .line 14
    iget-boolean v1, v1, Lcom/inmobi/media/C8;->C:Z

    if-eqz v1, :cond_4

    move v4, v0

    .line 15
    :cond_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_5
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/inmobi/media/E8;->c:Lcom/inmobi/media/D8;

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x18

    if-eq v0, v3, :cond_b

    const/16 v3, 0x19

    if-eq v0, v3, :cond_b

    const/16 v3, 0x1b

    if-eq v0, v3, :cond_b

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_7

    const/16 v3, 0x4f

    if-eq v0, v3, :cond_7

    const/16 v3, 0xa4

    if-eq v0, v3, :cond_b

    const/16 v3, 0x55

    if-eq v0, v3, :cond_7

    const/16 v3, 0x56

    if-eq v0, v3, :cond_4

    const/16 v3, 0x7e

    if-eq v0, v3, :cond_1

    const/16 v3, 0x7f

    if-eq v0, v3, :cond_4

    .line 31
    invoke-virtual {p0}, Lcom/inmobi/media/E8;->d()V

    .line 32
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    if-eqz v1, :cond_3

    .line 33
    iget-object p1, p0, Lcom/inmobi/media/E8;->d:Lcom/inmobi/media/L8;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    .line 34
    iget-object p1, p0, Lcom/inmobi/media/E8;->d:Lcom/inmobi/media/L8;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->start()V

    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/E8;->d()V

    :cond_3
    return v2

    :cond_4
    if-eqz v1, :cond_6

    .line 40
    iget-object p1, p0, Lcom/inmobi/media/E8;->d:Lcom/inmobi/media/L8;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->isPlaying()Z

    move-result p1

    if-ne p1, v2, :cond_6

    .line 41
    iget-object p1, p0, Lcom/inmobi/media/E8;->d:Lcom/inmobi/media/L8;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->pause()V

    .line 42
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/E8;->d()V

    :cond_6
    return v2

    :cond_7
    if-eqz v1, :cond_a

    .line 43
    iget-object p1, p0, Lcom/inmobi/media/E8;->d:Lcom/inmobi/media/L8;

    if-eqz p1, :cond_9

    .line 44
    invoke-virtual {p1}, Lcom/inmobi/media/L8;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 45
    invoke-virtual {p1}, Lcom/inmobi/media/L8;->pause()V

    goto :goto_1

    .line 47
    :cond_8
    invoke-virtual {p1}, Lcom/inmobi/media/L8;->start()V

    .line 48
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/inmobi/media/E8;->d()V

    :cond_a
    return v2

    .line 69
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final getFriendlyViews()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/E8;->h:Landroid/widget/ProgressBar;

    sget-object v1, Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;->VIDEO_CONTROLS:Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/inmobi/media/E8;->f:Lcom/inmobi/media/t3;

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/inmobi/media/E8;->g:Lcom/inmobi/media/t3;

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 4
    invoke-static {v3}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lcom/inmobi/media/E8;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Lcom/inmobi/media/E8;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/E8;->d:Lcom/inmobi/media/L8;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->a()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/inmobi/media/E8;->e:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/E8;->c()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/E8;->d()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setMediaPlayer(Lcom/inmobi/media/L8;)V
    .locals 2

    const-string v0, "videoView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/E8;->d:Lcom/inmobi/media/L8;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Lcom/inmobi/media/C8;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/C8;

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    iget-boolean p1, v0, Lcom/inmobi/media/C8;->A:Z

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/inmobi/media/C8;->c()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/inmobi/media/E8;->j:Z

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/E8;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/inmobi/media/E8;->g:Lcom/inmobi/media/t3;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object p1, p0, Lcom/inmobi/media/E8;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/inmobi/media/E8;->f:Lcom/inmobi/media/t3;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/inmobi/media/E8;->b()V

    :cond_2
    return-void
.end method

.method public final setVideoAd(Lcom/inmobi/media/A8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/E8;->b:Lcom/inmobi/media/A8;

    return-void
.end method
