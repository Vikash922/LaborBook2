.class public final Lcom/inmobi/media/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/J2;


# static fields
.field public static final a:Lcom/inmobi/media/r1;

.field public static final b:Ljava/lang/Object;

.field public static c:Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

.field public static d:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

.field public static final e:Ljava/util/concurrent/ExecutorService;

.field public static final f:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static g:Lcom/inmobi/media/n1;

.field public static h:Landroid/os/HandlerThread;

.field public static final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final k:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final l:Ljava/util/ArrayList;

.field public static final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final n:Lcom/inmobi/media/p1;

.field public static final o:Lcom/inmobi/media/q1;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/inmobi/media/r1;

    invoke-direct {v0}, Lcom/inmobi/media/r1;-><init>()V

    sput-object v0, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/inmobi/media/r1;->b:Ljava/lang/Object;

    .line 12
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/inmobi/media/r1;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/inmobi/media/r1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/inmobi/media/r1;->l:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/inmobi/media/r1;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    sget-object v1, Lcom/inmobi/media/p1;->a:Lcom/inmobi/media/p1;

    sput-object v1, Lcom/inmobi/media/r1;->n:Lcom/inmobi/media/p1;

    .line 40
    sget-object v1, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ads"

    invoke-static {v3, v1, v0}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 41
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getAssetCacheConfig()Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    move-result-object v3

    sput-object v3, Lcom/inmobi/media/r1;->c:Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    .line 42
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getVastVideo()Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    move-result-object v1

    sput-object v1, Lcom/inmobi/media/r1;->d:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    .line 43
    new-instance v1, Lcom/inmobi/media/p5;

    const-string v3, "-AP"

    const-string v4, "r1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/inmobi/media/p5;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v3, "newCachedThreadPool(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/inmobi/media/r1;->e:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 47
    sget v3, Lcom/inmobi/media/m4;->a:I

    .line 48
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 49
    new-instance v11, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 50
    new-instance v12, Lcom/inmobi/media/p5;

    const-string v3, "-AD"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/inmobi/media/p5;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    const-wide/16 v8, 0x5

    const/4 v6, 0x1

    move-object v5, v1

    .line 51
    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 59
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 60
    sput-object v1, Lcom/inmobi/media/r1;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 70
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "assetFetcher"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/inmobi/media/r1;->h:Landroid/os/HandlerThread;

    .line 71
    invoke-static {v1, v2}, Lcom/inmobi/media/q4;->a(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/inmobi/media/n1;

    sget-object v2, Lcom/inmobi/media/r1;->h:Landroid/os/HandlerThread;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v3, "getLooper(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/inmobi/media/n1;-><init>(Landroid/os/Looper;Lcom/inmobi/media/r1;)V

    sput-object v1, Lcom/inmobi/media/r1;->g:Lcom/inmobi/media/n1;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/inmobi/media/r1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    new-instance v0, Lcom/inmobi/media/q1;

    invoke-direct {v0}, Lcom/inmobi/media/q1;-><init>()V

    sput-object v0, Lcom/inmobi/media/r1;->o:Lcom/inmobi/media/q1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 8

    .line 617
    sget-object v0, Lcom/inmobi/media/r1;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 620
    :cond_0
    sget-object v0, Lcom/inmobi/media/r1;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 621
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/media/k1;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 622
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 623
    monitor-exit v0

    return-void

    .line 625
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/j;

    .line 626
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/inmobi/media/j;->g:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 628
    sget-object v4, Lcom/inmobi/media/r1;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 631
    :cond_3
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    const-string v5, "asset"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    iget v5, v3, Lcom/inmobi/media/j;->a:I

    .line 634
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 635
    const-string v5, "id = ?"

    invoke-virtual {v4, v5, v6}, Lcom/inmobi/media/R1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 636
    iget-object v3, v3, Lcom/inmobi/media/j;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 637
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 639
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 640
    :cond_4
    invoke-static {}, Lcom/inmobi/media/r1;->b()V

    .line 641
    invoke-static {v1}, Lcom/inmobi/media/r1;->a(Ljava/util/ArrayList;)V

    .line 642
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lcom/inmobi/media/k;)V
    .locals 2

    const-string v0, "assetBatch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1222
    sget-object v0, Lcom/inmobi/media/r1;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1225
    :cond_0
    sget-object v0, Lcom/inmobi/media/r1;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/inmobi/media/r1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/inmobi/media/r1$$ExternalSyntheticLambda2;-><init>(Lcom/inmobi/media/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/inmobi/media/k;Ljava/lang/String;)V
    .locals 2

    const-string v0, "assetBatch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1226
    sget-object v0, Lcom/inmobi/media/r1;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1229
    :cond_0
    sget-object v0, Lcom/inmobi/media/r1;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/inmobi/media/r1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/media/r1$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/k;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1230
    sget-object v1, Lcom/inmobi/media/r1;->c:Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    if-eqz v1, :cond_1

    .line 1231
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int v5, v2, v3

    .line 1232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1234
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getMaxRetries()I

    move-result v8

    .line 1235
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getTimeToLive()J

    move-result-wide v1

    .line 1236
    const-string v3, "url"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v13, v3, v1

    .line 1294
    new-instance v1, Lcom/inmobi/media/j;

    if-nez v0, :cond_0

    .line 1296
    const-string v2, ""

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    const/4 v7, 0x0

    const-wide/16 v15, 0x0

    move-object v4, v1

    .line 1297
    invoke-direct/range {v4 .. v16}, Lcom/inmobi/media/j;-><init>(ILjava/lang/String;Ljava/lang/String;IJJJJ)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1298
    :goto_1
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/inmobi/media/k1;->a(Ljava/lang/String;)Lcom/inmobi/media/j;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 1300
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v2

    monitor-enter v2

    .line 1301
    :try_start_0
    const-string v3, "asset"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1315
    const-string v3, "url = ?"

    .line 1316
    iget-object v4, v1, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    const/4 v5, 0x1

    .line 1317
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v2, v1, v3, v5}, Lcom/inmobi/media/R1;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1318
    monitor-exit v2

    throw v0

    .line 1320
    :cond_2
    :goto_2
    sget-object v1, Lcom/inmobi/media/r1;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/inmobi/media/r1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/inmobi/media/r1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 7

    .line 644
    sget-object v0, Lcom/inmobi/media/Kb;->a:Lcom/inmobi/media/Kb;

    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/media/Kb;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 646
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1209
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1210
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/j;

    .line 1211
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1212
    iget-object v5, v5, Lcom/inmobi/media/j;->c:Ljava/lang/String;

    .line 1213
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 1220
    :cond_1
    const-string v4, "r1"

    const-string v5, "TAG"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1221
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Lcom/inmobi/media/j;Lcom/inmobi/media/l1;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 18
    sget-object v2, Lcom/inmobi/media/r1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    iget-object v3, v0, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/j;

    .line 21
    sget-object v3, Lcom/inmobi/media/r1;->d:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    const/4 v7, 0x0

    if-nez v2, :cond_a

    if-eqz v3, :cond_a

    .line 23
    new-instance v8, Lcom/inmobi/media/m;

    invoke-direct {v8, v1}, Lcom/inmobi/media/m;-><init>(Lcom/inmobi/media/l1;)V

    .line 26
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getVastMaxAssetSize()J

    move-result-wide v4

    .line 27
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getAllowedContentType()Ljava/util/List;

    move-result-object v2

    .line 28
    const-string v3, "asset"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "allowedContentType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    const-string v9, "m"

    const-string v10, "TAG"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {v7}, Lcom/inmobi/media/p9;->a(Z)Lcom/inmobi/media/c4;

    move-result-object v3

    const/4 v11, 0x5

    const/4 v12, 0x1

    if-eqz v3, :cond_0

    .line 103
    iput-byte v11, v0, Lcom/inmobi/media/j;->l:B

    .line 104
    invoke-interface {v1, v0}, Lcom/inmobi/media/l1;->a(Lcom/inmobi/media/j;)V

    :goto_0
    move v2, v12

    goto/16 :goto_1f

    .line 105
    :cond_0
    iget-object v3, v0, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 106
    const-string v6, ""

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 107
    iget-object v3, v0, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 108
    invoke-static {v3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1e

    .line 237
    :cond_1
    new-array v1, v7, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 238
    check-cast v1, [Ljava/lang/String;

    .line 242
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 243
    new-instance v3, Ljava/net/URL;

    .line 244
    iget-object v6, v0, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 245
    invoke-direct {v3, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URLConnection;

    const-string v6, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 248
    const-string v6, "GET"

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const v6, 0xea60

    .line 249
    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 250
    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 252
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 253
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x190

    if-ge v6, v2, :cond_4

    .line 255
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 364
    array-length v13, v1

    move v11, v7

    :goto_1
    if-ge v11, v13, :cond_3

    aget-object v7, v1, v11

    .line 365
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 366
    invoke-static {v7, v2, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 367
    iput-boolean v12, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    goto :goto_1

    .line 372
    :cond_3
    :goto_2
    iget-boolean v1, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v1, :cond_4

    const/4 v1, 0x3

    .line 373
    iput-byte v1, v0, Lcom/inmobi/media/j;->l:B

    const/4 v1, 0x0

    .line 374
    iput v1, v0, Lcom/inmobi/media/j;->d:I

    .line 375
    iget-object v1, v8, Lcom/inmobi/media/m;->a:Lcom/inmobi/media/l1;

    invoke-interface {v1, v0}, Lcom/inmobi/media/l1;->a(Lcom/inmobi/media/j;)V

    goto :goto_3

    .line 446
    :cond_4
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v6, 0x0

    cmp-long v11, v1, v6

    const/4 v13, 0x4

    if-ltz v11, :cond_5

    .line 448
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    cmp-long v1, v1, v4

    if-lez v1, :cond_5

    .line 449
    iput-byte v13, v0, Lcom/inmobi/media/j;->l:B

    const/4 v1, 0x0

    .line 450
    iput v1, v0, Lcom/inmobi/media/j;->d:I

    .line 451
    iget-object v1, v8, Lcom/inmobi/media/m;->a:Lcom/inmobi/media/l1;

    invoke-interface {v1, v0}, Lcom/inmobi/media/l1;->a(Lcom/inmobi/media/j;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 445
    :goto_3
    sget-boolean v0, Lcom/inmobi/media/p9;->a:Z

    goto/16 :goto_0

    .line 455
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 456
    sget-object v1, Lcom/inmobi/media/Kb;->a:Lcom/inmobi/media/Kb;

    .line 457
    iget-object v2, v0, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 458
    invoke-virtual {v1, v2}, Lcom/inmobi/media/Kb;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 461
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 462
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    :cond_6
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 465
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v6, 0x400

    .line 466
    :try_start_3
    new-array v6, v6, [B

    .line 467
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const-wide/16 v16, 0x0

    .line 469
    :goto_4
    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v12

    iput v12, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v12, :cond_8

    move-wide/from16 v18, v14

    int-to-long v13, v12

    add-long v16, v16, v13

    cmp-long v13, v16, v4

    if-lez v13, :cond_7

    const/4 v13, 0x4

    .line 470
    iput-byte v13, v0, Lcom/inmobi/media/j;->l:B

    const/4 v4, 0x0

    .line 471
    iput v4, v0, Lcom/inmobi/media/j;->d:I

    .line 472
    invoke-static {v11, v3, v1}, Lcom/inmobi/media/m;->a(Ljava/io/File;Ljava/net/HttpURLConnection;Ljava/io/BufferedOutputStream;)V

    .line 473
    iget-object v3, v8, Lcom/inmobi/media/m;->a:Lcom/inmobi/media/l1;

    invoke-interface {v3, v0}, Lcom/inmobi/media/l1;->a(Lcom/inmobi/media/j;)V

    move-object v14, v1

    move-object v15, v2

    goto/16 :goto_5

    :catch_0
    move-object v14, v1

    move-object v15, v2

    goto/16 :goto_8

    :catch_1
    move-object v14, v1

    move-object v15, v2

    goto/16 :goto_9

    :catch_2
    move-object v14, v1

    move-object v15, v2

    goto/16 :goto_a

    :catch_3
    move-object v14, v1

    move-object v15, v2

    goto/16 :goto_b

    :catch_4
    move-object v14, v1

    move-object v15, v2

    goto/16 :goto_c

    :catch_5
    move-object v14, v1

    move-object v15, v2

    goto/16 :goto_d

    :cond_7
    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 513
    invoke-virtual {v1, v6, v14, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    move-wide/from16 v14, v18

    goto :goto_4

    :cond_8
    move-wide/from16 v18, v14

    .line 515
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 516
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 517
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 518
    new-instance v7, Lcom/inmobi/media/m9;

    invoke-direct {v7}, Lcom/inmobi/media/m9;-><init>()V

    .line 519
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 520
    iput-object v3, v7, Lcom/inmobi/media/m9;->e:Ljava/util/Map;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v14, v1

    move-object/from16 v1, p0

    move-object v15, v2

    move-object v2, v11

    move-wide/from16 v3, v18

    move-wide v5, v12

    .line 521
    :try_start_4
    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/l;->a(Lcom/inmobi/media/j;Ljava/io/File;JJ)Ljava/lang/String;

    move-result-object v1

    .line 522
    iput-object v1, v0, Lcom/inmobi/media/j;->j:Ljava/lang/String;

    sub-long v12, v12, v18

    .line 523
    iput-wide v12, v0, Lcom/inmobi/media/j;->k:J

    .line 524
    iget-object v1, v8, Lcom/inmobi/media/m;->a:Lcom/inmobi/media/l1;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getAbsolutePath(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v7, v2, v0}, Lcom/inmobi/media/l1;->a(Lcom/inmobi/media/m9;Ljava/lang/String;Lcom/inmobi/media/j;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    move-object v1, v14

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v14, v1

    move-object v15, v2

    :goto_6
    move-object v1, v14

    :goto_7
    move-object v2, v15

    goto/16 :goto_1d

    :catch_6
    :goto_8
    move-object v2, v14

    const/4 v1, 0x0

    goto :goto_f

    :catch_7
    :goto_9
    move-object v2, v14

    goto/16 :goto_13

    :catch_8
    :goto_a
    move-object v2, v14

    goto/16 :goto_15

    :catch_9
    :goto_b
    move-object v2, v14

    goto/16 :goto_17

    :catch_a
    :goto_c
    move-object v2, v14

    goto/16 :goto_19

    :catch_b
    :goto_d
    move-object v2, v14

    goto/16 :goto_1b

    :catchall_2
    move-exception v0

    move-object v15, v2

    const/4 v1, 0x0

    goto/16 :goto_1d

    :catch_c
    move-object v15, v2

    move-object v2, v15

    goto :goto_e

    :catch_d
    move-object v15, v2

    move-object v2, v15

    goto :goto_12

    :catch_e
    move-object v15, v2

    move-object v2, v15

    goto :goto_14

    :catch_f
    move-object v15, v2

    move-object v2, v15

    goto :goto_16

    :catch_10
    move-object v15, v2

    move-object v2, v15

    goto :goto_18

    :catch_11
    move-object v15, v2

    move-object v2, v15

    goto :goto_1a

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_1d

    :catch_12
    const/4 v2, 0x0

    :goto_e
    move-object v15, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 547
    :goto_f
    :try_start_5
    invoke-virtual {v0, v1}, Lcom/inmobi/media/j;->a(B)V

    .line 548
    iget-object v1, v8, Lcom/inmobi/media/m;->a:Lcom/inmobi/media/l1;

    invoke-interface {v1, v0}, Lcom/inmobi/media/l1;->a(Lcom/inmobi/media/j;)V

    :goto_10
    move-object v1, v2

    :goto_11
    move-object v2, v15

    goto :goto_1c

    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catch_13
    const/4 v2, 0x0

    :goto_12
    move-object v15, v2

    const/4 v2, 0x0

    .line 549
    :goto_13
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 550
    invoke-virtual {v0, v1}, Lcom/inmobi/media/j;->a(B)V

    .line 551
    iget-object v1, v8, Lcom/inmobi/media/m;->a:Lcom/inmobi/media/l1;

    invoke-interface {v1, v0}, Lcom/inmobi/media/l1;->a(Lcom/inmobi/media/j;)V

    goto :goto_10

    :catch_14
    const/4 v2, 0x0

    :goto_14
    move-object v15, v2

    const/4 v2, 0x0

    .line 552
    :goto_15
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 553
    invoke-virtual {v0, v1}, Lcom/inmobi/media/j;->a(B)V

    .line 554
    iget-object v1, v8, Lcom/inmobi/media/m;->a:Lcom/inmobi/media/l1;

    invoke-interface {v1, v0}, Lcom/inmobi/media/l1;->a(Lcom/inmobi/media/j;)V

    goto :goto_10

    :catch_15
    const/4 v2, 0x0

    :goto_16
    move-object v15, v2

    const/4 v2, 0x0

    .line 555
    :goto_17
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 556
    invoke-virtual {v0, v1}, Lcom/inmobi/media/j;->a(B)V

    .line 557
    iget-object v1, v8, Lcom/inmobi/media/m;->a:Lcom/inmobi/media/l1;

    invoke-interface {v1, v0}, Lcom/inmobi/media/l1;->a(Lcom/inmobi/media/j;)V

    goto :goto_10

    :catch_16
    const/4 v2, 0x0

    :goto_18
    move-object v15, v2

    const/4 v2, 0x0

    .line 558
    :goto_19
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 559
    invoke-virtual {v0, v1}, Lcom/inmobi/media/j;->a(B)V

    .line 560
    iget-object v1, v8, Lcom/inmobi/media/m;->a:Lcom/inmobi/media/l1;

    invoke-interface {v1, v0}, Lcom/inmobi/media/l1;->a(Lcom/inmobi/media/j;)V

    goto :goto_10

    :catch_17
    const/4 v2, 0x0

    :goto_1a
    move-object v15, v2

    const/4 v2, 0x0

    .line 561
    :goto_1b
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 562
    invoke-virtual {v0, v1}, Lcom/inmobi/media/j;->a(B)V

    .line 563
    iget-object v1, v8, Lcom/inmobi/media/m;->a:Lcom/inmobi/media/l1;

    invoke-interface {v1, v0}, Lcom/inmobi/media/l1;->a(Lcom/inmobi/media/j;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_10

    .line 511
    :goto_1c
    invoke-static {v2}, Lcom/inmobi/media/p9;->a(Ljava/io/Closeable;)V

    .line 512
    invoke-static {v1}, Lcom/inmobi/media/p9;->a(Ljava/io/Closeable;)V

    const/4 v2, 0x1

    goto :goto_1f

    .line 585
    :goto_1d
    invoke-static {v2}, Lcom/inmobi/media/p9;->a(Ljava/io/Closeable;)V

    .line 586
    invoke-static {v1}, Lcom/inmobi/media/p9;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_9
    :goto_1e
    move v2, v12

    .line 587
    invoke-virtual {v0, v2}, Lcom/inmobi/media/j;->a(B)V

    .line 588
    invoke-interface {v1, v0}, Lcom/inmobi/media/l1;->a(Lcom/inmobi/media/j;)V

    :goto_1f
    return v2

    :cond_a
    move v0, v7

    return v0
.end method

.method public static b()V
    .locals 14

    .line 35
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/k1;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/j;

    .line 39
    iget-object v1, v1, Lcom/inmobi/media/j;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 40
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lcom/inmobi/media/r1;->c:Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    const/4 v1, 0x0

    const-string v4, "TAG"

    const-string v5, "r1"

    if-eqz v0, :cond_6

    .line 46
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getMaxCacheSize()J

    .line 47
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getMaxCacheSize()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_5

    .line 49
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v11, "ts ASC "

    const/16 v13, 0xf

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v13}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 51
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/j;

    :goto_1
    if-eqz v1, :cond_5

    .line 52
    sget-object v2, Lcom/inmobi/media/r1;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 55
    :cond_3
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    const-string v3, "asset"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget v3, v1, Lcom/inmobi/media/j;->a:I

    .line 58
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v6

    .line 59
    const-string v3, "id = ?"

    invoke-virtual {v2, v3, v0}, Lcom/inmobi/media/R1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 60
    iget-object v0, v1, Lcom/inmobi/media/j;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 61
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 64
    :cond_4
    :goto_2
    invoke-static {}, Lcom/inmobi/media/r1;->b()V

    .line 65
    :cond_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_6
    if-nez v1, :cond_7

    .line 76
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public static final b(Lcom/inmobi/media/k;)V
    .locals 5

    const-string v0, "$assetBatch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/inmobi/media/r1;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit v0

    .line 81
    const-string v0, "r1"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/inmobi/media/k;->h:Ljava/util/Set;

    .line 83
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 84
    iget-object p0, p0, Lcom/inmobi/media/k;->h:Ljava/util/Set;

    .line 85
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/za;

    .line 86
    iget-object v0, v0, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 87
    sget-object v1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    .line 88
    const-string v2, "r1"

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/inmobi/media/k1;->a(Ljava/lang/String;)Lcom/inmobi/media/j;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 90
    invoke-virtual {v2}, Lcom/inmobi/media/j;->a()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 92
    const-string v0, "r1"

    const-string v3, "TAG"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v2}, Lcom/inmobi/media/r1;->b(Lcom/inmobi/media/j;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {v0}, Lcom/inmobi/media/r1;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 98
    monitor-exit v0

    throw p0
.end method

.method public static final b(Lcom/inmobi/media/k;Ljava/lang/String;)V
    .locals 13

    const-string v0, "$assetBatch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/inmobi/media/r1;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    monitor-exit v0

    .line 103
    const-string v0, "r1"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/inmobi/media/k;->h:Ljava/util/Set;

    .line 105
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object p0, p0, Lcom/inmobi/media/k;->h:Ljava/util/Set;

    .line 109
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/za;

    .line 110
    iget-object v5, v2, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 111
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    move v7, v3

    move v8, v7

    :goto_1
    if-gt v7, v6, :cond_6

    if-nez v8, :cond_1

    move v9, v7

    goto :goto_2

    :cond_1
    move v9, v6

    .line 116
    :goto_2
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    .line 117
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gtz v9, :cond_2

    move v9, v4

    goto :goto_3

    :cond_2
    move v9, v3

    :goto_3
    if-nez v8, :cond_4

    if-nez v9, :cond_3

    move v8, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    if-nez v9, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 606
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 607
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 608
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 609
    iget-byte v3, v2, Lcom/inmobi/media/za;->a:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 610
    iget-object v2, v2, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 611
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 612
    :cond_7
    iget-object v2, v2, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 613
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 614
    :cond_8
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 615
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 617
    :try_start_1
    const-string v2, "r1"

    const-string v5, "TAG"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 619
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 621
    sget-object v11, Lcom/inmobi/media/R9;->a:Lcom/inmobi/media/R9;

    invoke-virtual {v11, v2}, Lcom/inmobi/media/R9;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 622
    invoke-virtual {v2, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 625
    new-instance v12, Lcom/inmobi/media/o1;

    move-object v5, v12

    move-object v6, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/inmobi/media/o1;-><init>(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;JLjava/lang/String;)V

    .line 626
    invoke-virtual {v11, v12}, Lcom/inmobi/media/R9;->a(Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/squareup/picasso/Callback;

    if-eqz v6, :cond_a

    check-cast v5, Lcom/squareup/picasso/Callback;

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    .line 627
    :goto_6
    invoke-virtual {v2, v5}, Lcom/squareup/picasso/RequestCreator;->fetch(Lcom/squareup/picasso/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 639
    :catch_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_5

    .line 643
    :cond_b
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 644
    const-string p0, "r1"

    const-string p1, "TAG"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 645
    :catch_1
    sget-object p0, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-virtual {p0}, Lcom/inmobi/media/r1;->e()V

    .line 647
    invoke-virtual {p0, v3}, Lcom/inmobi/media/r1;->a(B)V

    .line 648
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 649
    sget-object v0, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    .line 650
    const-string v1, "r1"

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/inmobi/media/k1;->a(Ljava/lang/String;)Lcom/inmobi/media/j;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 652
    invoke-virtual {v1}, Lcom/inmobi/media/j;->a()Z

    move-result v2

    if-ne v2, v4, :cond_c

    .line 654
    const-string p1, "r1"

    const-string v2, "TAG"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0, v1}, Lcom/inmobi/media/r1;->b(Lcom/inmobi/media/j;)V

    goto :goto_7

    .line 659
    :cond_c
    invoke-static {p1}, Lcom/inmobi/media/r1;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    return-void

    :catchall_0
    move-exception p0

    .line 660
    monitor-exit v0

    throw p0
.end method

.method public static final b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "$remoteUrl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/media/k1;->a(Ljava/lang/String;)Lcom/inmobi/media/j;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 663
    invoke-virtual {p0}, Lcom/inmobi/media/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    sget-object v0, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-virtual {v0, p0}, Lcom/inmobi/media/r1;->b(Lcom/inmobi/media/j;)V

    goto :goto_0

    .line 666
    :cond_0
    sget-object v0, Lcom/inmobi/media/r1;->o:Lcom/inmobi/media/q1;

    invoke-static {p0, v0}, Lcom/inmobi/media/r1;->a(Lcom/inmobi/media/j;Lcom/inmobi/media/l1;)Z

    move-result p0

    const-string v0, "TAG"

    const-string v1, "r1"

    if-eqz p0, :cond_1

    .line 667
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_1
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static d()V
    .locals 3

    .line 17
    sget-object v0, Lcom/inmobi/media/r1;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    sget-object v0, Lcom/inmobi/media/r1;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/inmobi/media/r1;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    sget-object v1, Lcom/inmobi/media/r1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 23
    sget-object v1, Lcom/inmobi/media/r1;->h:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 27
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    .line 28
    sput-object v1, Lcom/inmobi/media/r1;->h:Landroid/os/HandlerThread;

    .line 29
    sput-object v1, Lcom/inmobi/media/r1;->g:Lcom/inmobi/media/n1;

    .line 31
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(B)V
    .locals 6

    monitor-enter p0

    .line 598
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 599
    sget-object v1, Lcom/inmobi/media/r1;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 600
    sget-object v3, Lcom/inmobi/media/r1;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/k;

    .line 601
    iget v4, v3, Lcom/inmobi/media/k;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_1

    .line 602
    :try_start_1
    iget-object v4, v3, Lcom/inmobi/media/k;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/media/s1;

    if-eqz v4, :cond_0

    .line 603
    invoke-interface {v4, v3, p1}, Lcom/inmobi/media/s1;->a(Lcom/inmobi/media/k;B)V

    .line 604
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 607
    :try_start_2
    const-string v4, "r1"

    const-string v5, "TAG"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    sget-object v4, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 611
    const-string v4, "event"

    invoke-static {v3, v4}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v3

    .line 612
    sget-object v4, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v4, v3}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 613
    :cond_2
    invoke-virtual {p0, v0}, Lcom/inmobi/media/r1;->b(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final a(Lcom/inmobi/commons/core/configs/Config;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/inmobi/commons/core/configs/AdConfig;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getAssetCacheConfig()Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    move-result-object v0

    sput-object v0, Lcom/inmobi/media/r1;->c:Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    .line 3
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getVastVideo()Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    move-result-object p1

    sput-object p1, Lcom/inmobi/media/r1;->d:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    sput-object p1, Lcom/inmobi/media/r1;->c:Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    .line 6
    sput-object p1, Lcom/inmobi/media/r1;->d:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    :goto_0
    return-void
.end method

.method public final declared-synchronized a(Lcom/inmobi/media/j;)V
    .locals 6

    monitor-enter p0

    .line 7
    :try_start_0
    sget-object v0, Lcom/inmobi/media/r1;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 8
    sget-object v2, Lcom/inmobi/media/r1;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/k;

    .line 9
    iget-object v3, v2, Lcom/inmobi/media/k;->h:Ljava/util/Set;

    .line 10
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/media/za;

    .line 11
    iget-object v4, v4, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 12
    iget-object v5, p1, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 13
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 14
    iget-object v3, v2, Lcom/inmobi/media/k;->g:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 16
    iget-object v2, v2, Lcom/inmobi/media/k;->g:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/inmobi/media/j;B)V
    .locals 2

    monitor-enter p0

    .line 589
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/r1;->a(Lcom/inmobi/media/j;)V

    .line 590
    iget-object v0, p1, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 591
    sget-object v1, Lcom/inmobi/media/r1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 592
    iget-object p1, p1, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 593
    invoke-virtual {p0, p1}, Lcom/inmobi/media/r1;->d(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/inmobi/media/r1;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 595
    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 596
    invoke-virtual {p0, p1}, Lcom/inmobi/media/r1;->c(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0, p2}, Lcom/inmobi/media/r1;->a(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final b(Lcom/inmobi/media/j;)V
    .locals 16

    move-object/from16 v0, p1

    .line 1
    iget-object v4, v0, Lcom/inmobi/media/j;->c:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/inmobi/media/r1;->c:Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    if-eqz v4, :cond_3

    .line 3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 7
    :cond_1
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 10
    iget-wide v5, v0, Lcom/inmobi/media/j;->g:J

    .line 11
    iget-wide v7, v0, Lcom/inmobi/media/j;->e:J

    sub-long/2addr v5, v7

    add-long/2addr v5, v2

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v7, 0x3e8

    int-to-long v7, v7

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getTimeToLive()J

    move-result-wide v9

    mul-long/2addr v9, v7

    add-long/2addr v9, v2

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 13
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 16
    iget-object v3, v0, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getMaxRetries()I

    move-result v5

    .line 18
    iget-wide v12, v0, Lcom/inmobi/media/j;->h:J

    .line 19
    const-string v1, "url"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "locationOnDisk"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v15, Lcom/inmobi/media/j;

    if-nez v3, :cond_2

    .line 22
    const-string v1, ""

    move-object v3, v1

    :cond_2
    move-object v1, v15

    .line 23
    invoke-direct/range {v1 .. v13}, Lcom/inmobi/media/j;-><init>(ILjava/lang/String;Ljava/lang/String;IJJJJ)V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 25
    iput-wide v1, v15, Lcom/inmobi/media/j;->e:J

    .line 26
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/inmobi/media/k1;->a(Lcom/inmobi/media/j;)V

    .line 27
    iget-wide v4, v0, Lcom/inmobi/media/j;->e:J

    move-object/from16 v0, p1

    move-object v1, v14

    move-wide v2, v4

    .line 28
    invoke-static/range {v0 .. v5}, Lcom/inmobi/media/l;->a(Lcom/inmobi/media/j;Ljava/io/File;JJ)Ljava/lang/String;

    move-result-object v0

    .line 29
    iput-object v0, v15, Lcom/inmobi/media/j;->j:Ljava/lang/String;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, v15, Lcom/inmobi/media/j;->i:Z

    const/4 v0, -0x1

    move-object/from16 v1, p0

    .line 31
    invoke-virtual {v1, v15, v0}, Lcom/inmobi/media/r1;->a(Lcom/inmobi/media/j;B)V

    return-void

    :cond_3
    :goto_0
    move-object/from16 v1, p0

    return-void
.end method

.method public final declared-synchronized b(Ljava/util/ArrayList;)V
    .locals 4

    monitor-enter p0

    .line 32
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 34
    sget-object v2, Lcom/inmobi/media/r1;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 7

    .line 9
    sget-object v0, Lcom/inmobi/media/r1;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    sget-object v0, Lcom/inmobi/media/r1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    sget-boolean v0, Lcom/inmobi/media/p9;->a:Z

    .line 14
    invoke-static {v1}, Lcom/inmobi/media/p9;->a(Z)Lcom/inmobi/media/c4;

    move-result-object v0

    const/4 v2, 0x2

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 15
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v0

    sget-object v1, Lcom/inmobi/media/r1;->n:Lcom/inmobi/media/p1;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/h7;->a(Lkotlin/jvm/functions/Function1;)V

    .line 16
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v0

    filled-new-array {v3, v2, v4}, [I

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/h7;->a([ILkotlin/jvm/functions/Function1;)V

    return-void

    .line 17
    :cond_1
    sget-object v0, Lcom/inmobi/media/r1;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v5, Lcom/inmobi/media/r1;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    sget-object v1, Lcom/inmobi/media/r1;->h:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 20
    new-instance v1, Landroid/os/HandlerThread;

    const-string v5, "assetFetcher"

    invoke-direct {v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/inmobi/media/r1;->h:Landroid/os/HandlerThread;

    .line 21
    const-string v5, "assetFetcher"

    invoke-static {v1, v5}, Lcom/inmobi/media/q4;->a(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 23
    :cond_2
    sget-object v1, Lcom/inmobi/media/r1;->g:Lcom/inmobi/media/n1;

    if-nez v1, :cond_3

    .line 24
    new-instance v1, Lcom/inmobi/media/n1;

    sget-object v5, Lcom/inmobi/media/r1;->h:Landroid/os/HandlerThread;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const-string v6, "getLooper(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v5, p0}, Lcom/inmobi/media/n1;-><init>(Landroid/os/Looper;Lcom/inmobi/media/r1;)V

    sput-object v1, Lcom/inmobi/media/r1;->g:Lcom/inmobi/media/n1;

    .line 26
    :cond_3
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/media/k1;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    const-string v1, "r1"

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/inmobi/media/r1;->d()V

    goto :goto_0

    .line 31
    :cond_4
    const-string v1, "r1"

    const-string v5, "TAG"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v1

    sget-object v5, Lcom/inmobi/media/r1;->n:Lcom/inmobi/media/p1;

    invoke-virtual {v1, v5}, Lcom/inmobi/media/h7;->a(Lkotlin/jvm/functions/Function1;)V

    .line 33
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v1

    filled-new-array {v3, v2, v4}, [I

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/inmobi/media/h7;->a([ILkotlin/jvm/functions/Function1;)V

    .line 34
    sget-object v1, Lcom/inmobi/media/r1;->g:Lcom/inmobi/media/n1;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37
    :cond_5
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/inmobi/media/r1;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    sget-object v2, Lcom/inmobi/media/r1;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/k;

    .line 3
    iget-object v3, v2, Lcom/inmobi/media/k;->h:Ljava/util/Set;

    .line 4
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/media/za;

    .line 5
    iget-object v4, v4, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 6
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    iget v3, v2, Lcom/inmobi/media/k;->b:I

    add-int/lit8 v3, v3, 0x1

    .line 8
    iput v3, v2, Lcom/inmobi/media/k;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/inmobi/media/r1;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    sget-object v2, Lcom/inmobi/media/r1;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/k;

    .line 3
    iget-object v3, v2, Lcom/inmobi/media/k;->h:Ljava/util/Set;

    .line 4
    iget-object v4, v2, Lcom/inmobi/media/k;->e:Ljava/util/HashSet;

    .line 5
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/za;

    .line 6
    iget-object v5, v5, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 7
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    iget-object v3, v2, Lcom/inmobi/media/k;->e:Ljava/util/HashSet;

    .line 14
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    iget v3, v2, Lcom/inmobi/media/k;->a:I

    add-int/lit8 v3, v3, 0x1

    .line 16
    iput v3, v2, Lcom/inmobi/media/k;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized e()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/inmobi/media/r1;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    sget-object v3, Lcom/inmobi/media/r1;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/k;

    .line 4
    iget v4, v3, Lcom/inmobi/media/k;->a:I

    .line 5
    iget-object v5, v3, Lcom/inmobi/media/k;->h:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v5, :cond_1

    .line 6
    :try_start_1
    iget-object v4, v3, Lcom/inmobi/media/k;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/media/s1;

    if-eqz v4, :cond_0

    .line 7
    invoke-interface {v4, v3}, Lcom/inmobi/media/s1;->a(Lcom/inmobi/media/k;)V

    .line 8
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 11
    :try_start_2
    const-string v4, "r1"

    const-string v5, "TAG"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v4, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 15
    const-string v4, "event"

    invoke-static {v3, v4}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v3

    .line 16
    sget-object v4, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v4, v3}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0, v0}, Lcom/inmobi/media/r1;->b(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
