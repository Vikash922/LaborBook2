.class public Lcom/amplitude/core/events/IngestionMetadata;
.super Ljava/lang/Object;
.source "IngestionMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/core/events/IngestionMetadata$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u001f\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\t\u001a\u00020\u0000J\r\u0010\n\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008\u000cR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/amplitude/core/events/IngestionMetadata;",
        "",
        "sourceName",
        "",
        "sourceVersion",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getSourceName",
        "()Ljava/lang/String;",
        "getSourceVersion",
        "clone",
        "toJSONObject",
        "Lorg/json/JSONObject;",
        "toJSONObject$core",
        "Companion",
        "core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AMP_INGESTION_METADATA_SOURCE_NAME:Ljava/lang/String; = "source_name"

.field public static final AMP_INGESTION_METADATA_SOURCE_VERSION:Ljava/lang/String; = "source_version"

.field public static final Companion:Lcom/amplitude/core/events/IngestionMetadata$Companion;


# instance fields
.field private final sourceName:Ljava/lang/String;

.field private final sourceVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/core/events/IngestionMetadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/core/events/IngestionMetadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/core/events/IngestionMetadata;->Companion:Lcom/amplitude/core/events/IngestionMetadata$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/amplitude/core/events/IngestionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/amplitude/core/events/IngestionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/amplitude/core/events/IngestionMetadata;->sourceName:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/amplitude/core/events/IngestionMetadata;->sourceVersion:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amplitude/core/events/IngestionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clone()Lcom/amplitude/core/events/IngestionMetadata;
    .locals 3

    .line 35
    new-instance v0, Lcom/amplitude/core/events/IngestionMetadata;

    iget-object v1, p0, Lcom/amplitude/core/events/IngestionMetadata;->sourceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amplitude/core/events/IngestionMetadata;->sourceVersion:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amplitude/core/events/IngestionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSourceName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amplitude/core/events/IngestionMetadata;->sourceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceVersion()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amplitude/core/events/IngestionMetadata;->sourceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final toJSONObject$core()Lorg/json/JSONObject;
    .locals 3

    .line 17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/core/events/IngestionMetadata;->sourceName:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    const-string/jumbo v1, "source_name"

    iget-object v2, p0, Lcom/amplitude/core/events/IngestionMetadata;->sourceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amplitude/core/events/IngestionMetadata;->sourceVersion:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    const-string/jumbo v1, "source_version"

    iget-object v2, p0, Lcom/amplitude/core/events/IngestionMetadata;->sourceVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 26
    :catch_0
    sget-object v1, Lcom/amplitude/common/jvm/ConsoleLogger;->Companion:Lcom/amplitude/common/jvm/ConsoleLogger$Companion;

    invoke-virtual {v1}, Lcom/amplitude/common/jvm/ConsoleLogger$Companion;->getLogger()Lcom/amplitude/common/jvm/ConsoleLogger;

    move-result-object v1

    const-string v2, "JSON Serialization of ingestion metadata object failed"

    invoke-virtual {v1, v2}, Lcom/amplitude/common/jvm/ConsoleLogger;->error(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0
.end method
