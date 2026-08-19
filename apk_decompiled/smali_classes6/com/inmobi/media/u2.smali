.class public final Lcom/inmobi/media/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/J2;


# static fields
.field public static final a:Lcom/inmobi/media/u2;

.field public static b:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static c:Lcom/inmobi/media/m2;

.field public static d:Landroid/os/HandlerThread;

.field public static e:Ljava/util/List;

.field public static final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

.field public static final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final i:Ljava/lang/Object;

.field public static final j:Ljava/util/LinkedHashMap;

.field public static final k:Lcom/inmobi/media/r2;

.field public static final l:Lkotlin/Lazy;

.field public static final m:Lcom/inmobi/media/t2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/inmobi/media/u2;

    invoke-direct {v0}, Lcom/inmobi/media/u2;-><init>()V

    sput-object v0, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inmobi/media/u2;->e:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/media/u2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/media/u2;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/media/u2;->i:Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/inmobi/media/u2;->j:Ljava/util/LinkedHashMap;

    .line 18
    sget-object v0, Lcom/inmobi/media/r2;->a:Lcom/inmobi/media/r2;

    sput-object v0, Lcom/inmobi/media/u2;->k:Lcom/inmobi/media/r2;

    .line 45
    sget-object v0, Lcom/inmobi/media/s2;->a:Lcom/inmobi/media/s2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/inmobi/media/u2;->l:Lkotlin/Lazy;

    .line 71
    const-string v0, "TAG"

    const-string v1, "u2"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/inmobi/media/u2$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/inmobi/media/u2$$ExternalSyntheticLambda0;-><init>()V

    .line 72
    invoke-static {v0}, Lcom/inmobi/media/Kb;->a(Ljava/lang/Runnable;)V

    .line 330
    new-instance v0, Lcom/inmobi/media/t2;

    invoke-direct {v0}, Lcom/inmobi/media/t2;-><init>()V

    sput-object v0, Lcom/inmobi/media/u2;->m:Lcom/inmobi/media/t2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/u2;Lcom/inmobi/media/i2;)Ljava/util/HashMap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4
    :try_start_0
    sget-object v0, Lcom/inmobi/media/u2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxRetries()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget p1, p1, Lcom/inmobi/media/i2;->f:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    .line 6
    const-string p1, "X-im-retry-count"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :catch_0
    const-string p1, "u2"

    const-string v0, "TAG"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static final a()V
    .locals 13

    .line 12
    const-string v0, "pingHandlerThread"

    const-string v1, "TAG"

    const-string v2, "u2"

    sget-object v3, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    .line 13
    :try_start_0
    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 15
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/inmobi/media/p5;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v2}, Lcom/inmobi/media/p5;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x5

    const/4 v6, 0x5

    const-wide/16 v7, 0x5

    move-object v4, v12

    .line 16
    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v4, 0x1

    .line 20
    invoke-virtual {v12, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 21
    sput-object v12, Lcom/inmobi/media/u2;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    new-instance v5, Landroid/os/HandlerThread;

    invoke-direct {v5, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/inmobi/media/u2;->d:Landroid/os/HandlerThread;

    .line 23
    invoke-static {v5, v0}, Lcom/inmobi/media/q4;->a(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/inmobi/media/m2;

    sget-object v5, Lcom/inmobi/media/u2;->d:Landroid/os/HandlerThread;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const-string v6, "getLooper(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lcom/inmobi/media/m2;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/media/u2;->c:Lcom/inmobi/media/m2;

    .line 25
    sget-object v0, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 26
    const-string v0, "ads"

    .line 27
    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-static {v0, v5, v3}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 33
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getImaiConfig()Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    move-result-object v0

    sput-object v0, Lcom/inmobi/media/u2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    .line 34
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v0

    const/16 v3, 0xa

    const/16 v5, 0xb

    const/4 v6, 0x2

    .line 38
    filled-new-array {v3, v5, v6, v4}, [I

    move-result-object v3

    .line 39
    sget-object v4, Lcom/inmobi/media/u2;->k:Lcom/inmobi/media/r2;

    .line 40
    invoke-virtual {v0, v3, v4}, Lcom/inmobi/media/h7;->a([ILkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Lcom/inmobi/media/i2;Lcom/inmobi/media/X1;Lcom/inmobi/media/f5;)V
    .locals 5

    .line 566
    sget-object v0, Lcom/inmobi/media/u2;->c:Lcom/inmobi/media/m2;

    if-nez v0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    iput-object p2, v0, Lcom/inmobi/media/m2;->a:Lcom/inmobi/media/f5;

    :goto_0
    if-eqz p2, :cond_1

    .line 568
    const-string v0, "u2"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "u2"

    const-string v2, "record Click"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_1
    sget-object v0, Lcom/inmobi/media/u2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 570
    invoke-static {}, Lcom/inmobi/media/Db;->b()Lcom/inmobi/media/j2;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxDbEvents()I

    move-result v0

    monitor-enter v2

    .line 571
    :try_start_0
    const-string v3, "click"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    invoke-static {v2}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;)I

    move-result v3

    if-lt v3, v0, :cond_2

    .line 588
    const-string v0, "j2"

    const-string v3, "TAG"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    const-string v0, "ts= (SELECT MIN(ts) FROM click LIMIT 1)"

    const/4 v3, 0x0

    .line 591
    invoke-virtual {v2, v0, v3}, Lcom/inmobi/media/R1;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 592
    check-cast v0, Lcom/inmobi/media/i2;

    if-eqz v0, :cond_2

    .line 594
    const-string v3, "j2"

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    sget-object v3, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    const-string v4, "DB_OVERLOAD"

    invoke-virtual {v3, p0, v4}, Lcom/inmobi/media/u2;->a(Lcom/inmobi/media/i2;Ljava/lang/String;)V

    .line 596
    const-string v3, "click"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    iget v0, v0, Lcom/inmobi/media/i2;->a:I

    .line 598
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v1

    .line 599
    const-string v0, "id = ?"

    invoke-virtual {v2, v0, v3}, Lcom/inmobi/media/R1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 600
    :cond_2
    invoke-virtual {v2, p0}, Lcom/inmobi/media/R1;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz p1, :cond_3

    .line 601
    sget-object v0, Lcom/inmobi/media/u2;->j:Ljava/util/LinkedHashMap;

    .line 602
    iget v2, p0, Lcom/inmobi/media/i2;->a:I

    .line 603
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 604
    monitor-exit v2

    throw p0

    .line 608
    :cond_3
    :goto_1
    sget-boolean p1, Lcom/inmobi/media/p9;->a:Z

    .line 609
    invoke-static {v1}, Lcom/inmobi/media/p9;->a(Z)Lcom/inmobi/media/c4;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 610
    const-string p0, "u2"

    const-string p1, "TAG"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/g5;

    const-string p0, "u2"

    const-string p1, "No network available. Saving click for later processing ..."

    invoke-virtual {p2, p0, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_4
    sget-object p0, Lcom/inmobi/media/u2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 616
    invoke-static {}, Lcom/inmobi/media/u2;->i()V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 618
    const-string p1, "u2"

    .line 619
    const-string v0, "TAG"

    const-string v1, "submit click - "

    invoke-static {p1, v0, v1}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 620
    iget v1, p0, Lcom/inmobi/media/i2;->a:I

    .line 621
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, p1, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_6
    sget-object p1, Lcom/inmobi/media/u2;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p1, :cond_7

    new-instance v0, Lcom/inmobi/media/u2$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lcom/inmobi/media/u2$$ExternalSyntheticLambda4;-><init>(Lcom/inmobi/media/i2;Lcom/inmobi/media/f5;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_7
    :goto_2
    return-void
.end method

.method public static final a(Lcom/inmobi/media/i2;Lcom/inmobi/media/f5;)V
    .locals 3

    const-string v0, "$click"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 624
    iget-boolean v0, p0, Lcom/inmobi/media/i2;->e:Z

    const-string v1, "TAG"

    const-string v2, "u2"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 625
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "ping in web view"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_0
    new-instance v0, Lcom/inmobi/media/o2;

    sget-object v1, Lcom/inmobi/media/u2;->m:Lcom/inmobi/media/t2;

    invoke-direct {v0, v1, p1}, Lcom/inmobi/media/o2;-><init>(Lcom/inmobi/media/q2;Lcom/inmobi/media/f5;)V

    invoke-virtual {v0, p0}, Lcom/inmobi/media/o2;->a(Lcom/inmobi/media/i2;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 628
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "ping in http executor"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_2
    new-instance v0, Lcom/inmobi/media/p2;

    sget-object v1, Lcom/inmobi/media/u2;->m:Lcom/inmobi/media/t2;

    invoke-direct {v0, v1, p1}, Lcom/inmobi/media/p2;-><init>(Lcom/inmobi/media/q2;Lcom/inmobi/media/f5;)V

    invoke-virtual {v0, p0}, Lcom/inmobi/media/p2;->a(Lcom/inmobi/media/i2;)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/inmobi/media/u2;)V
    .locals 0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/inmobi/media/u2;->i()V

    return-void
.end method

.method public static synthetic a(Lcom/inmobi/media/u2;Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/X1;Lcom/inmobi/media/V9;Lcom/inmobi/media/f5;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 297
    invoke-virtual/range {v0 .. v6}, Lcom/inmobi/media/u2;->a(Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/X1;Lcom/inmobi/media/V9;Lcom/inmobi/media/f5;)V

    return-void
.end method

.method public static synthetic a(Lcom/inmobi/media/u2;Ljava/lang/String;ZLcom/inmobi/media/X1;Lcom/inmobi/media/f5;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 44
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/media/u2;->a(Ljava/lang/String;ZLcom/inmobi/media/X1;Lcom/inmobi/media/f5;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/f5;Lcom/inmobi/media/X1;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v8, p3

    const-string v9, "TAG"

    const-string v10, "u2"

    const-string v11, "Received click ("

    const-string v1, "$url"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    :try_start_0
    sget-object v1, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    invoke-virtual {v1}, Lcom/inmobi/media/u2;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    sget-object v1, Lcom/inmobi/media/u2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxRetries()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 301
    :goto_0
    new-instance v12, Lcom/inmobi/media/i2;

    add-int/lit8 v6, v1, 0x1

    const/4 v5, 0x0

    const/16 v7, 0xc1

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/inmobi/media/i2;-><init>(Ljava/lang/String;Ljava/util/Map;ZZII)V

    if-eqz v8, :cond_1

    .line 308
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for pinging over HTTP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v8

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v10, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p4

    .line 309
    invoke-static {v12, v0, v8}, Lcom/inmobi/media/u2;->a(Lcom/inmobi/media/i2;Lcom/inmobi/media/X1;Lcom/inmobi/media/f5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 310
    const-string v1, "SDK encountered unexpected error in pinging click; "

    invoke-static {v10, v9, v1}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    invoke-static {v0, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 550
    move-object v2, v8

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v10, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_2
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 554
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 555
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static final a(Ljava/lang/String;ZLcom/inmobi/media/f5;Lcom/inmobi/media/X1;)V
    .locals 12

    const-string v0, "TAG"

    const-string v1, "u2"

    const-string v2, "Received click ("

    const-string v3, "$url"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    :try_start_0
    sget-object v3, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    invoke-virtual {v3}, Lcom/inmobi/media/u2;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    sget-object v3, Lcom/inmobi/media/u2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxRetries()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 67
    :goto_0
    new-instance v11, Lcom/inmobi/media/i2;

    add-int/lit8 v9, v3, 0x1

    const/4 v8, 0x0

    const/16 v10, 0xc5

    const/4 v6, 0x0

    move-object v4, v11

    move-object v5, p0

    move v7, p1

    invoke-direct/range {v4 .. v10}, Lcom/inmobi/media/i2;-><init>(Ljava/lang/String;Ljava/util/Map;ZZII)V

    if-eqz p2, :cond_1

    .line 73
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") for pinging over HTTP"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object p1, p2

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, p0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_1
    invoke-static {v11, p3, p2}, Lcom/inmobi/media/u2;->a(Lcom/inmobi/media/i2;Lcom/inmobi/media/X1;Lcom/inmobi/media/f5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    if-eqz p2, :cond_2

    .line 75
    const-string p1, "SDK encountered unexpected error in pinging click; "

    invoke-static {v1, v0, p1}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 76
    invoke-static {p0, p1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 290
    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v1, p0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static final synthetic a(Ljava/util/List;)V
    .locals 0

    .line 10
    sput-object p0, Lcom/inmobi/media/u2;->e:Ljava/util/List;

    return-void
.end method

.method public static final synthetic b()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/u2;->e:Ljava/util/List;

    return-object v0
.end method

.method public static final b(Lcom/inmobi/media/u2;Lcom/inmobi/media/i2;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object p0, Lcom/inmobi/media/u2;->j:Ljava/util/LinkedHashMap;

    .line 4
    iget v0, p1, Lcom/inmobi/media/i2;->a:I

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/X1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/inmobi/media/X1;->a(Lcom/inmobi/media/i2;)V

    .line 6
    :cond_0
    iget p1, p1, Lcom/inmobi/media/i2;->a:I

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Lcom/inmobi/media/u2;Ljava/lang/String;ZLcom/inmobi/media/X1;Lcom/inmobi/media/f5;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/media/u2;->b(Ljava/lang/String;ZLcom/inmobi/media/X1;Lcom/inmobi/media/f5;)V

    return-void
.end method

.method public static final b(Ljava/lang/String;ZLcom/inmobi/media/f5;Lcom/inmobi/media/X1;)V
    .locals 12

    const-string v0, "TAG"

    const-string v1, "u2"

    const-string v2, "Received click ("

    const-string v3, "$url"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    :try_start_0
    sget-object v3, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    invoke-virtual {v3}, Lcom/inmobi/media/u2;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    sget-object v3, Lcom/inmobi/media/u2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxRetries()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 31
    :goto_0
    new-instance v11, Lcom/inmobi/media/i2;

    add-int/lit8 v9, v3, 0x1

    const/4 v8, 0x0

    const/16 v10, 0xc5

    const/4 v6, 0x0

    move-object v4, v11

    move-object v5, p0

    move v7, p1

    invoke-direct/range {v4 .. v10}, Lcom/inmobi/media/i2;-><init>(Ljava/lang/String;Ljava/util/Map;ZZII)V

    if-eqz p2, :cond_1

    .line 37
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") for pinging over HTTP"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object p1, p2

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, p0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_1
    invoke-static {v11, p3, p2}, Lcom/inmobi/media/u2;->a(Lcom/inmobi/media/i2;Lcom/inmobi/media/X1;Lcom/inmobi/media/f5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    if-eqz p2, :cond_2

    .line 39
    const-string p1, "SDK encountered unexpected error in pinging click; "

    invoke-static {v1, v0, p1}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 230
    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v1, p0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static final synthetic c()Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/u2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    return-object v0
.end method

.method public static final c(Lcom/inmobi/media/u2;Lcom/inmobi/media/i2;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget p0, p1, Lcom/inmobi/media/i2;->f:I

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 4
    iput p0, p1, Lcom/inmobi/media/i2;->f:I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    iput-wide v0, p1, Lcom/inmobi/media/i2;->g:J

    .line 7
    invoke-static {}, Lcom/inmobi/media/Db;->b()Lcom/inmobi/media/j2;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget v0, p1, Lcom/inmobi/media/i2;->a:I

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 11
    const-string v0, "id = ?"

    invoke-virtual {p0, p1, v0, v1}, Lcom/inmobi/media/R1;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final c(Ljava/lang/String;ZLcom/inmobi/media/f5;)V
    .locals 12

    const-string v0, "TAG"

    const-string v1, "u2"

    const-string v2, "Received click ("

    const-string v3, "$url"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :try_start_0
    sget-object v3, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    invoke-virtual {v3}, Lcom/inmobi/media/u2;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    sget-object v3, Lcom/inmobi/media/u2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxRetries()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 14
    :goto_0
    new-instance v11, Lcom/inmobi/media/i2;

    add-int/lit8 v9, v3, 0x1

    const/4 v8, 0x1

    const/16 v10, 0xc5

    const/4 v6, 0x0

    move-object v4, v11

    move-object v5, p0

    move v7, p1

    invoke-direct/range {v4 .. v10}, Lcom/inmobi/media/i2;-><init>(Ljava/lang/String;Ljava/util/Map;ZZII)V

    if-eqz p2, :cond_1

    .line 21
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") for pinging in WebView"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    move-object p1, p2

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, p0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    .line 25
    invoke-static {v11, p0, p2}, Lcom/inmobi/media/u2;->a(Lcom/inmobi/media/i2;Lcom/inmobi/media/X1;Lcom/inmobi/media/f5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    if-eqz p2, :cond_2

    .line 26
    const-string p1, "SDK encountered unexpected error in pinging click over WebView; "

    invoke-static {v1, v0, p1}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 291
    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v1, p0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static final synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/u2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic e()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/u2;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "u2"

    return-object v0
.end method

.method public static i()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/inmobi/media/u2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    sget-object v1, Lcom/inmobi/media/u2;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/inmobi/media/u2;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcom/inmobi/media/u2;->d:Landroid/os/HandlerThread;

    .line 9
    sput-object v0, Lcom/inmobi/media/u2;->c:Lcom/inmobi/media/m2;

    .line 11
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    :catch_0
    const-string v0, "u2"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/commons/core/configs/Config;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    instance-of v0, p1, Lcom/inmobi/commons/core/configs/AdConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/inmobi/commons/core/configs/AdConfig;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getImaiConfig()Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    move-result-object v1

    :cond_1
    sput-object v1, Lcom/inmobi/media/u2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    return-void
.end method

.method public final a(Lcom/inmobi/media/i2;Ljava/lang/String;)V
    .locals 2

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    sget-object v0, Lcom/inmobi/media/u2;->j:Ljava/util/LinkedHashMap;

    .line 631
    iget v1, p1, Lcom/inmobi/media/i2;->a:I

    .line 632
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/X1;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/inmobi/media/X1;->a(Lcom/inmobi/media/i2;Ljava/lang/String;)V

    .line 633
    :cond_0
    iget p1, p1, Lcom/inmobi/media/i2;->a:I

    .line 634
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/X1;Lcom/inmobi/media/V9;Lcom/inmobi/media/f5;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/inmobi/media/X1;",
            "Lcom/inmobi/media/V9;",
            "Lcom/inmobi/media/f5;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priority"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/inmobi/media/v2;->a:Lcom/inmobi/media/W9;

    new-instance v0, Lcom/inmobi/media/u2$$ExternalSyntheticLambda3;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/media/u2$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/f5;Lcom/inmobi/media/X1;)V

    invoke-static {v0, p5}, Lcom/inmobi/media/v2;->a(Ljava/lang/Runnable;Lcom/inmobi/media/V9;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZLcom/inmobi/media/X1;Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/inmobi/media/v2;->a:Lcom/inmobi/media/W9;

    new-instance v0, Lcom/inmobi/media/u2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/inmobi/media/u2$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;ZLcom/inmobi/media/f5;Lcom/inmobi/media/X1;)V

    .line 63
    sget-object p1, Lcom/inmobi/media/V9;->c:Lcom/inmobi/media/V9;

    .line 64
    invoke-static {v0, p1}, Lcom/inmobi/media/v2;->a(Ljava/lang/Runnable;Lcom/inmobi/media/V9;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZLcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/inmobi/media/u2;->a(Ljava/lang/String;ZLcom/inmobi/media/X1;Lcom/inmobi/media/f5;)V

    return-void
.end method

.method public final b(Ljava/lang/String;ZLcom/inmobi/media/X1;Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/inmobi/media/v2;->a:Lcom/inmobi/media/W9;

    new-instance v0, Lcom/inmobi/media/u2$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/inmobi/media/u2$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;ZLcom/inmobi/media/f5;Lcom/inmobi/media/X1;)V

    .line 27
    sget-object p1, Lcom/inmobi/media/V9;->b:Lcom/inmobi/media/V9;

    .line 28
    invoke-static {v0, p1}, Lcom/inmobi/media/v2;->a(Ljava/lang/Runnable;Lcom/inmobi/media/V9;)V

    return-void
.end method

.method public final b(Ljava/lang/String;ZLcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/inmobi/media/v2;->a:Lcom/inmobi/media/W9;

    new-instance v0, Lcom/inmobi/media/u2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/inmobi/media/u2$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;ZLcom/inmobi/media/f5;)V

    .line 258
    sget-object p1, Lcom/inmobi/media/V9;->c:Lcom/inmobi/media/V9;

    .line 259
    invoke-static {v0, p1}, Lcom/inmobi/media/v2;->a(Ljava/lang/Runnable;Lcom/inmobi/media/V9;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/u2;->l:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 7

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/inmobi/media/p9;->a:Z

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/inmobi/media/p9;->a(Z)Lcom/inmobi/media/c4;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/inmobi/media/u2;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    sget-object v2, Lcom/inmobi/media/u2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5
    const-string v4, "u2"

    const-string v5, "TAG"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v4, Lcom/inmobi/media/u2;->d:Landroid/os/HandlerThread;

    if-nez v4, :cond_1

    .line 7
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "pingHandlerThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/inmobi/media/u2;->d:Landroid/os/HandlerThread;

    .line 8
    const-string v5, "pingHandlerThread"

    invoke-static {v4, v5}, Lcom/inmobi/media/q4;->a(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 10
    :cond_1
    sget-object v4, Lcom/inmobi/media/u2;->c:Lcom/inmobi/media/m2;

    if-nez v4, :cond_2

    .line 11
    sget-object v4, Lcom/inmobi/media/u2;->d:Landroid/os/HandlerThread;

    if-eqz v4, :cond_2

    new-instance v5, Lcom/inmobi/media/m2;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const-string v6, "getLooper(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v4}, Lcom/inmobi/media/m2;-><init>(Landroid/os/Looper;)V

    sput-object v5, Lcom/inmobi/media/u2;->c:Lcom/inmobi/media/m2;

    .line 14
    :cond_2
    invoke-static {}, Lcom/inmobi/media/Db;->b()Lcom/inmobi/media/j2;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 15
    invoke-static {v4}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 17
    iput v3, v0, Landroid/os/Message;->what:I

    .line 18
    sget-object v2, Lcom/inmobi/media/u2;->c:Lcom/inmobi/media/m2;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 19
    :cond_4
    :goto_0
    const-string v3, "u2"

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    invoke-static {}, Lcom/inmobi/media/u2;->i()V

    .line 28
    :cond_5
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 53
    :catch_0
    const-string v0, "u2"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
