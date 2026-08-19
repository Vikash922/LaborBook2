.class public final Lcom/inmobi/media/Z6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/Ya;

.field public final b:Ljava/lang/String;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:I

.field public h:I

.field public i:F

.field public j:Lorg/json/JSONArray;

.field public k:Landroid/view/MotionEvent;

.field public l:I


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Ya;)V
    .locals 1

    const-string v0, "mListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/Z6;->a:Lcom/inmobi/media/Ya;

    .line 7
    const-string p1, "Z6"

    iput-object p1, p0, Lcom/inmobi/media/Z6;->b:Ljava/lang/String;

    const p1, 0x7fffffff

    .line 19
    iput p1, p0, Lcom/inmobi/media/Z6;->l:I

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/inmobi/media/Z6;->g:I

    .line 23
    iput p1, p0, Lcom/inmobi/media/Z6;->h:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "event"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "TAG"

    const/4 v7, 0x1

    if-eqz v3, :cond_17

    const/4 v8, 0x5

    const-string v9, "\');"

    const-string v10, "movementGestureDetector"

    const-string v11, " \n "

    const/4 v12, -0x1

    if-eq v3, v7, :cond_12

    const-string v13, "Index for mPtrID1="

    const-string v14, " | Pointer count="

    const-string v15, " is "

    if-eq v3, v5, :cond_c

    const/4 v7, 0x3

    if-eq v3, v7, :cond_b

    if-eq v3, v8, :cond_8

    const/4 v2, 0x6

    if-eq v3, v2, :cond_0

    goto/16 :goto_a

    .line 85
    :cond_0
    iget-object v2, v0, Lcom/inmobi/media/Z6;->b:Ljava/lang/String;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    iput v12, v0, Lcom/inmobi/media/Z6;->h:I

    .line 87
    iget v2, v0, Lcom/inmobi/media/Z6;->i:F

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v2, v2, v3

    const-string v3, "endEvent"

    const-string v8, "initialEvent"

    if-lez v2, :cond_4

    .line 88
    iget-object v2, v0, Lcom/inmobi/media/Z6;->k:Landroid/view/MotionEvent;

    if-eqz v2, :cond_3

    .line 89
    iget-object v12, v0, Lcom/inmobi/media/Z6;->a:Lcom/inmobi/media/Ya;

    .line 90
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v12}, Lcom/inmobi/media/Ya;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getSupportedGestures()Ljava/util/List;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 306
    iget-object v2, v12, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_3

    sget-object v7, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v12, "Rotation gesture is disabled from config"

    invoke-virtual {v2, v7, v12}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    :cond_1
    iget-object v7, v12, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v7, :cond_2

    .line 310
    sget-object v13, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 311
    const-string v14, " Rotation detected "

    invoke-static {v13, v6, v14}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 312
    iget v15, v0, Lcom/inmobi/media/Z6;->i:F

    .line 313
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 314
    check-cast v7, Lcom/inmobi/media/g5;

    invoke-virtual {v7, v13, v14}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_2
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 319
    new-instance v13, Lorg/json/JSONArray;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    invoke-static {v14}, Lcom/inmobi/media/y2;->c(F)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    invoke-static {v15}, Lcom/inmobi/media/y2;->c(F)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v11

    new-array v11, v5, [Ljava/lang/Integer;

    aput-object v14, v11, v4

    const/4 v14, 0x1

    aput-object v15, v11, v14

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v13, v11}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 320
    new-instance v11, Lorg/json/JSONArray;

    invoke-virtual {v2, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    invoke-static {v13}, Lcom/inmobi/media/y2;->c(F)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-static {v2}, Lcom/inmobi/media/y2;->c(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v15, v5, [Ljava/lang/Integer;

    aput-object v13, v15, v4

    aput-object v2, v15, v14

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v11, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 321
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-static {v11}, Lcom/inmobi/media/y2;->c(F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-static {v13}, Lcom/inmobi/media/y2;->c(F)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v14, v5, [Ljava/lang/Integer;

    aput-object v11, v14, v4

    const/4 v11, 0x1

    aput-object v13, v14, v11

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v2, v13}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 322
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    invoke-static {v13}, Lcom/inmobi/media/y2;->c(F)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    invoke-static {v14}, Lcom/inmobi/media/y2;->c(F)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v15, v5, [Ljava/lang/Integer;

    aput-object v13, v15, v4

    aput-object v14, v15, v11

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v2, v11}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "window.imraidview.onGestureDetected(\'3\', \'"

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    move-object/from16 v16, v11

    :goto_1
    const/4 v7, 0x0

    .line 326
    iput v7, v0, Lcom/inmobi/media/Z6;->i:F

    goto :goto_2

    :cond_4
    move-object/from16 v16, v11

    .line 328
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    sub-float/2addr v2, v11

    mul-float/2addr v2, v2

    sub-float/2addr v12, v13

    mul-float/2addr v12, v12

    add-float/2addr v12, v2

    float-to-double v11, v12

    .line 330
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v2, v11

    .line 331
    iget v7, v0, Lcom/inmobi/media/Z6;->l:I

    sub-int/2addr v2, v7

    .line 332
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v7, 0x1f4

    if-le v2, v7, :cond_18

    .line 334
    iget-object v2, v0, Lcom/inmobi/media/Z6;->k:Landroid/view/MotionEvent;

    if-eqz v2, :cond_7

    .line 335
    iget-object v7, v0, Lcom/inmobi/media/Z6;->a:Lcom/inmobi/media/Ya;

    .line 336
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-virtual {v7}, Lcom/inmobi/media/Ya;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getSupportedGestures()Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 530
    iget-object v1, v7, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_7

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v3, "Pinch gesture is disabled from config"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 533
    :cond_5
    iget-object v3, v7, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_6

    sget-object v8, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, " onScaleDetected\n "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v11, v16

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v8, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_6
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 536
    new-instance v3, Lorg/json/JSONArray;

    .line 538
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v10, v6

    int-to-float v6, v5

    div-float/2addr v10, v6

    invoke-static {v10}, Lcom/inmobi/media/y2;->c(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 539
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v11

    div-float/2addr v1, v6

    invoke-static {v1}, Lcom/inmobi/media/y2;->c(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v10, v5, v4

    aput-object v1, v5, v8

    .line 540
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 541
    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 542
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "window.imraidview.onGestureDetected(\'4\', \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    :cond_7
    :goto_3
    const v1, 0x7fffffff

    .line 551
    iput v1, v0, Lcom/inmobi/media/Z6;->l:I

    goto/16 :goto_a

    .line 552
    :cond_8
    iget-object v3, v0, Lcom/inmobi/media/Z6;->b:Ljava/lang/String;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/inmobi/media/Z6;->h:I

    .line 554
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, v0, Lcom/inmobi/media/Z6;->k:Landroid/view/MotionEvent;

    .line 555
    iget v3, v0, Lcom/inmobi/media/Z6;->g:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 556
    iget v4, v0, Lcom/inmobi/media/Z6;->h:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-ltz v3, :cond_9

    .line 558
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, v0, Lcom/inmobi/media/Z6;->e:F

    .line 559
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, v0, Lcom/inmobi/media/Z6;->f:F

    goto :goto_4

    .line 561
    :cond_9
    sget-object v5, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 562
    new-instance v5, Lcom/inmobi/media/d2;

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcom/inmobi/media/Z6;->g:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 563
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    sget-object v3, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v3, v5}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :goto_4
    if-ltz v4, :cond_a

    .line 642
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, v0, Lcom/inmobi/media/Z6;->c:F

    .line 643
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, v0, Lcom/inmobi/media/Z6;->d:F

    goto :goto_5

    .line 645
    :cond_a
    sget-object v3, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 646
    new-instance v3, Lcom/inmobi/media/d2;

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Index for mPtrID2="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/inmobi/media/Z6;->h:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 647
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v3}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    .line 726
    :goto_5
    iget v1, v0, Lcom/inmobi/media/Z6;->e:F

    iget v2, v0, Lcom/inmobi/media/Z6;->c:F

    iget v3, v0, Lcom/inmobi/media/Z6;->f:F

    iget v4, v0, Lcom/inmobi/media/Z6;->d:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v1

    sub-float/2addr v3, v4

    mul-float/2addr v3, v3

    add-float/2addr v3, v1

    float-to-double v1, v3

    .line 727
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 728
    iput v1, v0, Lcom/inmobi/media/Z6;->l:I

    goto/16 :goto_a

    .line 799
    :cond_b
    iget-object v2, v0, Lcom/inmobi/media/Z6;->b:Ljava/lang/String;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 800
    iput v12, v0, Lcom/inmobi/media/Z6;->g:I

    .line 801
    iput v12, v0, Lcom/inmobi/media/Z6;->h:I

    goto/16 :goto_a

    :cond_c
    const/4 v7, 0x0

    .line 802
    iget-object v3, v0, Lcom/inmobi/media/Z6;->j:Lorg/json/JSONArray;

    .line 803
    iget v6, v0, Lcom/inmobi/media/Z6;->g:I

    if-eq v6, v12, :cond_11

    iget v8, v0, Lcom/inmobi/media/Z6;->h:I

    if-eq v8, v12, :cond_11

    .line 808
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 809
    iget v4, v0, Lcom/inmobi/media/Z6;->h:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-ltz v3, :cond_d

    .line 811
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 812
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    goto :goto_6

    .line 814
    :cond_d
    sget-object v5, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 815
    new-instance v5, Lcom/inmobi/media/d2;

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v0, Lcom/inmobi/media/Z6;->g:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 816
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    sget-object v3, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v3, v5}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    move v3, v7

    move v5, v3

    :goto_6
    if-ltz v4, :cond_e

    .line 895
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 896
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    move/from16 v17, v7

    move v7, v1

    move/from16 v1, v17

    goto :goto_7

    .line 898
    :cond_e
    sget-object v6, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 899
    new-instance v6, Lcom/inmobi/media/d2;

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v0, Lcom/inmobi/media/Z6;->h:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 900
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 978
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v6}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    move v1, v7

    .line 979
    :goto_7
    iget v2, v0, Lcom/inmobi/media/Z6;->c:F

    iget v4, v0, Lcom/inmobi/media/Z6;->d:F

    iget v6, v0, Lcom/inmobi/media/Z6;->e:F

    iget v8, v0, Lcom/inmobi/media/Z6;->f:F

    sub-float/2addr v4, v8

    float-to-double v8, v4

    sub-float/2addr v2, v6

    float-to-double v10, v2

    .line 980
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v2, v8

    sub-float/2addr v7, v3

    float-to-double v3, v7

    sub-float/2addr v1, v5

    float-to-double v5, v1

    .line 981
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v1, v3

    sub-float/2addr v2, v1

    float-to-double v1, v2

    .line 982
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/16 v2, 0x168

    int-to-float v2, v2

    rem-float/2addr v1, v2

    const/high16 v2, -0x3ccc0000    # -180.0f

    cmpg-float v2, v1, v2

    const/high16 v3, 0x43b40000    # 360.0f

    if-gez v2, :cond_f

    add-float/2addr v1, v3

    :cond_f
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_10

    sub-float/2addr v1, v3

    .line 983
    :cond_10
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/inmobi/media/Z6;->i:F

    goto/16 :goto_a

    :cond_11
    if-eq v6, v12, :cond_18

    if-eqz v3, :cond_18

    .line 985
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_18

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v6, 0x32

    if-ge v2, v6, :cond_18

    .line 987
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Lcom/inmobi/media/y2;->c(F)I

    move-result v2

    .line 988
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Lcom/inmobi/media/y2;->c(F)I

    move-result v1

    .line 989
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 990
    new-instance v7, Lorg/json/JSONArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v2, v5, v4

    const/4 v2, 0x1

    aput-object v1, v5, v2

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v7, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 991
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x1

    .line 992
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v2

    mul-float/2addr v1, v1

    sub-float/2addr v5, v4

    mul-float/2addr v5, v5

    add-float/2addr v5, v1

    float-to-double v1, v5

    .line 993
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_18

    .line 994
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    .line 1002
    :cond_12
    iget-object v2, v0, Lcom/inmobi/media/Z6;->b:Ljava/lang/String;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1003
    iput v12, v0, Lcom/inmobi/media/Z6;->g:I

    .line 1004
    iget-object v1, v0, Lcom/inmobi/media/Z6;->j:Lorg/json/JSONArray;

    if-eqz v1, :cond_18

    .line 1005
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, v8, :cond_18

    .line 1006
    iget-object v1, v0, Lcom/inmobi/media/Z6;->a:Lcom/inmobi/media/Ya;

    .line 1007
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1184
    invoke-virtual {v1}, Lcom/inmobi/media/Ya;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getSupportedGestures()Ljava/util/List;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1185
    iget-object v1, v1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_16

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v3, "Pan gesture is disabled from config"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1188
    :cond_13
    iget-object v2, v1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_15

    .line 1189
    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 1190
    const-string v4, "onPanDetected\n "

    invoke-static {v3, v6, v4}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1191
    iget-object v5, v0, Lcom/inmobi/media/Z6;->j:Lorg/json/JSONArray;

    if-eqz v5, :cond_14

    .line 1192
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_8

    :cond_14
    const/4 v5, 0x0

    :goto_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1193
    iget-object v5, v0, Lcom/inmobi/media/Z6;->j:Lorg/json/JSONArray;

    .line 1194
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1195
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.imraidview.onGestureDetected(\'2\', \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1200
    iget-object v3, v0, Lcom/inmobi/media/Z6;->j:Lorg/json/JSONArray;

    .line 1201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    .line 1202
    :cond_16
    :goto_9
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, v0, Lcom/inmobi/media/Z6;->j:Lorg/json/JSONArray;

    goto :goto_a

    .line 1203
    :cond_17
    iget-object v2, v0, Lcom/inmobi/media/Z6;->b:Ljava/lang/String;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1204
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lcom/inmobi/media/Z6;->g:I

    .line 1205
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, v0, Lcom/inmobi/media/Z6;->j:Lorg/json/JSONArray;

    .line 1206
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Lcom/inmobi/media/y2;->c(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Lcom/inmobi/media/y2;->c(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v3, v5, v4

    const/4 v3, 0x1

    aput-object v1, v5, v3

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1207
    iget-object v1, v0, Lcom/inmobi/media/Z6;->j:Lorg/json/JSONArray;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :catch_0
    :cond_18
    :goto_a
    return-void
.end method
