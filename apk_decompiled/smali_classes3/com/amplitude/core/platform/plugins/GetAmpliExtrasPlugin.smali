.class public final Lcom/amplitude/core/platform/plugins/GetAmpliExtrasPlugin;
.super Ljava/lang/Object;
.source "GetAmpliExtrasPlugin.kt"

# interfaces
.implements Lcom/amplitude/core/platform/Plugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/core/platform/plugins/GetAmpliExtrasPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/amplitude/core/platform/plugins/GetAmpliExtrasPlugin;",
        "Lcom/amplitude/core/platform/Plugin;",
        "()V",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "getAmplitude",
        "()Lcom/amplitude/core/Amplitude;",
        "setAmplitude",
        "(Lcom/amplitude/core/Amplitude;)V",
        "type",
        "Lcom/amplitude/core/platform/Plugin$Type;",
        "getType",
        "()Lcom/amplitude/core/platform/Plugin$Type;",
        "execute",
        "Lcom/amplitude/core/events/BaseEvent;",
        "event",
        "setup",
        "",
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
.field public static final AMP_AMPLI:Ljava/lang/String; = "ampli"

.field public static final Companion:Lcom/amplitude/core/platform/plugins/GetAmpliExtrasPlugin$Companion;


# instance fields
.field public amplitude:Lcom/amplitude/core/Amplitude;

.field private final type:Lcom/amplitude/core/platform/Plugin$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/core/platform/plugins/GetAmpliExtrasPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/core/platform/plugins/GetAmpliExtrasPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/core/platform/plugins/GetAmpliExtrasPlugin;->Companion:Lcom/amplitude/core/platform/plugins/GetAmpliExtrasPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/amplitude/core/platform/Plugin$Type;->Enrichment:Lcom/amplitude/core/platform/Plugin$Type;

    iput-object v0, p0, Lcom/amplitude/core/platform/plugins/GetAmpliExtrasPlugin;->type:Lcom/amplitude/core/platform/Plugin$Type;

    return-void
.end method


# virtual methods
.method public execute(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getExtra()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "ampli"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    .line 22
    :cond_1
    :try_start_0
    check-cast v0, Ljava/util/Map;

    const-string v1, "ingestionMetadata"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/util/Map;

    .line 23
    new-instance v1, Lcom/amplitude/core/events/IngestionMetadata;

    .line 24
    const-string/jumbo v2, "sourceName"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 25
    const-string/jumbo v3, "sourceVersion"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    invoke-direct {v1, v2, v0}, Lcom/amplitude/core/events/IngestionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, v1}, Lcom/amplitude/core/events/BaseEvent;->setIngestionMetadata(Lcom/amplitude/core/events/IngestionMetadata;)V

    return-object p1

    .line 22
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p1
.end method

.method public getAmplitude()Lcom/amplitude/core/Amplitude;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amplitude/core/platform/plugins/GetAmpliExtrasPlugin;->amplitude:Lcom/amplitude/core/Amplitude;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "amplitude"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/amplitude/core/platform/Plugin$Type;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amplitude/core/platform/plugins/GetAmpliExtrasPlugin;->type:Lcom/amplitude/core/platform/Plugin$Type;

    return-object v0
.end method

.method public setAmplitude(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/amplitude/core/platform/plugins/GetAmpliExtrasPlugin;->amplitude:Lcom/amplitude/core/Amplitude;

    return-void
.end method

.method public setup(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-super {p0, p1}, Lcom/amplitude/core/platform/Plugin;->setup(Lcom/amplitude/core/Amplitude;)V

    return-void
.end method
