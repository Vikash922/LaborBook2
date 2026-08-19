.class public final Lcom/inmobi/commons/core/configs/RootConfig;
.super Lcom/inmobi/commons/core/configs/Config;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;,
        Lcom/inmobi/commons/core/configs/RootConfig$GDPR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u0000 22\u00020\u0001:\u0003345B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0000H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\r\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\r\u0010\u0019\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J\r\u0010\u001a\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u0010J\r\u0010\u001b\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u0010J\u0015\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u000bR\u001c\u0010 \u001a\n \u001f*\u0004\u0018\u00010\u00020\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010\"\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010$\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010#R\u0016\u0010%\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010#R\u0018\u0010\'\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u001e\u0010+\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u0010-\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u001d\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00020)8\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u0010,\u001a\u0004\u00080\u00101\u00a8\u00066"
    }
    d2 = {
        "Lcom/inmobi/commons/core/configs/RootConfig;",
        "Lcom/inmobi/commons/core/configs/Config;",
        "",
        "accountId",
        "<init>",
        "(Ljava/lang/String;)V",
        "config",
        "",
        "isSameAs",
        "(Lcom/inmobi/commons/core/configs/RootConfig;)Z",
        "getType",
        "()Ljava/lang/String;",
        "Lorg/json/JSONObject;",
        "toJson",
        "()Lorg/json/JSONObject;",
        "isValid",
        "()Z",
        "type",
        "",
        "getExpiryForType",
        "(Ljava/lang/String;)J",
        "",
        "getMaxRetries",
        "()I",
        "getRetryInterval",
        "getWaitTime",
        "isMonetizationDisabled",
        "shouldTransmitRequest",
        "getUrlForType",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "getFallbackUrlForRootType",
        "kotlin.jvm.PlatformType",
        "TAG",
        "Ljava/lang/String;",
        "maxRetries",
        "I",
        "retryInterval",
        "waitTime",
        "Lcom/inmobi/commons/core/configs/RootConfig$GDPR;",
        "gdpr",
        "Lcom/inmobi/commons/core/configs/RootConfig$GDPR;",
        "",
        "Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;",
        "components",
        "Ljava/util/List;",
        "monetizationDisabled",
        "Z",
        "ipAddrTPSupport",
        "getIpAddrTPSupport",
        "()Ljava/util/List;",
        "Companion",
        "com/inmobi/commons/core/configs/e",
        "ComponentConfig",
        "GDPR",
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
.field public static final Companion:Lcom/inmobi/commons/core/configs/e;

.field public static final DEFAULT_EXPIRY:J = 0x15180L

.field public static final DEFAULT_FALLBACK_URL:Ljava/lang/String; = "https://config.inmobi.com/config-server/v1/config/secure.cfg"

.field public static final DEFAULT_MAX_RETRIES:I = 0x3

.field public static final DEFAULT_RETRY_INTERVAL:I = 0x3c

.field public static final DEFAULT_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_WAIT_TIME:I = 0x3

.field public static final IP_ADDRESS_TP_SUPPORT_KEY:Ljava/lang/String; = "ipAddrTPSupport"

.field private static final sAcquisitionLock:Ljava/lang/Object;


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation runtime Lcom/inmobi/media/H4;
    .end annotation
.end field

.field private components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;",
            ">;"
        }
    .end annotation
.end field

.field private gdpr:Lcom/inmobi/commons/core/configs/RootConfig$GDPR;
    .annotation runtime Lcom/inmobi/media/q9;
    .end annotation
.end field

.field private final ipAddrTPSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxRetries:I

.field private monetizationDisabled:Z

.field private retryInterval:I

.field private waitTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inmobi/commons/core/configs/e;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/e;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->Companion:Lcom/inmobi/commons/core/configs/e;

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->sAcquisitionLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/Config;-><init>(Ljava/lang/String;)V

    .line 35
    const-string p1, "RootConfig"

    iput-object p1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    .line 37
    iput p1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->maxRetries:I

    const/16 v0, 0x3c

    .line 38
    iput v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->retryInterval:I

    .line 39
    iput p1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->waitTime:I

    .line 42
    new-instance p1, Lcom/inmobi/commons/core/configs/RootConfig$GDPR;

    invoke-direct {p1}, Lcom/inmobi/commons/core/configs/RootConfig$GDPR;-><init>()V

    iput-object p1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->gdpr:Lcom/inmobi/commons/core/configs/RootConfig$GDPR;

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->components:Ljava/util/List;

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->ipAddrTPSupport:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getSAcquisitionLock$cp()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->sAcquisitionLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final getExpiryForType(Ljava/lang/String;)J
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->sAcquisitionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->components:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 115
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;

    .line 116
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;->getExpiry()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    .line 120
    :cond_1
    monitor-exit v0

    const-wide/32 v0, 0x15180

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getFallbackUrlForRootType()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->sAcquisitionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->components:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;

    .line 75
    const-string v3, "root"

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;->getFallbackUrl()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 79
    :cond_1
    :try_start_1
    const-string v1, "https://config.inmobi.com/config-server/v1/config/secure.cfg"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getIpAddrTPSupport()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->ipAddrTPSupport:Ljava/util/List;

    return-object v0
.end method

.method public final getMaxRetries()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->maxRetries:I

    return v0
.end method

.method public final getRetryInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->retryInterval:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "root"

    return-object v0
.end method

.method public final getUrlForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->sAcquisitionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->components:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;

    .line 85
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;->getUrl()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    .line 90
    :cond_1
    :try_start_1
    const-string p1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getWaitTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->waitTime:I

    return v0
.end method

.method public final isMonetizationDisabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->monetizationDisabled:Z

    return v0
.end method

.method public final isSameAs(Lcom/inmobi/commons/core/configs/RootConfig;)Z
    .locals 5

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    iget v0, p1, Lcom/inmobi/commons/core/configs/RootConfig;->maxRetries:I

    iget v2, p0, Lcom/inmobi/commons/core/configs/RootConfig;->maxRetries:I

    if-ne v0, v2, :cond_2

    .line 4
    iget v0, p1, Lcom/inmobi/commons/core/configs/RootConfig;->retryInterval:I

    iget v2, p0, Lcom/inmobi/commons/core/configs/RootConfig;->retryInterval:I

    if-ne v0, v2, :cond_2

    iget v0, p1, Lcom/inmobi/commons/core/configs/RootConfig;->waitTime:I

    iget v2, p0, Lcom/inmobi/commons/core/configs/RootConfig;->waitTime:I

    if-ne v0, v2, :cond_2

    .line 5
    iget-boolean p1, p1, Lcom/inmobi/commons/core/configs/RootConfig;->monetizationDisabled:Z

    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->monetizationDisabled:Z

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isValid()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->gdpr:Lcom/inmobi/commons/core/configs/RootConfig$GDPR;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    iget v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->maxRetries:I

    const/4 v1, 0x0

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->retryInterval:I

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->waitTime:I

    if-gez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->sAcquisitionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/RootConfig;->components:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 129
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;

    .line 130
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;->isValid()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 131
    monitor-exit v0

    return v1

    .line 252
    :cond_2
    :try_start_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    .line 253
    monitor-exit v0

    return v1

    .line 254
    :cond_4
    :try_start_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    monitor-exit v0

    .line 262
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->gdpr:Lcom/inmobi/commons/core/configs/RootConfig$GDPR;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/RootConfig$GDPR;->isValid()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    move v1, v2

    :cond_5
    return v1

    :catchall_0
    move-exception v1

    .line 263
    monitor-exit v0

    throw v1

    :cond_6
    :goto_1
    return v1
.end method

.method public final shouldTransmitRequest()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->gdpr:Lcom/inmobi/commons/core/configs/RootConfig$GDPR;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/RootConfig$GDPR;->getTransmitRequest()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 6

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->Companion:Lcom/inmobi/commons/core/configs/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/inmobi/media/U5;

    invoke-direct {v0}, Lcom/inmobi/media/U5;-><init>()V

    .line 3
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "components"

    const-class v3, Lcom/inmobi/commons/core/configs/RootConfig;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 4
    new-instance v2, Lcom/inmobi/media/v6;

    new-instance v4, Lcom/inmobi/commons/core/configs/d;

    invoke-direct {v4}, Lcom/inmobi/commons/core/configs/d;-><init>()V

    const-class v5, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;

    invoke-direct {v2, v4, v5}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "ipAddrTPSupport"

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 14
    new-instance v2, Lcom/inmobi/media/v6;

    new-instance v3, Lcom/inmobi/media/sb;

    invoke-direct {v3}, Lcom/inmobi/media/sb;-><init>()V

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Lcom/inmobi/media/U5;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    return-object v0
.end method
