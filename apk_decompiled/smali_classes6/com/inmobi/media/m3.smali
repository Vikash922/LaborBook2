.class public final Lcom/inmobi/media/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/J2;


# static fields
.field public static a:Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

.field public static volatile b:Landroid/net/Network;

.field public static volatile c:Z

.field public static d:J

.field public static e:J

.field public static final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/inmobi/media/m3;

    invoke-direct {v0}, Lcom/inmobi/media/m3;-><init>()V

    .line 1
    sget-object v1, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ads"

    invoke-static {v2, v1, v0}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getCustomNwValidation()Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    move-result-object v0

    sput-object v0, Lcom/inmobi/media/m3;->a:Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lcom/inmobi/media/m3;->c:Z

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/media/m3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/Network;)V
    .locals 4

    .line 1
    sget-wide v0, Lcom/inmobi/media/m3;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 3
    sget-object v0, Lcom/inmobi/media/m3;->a:Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->getRefreshDebounceTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    :goto_0
    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/inmobi/media/m3;->e:J

    .line 5
    sget-object v0, Lcom/inmobi/media/m3;->b:Landroid/net/Network;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    sget-wide v0, Lcom/inmobi/media/m3;->d:J

    sget-object v2, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 8
    sget-boolean v0, Lcom/inmobi/media/m3;->c:Z

    if-eqz v0, :cond_3

    .line 9
    sget-object v0, Lcom/inmobi/media/m3;->a:Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->getValidatedExpiry()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    const-wide/32 v0, 0x1d4c0

    goto :goto_1

    .line 10
    :cond_3
    sget-object v0, Lcom/inmobi/media/m3;->a:Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->getNonValidatedExpiry()J

    move-result-wide v0

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0x7530

    :goto_1
    cmp-long v0, v2, v0

    if-lez v0, :cond_6

    .line 11
    :cond_5
    sget-object v0, Lcom/inmobi/media/m3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    sget-object v0, Lcom/inmobi/media/m4;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 13
    new-instance v1, Lcom/inmobi/media/m3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/inmobi/media/m3$$ExternalSyntheticLambda0;-><init>(Landroid/net/Network;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static final b(Landroid/net/Network;)V
    .locals 3

    const-string v0, "$network"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/inmobi/media/m3;->a:Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->getUrlDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :cond_0
    move v1, v0

    .line 3
    :goto_0
    :try_start_1
    sput-boolean v1, Lcom/inmobi/media/m3;->c:Z

    .line 4
    sput-object p0, Lcom/inmobi/media/m3;->b:Landroid/net/Network;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/inmobi/media/m3;->d:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 11
    :try_start_2
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v1, Lcom/inmobi/media/d2;

    invoke-direct {v1, p0}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 12
    const-string p0, "event"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object p0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p0, v1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :goto_1
    sget-object p0, Lcom/inmobi/media/m3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 91
    :goto_2
    sget-object v1, Lcom/inmobi/media/m3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/inmobi/commons/core/configs/Config;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    instance-of v0, p1, Lcom/inmobi/commons/core/configs/AdConfig;

    if-eqz v0, :cond_0

    .line 15
    check-cast p1, Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getCustomNwValidation()Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    move-result-object p1

    sput-object p1, Lcom/inmobi/media/m3;->a:Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    :cond_0
    return-void
.end method
