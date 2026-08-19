.class public Lcom/amplitude/core/events/Plan;
.super Ljava/lang/Object;
.source "Plan.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/core/events/Plan$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B7\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\r\u001a\u00020\u0000J\r\u0010\u000e\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0010R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/amplitude/core/events/Plan;",
        "",
        "branch",
        "",
        "source",
        "version",
        "versionId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getBranch",
        "()Ljava/lang/String;",
        "getSource",
        "getVersion",
        "getVersionId",
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
.field public static final AMP_PLAN_BRANCH:Ljava/lang/String; = "branch"

.field public static final AMP_PLAN_SOURCE:Ljava/lang/String; = "source"

.field public static final AMP_PLAN_VERSION:Ljava/lang/String; = "version"

.field public static final AMP_PLAN_VERSION_ID:Ljava/lang/String; = "versionId"

.field public static final Companion:Lcom/amplitude/core/events/Plan$Companion;


# instance fields
.field private final branch:Ljava/lang/String;

.field private final source:Ljava/lang/String;

.field private final version:Ljava/lang/String;

.field private final versionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/core/events/Plan$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/core/events/Plan$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/core/events/Plan;->Companion:Lcom/amplitude/core/events/Plan$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amplitude/core/events/Plan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amplitude/core/events/Plan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/amplitude/core/events/Plan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/amplitude/core/events/Plan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/amplitude/core/events/Plan;->branch:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/amplitude/core/events/Plan;->source:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/amplitude/core/events/Plan;->version:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/amplitude/core/events/Plan;->versionId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amplitude/core/events/Plan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clone()Lcom/amplitude/core/events/Plan;
    .locals 5

    .line 43
    new-instance v0, Lcom/amplitude/core/events/Plan;

    iget-object v1, p0, Lcom/amplitude/core/events/Plan;->branch:Ljava/lang/String;

    iget-object v2, p0, Lcom/amplitude/core/events/Plan;->source:Ljava/lang/String;

    iget-object v3, p0, Lcom/amplitude/core/events/Plan;->version:Ljava/lang/String;

    iget-object v4, p0, Lcom/amplitude/core/events/Plan;->versionId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amplitude/core/events/Plan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getBranch()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amplitude/core/events/Plan;->branch:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amplitude/core/events/Plan;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amplitude/core/events/Plan;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amplitude/core/events/Plan;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public final toJSONObject$core()Lorg/json/JSONObject;
    .locals 3

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/core/events/Plan;->branch:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    const-string v1, "branch"

    iget-object v2, p0, Lcom/amplitude/core/events/Plan;->branch:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amplitude/core/events/Plan;->source:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 25
    :cond_2
    const-string/jumbo v1, "source"

    iget-object v2, p0, Lcom/amplitude/core/events/Plan;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/amplitude/core/events/Plan;->version:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 28
    :cond_4
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/amplitude/core/events/Plan;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/amplitude/core/events/Plan;->versionId:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 31
    :cond_6
    const-string/jumbo v1, "versionId"

    iget-object v2, p0, Lcom/amplitude/core/events/Plan;->versionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 34
    :catch_0
    sget-object v1, Lcom/amplitude/common/jvm/ConsoleLogger;->Companion:Lcom/amplitude/common/jvm/ConsoleLogger$Companion;

    invoke-virtual {v1}, Lcom/amplitude/common/jvm/ConsoleLogger$Companion;->getLogger()Lcom/amplitude/common/jvm/ConsoleLogger;

    move-result-object v1

    const-string v2, "JSON Serialization of tacking plan object failed"

    invoke-virtual {v1, v2}, Lcom/amplitude/common/jvm/ConsoleLogger;->error(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-object v0
.end method
