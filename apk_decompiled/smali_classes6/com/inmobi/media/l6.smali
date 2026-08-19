.class public final Lcom/inmobi/media/l6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "invalid"

    if-eqz p0, :cond_6

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 67
    const-string v3, "://"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 69
    const-string v0, "inmobideeplink://"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "inmobideeplink"

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "inmobinativebrowser://"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "inmobinativebrowser"

    goto :goto_0

    .line 71
    :cond_2
    const-string v0, "https://"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "https"

    goto :goto_0

    .line 72
    :cond_3
    const-string v0, "http://"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "http"

    goto :goto_0

    .line 73
    :cond_4
    const-string v0, "market://"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string v0, "market"

    goto :goto_0

    .line 74
    :cond_5
    const-string v0, "deeplink"

    :cond_6
    :goto_0
    return-object v0
.end method

.method public static synthetic a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;I)V
    .locals 1

    and-int/lit8 p3, p3, 0x4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p2, v0

    .line 79
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V
    .locals 5

    const-string v0, "funnelState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 1
    iget v0, p0, Lcom/inmobi/media/h6;->c:I

    .line 2
    iget v1, p1, Lcom/inmobi/media/t6;->f:I

    if-le v0, v1, :cond_4

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    iget-object v1, p1, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 7
    iget-object v1, v1, Lcom/inmobi/media/u6;->c:Ljava/lang/String;

    .line 8
    const-string v2, "plType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p1, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 11
    iget-object v1, v1, Lcom/inmobi/media/u6;->b:Ljava/lang/String;

    .line 12
    const-string v2, "impressionId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p1, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 15
    iget-wide v1, v1, Lcom/inmobi/media/u6;->a:J

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "plId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, p1, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 19
    iget-object v1, v1, Lcom/inmobi/media/u6;->d:Ljava/lang/String;

    .line 20
    const-string v2, "adType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v1, p1, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 23
    iget-object v1, v1, Lcom/inmobi/media/u6;->e:Ljava/lang/String;

    .line 24
    const-string v2, "markupType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, p1, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 27
    iget-object v1, v1, Lcom/inmobi/media/u6;->f:Ljava/lang/String;

    .line 28
    const-string v2, "creativeType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, p1, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 31
    iget-object v1, v1, Lcom/inmobi/media/u6;->g:Ljava/lang/String;

    .line 32
    const-string v2, "metadataBlob"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v1, p1, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 35
    iget-boolean v1, v1, Lcom/inmobi/media/u6;->h:Z

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isRewarded"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, p1, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 39
    iget-object v1, v1, Lcom/inmobi/media/u6;->i:Ljava/lang/String;

    .line 40
    :cond_0
    const-string v2, "trigger"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "urlType"

    .line 42
    iget-object v2, p1, Lcom/inmobi/media/t6;->b:Ljava/lang/String;

    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 45
    const-string v1, "errorCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_1
    iget-wide v1, p1, Lcom/inmobi/media/t6;->d:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_2

    .line 47
    sget-object p2, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "latency"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_2
    iget p2, p0, Lcom/inmobi/media/h6;->c:I

    .line 51
    iput p2, p1, Lcom/inmobi/media/t6;->f:I

    .line 52
    sget-object p2, Lcom/inmobi/media/m4;->b:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 53
    new-instance v1, Lcom/inmobi/media/l6$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lcom/inmobi/media/l6$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;Lcom/inmobi/media/h6;)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 54
    iget p2, p1, Lcom/inmobi/media/t6;->c:I

    .line 55
    iget-object v0, p1, Lcom/inmobi/media/t6;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;

    .line 56
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->getMaxFunnelsToTrackPerAd()I

    move-result v0

    if-gt p2, v0, :cond_4

    if-eqz p3, :cond_4

    .line 57
    iget-object p0, p0, Lcom/inmobi/media/h6;->b:Ljava/lang/String;

    .line 59
    iget-object p2, p1, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    if-nez p2, :cond_3

    iget-object p2, p1, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 60
    iget-object p2, p2, Lcom/inmobi/media/u6;->i:Ljava/lang/String;

    .line 61
    :cond_3
    const-string v0, "$OPENMODE"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    .line 62
    const-string v0, "$URLTYPE"

    .line 63
    iget-object p1, p1, Lcom/inmobi/media/t6;->b:Ljava/lang/String;

    .line 64
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 65
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public static final a(Ljava/util/Map;Lcom/inmobi/media/h6;)V
    .locals 2

    const-string v0, "$keyValueMap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$funnelState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/inmobi/media/E3;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "networkType"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p1, p1, Lcom/inmobi/media/h6;->a:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 83
    sget-object v0, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 84
    invoke-static {p1, p0, v0}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    return-void
.end method
