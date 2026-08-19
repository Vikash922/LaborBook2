.class public final Lcom/inmobi/media/A3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lcom/inmobi/commons/core/configs/CrashConfig;

.field public final b:Lcom/inmobi/media/h7;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/commons/core/configs/CrashConfig;Lcom/inmobi/media/h7;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crashConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/A3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 4
    iput-object p3, p0, Lcom/inmobi/media/A3;->b:Lcom/inmobi/media/h7;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    const-string p3, "synchronizedList(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/inmobi/media/A3;->c:Ljava/util/List;

    .line 8
    iget-object p3, p0, Lcom/inmobi/media/A3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 9
    new-instance p3, Lcom/inmobi/media/g3;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-direct {p3, v0, p0}, Lcom/inmobi/media/g3;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/inmobi/media/A3;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    iget-object p3, p0, Lcom/inmobi/media/A3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 11
    sget-object p3, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {p3}, Lcom/inmobi/media/E3;->z()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 13
    new-instance p3, Lcom/inmobi/media/a1;

    .line 16
    iget-object v0, p0, Lcom/inmobi/media/A3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getIncidentWaitInterval()J

    move-result-wide v3

    .line 17
    iget-object v0, p0, Lcom/inmobi/media/A3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getMaxNumberOfLines()I

    move-result v5

    move-object v0, p3

    move-object v1, p1

    move-object v2, p0

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/inmobi/media/a1;-><init>(Landroid/content/Context;Lcom/inmobi/media/A3;JI)V

    .line 19
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/A3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getWatchdog()Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->getEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    new-instance p1, Lcom/inmobi/media/b;

    iget-object p3, p0, Lcom/inmobi/media/A3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getWatchdog()Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->getInterval()J

    move-result-wide v0

    invoke-direct {p1, v0, v1, p0}, Lcom/inmobi/media/b;-><init>(JLcom/inmobi/media/A3;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/x5;)V
    .locals 5

    const-string v0, "incidentEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/inmobi/media/b1;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/A3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x98

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/inmobi/media/h3;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/A3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x96

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Lcom/inmobi/media/zd;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/A3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getWatchdog()Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x97

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/A3;->b:Lcom/inmobi/media/h7;

    .line 8
    new-instance v2, Lcom/inmobi/media/b2;

    .line 9
    iget-object v3, p1, Lcom/inmobi/media/S1;->a:Ljava/lang/String;

    .line 10
    const-string v4, "data"

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 11
    invoke-direct {v2, v0, v3, p1}, Lcom/inmobi/media/b2;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    .line 12
    invoke-virtual {v1, v2}, Lcom/inmobi/media/h7;->b(Lcom/inmobi/media/b2;)V

    :cond_2
    return-void
.end method
