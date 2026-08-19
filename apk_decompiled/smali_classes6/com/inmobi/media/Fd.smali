.class public final Lcom/inmobi/media/Fd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/Fd;

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final c:Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;

.field public static final d:Lcom/inmobi/media/Cd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/inmobi/media/Fd;

    invoke-direct {v0}, Lcom/inmobi/media/Fd;-><init>()V

    sput-object v0, Lcom/inmobi/media/Fd;->a:Lcom/inmobi/media/Fd;

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/inmobi/media/Fd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    sget-object v0, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 12
    const-string v0, "ads"

    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/V4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    .line 69
    check-cast v0, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 74
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getWebAssetCache()Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;

    move-result-object v0

    sput-object v0, Lcom/inmobi/media/Fd;->c:Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;

    .line 76
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v2, Lcom/inmobi/media/Cd;

    invoke-direct {v2, v1, v0}, Lcom/inmobi/media/Cd;-><init>(Landroid/content/Context;Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;)V

    .line 78
    :cond_0
    sput-object v2, Lcom/inmobi/media/Fd;->d:Lcom/inmobi/media/Cd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/Fd;Ljava/lang/String;Lcom/inmobi/media/f5;)Lcom/inmobi/media/qb;
    .locals 6

    const-string v0, "$this_run"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "WebResourceHandler"

    if-eqz p2, :cond_0

    .line 362
    const-string v0, "downloadResourceFile(): "

    invoke-static {v0, p1}, Lcom/inmobi/media/g0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    move-object v1, p2

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, p0, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    sget-object v0, Lcom/inmobi/media/jb;->a:Lcom/inmobi/media/jb;

    .line 365
    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "method"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    new-instance v2, Lcom/inmobi/media/ib;

    invoke-direct {v2, p1, v0}, Lcom/inmobi/media/ib;-><init>(Ljava/lang/String;Lcom/inmobi/media/jb;)V

    .line 377
    sget-object v0, Lcom/inmobi/media/Fd;->c:Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->getTimeout()I

    move-result v3

    .line 378
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/inmobi/media/ib;->h:Ljava/lang/Integer;

    .line 379
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->getTimeout()I

    move-result v3

    .line 380
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/inmobi/media/ib;->i:Ljava/lang/Integer;

    .line 381
    new-instance v3, Lcom/inmobi/media/lb;

    .line 382
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->getMaxRetries()I

    move-result v0

    const/16 v4, 0x1f4

    .line 383
    invoke-direct {v3, v0, v4}, Lcom/inmobi/media/lb;-><init>(II)V

    .line 384
    const-string v0, "retryPolicy"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    iput-object v3, v2, Lcom/inmobi/media/ib;->g:Lcom/inmobi/media/lb;

    .line 529
    new-instance v0, Lcom/inmobi/media/mb;

    invoke-direct {v0, v2}, Lcom/inmobi/media/mb;-><init>(Lcom/inmobi/media/ib;)V

    .line 530
    const-string v2, "request"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    .line 531
    invoke-static {v0, v2}, Lcom/inmobi/media/h9;->a(Lcom/inmobi/media/mb;Lkotlin/jvm/functions/Function2;)Lcom/inmobi/media/qb;

    move-result-object v3

    .line 532
    iget-object v4, v3, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    if-eqz v4, :cond_2

    .line 533
    iget-object v4, v4, Lcom/inmobi/media/i9;->a:Lcom/inmobi/media/c4;

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 534
    :goto_0
    sget-object v5, Lcom/inmobi/media/c4;->m:Lcom/inmobi/media/c4;

    if-eq v4, v5, :cond_1

    .line 535
    const-string v0, "response"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    iget-object v0, v3, Lcom/inmobi/media/qb;->c:[B

    .line 537
    iget-object v4, v3, Lcom/inmobi/media/qb;->d:Ljava/lang/Integer;

    if-nez v4, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_a

    if-eqz v0, :cond_a

    .line 538
    array-length v0, v0

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 539
    const-string v0, "onSuccessfulResponse: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, p2

    check-cast v4, Lcom/inmobi/media/g5;

    invoke-virtual {v4, p0, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_5
    sget-object p0, Lcom/inmobi/media/Fd;->d:Lcom/inmobi/media/Cd;

    if-eqz p0, :cond_a

    .line 541
    iget-object v0, v3, Lcom/inmobi/media/qb;->c:[B

    invoke-static {v0}, Lcom/inmobi/media/j9;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 542
    const-string v4, "Failed to write to cache diskLruCache with: diskLruCache.editor is null for "

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/inmobi/media/Cd;->a:Lcom/inmobi/media/L3;

    const-string v5, "WebAssetLRUCacheHelper"

    if-eqz v1, :cond_9

    .line 544
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 545
    iget-object p0, p0, Lcom/inmobi/media/Cd;->a:Lcom/inmobi/media/L3;

    if-nez p0, :cond_6

    const-string p0, "diskLruCache"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v2, p0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/inmobi/media/L3;->a(Ljava/lang/String;)Lcom/inmobi/media/I3;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v1, 0x0

    .line 546
    invoke-virtual {p0, p1, v1}, Lcom/inmobi/media/I3;->a(Ljava/lang/String;I)V

    const/4 v2, 0x1

    .line 547
    invoke-virtual {p0, v0, v2}, Lcom/inmobi/media/I3;->a(Ljava/lang/String;I)V

    .line 548
    iget-boolean v0, p0, Lcom/inmobi/media/I3;->c:Z

    if-eqz v0, :cond_7

    .line 549
    iget-object v0, p0, Lcom/inmobi/media/I3;->d:Lcom/inmobi/media/L3;

    invoke-static {v0, p0, v1}, Lcom/inmobi/media/L3;->a(Lcom/inmobi/media/L3;Lcom/inmobi/media/I3;Z)V

    .line 550
    iget-object v0, p0, Lcom/inmobi/media/I3;->d:Lcom/inmobi/media/L3;

    iget-object p0, p0, Lcom/inmobi/media/I3;->a:Lcom/inmobi/media/J3;

    .line 551
    iget-object p0, p0, Lcom/inmobi/media/J3;->a:Ljava/lang/String;

    .line 552
    invoke-virtual {v0, p0}, Lcom/inmobi/media/L3;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 554
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/I3;->d:Lcom/inmobi/media/L3;

    invoke-static {v0, p0, v2}, Lcom/inmobi/media/L3;->a(Lcom/inmobi/media/L3;Lcom/inmobi/media/I3;Z)V

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_a

    .line 555
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v5, p0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    if-eqz p2, :cond_a

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to write to cache diskLruCache with: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v5, p0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    if-eqz p2, :cond_a

    .line 559
    const-string p0, "Disk Cache Failed to Initialize. Failed writeToCache: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v5, p0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-object v3
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/inmobi/media/f5;)Landroid/webkit/WebResourceResponse;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "ResourceCacheMiss"

    const-string v3, "latency"

    const-string v4, "errorCode"

    const-string v5, "request for "

    const-string v6, "waiting for existing request for "

    const-string v7, "Found in cache in After FutureTask created: "

    const-string v8, "Found in cache: "

    const-string v9, "mimeType is "

    const-string v10, "url"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v11, Lcom/inmobi/media/Fd;->d:Lcom/inmobi/media/Cd;

    const-string v13, "WebResourceHandler"

    if-eqz v11, :cond_14

    .line 2
    iget-object v14, v11, Lcom/inmobi/media/Cd;->a:Lcom/inmobi/media/L3;

    if-eqz v14, :cond_14

    .line 3
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-interface {v14, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 8
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 9
    invoke-static {v12}, Lcom/inmobi/media/y2;->a(Ljava/lang/String;)Z

    move-result v17
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    if-eqz v17, :cond_0

    move-object/from16 v17, v4

    .line 10
    :try_start_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v2

    move-object v6, v3

    move-object/from16 v4, v17

    goto/16 :goto_a

    :catch_1
    move-object v7, v2

    move-object v6, v3

    move-object/from16 v4, v17

    goto/16 :goto_c

    :cond_0
    move-object/from16 v17, v4

    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_2

    :cond_1
    const-string v4, "text/html"

    :cond_2
    if-eqz v1, :cond_3

    .line 13
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " for "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v12, v1

    check-cast v12, Lcom/inmobi/media/g5;

    invoke-virtual {v12, v13, v9}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-virtual {v11, v0, v1}, Lcom/inmobi/media/Cd;->a(Ljava/lang/String;Lcom/inmobi/media/f5;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, "ResourceCacheHit"

    if-eqz v9, :cond_5

    if-eqz v1, :cond_4

    .line 17
    :try_start_2
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Lcom/inmobi/media/g5;

    invoke-virtual {v6, v13, v5}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_4
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v6, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 24
    sget-object v6, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 25
    invoke-static {v12, v5, v6}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    .line 26
    invoke-static {v9, v4}, Lcom/inmobi/media/y2;->a(Ljava/io/InputStream;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 29
    :cond_5
    sget-object v8, Lcom/inmobi/media/Fd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/FutureTask;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v9, :cond_7

    move-object/from16 v18, v2

    .line 30
    :try_start_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move-object/from16 v19, v3

    move-object/from16 v3, p0

    goto :goto_2

    :cond_7
    move-object/from16 v18, v2

    .line 32
    :goto_1
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v9, Lcom/inmobi/media/Fd$$ExternalSyntheticLambda0;
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d

    move-object/from16 v19, v3

    move-object/from16 v3, p0

    :try_start_4
    invoke-direct {v9, v3, v0, v1}, Lcom/inmobi/media/Fd$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/Fd;Ljava/lang/String;Lcom/inmobi/media/f5;)V

    invoke-direct {v2, v9}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 35
    invoke-virtual {v8, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/FutureTask;

    if-nez v9, :cond_8

    .line 38
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_2

    .line 41
    :cond_8
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 42
    :goto_2
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/FutureTask;

    if-eqz v9, :cond_9

    if-eqz v1, :cond_d

    .line 59
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Lcom/inmobi/media/g5;

    invoke-virtual {v6, v13, v5}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 62
    :cond_9
    invoke-virtual {v11, v0, v1}, Lcom/inmobi/media/Cd;->a(Ljava/lang/String;Lcom/inmobi/media/f5;)Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_b

    if-eqz v1, :cond_a

    .line 63
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v1

    check-cast v5, Lcom/inmobi/media/g5;

    invoke-virtual {v5, v13, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_a
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    invoke-interface {v2, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v5, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 71
    sget-object v5, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 72
    invoke-static {v12, v2, v5}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    .line 73
    invoke-static {v6, v4}, Lcom/inmobi/media/y2;->a(Ljava/io/InputStream;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    :cond_b
    if-eqz v1, :cond_c

    .line 76
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Lcom/inmobi/media/g5;

    invoke-virtual {v6, v13, v5}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_c
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->run()V

    .line 79
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v5, "networkType"

    invoke-static {}, Lcom/inmobi/media/E3;->q()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v14, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_d
    :goto_3
    sget-object v5, Lcom/inmobi/media/Fd;->c:Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;

    invoke-virtual {v5}, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->getTimeout()I

    move-result v6

    int-to-long v6, v6

    .line 82
    invoke-virtual {v5}, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->getMaxRetries()I

    move-result v5

    const/4 v8, 0x1

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v8, v5

    mul-long/2addr v6, v8

    .line 83
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/qb;

    .line 84
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "response"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v5, v2, Lcom/inmobi/media/qb;->c:[B

    .line 86
    iget-object v6, v2, Lcom/inmobi/media/qb;->d:Ljava/lang/Integer;

    if-nez v6, :cond_f

    :cond_e
    :goto_4
    move-object/from16 v7, v18

    move-object/from16 v6, v19

    goto/16 :goto_8

    :cond_f
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_e

    if-eqz v5, :cond_e

    .line 87
    :try_start_5
    array-length v5, v5

    if-nez v5, :cond_10

    goto :goto_4

    .line 88
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v6, v19

    :try_start_6
    invoke-interface {v14, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v5, "size"

    .line 90
    iget-object v7, v2, Lcom/inmobi/media/qb;->c:[B
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v7, :cond_11

    .line 91
    :try_start_7
    array-length v7, v7

    int-to-long v7, v7

    const-wide/16 v9, 0x400

    .line 92
    div-long/2addr v7, v9
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    goto/16 :goto_b

    :catch_3
    move-object/from16 v4, v17

    move-object/from16 v7, v18

    goto/16 :goto_d

    :cond_11
    const-wide/16 v7, 0x0

    .line 93
    :goto_5
    :try_start_8
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v14, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v5, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 97
    sget-object v5, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object/from16 v7, v18

    .line 98
    :try_start_9
    invoke-static {v7, v14, v5}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    .line 99
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 100
    iget-object v2, v2, Lcom/inmobi/media/qb;->c:[B

    .line 101
    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v5, v4}, Lcom/inmobi/media/y2;->a(Ljava/io/InputStream;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    :catch_4
    move-exception v0

    move-object/from16 v7, v18

    goto :goto_6

    :catch_5
    move-object/from16 v7, v18

    goto :goto_7

    :catch_6
    move-exception v0

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    :goto_6
    move-object/from16 v4, v17

    goto :goto_b

    :catch_7
    move-object/from16 v7, v18

    move-object/from16 v6, v19

    :catch_8
    :goto_7
    move-object/from16 v4, v17

    goto/16 :goto_d

    .line 104
    :goto_8
    iget-object v2, v2, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    if-eqz v2, :cond_12

    .line 105
    iget-object v2, v2, Lcom/inmobi/media/i9;->a:Lcom/inmobi/media/c4;

    .line 106
    iget v2, v2, Lcom/inmobi/media/c4;->a:I

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :cond_12
    const/16 v2, 0x892

    .line 108
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2
    :try_end_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    :goto_9
    move-object/from16 v4, v17

    .line 109
    :try_start_a
    invoke-interface {v14, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_e

    :catch_9
    move-exception v0

    goto :goto_b

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v0

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    goto :goto_b

    :catch_c
    move-object/from16 v4, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    goto :goto_d

    :catch_d
    move-exception v0

    move-object v6, v3

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    goto :goto_a

    :catch_e
    move-object v6, v3

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    goto :goto_c

    :catch_f
    move-exception v0

    move-object v7, v2

    move-object v6, v3

    :goto_a
    move-object/from16 v3, p0

    :goto_b
    const/16 v2, 0x893

    .line 117
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v14, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_13

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unhandled exception occurred: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-static {v0, v2}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 272
    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v13, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :catch_10
    move-object v7, v2

    move-object v6, v3

    :goto_c
    move-object/from16 v3, p0

    :catch_11
    :goto_d
    const/16 v2, 0x891

    .line 273
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v14, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_13

    .line 274
    const-string v2, "Timeout exception occurred for url: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v13, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_13
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v15

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v14, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 282
    sget-object v0, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 283
    invoke-static {v7, v14, v0}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    const/4 v1, 0x0

    return-object v1

    :cond_14
    move-object/from16 v3, p0

    if-eqz v1, :cond_15

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "WebAsset Cache Helper was not Initialized. "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for URL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v13, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method
