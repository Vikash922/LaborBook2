.class public final Lcom/inmobi/media/E2;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/LinkedHashMap;

.field public c:Ljava/util/Map;

.field public d:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    const-string v0, "looper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/E2;->a:Ljava/util/ArrayList;

    .line 19
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/E2;->b:Ljava/util/LinkedHashMap;

    .line 21
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/E2;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "message"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lcom/inmobi/media/K2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 4
    :cond_0
    iget v2, v1, Landroid/os/Message;->what:I

    const-string v3, "key"

    const-string v4, "user_age_restricted"

    const-string v5, "user_info_store"

    const/4 v6, 0x3

    const/16 v7, 0x3e8

    const/4 v8, 0x2

    const-string v9, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig"

    const-string v10, "root"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v14, "access$getTAG$cp(...)"

    packed-switch v2, :pswitch_data_0

    .line 195
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 196
    :pswitch_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.ConfigNetworkResponse.IPAddress"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/V2;

    .line 197
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    instance-of v2, v1, Lcom/inmobi/media/U2;

    if-eqz v2, :cond_6

    .line 200
    sget-object v2, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto :goto_0

    .line 202
    :cond_1
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 203
    sget-object v6, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v5}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v2

    .line 205
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v2, v2, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, v4, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 293
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 294
    sput-object v2, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    .line 298
    :cond_2
    sget-object v2, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    :cond_3
    :goto_0
    if-nez v12, :cond_5

    .line 299
    sget-object v2, Lcom/inmobi/media/n5;->a:Lkotlin/Lazy;

    check-cast v1, Lcom/inmobi/media/U2;

    .line 300
    iget-object v4, v1, Lcom/inmobi/media/U2;->a:Ljava/lang/String;

    .line 301
    const-string v1, "ipAddress"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    sput-object v4, Lcom/inmobi/media/n5;->b:Ljava/lang/String;

    .line 338
    sget-object v1, Lcom/inmobi/media/n5;->a:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/inmobi/media/e6;

    if-eqz v2, :cond_4

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 339
    const-string v3, "cip"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 340
    :cond_4
    sget-object v1, Lcom/inmobi/media/n5;->c:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 341
    :cond_5
    invoke-static {}, Lcom/inmobi/media/n5;->a()V

    goto/16 :goto_f

    .line 344
    :cond_6
    instance-of v1, v1, Lcom/inmobi/media/T2;

    if-eqz v1, :cond_2a

    .line 345
    invoke-static {}, Lcom/inmobi/media/n5;->a()V

    goto/16 :goto_f

    .line 346
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.ConfigNetworkResponse.ConfigResponse"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/S2;

    .line 347
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iget-object v2, v1, Lcom/inmobi/media/S2;->c:Lcom/inmobi/media/N2;

    if-eqz v2, :cond_7

    .line 1240
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1241
    iget-object v1, v1, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 1242
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    goto/16 :goto_f

    .line 349
    :cond_7
    iget v2, v1, Lcom/inmobi/media/S2;->b:I

    const/16 v3, 0x130

    const-string v4, "TAG"

    const-string v5, "M2"

    const-string v6, "account_id=? AND config_type=?"

    if-ne v2, v3, :cond_9

    .line 350
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object v2, v1, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 352
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 353
    iget-object v1, v1, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 354
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 355
    invoke-static {}, Lcom/inmobi/media/K2;->c()Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/M2;

    .line 356
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 359
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    const-string v7, "type"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "accountId"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    new-array v4, v8, [Ljava/lang/String;

    aput-object v1, v4, v12

    aput-object v3, v4, v13

    .line 448
    invoke-virtual {v2, v6, v4}, Lcom/inmobi/media/R1;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/commons/core/configs/Config;

    if-eqz v4, :cond_8

    .line 449
    invoke-virtual {v4, v9, v10}, Lcom/inmobi/commons/core/configs/Config;->setLastUpdateTimeStamp(J)V

    .line 452
    new-array v5, v8, [Ljava/lang/String;

    aput-object v1, v5, v12

    aput-object v3, v5, v13

    .line 453
    invoke-virtual {v2, v4, v6, v5}, Lcom/inmobi/media/R1;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_8
    return-void

    .line 454
    :cond_9
    iget-object v2, v1, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 455
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 456
    iget-object v2, v1, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 457
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/commons/core/configs/RootConfig;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/RootConfig;->getIpAddrTPSupport()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 458
    invoke-static {}, Lcom/inmobi/media/n5;->a()V

    .line 459
    :cond_a
    invoke-static {}, Lcom/inmobi/media/K2;->c()Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/M2;

    .line 460
    iget-object v3, v1, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 461
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    const-string v7, "config"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    :try_start_0
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    goto :goto_1

    .line 482
    :cond_b
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 483
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    move-result-object v5

    .line 484
    new-array v7, v8, [Ljava/lang/String;

    aput-object v5, v7, v12

    aput-object v4, v7, v13

    .line 485
    invoke-virtual {v2, v3, v6, v7}, Lcom/inmobi/media/R1;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :catch_0
    :goto_1
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    iget-object v2, v1, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 488
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 491
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    iget-object v2, v1, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 493
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 497
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iget-object v2, v1, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 499
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 500
    iget-object v2, v1, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 501
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 502
    sget-object v3, Lcom/inmobi/media/K2;->e:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 503
    const-string v4, "<this>"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1236
    sget-object v4, Lcom/inmobi/media/y3;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inmobi/media/y3;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1237
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    iget-object v1, v1, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 1239
    invoke-static {v1}, Lcom/inmobi/media/I2;->b(Lcom/inmobi/commons/core/configs/Config;)V

    goto/16 :goto_f

    .line 1243
    :pswitch_2
    iget-object v1, v0, Lcom/inmobi/media/E2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-ne v1, v13, :cond_c

    .line 1244
    iput-object v11, v0, Lcom/inmobi/media/E2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v1, v11

    goto :goto_2

    .line 1247
    :cond_c
    iget-object v1, v0, Lcom/inmobi/media/E2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    :goto_2
    if-eqz v1, :cond_2a

    .line 1248
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1249
    iput-object v11, v0, Lcom/inmobi/media/E2;->c:Ljava/util/Map;

    .line 1250
    iget-object v2, v0, Lcom/inmobi/media/E2;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 1251
    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1252
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    goto/16 :goto_f

    .line 1253
    :pswitch_3
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1254
    iget-object v1, v0, Lcom/inmobi/media/E2;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1255
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1257
    iget-object v1, v0, Lcom/inmobi/media/E2;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1258
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    iput-object v6, v0, Lcom/inmobi/media/E2;->c:Ljava/util/Map;

    .line 1259
    iget-object v6, v0, Lcom/inmobi/media/E2;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/inmobi/media/F2;

    .line 1262
    iget-object v7, v0, Lcom/inmobi/media/E2;->c:Ljava/util/Map;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1263
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/F2;

    .line 1264
    iget-object v1, v1, Lcom/inmobi/media/F2;->b:Ljava/lang/String;

    .line 1265
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1266
    sget-object v8, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v8

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/inmobi/commons/core/configs/RootConfig;

    .line 1270
    invoke-virtual {v8}, Lcom/inmobi/commons/core/configs/RootConfig;->getRetryInterval()I

    move-result v9

    .line 1271
    invoke-virtual {v8}, Lcom/inmobi/commons/core/configs/RootConfig;->getMaxRetries()I

    move-result v24

    .line 1272
    new-instance v15, Lcom/inmobi/media/Kc;

    invoke-virtual {v8}, Lcom/inmobi/commons/core/configs/Config;->getIncludeIdParams()Lcom/inmobi/media/A5;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/inmobi/media/Kc;-><init>(Lcom/inmobi/media/A5;)V

    .line 1273
    invoke-virtual {v8}, Lcom/inmobi/commons/core/configs/RootConfig;->getIpAddrTPSupport()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1274
    sget-object v2, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_3

    .line 1276
    :cond_d
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1277
    sget-object v16, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v5}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v2

    .line 1279
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1366
    iget-object v2, v2, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, v4, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1367
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1368
    sput-object v2, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    .line 1372
    :cond_e
    sget-object v2, Lcom/inmobi/media/ca;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_3

    :cond_f
    move v2, v12

    :goto_3
    if-nez v2, :cond_10

    move v2, v13

    goto :goto_4

    :cond_10
    move v2, v12

    .line 1373
    :goto_4
    sget-object v3, Lcom/inmobi/media/t4;->a:Lcom/inmobi/media/t4;

    invoke-static {v3, v12, v13, v11}, Lcom/inmobi/media/t4;->a(Lcom/inmobi/media/t4;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1375
    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1376
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 1377
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v3

    move v3, v13

    goto :goto_5

    :cond_11
    move-object/from16 v16, v7

    .line 1378
    :goto_5
    new-instance v4, Lcom/inmobi/media/Q2;

    .line 1379
    iget-object v5, v6, Lcom/inmobi/media/F2;->a:Ljava/lang/String;

    move-object v6, v15

    move-object v15, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v5

    move/from16 v19, v24

    move/from16 v20, v9

    move/from16 v21, v3

    move-object/from16 v22, v1

    move/from16 v23, v2

    .line 1380
    invoke-direct/range {v15 .. v23}, Lcom/inmobi/media/Q2;-><init>(Ljava/util/Map;Lcom/inmobi/media/Kc;Ljava/lang/String;IIZLjava/lang/String;Z)V

    .line 1381
    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1382
    invoke-virtual {v8}, Lcom/inmobi/commons/core/configs/RootConfig;->getFallbackUrlForRootType()Ljava/lang/String;

    move-result-object v18

    .line 1383
    new-instance v5, Lcom/inmobi/media/Q2;

    .line 1384
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 1385
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v5

    move-object/from16 v16, v8

    move-object/from16 v17, v6

    move/from16 v19, v24

    move/from16 v20, v9

    move/from16 v21, v3

    move-object/from16 v22, v1

    move/from16 v23, v2

    .line 1386
    invoke-direct/range {v15 .. v23}, Lcom/inmobi/media/Q2;-><init>(Ljava/util/Map;Lcom/inmobi/media/Kc;Ljava/lang/String;IIZLjava/lang/String;Z)V

    goto :goto_6

    :cond_12
    move-object v5, v11

    .line 1399
    :goto_6
    new-instance v1, Lcom/inmobi/media/P2;

    invoke-direct {v1, v0, v4, v5}, Lcom/inmobi/media/P2;-><init>(Lcom/inmobi/media/E2;Lcom/inmobi/media/Q2;Lcom/inmobi/media/Q2;)V

    .line 1400
    :try_start_1
    iget-object v2, v0, Lcom/inmobi/media/E2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v2

    if-ne v2, v13, :cond_13

    .line 1401
    iput-object v11, v0, Lcom/inmobi/media/E2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_7

    .line 1404
    :cond_13
    iget-object v11, v0, Lcom/inmobi/media/E2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    :goto_7
    if-eqz v11, :cond_2a

    .line 1405
    invoke-virtual {v11, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_f

    .line 1407
    :catch_1
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    .line 1408
    iget-object v1, v0, Lcom/inmobi/media/E2;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1409
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 1410
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_f

    :cond_14
    const/4 v1, 0x5

    .line 1411
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1414
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_f

    .line 1415
    :pswitch_4
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1416
    iget-object v1, v0, Lcom/inmobi/media/E2;->a:Ljava/util/ArrayList;

    .line 1417
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/core/configs/Config;

    .line 1418
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 1420
    sget-object v4, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/inmobi/commons/core/configs/RootConfig;

    .line 1422
    new-instance v5, Lcom/inmobi/media/F2;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/inmobi/commons/core/configs/RootConfig;->getUrlForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v3}, Lcom/inmobi/media/F2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object v3, v0, Lcom/inmobi/media/E2;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_16

    .line 1427
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1428
    iget-object v4, v0, Lcom/inmobi/media/E2;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    :cond_16
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1431
    :cond_17
    iget-object v1, v0, Lcom/inmobi/media/E2;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1432
    iget-object v1, v0, Lcom/inmobi/media/E2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-ne v1, v13, :cond_18

    .line 1433
    iput-object v11, v0, Lcom/inmobi/media/E2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_9

    .line 1436
    :cond_18
    iget-object v11, v0, Lcom/inmobi/media/E2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    :goto_9
    if-nez v11, :cond_2a

    .line 1437
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1438
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 1441
    sget v2, Lcom/inmobi/media/m4;->a:I

    .line 1442
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1443
    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 1444
    new-instance v9, Lcom/inmobi/media/p5;

    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v2}, Lcom/inmobi/media/p5;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    const-wide/16 v5, 0x5

    const/4 v3, 0x1

    move-object v2, v1

    .line 1445
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 1453
    invoke-virtual {v1, v13}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 1454
    iput-object v1, v0, Lcom/inmobi/media/E2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x4

    .line 1464
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_f

    .line 1465
    :pswitch_5
    sget-object v2, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 1466
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 1467
    invoke-static {v1}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v1

    .line 1468
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/commons/core/configs/RootConfig;

    .line 1471
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/RootConfig;->getWaitTime()I

    move-result v1

    mul-int/2addr v1, v7

    int-to-long v1, v1

    .line 1475
    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_f

    .line 1476
    :pswitch_6
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1477
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.Config"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/commons/core/configs/Config;

    .line 1478
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 1480
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    move-result-object v3

    .line 1481
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1482
    sget-object v4, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/inmobi/commons/core/configs/RootConfig;

    .line 1484
    new-instance v5, Lcom/inmobi/media/F2;

    .line 1485
    invoke-virtual {v4, v3}, Lcom/inmobi/commons/core/configs/RootConfig;->getUrlForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1486
    invoke-direct {v5, v4, v2}, Lcom/inmobi/media/F2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    iget-object v4, v0, Lcom/inmobi/media/E2;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_19

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v13, :cond_19

    move v12, v13

    .line 1496
    :cond_19
    iget-object v4, v0, Lcom/inmobi/media/E2;->c:Ljava/util/Map;

    if-eqz v4, :cond_1a

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v13, :cond_1a

    goto :goto_a

    :cond_1a
    move v13, v12

    .line 1497
    :goto_a
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    if-nez v13, :cond_1b

    .line 1502
    iget-object v3, v0, Lcom/inmobi/media/E2;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1504
    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1505
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1506
    iput v8, v3, Landroid/os/Message;->what:I

    .line 1507
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1508
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b

    .line 1512
    :cond_1b
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1513
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 1514
    :cond_1c
    :goto_b
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1d
    if-nez v11, :cond_2a

    .line 1539
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1540
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    return-void

    .line 1541
    :pswitch_7
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1542
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.ConfigFetchInputs"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/O2;

    .line 1543
    iget-object v2, v1, Lcom/inmobi/media/O2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 1544
    sget-object v3, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 1545
    iget-object v1, v1, Lcom/inmobi/media/O2;->b:Lcom/inmobi/media/J2;

    if-eqz v1, :cond_1f

    .line 1546
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1547
    invoke-static {}, Lcom/inmobi/media/K2;->e()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1548
    :cond_1e
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1549
    invoke-static {}, Lcom/inmobi/media/K2;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    :cond_1f
    sget-object v1, Lcom/inmobi/media/K2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1552
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1553
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    return-void

    .line 1558
    :cond_20
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 1559
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    move-result-object v3

    .line 1560
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1561
    invoke-static {v1, v3}, Lcom/inmobi/media/y3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v4

    .line 1562
    invoke-static {}, Lcom/inmobi/media/K2;->c()Lkotlin/Lazy;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/M2;

    .line 1563
    invoke-virtual {v5, v10, v1}, Lcom/inmobi/media/M2;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1565
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1568
    invoke-static {v1, v10}, Lcom/inmobi/media/y3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/media/I2;->a(Lcom/inmobi/commons/core/configs/Config;)V

    goto/16 :goto_e

    .line 1572
    :cond_21
    invoke-static {v1}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/commons/core/configs/RootConfig;

    .line 1573
    invoke-virtual {v5}, Lcom/inmobi/commons/core/configs/Config;->getLastUpdateTimeStamp()J

    move-result-wide v8

    .line 1576
    invoke-virtual {v5}, Lcom/inmobi/commons/core/configs/RootConfig;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/inmobi/commons/core/configs/RootConfig;->getExpiryForType(Ljava/lang/String;)J

    move-result-wide v15

    .line 1577
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v8

    int-to-long v6, v7

    mul-long/2addr v15, v6

    cmp-long v8, v17, v15

    if-lez v8, :cond_22

    move v8, v13

    goto :goto_c

    :cond_22
    move v8, v12

    .line 1580
    :goto_c
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_23

    .line 1581
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1583
    invoke-static {v1, v10}, Lcom/inmobi/media/y3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v8

    .line 1584
    invoke-static {v8}, Lcom/inmobi/media/I2;->a(Lcom/inmobi/commons/core/configs/Config;)V

    .line 1588
    :cond_23
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    goto :goto_e

    .line 1589
    :cond_24
    invoke-static {}, Lcom/inmobi/media/K2;->c()Lkotlin/Lazy;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/inmobi/media/M2;

    .line 1590
    invoke-virtual {v8, v3, v1}, Lcom/inmobi/media/M2;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 1592
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1595
    invoke-static {v4}, Lcom/inmobi/media/I2;->a(Lcom/inmobi/commons/core/configs/Config;)V

    goto :goto_e

    .line 1599
    :cond_25
    invoke-static {v1, v3}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getLastUpdateTimeStamp()J

    move-result-wide v8

    goto :goto_d

    :cond_26
    const-wide/16 v8, 0x0

    .line 1600
    :goto_d
    invoke-virtual {v5, v3}, Lcom/inmobi/commons/core/configs/RootConfig;->getExpiryForType(Ljava/lang/String;)J

    move-result-wide v10

    .line 1601
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v8

    mul-long/2addr v10, v6

    cmp-long v1, v15, v10

    if-lez v1, :cond_27

    move v12, v13

    .line 1604
    :cond_27
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v12, :cond_28

    .line 1605
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1608
    invoke-static {v4}, Lcom/inmobi/media/I2;->a(Lcom/inmobi/commons/core/configs/Config;)V

    .line 1609
    :cond_28
    :goto_e
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_29
    if-nez v11, :cond_2a

    .line 1613
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1614
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    :cond_2a
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
