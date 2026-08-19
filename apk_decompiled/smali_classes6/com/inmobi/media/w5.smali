.class public final Lcom/inmobi/media/w5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/J2;


# static fields
.field public static final a:Lcom/inmobi/media/w5;

.field public static final b:Lcom/inmobi/commons/core/configs/CrashConfig;

.field public static final c:Lcom/inmobi/media/A3;

.field public static final d:Lcom/inmobi/media/g6;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/inmobi/media/w5;

    invoke-direct {v0}, Lcom/inmobi/media/w5;-><init>()V

    sput-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 1
    sget-object v1, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 3
    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object v1

    .line 4
    const-string v2, "crashReporting"

    invoke-static {v2, v1, v0}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.CrashConfig"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/commons/core/configs/CrashConfig;

    sput-object v0, Lcom/inmobi/media/w5;->b:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 21
    new-instance v3, Lcom/inmobi/media/g6;

    invoke-direct {v3, v0}, Lcom/inmobi/media/g6;-><init>(Lcom/inmobi/commons/core/configs/CrashConfig;)V

    sput-object v3, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    .line 26
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 27
    new-instance v4, Lcom/inmobi/media/A3;

    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v5

    invoke-direct {v4, v3, v0, v5}, Lcom/inmobi/media/A3;-><init>(Landroid/content/Context;Lcom/inmobi/commons/core/configs/CrashConfig;Lcom/inmobi/media/h7;)V

    sput-object v4, Lcom/inmobi/media/w5;->c:Lcom/inmobi/media/A3;

    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getReportSessionInfo()Z

    move-result v0

    const-string v3, "type"

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 29
    sget-object v0, Lcom/inmobi/media/j3;->d:Lcom/inmobi/media/j3;

    .line 30
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/inmobi/media/z5;->a()Lcom/inmobi/media/e6;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, v0, Lcom/inmobi/media/l3;->a:Ljava/lang/String;

    .line 77
    invoke-virtual {v5, v0, v1, v2, v4}, Lcom/inmobi/media/e6;->a(Ljava/lang/String;JZ)V

    .line 78
    :goto_0
    invoke-static {}, Lcom/inmobi/media/z5;->a()Lcom/inmobi/media/e6;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 79
    const-string v7, "s-cnt"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 80
    :cond_3
    :goto_1
    sget-object v0, Lcom/inmobi/media/y9;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getReportOOMInfo()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    .line 81
    new-array v0, v0, [Lcom/inmobi/media/l3;

    sget-object v5, Lcom/inmobi/media/k3;->d:Lcom/inmobi/media/k3;

    const/4 v6, 0x0

    aput-object v5, v0, v6

    sget-object v5, Lcom/inmobi/media/i3;->d:Lcom/inmobi/media/i3;

    aput-object v5, v0, v4

    .line 82
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/l3;

    .line 154
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/inmobi/media/z5;->a()Lcom/inmobi/media/e6;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 200
    :cond_5
    iget-object v5, v5, Lcom/inmobi/media/l3;->a:Ljava/lang/String;

    .line 201
    invoke-virtual {v6, v5, v1, v2, v4}, Lcom/inmobi/media/e6;->a(Ljava/lang/String;JZ)V

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;ZJ)V
    .locals 7

    const-string v0, "payload"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/inmobi/media/w5;->b:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 2
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getReportSessionInfo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object p1, Lcom/inmobi/media/j3;->d:Lcom/inmobi/media/j3;

    .line 4
    const-string v0, "crashType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/inmobi/media/z5;->a()Lcom/inmobi/media/e6;

    move-result-object v0

    const-string v1, "key"

    if-nez v0, :cond_2

    goto :goto_0

    .line 40
    :cond_2
    iget-object v2, p1, Lcom/inmobi/media/l3;->a:Ljava/lang/String;

    .line 41
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v3, v0, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 116
    iget-object v6, p1, Lcom/inmobi/media/l3;->b:Ljava/lang/String;

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    .line 117
    invoke-virtual {v0, v6, p2, p3, v5}, Lcom/inmobi/media/e6;->a(Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_3
    sub-long/2addr p2, v2

    .line 119
    invoke-virtual {v0, v6, p2, p3, v5}, Lcom/inmobi/media/e6;->a(Ljava/lang/String;JZ)V

    .line 120
    :goto_0
    invoke-static {p1}, Lcom/inmobi/media/z5;->a(Lcom/inmobi/media/l3;)J

    move-result-wide p1

    const-string p3, "crashFreeSessionLength"

    invoke-virtual {p0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 122
    invoke-static {}, Lcom/inmobi/media/z5;->a()Lcom/inmobi/media/e6;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 123
    const-string p3, "s-cnt"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object p1, p1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 175
    :cond_4
    const-string p1, "crashFreeSessionCount"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 176
    sget-object v0, Lcom/inmobi/media/w5;->b:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 177
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getReportSessionInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-static {}, Lcom/inmobi/media/z5;->a()Lcom/inmobi/media/e6;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    const-string v0, "key"

    const-string v2, "s-cnt"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 232
    const-string v2, "s-cnt"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 233
    :cond_1
    :goto_0
    sget-object v0, Lcom/inmobi/media/w5;->c:Lcom/inmobi/media/A3;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, v0, Lcom/inmobi/media/A3;->c:Ljava/util/List;

    .line 280
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/z3;

    .line 281
    invoke-virtual {v1}, Lcom/inmobi/media/z3;->a()V

    goto :goto_1

    .line 282
    :cond_2
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0}, Lcom/inmobi/media/g6;->c()V

    return-void
.end method

.method public final a(Lcom/inmobi/commons/core/configs/Config;)V
    .locals 6

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    instance-of v1, p1, Lcom/inmobi/commons/core/configs/CrashConfig;

    if-eqz v1, :cond_1

    .line 284
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    check-cast p1, Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    const-string v2, "crashConfig"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    iput-object p1, v1, Lcom/inmobi/media/g6;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 516
    iget-object v3, v1, Lcom/inmobi/media/g6;->c:Lcom/inmobi/media/y5;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    iget-object v0, v3, Lcom/inmobi/media/y5;->a:Lcom/inmobi/media/Fb;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getSamplingPercent()D

    move-result-wide v4

    .line 551
    iput-wide v4, v0, Lcom/inmobi/media/Fb;->a:D

    .line 552
    iget-object v0, v3, Lcom/inmobi/media/y5;->b:Lcom/inmobi/media/Fb;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCatchConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;->getSamplingPercent()D

    move-result-wide v4

    .line 553
    iput-wide v4, v0, Lcom/inmobi/media/Fb;->a:D

    .line 554
    iget-object v0, v3, Lcom/inmobi/media/y5;->c:Lcom/inmobi/media/Fb;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getWatchdog()Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->getSamplingPercent()D

    move-result-wide v4

    .line 555
    iput-wide v4, v0, Lcom/inmobi/media/Fb;->a:D

    .line 556
    iget-object v0, v3, Lcom/inmobi/media/y5;->d:Lcom/inmobi/media/Fb;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getSamplingPercent()D

    move-result-wide v3

    .line 557
    iput-wide v3, v0, Lcom/inmobi/media/Fb;->a:D

    .line 558
    iget-object v0, v1, Lcom/inmobi/media/g6;->b:Lcom/inmobi/media/g4;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getEventConfig()Lcom/inmobi/media/d4;

    move-result-object v1

    .line 559
    const-string v3, "eventConfig"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 614
    iput-object v1, v0, Lcom/inmobi/media/g4;->i:Lcom/inmobi/media/d4;

    .line 615
    :cond_0
    sget-object v0, Lcom/inmobi/media/w5;->c:Lcom/inmobi/media/A3;

    if-eqz v0, :cond_1

    .line 616
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    iput-object p1, v0, Lcom/inmobi/media/A3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    :cond_1
    return-void
.end method
