.class public final Lcom/inmobi/media/Ib;
.super Lcom/inmobi/media/k8;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Landroidx/viewpager/widget/ViewPager;

.field public final d:Landroid/graphics/Point;

.field public final e:Landroid/graphics/Point;

.field public f:Z

.field public g:Lcom/inmobi/media/d8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/inmobi/media/k8;-><init>(Landroid/content/Context;B)V

    .line 3
    const-string p1, "Ib"

    iput-object p1, p0, Lcom/inmobi/media/Ib;->b:Ljava/lang/String;

    .line 6
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/Ib;->d:Landroid/graphics/Point;

    .line 7
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/Ib;->e:Landroid/graphics/Point;

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 21
    new-instance p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/inmobi/media/Ib;->c:Landroidx/viewpager/widget/ViewPager;

    .line 22
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/H7;Lcom/inmobi/media/l8;IILcom/inmobi/media/d8;)V
    .locals 2

    const-string v0, "scrollableContainerAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcom/inmobi/media/H7;->B:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/inmobi/media/H7;->A:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/D7;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    sget-object v0, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    invoke-static {p1, p0}, Lcom/inmobi/media/N8;->a(Lcom/inmobi/media/D7;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x14

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 12
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 14
    :goto_1
    iget-object p4, p0, Lcom/inmobi/media/Ib;->c:Landroidx/viewpager/widget/ViewPager;

    if-eqz p4, :cond_3

    .line 15
    invoke-virtual {p4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    instance-of p1, p2, Lcom/inmobi/media/Q7;

    if-eqz p1, :cond_2

    move-object v1, p2

    check-cast v1, Lcom/inmobi/media/Q7;

    :cond_2
    invoke-virtual {p4, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 p1, 0x2

    .line 19
    invoke-virtual {p4, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const/16 p1, 0x10

    .line 20
    invoke-virtual {p4, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 21
    invoke-virtual {p4, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 23
    :cond_3
    iput-object p5, p0, Lcom/inmobi/media/Ib;->g:Lcom/inmobi/media/d8;

    return-void
.end method

.method public final onPageScrollStateChanged(I)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput-boolean p1, p0, Lcom/inmobi/media/Ib;->f:Z

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/inmobi/media/Ib;->f:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ib;->b:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Ib;->c:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    instance-of v3, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 3
    :goto_1
    iget-object v3, p0, Lcom/inmobi/media/Ib;->g:Lcom/inmobi/media/d8;

    if-eqz v3, :cond_b

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 4
    :cond_2
    iput p1, v3, Lcom/inmobi/media/d8;->k:I

    .line 5
    iget-object v4, v3, Lcom/inmobi/media/d8;->c:Lcom/inmobi/media/P7;

    invoke-virtual {v4, p1}, Lcom/inmobi/media/P7;->b(I)Lcom/inmobi/media/H7;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 6
    iget-object v5, v3, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/W7;

    .line 7
    const-string v6, "asset"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v5, v5, Lcom/inmobi/media/W7;->a:Lcom/inmobi/media/X7;

    .line 40
    iget-boolean v7, v5, Lcom/inmobi/media/X7;->a:Z

    if-eqz v7, :cond_3

    goto :goto_2

    .line 41
    :cond_3
    iget-object v5, v5, Lcom/inmobi/media/X7;->b:Lcom/inmobi/media/t7;

    .line 42
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 753
    iget-object v6, v5, Lcom/inmobi/media/t7;->n:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 754
    iget-boolean v6, v5, Lcom/inmobi/media/t7;->t:Z

    if-eqz v6, :cond_4

    goto :goto_2

    .line 755
    :cond_4
    invoke-virtual {v5}, Lcom/inmobi/media/t7;->m()V

    .line 756
    iget-boolean v6, v5, Lcom/inmobi/media/t7;->t:Z

    if-eqz v6, :cond_5

    goto :goto_2

    .line 757
    :cond_5
    iget-object v6, v5, Lcom/inmobi/media/t7;->n:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 759
    iput-wide v6, v4, Lcom/inmobi/media/H7;->y:J

    .line 760
    iget-boolean p1, v5, Lcom/inmobi/media/t7;->r:Z

    if-eqz p1, :cond_7

    .line 761
    invoke-virtual {v5, v4}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;)Ljava/util/HashMap;

    move-result-object p1

    .line 762
    iget-object v6, v5, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v6, :cond_6

    iget-object v7, v5, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/inmobi/media/g5;

    const-string v1, "Page-view impression record request"

    invoke-virtual {v6, v7, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :cond_6
    iget-object v1, v5, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    const-string v5, "page_view"

    invoke-virtual {v4, v5, p1, v2, v1}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    goto :goto_2

    .line 764
    :cond_7
    iget-object p1, v5, Lcom/inmobi/media/t7;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_8
    :goto_2
    iget p1, v3, Lcom/inmobi/media/d8;->k:I

    if-nez p1, :cond_9

    const p1, 0x800003

    goto :goto_3

    .line 769
    :cond_9
    iget-object v1, v3, Lcom/inmobi/media/d8;->c:Lcom/inmobi/media/P7;

    invoke-virtual {v1}, Lcom/inmobi/media/P7;->d()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_a

    const p1, 0x800005

    goto :goto_3

    :cond_a
    move p1, v2

    .line 770
    :goto_3
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 771
    :goto_4
    iget-object p1, p0, Lcom/inmobi/media/Ib;->c:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_b
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/inmobi/media/Ib;->d:Landroid/graphics/Point;

    div-int/lit8 p1, p1, 0x2

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 2
    div-int/lit8 p2, p2, 0x2

    iput p2, p3, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 23
    iget-object v0, p0, Lcom/inmobi/media/Ib;->d:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/inmobi/media/Ib;->e:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 24
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 25
    invoke-virtual {p1, v2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto/16 :goto_4

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ib;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 27
    iget-object v4, p0, Lcom/inmobi/media/Ib;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    .line 28
    iget-object v5, p0, Lcom/inmobi/media/Ib;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    .line 29
    iget-object v6, p0, Lcom/inmobi/media/Ib;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    if-eqz v4, :cond_3

    sub-int/2addr v5, v2

    if-ne v5, v4, :cond_1

    goto :goto_0

    :cond_1
    sub-int v2, v7, v6

    .line 48
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v4, v0, v2

    if-gez v4, :cond_2

    cmpg-float v4, v3, v2

    if-gez v4, :cond_2

    sub-float/2addr v2, v3

    int-to-float v0, v6

    div-float/2addr v2, v0

    float-to-double v2, v2

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_1

    :cond_2
    add-int/2addr v7, v6

    .line 52
    div-int/lit8 v7, v7, 0x2

    int-to-float v2, v7

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    cmpl-float v0, v3, v2

    if-lez v0, :cond_5

    sub-float/2addr v3, v2

    int-to-float v0, v6

    div-float/2addr v3, v0

    float-to-double v2, v3

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_2

    :cond_3
    :goto_0
    sub-int/2addr v7, v6

    if-nez v4, :cond_4

    int-to-float v2, v7

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    cmpl-float v0, v3, v2

    if-lez v0, :cond_5

    sub-float/2addr v3, v2

    int-to-float v0, v6

    div-float/2addr v3, v0

    float-to-double v2, v3

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_2

    :cond_4
    int-to-float v2, v7

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    cmpg-float v0, v3, v2

    if-gez v0, :cond_5

    sub-float/2addr v2, v3

    int-to-float v0, v6

    div-float/2addr v2, v0

    float-to-double v2, v2

    .line 59
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    :goto_1
    neg-double v2, v2

    :goto_2
    double-to-int v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    if-eqz v0, :cond_6

    const/4 v2, 0x3

    .line 60
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 61
    iget-object v2, p0, Lcom/inmobi/media/Ib;->c:Landroidx/viewpager/widget/ViewPager;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 64
    :cond_6
    iget-object v0, p0, Lcom/inmobi/media/Ib;->d:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/inmobi/media/Ib;->e:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 65
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 66
    invoke-virtual {p1, v2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_4

    .line 72
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/Ib;->e:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 73
    iget-object v0, p0, Lcom/inmobi/media/Ib;->e:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 75
    iget-object v0, p0, Lcom/inmobi/media/Ib;->d:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/inmobi/media/Ib;->e:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 76
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 77
    invoke-virtual {p1, v2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 89
    :goto_4
    iget-object v0, p0, Lcom/inmobi/media/Ib;->c:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_8
    return v1
.end method
