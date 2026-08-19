.class public final Lcom/inmobi/media/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/Ya;

.field public final b:J

.field public final c:Lcom/inmobi/media/Qa;

.field public final d:Lcom/inmobi/media/f5;

.field public final e:Landroid/content/Context;

.field public f:Lcom/inmobi/media/B;

.field public g:Lcom/inmobi/media/n4;

.field public final h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public j:Ljava/util/concurrent/ScheduledFuture;

.field public k:Lcom/inmobi/media/Pd;

.field public final l:Lcom/inmobi/media/H;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Ya;JLcom/inmobi/media/Qa;Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/Ya;

    .line 3
    iput-wide p2, p0, Lcom/inmobi/media/I;->b:J

    .line 4
    iput-object p4, p0, Lcom/inmobi/media/I;->c:Lcom/inmobi/media/Qa;

    .line 5
    iput-object p5, p0, Lcom/inmobi/media/I;->d:Lcom/inmobi/media/f5;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/inmobi/media/I;->e:Landroid/content/Context;

    .line 15
    sget-object p1, Lcom/inmobi/media/m4;->c:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 16
    iput-object p1, p0, Lcom/inmobi/media/I;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 17
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/inmobi/media/I;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    new-instance p1, Lcom/inmobi/media/H;

    invoke-direct {p1, p0}, Lcom/inmobi/media/H;-><init>(Lcom/inmobi/media/I;)V

    iput-object p1, p0, Lcom/inmobi/media/I;->l:Lcom/inmobi/media/H;

    return-void
.end method

.method public static final a(Landroid/graphics/Rect;Ljava/util/ArrayList;Landroid/graphics/RectF;)V
    .locals 3

    .line 3412
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3414
    new-instance p0, Landroid/graphics/Rect;

    .line 3415
    iget v0, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Lcom/inmobi/media/y2;->b(F)I

    move-result v0

    .line 3416
    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Lcom/inmobi/media/y2;->b(F)I

    move-result v1

    .line 3417
    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Lcom/inmobi/media/y2;->b(F)I

    move-result v2

    .line 3418
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2}, Lcom/inmobi/media/y2;->b(F)I

    move-result p2

    .line 3419
    invoke-direct {p0, v0, v1, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3420
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/I;)V
    .locals 15

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_8

    .line 12
    :cond_1
    invoke-static {}, Lcom/inmobi/media/Kb;->m()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_8

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_8

    .line 21
    :cond_3
    iget-object v1, p0, Lcom/inmobi/media/I;->e:Landroid/content/Context;

    const-string v6, "context"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const-string v6, "<this>"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 165
    new-instance v6, Lkotlin/Pair;

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v6, v7, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v5, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    :goto_0
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 171
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 172
    iget-object v7, p0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 175
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_8

    .line 180
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget-object v8, p0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v8}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 184
    instance-of v9, v8, Landroid/view/ViewGroup;

    if-eqz v9, :cond_14

    .line 185
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 186
    new-instance v10, Ljava/util/ArrayDeque;

    invoke-direct {v10}, Ljava/util/ArrayDeque;-><init>()V

    .line 187
    invoke-virtual {v10, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    move v8, v4

    .line 192
    :cond_5
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_d

    .line 193
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 196
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_5

    .line 200
    iget-object v12, p0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/Ya;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v8, v2

    goto :goto_1

    .line 206
    :cond_6
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 207
    invoke-virtual {v11, v12}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_1

    .line 212
    :cond_7
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 213
    invoke-virtual {v11, v12}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v13

    .line 214
    iget-object v14, p0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/Ya;

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    if-eqz v13, :cond_5

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_1

    .line 219
    :cond_8
    instance-of v13, v11, Lcom/inmobi/media/t3;

    if-eqz v13, :cond_9

    goto :goto_1

    .line 224
    :cond_9
    sget-object v13, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v13}, Lcom/inmobi/media/E3;->H()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual {v11}, Landroid/view/View;->getZ()F

    move-result v13

    iget-object v14, p0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v14}, Landroid/view/View;->getZ()F

    move-result v14

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_a

    goto :goto_2

    :cond_a
    move v13, v4

    goto :goto_3

    :cond_b
    :goto_2
    move v13, v2

    :goto_3
    if-eqz v8, :cond_c

    if-eqz v13, :cond_c

    .line 228
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_c
    instance-of v12, v11, Landroid/view/ViewGroup;

    if-eqz v12, :cond_5

    .line 233
    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    sub-int/2addr v12, v2

    :goto_4
    const/4 v13, -0x1

    if-ge v13, v12, :cond_5

    .line 234
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 235
    :cond_d
    iget-object v8, p0, Lcom/inmobi/media/I;->f:Lcom/inmobi/media/B;

    if-eqz v8, :cond_e

    .line 236
    iget-object v8, v8, Lcom/inmobi/media/B;->b:Landroid/graphics/RectF;

    if-eqz v8, :cond_e

    .line 237
    invoke-static {v0, v9, v8}, Lcom/inmobi/media/I;->a(Landroid/graphics/Rect;Ljava/util/ArrayList;Landroid/graphics/RectF;)V

    .line 240
    :cond_e
    iget-object v8, p0, Lcom/inmobi/media/I;->f:Lcom/inmobi/media/B;

    if-eqz v8, :cond_f

    .line 241
    iget-object v8, v8, Lcom/inmobi/media/B;->b:Landroid/graphics/RectF;

    if-eqz v8, :cond_f

    .line 242
    invoke-static {v0, v9, v8}, Lcom/inmobi/media/I;->a(Landroid/graphics/Rect;Ljava/util/ArrayList;Landroid/graphics/RectF;)V

    .line 245
    :cond_f
    iget-object v8, p0, Lcom/inmobi/media/I;->f:Lcom/inmobi/media/B;

    if-eqz v8, :cond_10

    .line 246
    iget-object v8, v8, Lcom/inmobi/media/B;->c:Landroid/graphics/RectF;

    if-eqz v8, :cond_10

    .line 247
    invoke-static {v0, v9, v8}, Lcom/inmobi/media/I;->a(Landroid/graphics/Rect;Ljava/util/ArrayList;Landroid/graphics/RectF;)V

    .line 250
    :cond_10
    iget-object v8, p0, Lcom/inmobi/media/I;->f:Lcom/inmobi/media/B;

    if-eqz v8, :cond_11

    .line 251
    iget-object v8, v8, Lcom/inmobi/media/B;->d:Landroid/graphics/RectF;

    if-eqz v8, :cond_11

    .line 252
    invoke-static {v0, v9, v8}, Lcom/inmobi/media/I;->a(Landroid/graphics/Rect;Ljava/util/ArrayList;Landroid/graphics/RectF;)V

    .line 255
    :cond_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_12

    .line 256
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 257
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 260
    :cond_12
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 485
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 486
    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_5

    .line 490
    :cond_13
    new-instance v8, Landroid/graphics/RegionIterator;

    invoke-direct {v8, v0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 491
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 492
    :goto_6
    invoke-virtual {v8, v0}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 493
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 498
    :cond_14
    :goto_7
    new-instance v0, Lcom/inmobi/media/C;

    .line 499
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 500
    invoke-direct {v0, v8, v7, v1, v5}, Lcom/inmobi/media/C;-><init>(Landroid/graphics/RectF;Ljava/util/ArrayList;II)V

    goto :goto_9

    :cond_15
    :goto_8
    move-object v0, v3

    .line 501
    :goto_9
    monitor-enter p0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 502
    :try_start_1
    new-instance v0, Lcom/inmobi/media/n4;

    invoke-direct {v0, v1, v3, v3}, Lcom/inmobi/media/n4;-><init>(FLcom/inmobi/media/o4;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto/16 :goto_11

    .line 503
    :cond_16
    :try_start_2
    iget-object v5, v0, Lcom/inmobi/media/C;->a:Landroid/graphics/RectF;

    .line 504
    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_17

    new-instance v0, Lcom/inmobi/media/n4;

    invoke-direct {v0, v1, v3, v3}, Lcom/inmobi/media/n4;-><init>(FLcom/inmobi/media/o4;Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto/16 :goto_11

    .line 506
    :cond_17
    :try_start_3
    iget-object v6, p0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    mul-int/2addr v7, v6

    int-to-float v6, v7

    cmpg-float v7, v6, v1

    if-gtz v7, :cond_18

    .line 507
    new-instance v0, Lcom/inmobi/media/n4;

    invoke-direct {v0, v1, v3, v3}, Lcom/inmobi/media/n4;-><init>(FLcom/inmobi/media/o4;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto/16 :goto_11

    .line 510
    :cond_18
    :try_start_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 511
    iget-object v8, p0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/Ya;

    const/4 v9, 0x2

    .line 512
    new-array v9, v9, [I

    .line 515
    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 518
    aget v8, v9, v4

    int-to-float v8, v8

    .line 519
    aget v2, v9, v2

    int-to-float v2, v2

    .line 521
    new-instance v9, Lkotlin/Pair;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v9, v8, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 522
    invoke-virtual {v9}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 523
    iget-object v9, v0, Lcom/inmobi/media/C;->b:Ljava/util/ArrayList;

    .line 524
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    .line 525
    new-instance v11, Landroid/graphics/RectF;

    .line 526
    iget v12, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v2

    .line 527
    iget v13, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v13, v8

    .line 528
    iget v14, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v2

    .line 529
    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v8

    .line 530
    invoke-direct {v11, v12, v13, v14, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 531
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 532
    :cond_19
    iget-object v0, v0, Lcom/inmobi/media/C;->b:Ljava/util/ArrayList;

    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v1

    goto :goto_c

    .line 607
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    .line 608
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float/2addr v8, v9

    add-float/2addr v2, v8

    goto :goto_b

    .line 609
    :cond_1b
    :goto_c
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 610
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 611
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v8

    .line 612
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v9, v8, v1

    if-lez v9, :cond_1d

    cmpg-float v9, v2, v1

    if-gtz v9, :cond_1c

    goto :goto_d

    :cond_1c
    mul-float/2addr v8, v2

    .line 617
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_e

    :cond_1d
    :goto_d
    move v2, v1

    :goto_e
    sub-float/2addr v2, v0

    .line 618
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v6

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    .line 623
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 624
    invoke-static {v0}, Lcom/inmobi/media/y2;->a(F)F

    move-result v0

    .line 625
    new-instance v2, Lcom/inmobi/media/o4;

    .line 626
    iget v6, v5, Landroid/graphics/RectF;->left:F

    .line 627
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v8

    div-float/2addr v6, v8

    .line 628
    invoke-static {v6}, Lcom/inmobi/media/y2;->a(F)F

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 629
    iget v8, v5, Landroid/graphics/RectF;->top:F

    .line 630
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v9

    div-float/2addr v8, v9

    .line 631
    invoke-static {v8}, Lcom/inmobi/media/y2;->a(F)F

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 632
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v9

    .line 633
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v10

    div-float/2addr v9, v10

    .line 634
    invoke-static {v9}, Lcom/inmobi/media/y2;->b(F)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 635
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 636
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v10

    div-float/2addr v5, v10

    .line 637
    invoke-static {v5}, Lcom/inmobi/media/y2;->b(F)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 638
    invoke-direct {v2, v6, v8, v9, v5}, Lcom/inmobi/media/o4;-><init>(FFII)V

    .line 644
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_10

    .line 744
    :cond_1e
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v7, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 745
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 746
    check-cast v6, Landroid/graphics/RectF;

    .line 747
    new-instance v7, Lcom/inmobi/media/o4;

    .line 748
    iget v8, v6, Landroid/graphics/RectF;->left:F

    .line 749
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v9

    div-float/2addr v8, v9

    .line 750
    invoke-static {v8}, Lcom/inmobi/media/y2;->a(F)F

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 751
    iget v9, v6, Landroid/graphics/RectF;->top:F

    .line 752
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v10

    div-float/2addr v9, v10

    .line 753
    invoke-static {v9}, Lcom/inmobi/media/y2;->a(F)F

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 754
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v10

    .line 755
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v11

    div-float/2addr v10, v11

    .line 756
    invoke-static {v10}, Lcom/inmobi/media/y2;->b(F)I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 757
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v6}, Lcom/inmobi/media/y2;->b(F)I

    move-result v6

    int-to-float v6, v6

    .line 758
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v11

    div-float/2addr v6, v11

    invoke-static {v6}, Lcom/inmobi/media/y2;->b(F)I

    move-result v6

    .line 759
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 760
    invoke-direct {v7, v8, v9, v10, v6}, Lcom/inmobi/media/o4;-><init>(FFII)V

    .line 860
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 862
    :cond_1f
    new-instance v1, Lcom/inmobi/media/D;

    invoke-direct {v1}, Lcom/inmobi/media/D;-><init>()V

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 863
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 864
    :goto_10
    new-instance v1, Lcom/inmobi/media/n4;

    invoke-direct {v1, v0, v2, v3}, Lcom/inmobi/media/n4;-><init>(FLcom/inmobi/media/o4;Ljava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    move-object v0, v1

    .line 865
    :goto_11
    invoke-virtual {p0, v0}, Lcom/inmobi/media/I;->a(Lcom/inmobi/media/n4;)V

    return-void

    :catchall_0
    move-exception v0

    .line 866
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/n4;)V
    .locals 5

    .line 867
    iget-object v0, p0, Lcom/inmobi/media/I;->g:Lcom/inmobi/media/n4;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 869
    iget-object v0, p0, Lcom/inmobi/media/I;->c:Lcom/inmobi/media/Qa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    const-string v1, "metrics"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1333
    iget-object v0, v0, Lcom/inmobi/media/Qa;->a:Lcom/inmobi/media/Ya;

    .line 1334
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.broadcastEvent(\'exposureChange\', "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1335
    iget v2, p1, Lcom/inmobi/media/n4;->a:F

    .line 1336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1337
    iget-object v3, p1, Lcom/inmobi/media/n4;->b:Lcom/inmobi/media/o4;

    const-string v4, "null"

    if-eqz v3, :cond_0

    .line 1338
    invoke-static {v3}, Lcom/inmobi/media/p4;->a(Lcom/inmobi/media/o4;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1339
    iget-object v2, p1, Lcom/inmobi/media/n4;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1340
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1341
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1342
    check-cast v4, Lcom/inmobi/media/o4;

    .line 1343
    invoke-static {v4}, Lcom/inmobi/media/p4;->a(Lcom/inmobi/media/o4;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3406
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3407
    :cond_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 3409
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3410
    invoke-virtual {v0, v1}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    .line 3411
    iput-object p1, p0, Lcom/inmobi/media/I;->g:Lcom/inmobi/media/n4;

    :cond_3
    return-void
.end method
