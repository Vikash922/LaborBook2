.class public final Lcom/inmobi/media/ic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/O9;
.implements Lcom/inmobi/media/Fa;
.implements Lcom/inmobi/media/J2;


# static fields
.field public static final a:Lcom/inmobi/media/ic;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/util/List;

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

.field public static f:Lcom/inmobi/media/g4;

.field public static volatile g:Lcom/inmobi/media/uc;

.field public static final h:Lcom/inmobi/media/hc;

.field public static i:Lcom/inmobi/media/qc;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/inmobi/media/ic;

    invoke-direct {v0}, Lcom/inmobi/media/ic;-><init>()V

    sput-object v0, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 1
    const-string v1, "getSimpleName(...)"

    const-string v2, "ic"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/inmobi/media/ic;->b:Ljava/lang/String;

    const/16 v1, 0x2c

    .line 48
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AdLoadCalled"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "AdLoadDroppedAtSDK"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "AdLoadSuccessful"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "AdLoadFailed"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "ServerFill"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "ServerNoFill"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "ServerError"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "AssetDownloaded"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "AdShowCalled"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v4, "AdShowSuccessful"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "AdShowFailed"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v4, "AdGetSignalsCalled"

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v4, "AdGetSignalsSucceeded"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v4, "AdGetSignalsFailed"

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string v4, "UnifiedIdNetworkCallRequested"

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-string v4, "UnifiedIdNetworkResponseFailure"

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string v4, "FetchApiInvoked"

    aput-object v4, v1, v2

    const/16 v2, 0x11

    const-string v4, "FetchCallbackFailure"

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string v4, "AdImpressionSuccessful"

    aput-object v4, v1, v2

    const/16 v2, 0x13

    const-string v4, "RenderSuccess"

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string v4, "ParseSuccess"

    aput-object v4, v1, v2

    const/16 v2, 0x15

    const-string v4, "PageStarted"

    aput-object v4, v1, v2

    const/16 v2, 0x16

    const-string v4, "WebViewLoadFinished"

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-string v4, "FireAdReady"

    aput-object v4, v1, v2

    const/16 v2, 0x18

    const-string v4, "WebViewLoadCalled"

    aput-object v4, v1, v2

    const/16 v2, 0x19

    const-string v4, "FireAdFailed"

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    const-string v4, "ResourceCacheMiss"

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    const-string v4, "ResourceCacheHit"

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    const-string v4, "ResourceDiskCacheFileMissing"

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    const-string v4, "ResourceDiskCacheFileEvicted"

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    const-string v4, "LowAvailableSpaceForCache"

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    const-string v4, "WebViewRenderProcessGoneEvent"

    aput-object v4, v1, v2

    const/16 v2, 0x20

    const-string v4, "clickStartCalled"

    aput-object v4, v1, v2

    const/16 v2, 0x21

    const-string v4, "landingsStartSuccess"

    aput-object v4, v1, v2

    const/16 v2, 0x22

    const-string v4, "landingsStartFailed"

    aput-object v4, v1, v2

    const/16 v2, 0x23

    const-string v4, "browserOpenFailed"

    aput-object v4, v1, v2

    const/16 v2, 0x24

    const-string v4, "landingsPageStarted"

    aput-object v4, v1, v2

    const/16 v2, 0x25

    const-string v4, "landingsCompleteSuccess"

    aput-object v4, v1, v2

    const/16 v2, 0x26

    const-string v4, "landingsCompleteFailed"

    aput-object v4, v1, v2

    const/16 v2, 0x27

    const-string v4, "ImmersiveNotSupported"

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-string v4, "AdNotReady"

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string v4, "IAPFetchFailed"

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    const-string v4, "BillingClientConnectionError"

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string v4, "BillingClientNotCompatible"

    aput-object v4, v1, v2

    .line 49
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/inmobi/media/ic;->c:Ljava/util/List;

    .line 95
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lcom/inmobi/media/ic;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    sget-object v2, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 99
    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string v3, "telemetry"

    invoke-static {v3, v2, v0}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    sput-object v0, Lcom/inmobi/media/ic;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 122
    sget-object v0, Lcom/inmobi/media/ic;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 123
    new-instance v11, Lcom/inmobi/media/lc;

    .line 124
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getEnabled()Z

    move-result v3

    .line 125
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isImageEnabled()Z

    move-result v4

    .line 126
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isGifEnabled()Z

    move-result v5

    .line 127
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isVideoEnabled()Z

    move-result v6

    .line 128
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->isGeneralEventsDisabled()Z

    move-result v7

    .line 129
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getPriorityEventsList()Ljava/util/List;

    move-result-object v8

    .line 130
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getSamplingFactor()D

    move-result-wide v9

    move-object v2, v11

    .line 131
    invoke-direct/range {v2 .. v10}, Lcom/inmobi/media/lc;-><init>(ZZZZZLjava/util/List;D)V

    .line 132
    new-instance v0, Lcom/inmobi/media/uc;

    .line 133
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 134
    invoke-direct {v0, v11, v1}, Lcom/inmobi/media/uc;-><init>(Lcom/inmobi/media/lc;Ljava/util/List;)V

    sput-object v0, Lcom/inmobi/media/ic;->g:Lcom/inmobi/media/uc;

    .line 135
    sget-object v0, Lcom/inmobi/media/hc;->a:Lcom/inmobi/media/hc;

    sput-object v0, Lcom/inmobi/media/ic;->h:Lcom/inmobi/media/hc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)Z
    .locals 5

    .line 64
    sget-object v0, Lcom/inmobi/media/ic;->g:Lcom/inmobi/media/uc;

    if-nez v0, :cond_0

    const-string v0, "mTelemetryValidator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    const-string v1, "telemetryEventType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "keyValueMap"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventType"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v3, v0, Lcom/inmobi/media/uc;->a:Lcom/inmobi/media/lc;

    .line 96
    iget-boolean v3, v3, Lcom/inmobi/media/lc;->a:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 97
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_3

    if-ne p2, v4, :cond_2

    goto/16 :goto_1

    .line 99
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 100
    :cond_3
    iget-object p2, v0, Lcom/inmobi/media/uc;->b:Lcom/inmobi/media/Eb;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p2, Lcom/inmobi/media/Eb;->a:Lcom/inmobi/media/lc;

    .line 131
    iget-boolean v1, v0, Lcom/inmobi/media/lc;->e:Z

    if-eqz v1, :cond_4

    .line 132
    iget-object v0, v0, Lcom/inmobi/media/lc;->f:Ljava/util/List;

    .line 133
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 136
    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "AssetDownloaded"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 137
    const-string p0, "assetType"

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 138
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "image"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/inmobi/media/Eb;->a:Lcom/inmobi/media/lc;

    .line 139
    iget-boolean v0, v0, Lcom/inmobi/media/lc;->b:Z

    if-nez v0, :cond_5

    goto :goto_0

    .line 140
    :cond_5
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gif"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/inmobi/media/Eb;->a:Lcom/inmobi/media/lc;

    .line 141
    iget-boolean v0, v0, Lcom/inmobi/media/lc;->c:Z

    if-nez v0, :cond_6

    goto :goto_0

    .line 142
    :cond_6
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "video"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, p2, Lcom/inmobi/media/Eb;->a:Lcom/inmobi/media/lc;

    .line 143
    iget-boolean p0, p0, Lcom/inmobi/media/lc;->d:Z

    if-nez p0, :cond_7

    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    move p0, v4

    :goto_2
    xor-int/2addr p0, v4

    return p0
.end method

.method public static final b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V
    .locals 1

    const-string v0, "eventType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValueMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telemetryEventType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/inmobi/media/ic$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/inmobi/media/ic$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    invoke-static {v0}, Lcom/inmobi/media/Kb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final c()V
    .locals 6

    .line 1
    sget-object v0, Lcom/inmobi/media/ic;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 4
    invoke-static {}, Lcom/inmobi/media/Db;->e()Lcom/inmobi/media/oc;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;)I

    move-result v2

    if-lez v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/ic;->b()V

    .line 6
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v0

    const/16 v2, 0x98

    const/16 v3, 0x97

    const/4 v4, 0x2

    const/16 v5, 0x96

    .line 11
    filled-new-array {v4, v1, v5, v2, v3}, [I

    move-result-object v1

    .line 12
    sget-object v2, Lcom/inmobi/media/ic;->h:Lcom/inmobi/media/hc;

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/h7;->a([ILkotlin/jvm/functions/Function1;)V

    .line 14
    new-instance v0, Lcom/inmobi/media/qc;

    sget-object v1, Lcom/inmobi/media/ic;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-direct {v0, v1}, Lcom/inmobi/media/qc;-><init>(Lcom/inmobi/commons/core/configs/TelemetryConfig;)V

    sput-object v0, Lcom/inmobi/media/ic;->i:Lcom/inmobi/media/qc;

    :cond_1
    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V
    .locals 11

    const-string v0, "toString(...)"

    const-string v1, "$eventType"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$keyValueMap"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$telemetryEventType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    :try_start_0
    sget-object v1, Lcom/inmobi/media/ic;->g:Lcom/inmobi/media/uc;

    if-nez v1, :cond_0

    return-void

    .line 21
    :cond_0
    sget-object v1, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    invoke-static {p0, p1, p2}, Lcom/inmobi/media/ic;->a(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 25
    :cond_1
    sget-object v2, Lcom/inmobi/media/ic;->g:Lcom/inmobi/media/uc;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, "mTelemetryValidator"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    invoke-virtual {v2, p2, p0}, Lcom/inmobi/media/uc;->a(Lcom/inmobi/media/mc;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x64

    const-string v5, "samplingRate"

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    return-void

    .line 34
    :cond_3
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    int-to-double v7, v6

    .line 36
    sget-object v2, Lcom/inmobi/media/ic;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getSamplingFactor()D

    move-result-wide v9

    sub-double/2addr v7, v9

    int-to-double v9, v4

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_0
    new-instance v2, Lcom/inmobi/media/pc;

    .line 45
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_6

    if-ne v4, v6, :cond_5

    .line 47
    const-string v4, "template"

    goto :goto_1

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 48
    :cond_6
    const-string v4, "sdk"

    .line 49
    :goto_1
    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/media/pc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string p0, "eventType"

    .line 51
    iget-object v3, v2, Lcom/inmobi/media/S1;->a:Ljava/lang/String;

    .line 52
    invoke-interface {p1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string p0, "eventId"

    .line 54
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {p1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string p0, "isTemplateEvent"

    .line 57
    sget-object v3, Lcom/inmobi/media/mc;->b:Lcom/inmobi/media/mc;

    if-ne p2, v3, :cond_7

    move p2, v6

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    :goto_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const-string p1, "payload"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p0, v2, Lcom/inmobi/media/S1;->d:Ljava/lang/String;

    .line 86
    sget-object p0, Lcom/inmobi/media/ic;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getMaxEventsToPersist()I

    move-result p0

    .line 87
    invoke-static {}, Lcom/inmobi/media/Db;->e()Lcom/inmobi/media/oc;

    move-result-object p1

    invoke-static {p1}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;)I

    move-result p1

    add-int/2addr p1, v6

    sub-int/2addr p1, p0

    if-lez p1, :cond_8

    .line 91
    invoke-static {}, Lcom/inmobi/media/Db;->e()Lcom/inmobi/media/oc;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/inmobi/media/e4;->a(I)V

    .line 92
    invoke-static {}, Lcom/inmobi/media/nc;->a()I

    move-result p0

    add-int v5, p0, p1

    const/4 p0, -0x1

    if-eq v5, p0, :cond_8

    .line 93
    sput v5, Lcom/inmobi/media/nc;->b:I

    .line 94
    sget-object v3, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/e6;

    if-eqz v3, :cond_8

    const-string v4, "count"

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 95
    :cond_8
    invoke-static {}, Lcom/inmobi/media/Db;->e()Lcom/inmobi/media/oc;

    move-result-object p0

    .line 96
    invoke-virtual {p0, v2}, Lcom/inmobi/media/R1;->a(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v1}, Lcom/inmobi/media/ic;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/inmobi/media/f4;
    .locals 16

    .line 144
    sget-object v0, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v0}, Lcom/inmobi/media/E3;->p()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 145
    sget-object v0, Lcom/inmobi/media/ic;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getWifiConfig()Lcom/inmobi/media/n9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/n9;->a()I

    move-result v0

    goto :goto_0

    .line 146
    :cond_0
    sget-object v0, Lcom/inmobi/media/ic;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getMobileConfig()Lcom/inmobi/media/n9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/n9;->a()I

    move-result v0

    .line 148
    :goto_0
    invoke-static {}, Lcom/inmobi/media/Db;->e()Lcom/inmobi/media/oc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/inmobi/media/e4;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 149
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    const-string v5, "DatabaseMaxLimitReachedV2"

    invoke-static {v5, v3, v4}, Lcom/inmobi/media/ic;->a(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)Z

    move-result v3

    const-string v4, "payload"

    const-string v6, "null cannot be cast to non-null type kotlin.collections.Map<*, *>"

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x0

    if-nez v3, :cond_1

    .line 150
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v0, :cond_1

    .line 151
    invoke-static {}, Lcom/inmobi/media/nc;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 152
    invoke-static {}, Lcom/inmobi/media/nc;->a()I

    move-result v0

    .line 153
    new-instance v3, Lcom/inmobi/media/pc;

    .line 155
    const-string v13, "sdk"

    .line 156
    invoke-direct {v3, v5, v12, v13}, Lcom/inmobi/media/pc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "toString(...)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    const-string v15, "eventId"

    invoke-static {v15, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    .line 160
    const-string v15, "eventType"

    invoke-static {v15, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/16 v15, 0x64

    .line 161
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v12, "samplingRate"

    invoke-static {v12, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    .line 162
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v7, "isTemplateEvent"

    invoke-static {v7, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v15, "eventLostCount"

    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-array v15, v11, [Lkotlin/Pair;

    aput-object v13, v15, v10

    aput-object v5, v15, v1

    aput-object v12, v15, v9

    aput-object v7, v15, v8

    const/4 v5, 0x4

    aput-object v0, v15, v5

    .line 164
    invoke-static {v15}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    .line 171
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iput-object v0, v3, Lcom/inmobi/media/S1;->d:Ljava/lang/String;

    .line 199
    iget v0, v3, Lcom/inmobi/media/S1;->c:I

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 201
    sput-object v0, Lcom/inmobi/media/nc;->c:Ljava/lang/Integer;

    .line 202
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/pc;

    .line 299
    iget v5, v5, Lcom/inmobi/media/S1;->c:I

    .line 300
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    :cond_2
    :try_start_0
    const-string v3, "im-accid"

    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, ""

    :cond_3
    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 302
    const-string v5, "version"

    const-string v7, "4.0.0"

    invoke-static {v5, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 303
    const-string v7, "mk-version"

    invoke-static {}, Lcom/inmobi/media/Lb;->a()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 304
    const-string v12, "u-appbid"

    .line 305
    sget-object v13, Lcom/inmobi/media/c1;->a:Ljava/lang/String;

    .line 306
    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    .line 307
    const-string v13, "tp"

    invoke-static {}, Lcom/inmobi/media/Lb;->d()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    new-array v11, v11, [Lkotlin/Pair;

    aput-object v3, v11, v10

    aput-object v5, v11, v1

    aput-object v7, v11, v9

    aput-object v12, v11, v8

    const/4 v1, 0x4

    aput-object v13, v11, v1

    .line 308
    invoke-static {v11}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 315
    invoke-static {}, Lcom/inmobi/media/Lb;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 316
    const-string v5, "tp-v"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 320
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 384
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/pc;

    .line 385
    invoke-virtual {v5}, Lcom/inmobi/media/S1;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 386
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/inmobi/media/S1;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 390
    :cond_6
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    .line 392
    new-instance v12, Lcom/inmobi/media/f4;

    invoke-direct {v12, v0, v1}, Lcom/inmobi/media/f4;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    :goto_4
    return-object v12
.end method

.method public final a(Lcom/inmobi/commons/core/configs/Config;)V
    .locals 10

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 3
    sput-object p1, Lcom/inmobi/media/ic;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 4
    new-instance v9, Lcom/inmobi/media/lc;

    .line 5
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getEnabled()Z

    move-result v1

    .line 6
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isImageEnabled()Z

    move-result v2

    .line 7
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isGifEnabled()Z

    move-result v3

    .line 8
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getAssetConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig$AssetReportingConfig;->isVideoEnabled()Z

    move-result v4

    .line 9
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->isGeneralEventsDisabled()Z

    move-result v5

    .line 10
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getPriorityEventsList()Ljava/util/List;

    move-result-object v6

    .line 11
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getSamplingFactor()D

    move-result-wide v7

    move-object v0, v9

    .line 12
    invoke-direct/range {v0 .. v8}, Lcom/inmobi/media/lc;-><init>(ZZZZZLjava/util/List;D)V

    .line 13
    new-instance v0, Lcom/inmobi/media/uc;

    .line 14
    sget-object v1, Lcom/inmobi/media/ic;->c:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-direct {v0, v9, v1}, Lcom/inmobi/media/uc;-><init>(Lcom/inmobi/media/lc;Ljava/util/List;)V

    sput-object v0, Lcom/inmobi/media/ic;->g:Lcom/inmobi/media/uc;

    .line 16
    sget-object v0, Lcom/inmobi/media/ic;->i:Lcom/inmobi/media/qc;

    if-eqz v0, :cond_0

    .line 17
    const-string v1, "telemetryConfig"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, v0, Lcom/inmobi/media/qc;->a:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 2
    sget-object v0, Lcom/inmobi/media/ic;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/inmobi/media/ic;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getEventConfig()Lcom/inmobi/media/d4;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/inmobi/media/ic;->e:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getTelemetryUrl()Ljava/lang/String;

    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/inmobi/media/d4;->k:Ljava/lang/String;

    .line 8
    sget-object v1, Lcom/inmobi/media/ic;->f:Lcom/inmobi/media/g4;

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Lcom/inmobi/media/g4;

    invoke-static {}, Lcom/inmobi/media/Db;->e()Lcom/inmobi/media/oc;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0, p0}, Lcom/inmobi/media/g4;-><init>(Lcom/inmobi/media/e4;Lcom/inmobi/media/O9;Lcom/inmobi/media/d4;Lcom/inmobi/media/Fa;)V

    sput-object v1, Lcom/inmobi/media/ic;->f:Lcom/inmobi/media/g4;

    goto :goto_0

    .line 10
    :cond_1
    const-string v2, "eventConfig"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object v0, v1, Lcom/inmobi/media/g4;->i:Lcom/inmobi/media/d4;

    .line 66
    :goto_0
    sget-object v0, Lcom/inmobi/media/ic;->f:Lcom/inmobi/media/g4;

    if-eqz v0, :cond_3

    .line 67
    iget-object v1, v0, Lcom/inmobi/media/g4;->i:Lcom/inmobi/media/d4;

    .line 68
    iget-object v2, v0, Lcom/inmobi/media/g4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    .line 69
    :cond_2
    iget-wide v1, v1, Lcom/inmobi/media/d4;->c:J

    const/4 v3, 0x1

    .line 70
    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/media/g4;->a(JZ)V

    :cond_3
    :goto_1
    return-void
.end method
