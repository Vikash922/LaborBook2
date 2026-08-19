.class public final Lcom/inmobi/media/I0;
.super Lcom/inmobi/media/E1;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/inmobi/media/Q0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Q0;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/I0;->d:Lcom/inmobi/media/Q0;

    .line 1
    invoke-direct {p0, p1}, Lcom/inmobi/media/E1;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/P7;Lcom/inmobi/media/Q0;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$dataModel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 306
    :try_start_0
    iget-object v0, v0, Lcom/inmobi/media/P7;->r:Lcom/inmobi/media/f9;

    .line 307
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->m()Lcom/inmobi/media/h;

    move-result-object v3

    if-eqz v0, :cond_c

    .line 309
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->t()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_c

    if-eqz v3, :cond_c

    .line 310
    new-instance v4, Lcom/inmobi/media/Ya;

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->t()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->J()B

    move-result v7

    const/4 v15, 0x0

    invoke-static {v1, v15}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/media/Q0;I)Ljava/util/Set;

    move-result-object v8

    .line 313
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->n()Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    const/16 v17, 0xf0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v5, v4

    move-object/from16 v15, v16

    move/from16 v16, v17

    .line 314
    invoke-direct/range {v5 .. v16}, Lcom/inmobi/media/Ya;-><init>(Landroid/content/Context;BLjava/util/Set;Ljava/lang/String;ZLjava/lang/String;JLcom/inmobi/media/bb;Lcom/inmobi/media/f5;I)V

    invoke-static {v1, v4}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Q0;Lcom/inmobi/media/Ya;)V

    .line 320
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->x()Lcom/inmobi/media/Ya;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/media/Y;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/inmobi/media/Ya;->setAdType(Ljava/lang/String;)V

    .line 321
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->x()Lcom/inmobi/media/Ya;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 322
    invoke-static/range {p1 .. p1}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Q0;)Lcom/inmobi/media/ab;

    move-result-object v5

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->j()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 324
    invoke-virtual {v4, v5, v6}, Lcom/inmobi/media/Ya;->a(Lcom/inmobi/media/ab;Lcom/inmobi/commons/core/configs/AdConfig;)V

    .line 328
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->x()Lcom/inmobi/media/Ya;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 329
    iget-object v5, v4, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v5, :cond_2

    sget-object v6, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v7, "TAG"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "disableUrlsToOpenInExternalApp "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v5, Lcom/inmobi/media/g5;

    invoke-virtual {v5, v6, v7}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_2
    iput-boolean v2, v4, Lcom/inmobi/media/Ya;->s:Z

    .line 331
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->x()Lcom/inmobi/media/Ya;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, v1}, Lcom/inmobi/media/Ya;->setBlobProvider(Lcom/inmobi/media/Z1;)V

    .line 332
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->x()Lcom/inmobi/media/Ya;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v2}, Lcom/inmobi/media/Ya;->setPreloadView(Z)V

    .line 333
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->x()Lcom/inmobi/media/Ya;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/media/Y;->l()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/inmobi/media/Ya;->setPlacementId(J)V

    .line 334
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->x()Lcom/inmobi/media/Ya;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Lcom/inmobi/media/h;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/inmobi/media/Ya;->setCreativeId(Ljava/lang/String;)V

    .line 335
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->x()Lcom/inmobi/media/Ya;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    .line 336
    invoke-static {v1, v5}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Q0;I)Z

    move-result v5

    .line 337
    invoke-virtual {v4, v5}, Lcom/inmobi/media/Ya;->setAllowAutoRedirection(Z)V

    .line 339
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->x()Lcom/inmobi/media/Ya;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Q0;Lcom/inmobi/media/h;Lcom/inmobi/media/Ya;)V

    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->T()B

    move-result v3

    if-nez v3, :cond_9

    .line 342
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->x()Lcom/inmobi/media/Ya;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/Q0;->a(ZLcom/inmobi/media/Ya;)V

    .line 344
    :cond_9
    const-string v3, "URL"

    .line 345
    iget-object v4, v0, Lcom/inmobi/media/f9;->y:Ljava/lang/String;

    .line 346
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    if-eqz v3, :cond_a

    .line 347
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->x()Lcom/inmobi/media/Ya;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 348
    iget-object v0, v0, Lcom/inmobi/media/D7;->e:Ljava/lang/Object;

    .line 349
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/inmobi/media/Ya;->d(Ljava/lang/String;)V

    goto :goto_5

    .line 351
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/Q0;->x()Lcom/inmobi/media/Ya;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 352
    iget-object v0, v0, Lcom/inmobi/media/D7;->e:Ljava/lang/Object;

    .line 353
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/inmobi/media/Ya;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 354
    iget-object v3, v1, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_b

    .line 355
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v4

    .line 356
    const-string v5, "<get-TAG>(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v5, "Exception for handleInterActive "

    invoke-virtual {v3, v4, v5, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 358
    :cond_b
    new-instance v3, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v3, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v4, 0x4c

    .line 359
    invoke-virtual {v1, v3, v2, v4}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 363
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 364
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 365
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_c
    :goto_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/E1;->b:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/Q0;

    if-eqz v0, :cond_3

    .line 5
    :try_start_0
    new-instance v10, Lcom/inmobi/media/P7;

    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->J()B

    move-result v2

    .line 7
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->L()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->j()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->y()Lcom/inmobi/media/x0;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v7, v4

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/inmobi/media/p9;->a:Z

    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->y()Lcom/inmobi/media/x0;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/inmobi/media/x0;->h()Lorg/json/JSONObject;

    move-result-object v4

    :cond_1
    invoke-static {v4}, Lcom/inmobi/media/p9;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v1

    move-object v7, v1

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/I0;->d:Lcom/inmobi/media/Q0;

    .line 12
    iget-object v9, v1, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    .line 13
    const-string v1, "pubContent"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adConfig"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    .line 244
    invoke-direct/range {v1 .. v9}, Lcom/inmobi/media/P7;-><init>(ILorg/json/JSONObject;Lcom/inmobi/media/P7;ZLcom/inmobi/commons/core/configs/AdConfig;Ljava/util/Map;Lcom/inmobi/media/jd;Lcom/inmobi/media/f5;)V

    .line 245
    iget-object v1, p0, Lcom/inmobi/media/I0;->d:Lcom/inmobi/media/Q0;

    invoke-virtual {v1}, Lcom/inmobi/media/Q0;->D()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/inmobi/media/I0;->d:Lcom/inmobi/media/Q0;

    new-instance v3, Lcom/inmobi/media/I0$$ExternalSyntheticLambda0;

    invoke-direct {v3, v10, v2}, Lcom/inmobi/media/I0$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/P7;Lcom/inmobi/media/Q0;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 290
    iget-object v2, p0, Lcom/inmobi/media/I0;->d:Lcom/inmobi/media/Q0;

    .line 291
    iget-object v2, v2, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_2

    .line 292
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v3

    .line 293
    const-string v4, "<get-TAG>(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v4, "Exception for handleInterActive "

    invoke-virtual {v2, v3, v4, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 295
    :cond_2
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v3, 0x1

    const/16 v4, 0x4c

    .line 296
    invoke-virtual {v0, v2, v3, v4}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 300
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 301
    const-string v0, "event"

    invoke-static {v1, v0}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 302
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/E1;->c()V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/E1;->b:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/Q0;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->LOW_MEMORY:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v2, 0x1

    const/16 v3, 0x28

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    :cond_0
    return-void
.end method
