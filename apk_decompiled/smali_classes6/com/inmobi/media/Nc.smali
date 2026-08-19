.class public abstract Lcom/inmobi/media/Nc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/json/JSONObject;

.field public static final b:Ljava/util/LinkedHashSet;

.field public static c:Lcom/inmobi/media/Rc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/inmobi/media/Nc;->a:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/inmobi/media/Nc;->b:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/inmobi/media/Nc;->a:Lorg/json/JSONObject;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/inmobi/media/Nc;->c:Lcom/inmobi/media/Rc;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/inmobi/media/Nc;->a:Lorg/json/JSONObject;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/inmobi/media/Nc;->c:Lcom/inmobi/media/Rc;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/inmobi/media/rb;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c()V
    .locals 4

    .line 1
    sget-object v0, Lcom/inmobi/media/Nc;->a:Lorg/json/JSONObject;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/Nc;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/inmobi/media/Nc;->c:Lcom/inmobi/media/Rc;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v1, Lcom/inmobi/media/rb;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 5
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 11
    invoke-static {}, Lcom/inmobi/media/Nc;->d()V

    return-void

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method

.method public static d()V
    .locals 11

    .line 1
    sget-object v0, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 2
    const-string v0, "signals"

    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/V4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 4
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getUnifiedIdServiceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/inmobi/media/Nc;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v10, Lcom/inmobi/media/Rc;

    .line 7
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 8
    sget-object v3, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    const-string v3, "signals"

    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 9
    new-instance v5, Lcom/inmobi/media/Kc;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getIncludeIdParams()Lcom/inmobi/media/A5;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/inmobi/media/Kc;-><init>(Lcom/inmobi/media/A5;)V

    .line 10
    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->getMaxRetries()I

    move-result v7

    .line 12
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->getRetryInterval()I

    move-result v8

    .line 14
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->getTimeout()I

    move-result v9

    move-object v3, v10

    .line 15
    invoke-direct/range {v3 .. v9}, Lcom/inmobi/media/Rc;-><init>(Ljava/lang/String;Lcom/inmobi/media/Kc;Ljava/lang/String;III)V

    sput-object v10, Lcom/inmobi/media/Nc;->c:Lcom/inmobi/media/Rc;

    .line 25
    new-instance v0, Lcom/inmobi/media/l5;

    .line 26
    new-instance v2, Lcom/inmobi/media/Oc;

    sget-object v3, Lcom/inmobi/media/Nc;->b:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v10, v3}, Lcom/inmobi/media/Oc;-><init>(Lcom/inmobi/media/Rc;Ljava/util/LinkedHashSet;)V

    .line 27
    invoke-direct {v0, v2, v10}, Lcom/inmobi/media/l5;-><init>(Lcom/inmobi/media/Oc;Lcom/inmobi/media/Rc;)V

    .line 33
    const-string v2, "UnifiedIdNetworkCallRequested"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 34
    sget-object v4, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 35
    invoke-static {v2, v3, v4}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    .line 36
    sget-object v2, Lcom/inmobi/media/m4;->b:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 37
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 38
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e()V
    .locals 4

    .line 1
    sget-object v0, Lcom/inmobi/media/Nc;->a:Lorg/json/JSONObject;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/inmobi/media/Nc;->c:Lcom/inmobi/media/Rc;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/inmobi/media/rb;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_0
    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcom/inmobi/media/Nc;->c:Lcom/inmobi/media/Rc;

    .line 5
    sget-object v1, Lcom/inmobi/media/Nc;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
