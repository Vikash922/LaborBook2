.class public final Lcom/laborbook/keep/screen/home/fragment/ConfettiView;
.super Landroid/view/View;
.source "ConfettiView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfettiView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfettiView.kt\ncom/laborbook/keep/screen/home/fragment/ConfettiView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,281:1\n1863#2,2:282\n1863#2,2:284\n*S KotlinDebug\n*F\n+ 1 ConfettiView.kt\ncom/laborbook/keep/screen/home/fragment/ConfettiView\n*L\n125#1:282,2\n156#1:284,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u0001\'B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0013H\u0002J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001dH\u0014J\u0008\u0010\u001e\u001a\u00020\u0018H\u0014J(\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H\u0014J\u0018\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0007H\u0014R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/laborbook/keep/screen/home/fragment/ConfettiView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "confettiParticles",
        "",
        "Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;",
        "paint",
        "Landroid/graphics/Paint;",
        "isAnimating",
        "",
        "hasAnimated",
        "centerX",
        "",
        "centerY",
        "confettiColors",
        "",
        "startConfettiAnimation",
        "",
        "updateParticles",
        "progress",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onAttachedToWindow",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "ConfettiParticle",
        "keep_release"
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
.field private centerX:F

.field private centerY:F

.field private final confettiColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final confettiParticles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;",
            ">;"
        }
    .end annotation
.end field

.field private hasAnimated:Z

.field private isAnimating:Z

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$7qg7CS0H2-3j0h7t9yE0hWjFbVY(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;)V
    .locals 0

    invoke-static {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->onAttachedToWindow$lambda$6(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M-x2sosLPMTdmWV32Av1cB4njzQ(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;)V
    .locals 0

    invoke-static {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->onSizeChanged$lambda$7(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$itMKwqlhNaIrrjE8vVBScbHKTBk(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->startConfettiAnimation$lambda$1$lambda$0(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->confettiParticles:Ljava/util/List;

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->paint:Landroid/graphics/Paint;

    const/4 p1, 0x5

    .line 36
    new-array p1, p1, [Ljava/lang/Integer;

    const-string p3, "#FFB6C1"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 37
    const-string p3, "#87CEEB"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    .line 38
    const-string p2, "#FFD700"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p1, p3

    .line 39
    const-string p2, "#98FB98"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, p1, p3

    .line 40
    const-string p2, "#DDA0DD"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x4

    aput-object p2, p1, p3

    .line 35
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->confettiColors:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 22
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$setAnimating$p(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->isAnimating:Z

    return-void
.end method

.method private static final onAttachedToWindow$lambda$6(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->startConfettiAnimation()V

    return-void
.end method

.method private static final onSizeChanged$lambda$7(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->startConfettiAnimation()V

    return-void
.end method

.method private static final startConfettiAnimation$lambda$1$lambda$0(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 110
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->updateParticles(F)V

    .line 111
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->invalidate()V

    return-void
.end method

.method private final updateParticles(F)V
    .locals 6

    .line 125
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->confettiParticles:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 282
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, p1

    mul-float/2addr v3, v3

    sub-float/2addr v2, v3

    .line 131
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getStartX()F

    move-result v3

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getVelocityX()F

    move-result v4

    mul-float/2addr v4, v2

    const/16 v5, 0x14

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->setX(F)V

    .line 132
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getStartY()F

    move-result v3

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getVelocityY()F

    move-result v4

    mul-float/2addr v4, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->setY(F)V

    const v2, 0x3e99999a    # 0.3f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    sub-float v3, p1, v2

    const v4, 0x3f333333    # 0.7f

    div-float/2addr v3, v4

    .line 137
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getY()F

    move-result v4

    const/16 v5, 0x1e

    int-to-float v5, v5

    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->setY(F)V

    .line 141
    :cond_1
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getRotation()F

    move-result v3

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getRotationSpeed()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->setRotation(F)V

    .line 144
    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v3}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 145
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getVelocityX()F

    move-result v3

    sget-object v4, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v4}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->setVelocityX(F)V

    .line 146
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getVelocityY()F

    move-result v3

    sget-object v4, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v4}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v4

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->setVelocityY(F)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 235
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 236
    iget-boolean v0, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->hasAnimated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 237
    new-instance v0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$$ExternalSyntheticLambda2;-><init>(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;)V

    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 154
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->confettiParticles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->confettiParticles:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 284
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;

    .line 158
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->getHeight()I

    move-result v3

    const/16 v4, 0x64

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getX()F

    move-result v2

    const/high16 v3, -0x3db80000    # -50.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x32

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 160
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getRotation()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 163
    iget-object v2, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getX()F

    move-result v2

    iget v3, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->centerX:F

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getX()F

    move-result v3

    iget v5, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->centerX:F

    sub-float/2addr v3, v5

    mul-float/2addr v2, v3

    .line 167
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getY()F

    move-result v3

    iget v5, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->centerY:F

    sub-float/2addr v3, v5

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getY()F

    move-result v5

    iget v6, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->centerY:F

    sub-float/2addr v5, v6

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 166
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 169
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v5

    cmpl-float v5, v2, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0xff

    if-lez v5, :cond_2

    int-to-float v5, v8

    int-to-float v9, v7

    sub-float/2addr v2, v3

    int-to-float v3, v4

    div-float/2addr v2, v3

    sub-float/2addr v9, v2

    mul-float/2addr v5, v9

    float-to-int v2, v5

    .line 171
    invoke-static {v2, v6, v8}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v8

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getShapeType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_9

    if-eq v2, v7, :cond_8

    if-eq v2, v4, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    goto/16 :goto_4

    .line 207
    :cond_3
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getSize()F

    move-result v1

    int-to-float v2, v4

    div-float/2addr v1, v2

    .line 208
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v1

    :goto_1
    const/16 v4, 0xa

    if-ge v6, v4, :cond_6

    .line 214
    rem-int/lit8 v4, v6, 0x2

    if-nez v4, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    int-to-double v7, v6

    const-wide v9, 0x3fe41b2f769cf0e0L    # 0.6283185307179586

    mul-double/2addr v7, v9

    .line 215
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    float-to-double v4, v4

    mul-double/2addr v9, v4

    double-to-float v9, v9

    .line 216
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v4

    double-to-float v4, v7

    if-nez v6, :cond_5

    .line 218
    invoke-virtual {v2, v9, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    .line 220
    :cond_5
    invoke-virtual {v2, v9, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 223
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 225
    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 196
    :cond_7
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getSize()F

    move-result v1

    int-to-float v2, v4

    div-float/2addr v1, v2

    .line 197
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    neg-float v4, v1

    .line 198
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 199
    invoke-virtual {v2, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 200
    invoke-virtual {v2, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 203
    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 185
    :cond_8
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getSize()F

    move-result v1

    int-to-float v2, v4

    div-float v7, v1, v2

    neg-float v5, v7

    .line 191
    iget-object v8, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v5

    move v6, v7

    .line 186
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 181
    :cond_9
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;->getSize()F

    move-result v1

    int-to-float v2, v4

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 229
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_a
    :goto_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 255
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 256
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 258
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-nez p2, :cond_0

    .line 264
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    .line 263
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v1, 0x0

    .line 267
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 262
    invoke-virtual {v0, p2, v1}, Landroid/view/View;->measure(II)V

    .line 272
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->setMeasuredDimension(II)V

    return-void

    .line 278
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 246
    iget-boolean p1, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->hasAnimated:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->isAnimating:Z

    if-nez p1, :cond_0

    .line 247
    new-instance p1, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;)V

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final startConfettiAnimation()V
    .locals 18

    move-object/from16 v0, p0

    .line 60
    iget-boolean v1, v0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->hasAnimated:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->isAnimating:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 62
    iput-boolean v1, v0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->isAnimating:Z

    .line 63
    iput-boolean v1, v0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->hasAnimated:Z

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->centerX:F

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->centerY:F

    .line 70
    iget-object v1, v0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->confettiParticles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_1

    .line 75
    sget-object v2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v2}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v15, v2, v3

    float-to-double v2, v15

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 79
    sget-object v4, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v4}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v4

    const/16 v5, 0xc8

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/16 v5, 0x32

    int-to-float v5, v5

    add-float v16, v4, v5

    .line 82
    sget-object v4, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v4}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v4

    const/16 v5, 0xf

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/16 v6, 0xa

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    float-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-float v13, v6

    .line 84
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    double-to-float v14, v2

    .line 86
    new-instance v2, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;

    .line 87
    iget v7, v0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->centerX:F

    .line 88
    iget v8, v0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->centerY:F

    .line 91
    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v3}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v3

    const/16 v4, 0x10

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x6

    int-to-float v4, v4

    add-float v9, v3, v4

    .line 92
    iget-object v3, v0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->confettiColors:Ljava/util/List;

    sget-object v4, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    iget-object v6, v0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->confettiColors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Lkotlin/random/Random$Default;->nextInt(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 93
    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v3}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v3

    const/16 v4, 0x168

    int-to-float v4, v4

    mul-float v11, v3, v4

    .line 94
    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v3}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    mul-float v12, v3, v5

    .line 99
    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lkotlin/random/Random$Default;->nextInt(I)I

    move-result v17

    move-object v4, v2

    move v5, v7

    move v6, v8

    .line 86
    invoke-direct/range {v4 .. v17}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;-><init>(FFFFFIFFFFFFI)V

    .line 101
    iget-object v3, v0, Lcom/laborbook/keep/screen/home/fragment/ConfettiView;->confettiParticles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 105
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    .line 106
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 107
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    new-instance v2, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    new-instance v2, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$startConfettiAnimation$animator$1$2;

    invoke-direct {v2, v0}, Lcom/laborbook/keep/screen/home/fragment/ConfettiView$startConfettiAnimation$animator$1$2;-><init>(Lcom/laborbook/keep/screen/home/fragment/ConfettiView;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 121
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
