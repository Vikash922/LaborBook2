.class public final Lcom/inmobi/media/Qb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/Qb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inmobi/media/Qb;

    invoke-direct {v0}, Lcom/inmobi/media/Qb;-><init>()V

    sput-object v0, Lcom/inmobi/media/Qb;->a:Lcom/inmobi/media/Qb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "Qb"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "signals"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    .line 3
    sget-object v0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/Pb;

    .line 4
    const-string v1, "signals"

    const-string v3, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    invoke-static {v1, v3, v2}, Lcom/inmobi/media/V4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 6
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getIceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;->isSessionEnabled()Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sput-boolean v1, Lcom/inmobi/media/Pb;->e:Z

    if-nez v1, :cond_0

    .line 10
    sput-object v2, Lcom/inmobi/media/Pb;->d:Ljava/lang/String;

    .line 11
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Pb;->c()V

    .line 12
    sget-object v0, Lcom/inmobi/media/Kb;->a:Lcom/inmobi/media/Kb;

    invoke-virtual {v0}, Lcom/inmobi/media/Kb;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    const-string v1, "signals"

    invoke-static {v1, v0, v2}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 14
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getIceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    :cond_1
    sget-object v0, Lcom/inmobi/media/y6;->a:Lcom/inmobi/media/y6;

    invoke-virtual {v0}, Lcom/inmobi/media/y6;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
