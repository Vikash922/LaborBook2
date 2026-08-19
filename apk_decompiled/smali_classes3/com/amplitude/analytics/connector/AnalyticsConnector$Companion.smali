.class public final Lcom/amplitude/analytics/connector/AnalyticsConnector$Companion;
.super Ljava/lang/Object;
.source "AnalyticsConnector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amplitude/analytics/connector/AnalyticsConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnalyticsConnector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyticsConnector.kt\ncom/amplitude/analytics/connector/AnalyticsConnector$Companion\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,23:1\n355#2,7:24\n*S KotlinDebug\n*F\n+ 1 AnalyticsConnector.kt\ncom/amplitude/analytics/connector/AnalyticsConnector$Companion\n*L\n13#1:24,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0005H\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/amplitude/analytics/connector/AnalyticsConnector$Companion;",
        "",
        "()V",
        "instances",
        "",
        "",
        "Lcom/amplitude/analytics/connector/AnalyticsConnector;",
        "instancesLock",
        "getInstance",
        "instanceName",
        "analytics-connector_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/amplitude/analytics/connector/AnalyticsConnector$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Ljava/lang/String;)Lcom/amplitude/analytics/connector/AnalyticsConnector;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "instanceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/amplitude/analytics/connector/AnalyticsConnector;->access$getInstancesLock$cp()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 13
    :try_start_0
    invoke-static {}, Lcom/amplitude/analytics/connector/AnalyticsConnector;->access$getInstances$cp()Ljava/util/Map;

    move-result-object v1

    .line 24
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 14
    new-instance v2, Lcom/amplitude/analytics/connector/AnalyticsConnector;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/amplitude/analytics/connector/AnalyticsConnector;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    check-cast v2, Lcom/amplitude/analytics/connector/AnalyticsConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
