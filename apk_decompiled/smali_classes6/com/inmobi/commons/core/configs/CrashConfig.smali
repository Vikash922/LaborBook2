.class public final Lcom/inmobi/commons/core/configs/CrashConfig;
.super Lcom/inmobi/commons/core/configs/Config;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;,
        Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;,
        Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;,
        Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;,
        Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0007\u0018\u0000 ?2\u00020\u0001:\u0006@ABCDEB\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\r\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\nJ\r\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\r\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008 \u0010!J\r\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008#\u0010$J\r\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008&\u0010\'R\u001c\u0010)\u001a\n (*\u0004\u0018\u00010\u00020\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010+\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010*R\u0016\u0010,\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u0010.\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00100\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010/R\u0016\u00101\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010-R\u0016\u00102\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u0010-R\u0016\u00103\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0016\u00105\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00104R\u0016\u00107\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0016\u00109\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0016\u0010;\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010=\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>\u00a8\u0006F"
    }
    d2 = {
        "Lcom/inmobi/commons/core/configs/CrashConfig;",
        "Lcom/inmobi/commons/core/configs/Config;",
        "",
        "accountId",
        "<init>",
        "(Ljava/lang/String;)V",
        "",
        "setDefaultNetworkConfig",
        "()V",
        "getType",
        "()Ljava/lang/String;",
        "",
        "isValid",
        "()Z",
        "Lorg/json/JSONObject;",
        "toJson",
        "()Lorg/json/JSONObject;",
        "Lcom/inmobi/media/n9;",
        "getMobileConfig",
        "()Lcom/inmobi/media/n9;",
        "getWifiConfig",
        "",
        "getEventTTL",
        "()J",
        "getUrl",
        "",
        "getMaxEventsToPersist",
        "()I",
        "Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;",
        "getANRConfig",
        "()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;",
        "Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;",
        "getCrashConfig",
        "()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;",
        "Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;",
        "getCatchConfig",
        "()Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;",
        "Lcom/inmobi/media/d4;",
        "getEventConfig",
        "()Lcom/inmobi/media/d4;",
        "kotlin.jvm.PlatformType",
        "TAG",
        "Ljava/lang/String;",
        "url",
        "processingInterval",
        "J",
        "maxRetryCount",
        "I",
        "maxEventsToPersist",
        "eventTTL",
        "txLatency",
        "crashEnabled",
        "Z",
        "catchEnabled",
        "Lcom/inmobi/media/o9;",
        "networkType",
        "Lcom/inmobi/media/o9;",
        "anr",
        "Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;",
        "crashConfig",
        "Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;",
        "catchConfig",
        "Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;",
        "Companion",
        "ANRConfig",
        "AppExitReasonConfig",
        "CatchConfig",
        "com/inmobi/media/f3",
        "CrashIncidentConfig",
        "WatchDogConfig",
        "media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/inmobi/media/f3;

.field public static final DEFAULT_ANR_WATCHDOG_INTERVAL:J = 0x1194L

.field public static final DEFAULT_APP_EXIT_REASON_WAIT_INTERVAL:J = 0x3e8L

.field public static final DEFAULT_APP_EXIT_SAMPLING_PERCENT:D = 0.0

.field public static final DEFAULT_CATCH_ENABLED:Z = false

.field public static final DEFAULT_CATCH_SAMPLING_PERCENT:D = 0.0

.field public static final DEFAULT_CRASH_ENABLED:Z = true

.field public static final DEFAULT_CRASH_SAMPLING_PERCENT:D = 1.0

.field public static final DEFAULT_EVENT_TTL_SEC:J = 0x3f480L

.field public static final DEFAULT_INCOMPLETE_LOG_THRESHOLD_INTERVAL:J = 0x7530L

.field public static final DEFAULT_INGESTION_LATENCY_SEC:J = 0x15180L

.field public static final DEFAULT_MAX_BATCH_SIZE:I = 0x2

.field public static final DEFAULT_MAX_EVENTS_TO_PERSIST:I = 0x32

.field public static final DEFAULT_MAX_NO_OF_LINES:I = 0xc8

.field public static final DEFAULT_MAX_RETRIES:I = 0x3

.field public static final DEFAULT_MIN_BATCH_SIZE:I = 0x1

.field public static final DEFAULT_PROCESSING_INTERVAL_SEC:J = 0x3cL

.field public static final DEFAULT_RETRY_INTERVAL_SEC:J = 0xaL

.field public static final DEFAULT_URL:Ljava/lang/String; = "https://crash-metrics.sdk.inmobi.com/trace"

.field public static final DEFAULT_WATCHDOG_SAMPLING_PERCENT:D


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation runtime Lcom/inmobi/media/H4;
    .end annotation
.end field

.field private anr:Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

.field private catchConfig:Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;

.field private catchEnabled:Z

.field private crashConfig:Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

.field private crashEnabled:Z

.field private eventTTL:J

.field private maxEventsToPersist:I

.field private maxRetryCount:I

.field private networkType:Lcom/inmobi/media/o9;

.field private processingInterval:J

.field private txLatency:J

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inmobi/media/f3;

    invoke-direct {v0}, Lcom/inmobi/media/f3;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/configs/CrashConfig;->Companion:Lcom/inmobi/media/f3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/Config;-><init>(Ljava/lang/String;)V

    .line 31
    const-string p1, "CrashConfig"

    iput-object p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->TAG:Ljava/lang/String;

    .line 33
    const-string p1, "https://crash-metrics.sdk.inmobi.com/trace"

    iput-object p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->url:Ljava/lang/String;

    const-wide/16 v0, 0x3c

    .line 34
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->processingInterval:J

    const/4 p1, 0x3

    .line 35
    iput p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->maxRetryCount:I

    const/16 p1, 0x32

    .line 36
    iput p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->maxEventsToPersist:I

    const-wide/32 v0, 0x3f480

    .line 37
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->eventTTL:J

    const-wide/32 v0, 0x15180

    .line 38
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->txLatency:J

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->crashEnabled:Z

    .line 41
    new-instance p1, Lcom/inmobi/media/o9;

    invoke-direct {p1}, Lcom/inmobi/media/o9;-><init>()V

    iput-object p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->networkType:Lcom/inmobi/media/o9;

    .line 42
    new-instance p1, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    invoke-direct {p1}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;-><init>()V

    iput-object p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->anr:Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 43
    new-instance p1, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    invoke-direct {p1}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;-><init>()V

    iput-object p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->crashConfig:Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    .line 44
    new-instance p1, Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;

    invoke-direct {p1}, Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;-><init>()V

    iput-object p1, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->catchConfig:Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;

    .line 47
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/CrashConfig;->setDefaultNetworkConfig()V

    return-void
.end method

.method private final setDefaultNetworkConfig()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->networkType:Lcom/inmobi/media/o9;

    new-instance v1, Lcom/inmobi/media/n9;

    invoke-direct {v1}, Lcom/inmobi/media/n9;-><init>()V

    const-wide/16 v2, 0xa

    .line 2
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/n9;->a(J)V

    const/4 v4, 0x1

    .line 3
    invoke-virtual {v1, v4}, Lcom/inmobi/media/n9;->c(I)V

    const/4 v5, 0x2

    .line 4
    invoke-virtual {v1, v5}, Lcom/inmobi/media/n9;->b(I)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v6, "<set-?>"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object v1, v0, Lcom/inmobi/media/o9;->wifi:Lcom/inmobi/media/n9;

    .line 15
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->networkType:Lcom/inmobi/media/o9;

    new-instance v1, Lcom/inmobi/media/n9;

    invoke-direct {v1}, Lcom/inmobi/media/n9;-><init>()V

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/n9;->a(J)V

    .line 17
    invoke-virtual {v1, v4}, Lcom/inmobi/media/n9;->c(I)V

    .line 18
    invoke-virtual {v1, v5}, Lcom/inmobi/media/n9;->b(I)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object v1, v0, Lcom/inmobi/media/o9;->others:Lcom/inmobi/media/n9;

    return-void
.end method


# virtual methods
.method public final getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->anr:Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    return-object v0
.end method

.method public final getCatchConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->catchConfig:Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;

    return-object v0
.end method

.method public final getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->crashConfig:Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    return-object v0
.end method

.method public final getEventConfig()Lcom/inmobi/media/d4;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v17, Lcom/inmobi/media/d4;

    .line 2
    iget v2, v0, Lcom/inmobi/commons/core/configs/CrashConfig;->maxRetryCount:I

    iget-wide v3, v0, Lcom/inmobi/commons/core/configs/CrashConfig;->eventTTL:J

    iget-wide v5, v0, Lcom/inmobi/commons/core/configs/CrashConfig;->processingInterval:J

    iget-wide v7, v0, Lcom/inmobi/commons/core/configs/CrashConfig;->txLatency:J

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getWifiConfig()Lcom/inmobi/media/n9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/media/n9;->b()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getWifiConfig()Lcom/inmobi/media/n9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/media/n9;->a()I

    move-result v10

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getMobileConfig()Lcom/inmobi/media/n9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/media/n9;->b()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getMobileConfig()Lcom/inmobi/media/n9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/media/n9;->a()I

    move-result v12

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getWifiConfig()Lcom/inmobi/media/n9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/media/n9;->c()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getMobileConfig()Lcom/inmobi/media/n9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/media/n9;->c()J

    move-result-wide v15

    move-object/from16 v1, v17

    .line 6
    invoke-direct/range {v1 .. v16}, Lcom/inmobi/media/d4;-><init>(IJJJIIIIJJ)V

    return-object v17
.end method

.method public final getEventTTL()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->eventTTL:J

    return-wide v0
.end method

.method public final getMaxEventsToPersist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->maxEventsToPersist:I

    return v0
.end method

.method public final getMobileConfig()Lcom/inmobi/media/n9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->networkType:Lcom/inmobi/media/o9;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/o9;->others:Lcom/inmobi/media/n9;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "others"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "crashReporting"

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getWifiConfig()Lcom/inmobi/media/n9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->networkType:Lcom/inmobi/media/o9;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/o9;->wifi:Lcom/inmobi/media/n9;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "wifi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isValid()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/media/q4;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->txLatency:J

    iget-wide v4, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->processingInterval:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    iget-wide v4, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->eventTTL:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->networkType:Lcom/inmobi/media/o9;

    iget v2, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->maxEventsToPersist:I

    .line 10
    iget-object v3, v0, Lcom/inmobi/media/o9;->wifi:Lcom/inmobi/media/n9;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    const-string v3, "wifi"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    .line 12
    :goto_0
    invoke-virtual {v3, v2}, Lcom/inmobi/media/n9;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    iget-object v0, v0, Lcom/inmobi/media/o9;->others:Lcom/inmobi/media/n9;

    if-eqz v0, :cond_3

    move-object v4, v0

    goto :goto_1

    :cond_3
    const-string v0, "others"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 14
    :goto_1
    invoke-virtual {v4, v2}, Lcom/inmobi/media/n9;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->processingInterval:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    iget v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->maxRetryCount:I

    if-ltz v0, :cond_4

    .line 16
    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->txLatency:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->eventTTL:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    iget v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->maxEventsToPersist:I

    if-lez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_2
    return v1
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 2

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/CrashConfig;->Companion:Lcom/inmobi/media/f3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/inmobi/media/U5;

    invoke-direct {v0}, Lcom/inmobi/media/U5;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lcom/inmobi/media/U5;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    return-object v0
.end method
