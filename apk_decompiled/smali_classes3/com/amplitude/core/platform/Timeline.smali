.class public Lcom/amplitude/core/platform/Timeline;
.super Ljava/lang/Object;
.source "Timeline.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timeline.kt\ncom/amplitude/core/platform/Timeline\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,67:1\n211#2,2:68\n211#2,2:70\n*S KotlinDebug\n*F\n+ 1 Timeline.kt\ncom/amplitude/core/platform/Timeline\n*L\n52#1:68,2\n62#1:70,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u001a\u0010\u0013\u001a\u00020\u00102\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00100\u0015J\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0017H\u0002J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001a\u001a\u00020\u000b2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0017H\u0016J\u000e\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/amplitude/core/platform/Timeline;",
        "",
        "()V",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "getAmplitude",
        "()Lcom/amplitude/core/Amplitude;",
        "setAmplitude",
        "(Lcom/amplitude/core/Amplitude;)V",
        "plugins",
        "",
        "Lcom/amplitude/core/platform/Plugin$Type;",
        "Lcom/amplitude/core/platform/Mediator;",
        "getPlugins$core",
        "()Ljava/util/Map;",
        "add",
        "",
        "plugin",
        "Lcom/amplitude/core/platform/Plugin;",
        "applyClosure",
        "closure",
        "Lkotlin/Function1;",
        "applyPlugins",
        "Lcom/amplitude/core/events/BaseEvent;",
        "mediator",
        "event",
        "type",
        "process",
        "incomingEvent",
        "remove",
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


# instance fields
.field public amplitude:Lcom/amplitude/core/Amplitude;

.field private final plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amplitude/core/platform/Plugin$Type;",
            "Lcom/amplitude/core/platform/Mediator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [Lkotlin/Pair;

    sget-object v1, Lcom/amplitude/core/platform/Plugin$Type;->Before:Lcom/amplitude/core/platform/Plugin$Type;

    new-instance v2, Lcom/amplitude/core/platform/Mediator;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/amplitude/core/platform/Mediator;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 9
    sget-object v1, Lcom/amplitude/core/platform/Plugin$Type;->Enrichment:Lcom/amplitude/core/platform/Plugin$Type;

    new-instance v2, Lcom/amplitude/core/platform/Mediator;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/amplitude/core/platform/Mediator;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 10
    sget-object v1, Lcom/amplitude/core/platform/Plugin$Type;->Destination:Lcom/amplitude/core/platform/Plugin$Type;

    new-instance v2, Lcom/amplitude/core/platform/Mediator;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/amplitude/core/platform/Mediator;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 11
    sget-object v1, Lcom/amplitude/core/platform/Plugin$Type;->Utility:Lcom/amplitude/core/platform/Plugin$Type;

    new-instance v2, Lcom/amplitude/core/platform/Mediator;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/amplitude/core/platform/Mediator;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 7
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/platform/Timeline;->plugins:Ljava/util/Map;

    return-void
.end method

.method private final applyPlugins(Lcom/amplitude/core/platform/Mediator;Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;
    .locals 0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1, p2}, Lcom/amplitude/core/platform/Mediator;->execute(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;

    move-result-object p1

    :goto_0
    move-object p2, p1

    :goto_1
    return-object p2
.end method


# virtual methods
.method public final add(Lcom/amplitude/core/platform/Plugin;)V
    .locals 2

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/amplitude/core/platform/Timeline;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amplitude/core/platform/Plugin;->setup(Lcom/amplitude/core/Amplitude;)V

    .line 32
    iget-object v0, p0, Lcom/amplitude/core/platform/Timeline;->plugins:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amplitude/core/platform/Plugin;->getType()Lcom/amplitude/core/platform/Plugin$Type;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amplitude/core/platform/Mediator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amplitude/core/platform/Mediator;->add(Lcom/amplitude/core/platform/Plugin;)Z

    :goto_0
    return-void
.end method

.method public final applyClosure(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amplitude/core/platform/Plugin;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "closure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/amplitude/core/platform/Timeline;->plugins:Ljava/util/Map;

    .line 70
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amplitude/core/platform/Mediator;

    .line 63
    invoke-virtual {v1, p1}, Lcom/amplitude/core/platform/Mediator;->applyClosure(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final applyPlugins(Lcom/amplitude/core/platform/Plugin$Type;Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/amplitude/core/platform/Timeline;->plugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amplitude/core/platform/Mediator;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/amplitude/core/platform/Timeline;->applyPlugins(Lcom/amplitude/core/platform/Mediator;Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;

    move-result-object p1

    return-object p1
.end method

.method public final getAmplitude()Lcom/amplitude/core/Amplitude;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amplitude/core/platform/Timeline;->amplitude:Lcom/amplitude/core/Amplitude;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "amplitude"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPlugins$core()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amplitude/core/platform/Plugin$Type;",
            "Lcom/amplitude/core/platform/Mediator;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/amplitude/core/platform/Timeline;->plugins:Ljava/util/Map;

    return-object v0
.end method

.method public process(Lcom/amplitude/core/events/BaseEvent;)V
    .locals 1

    const-string v0, "incomingEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/amplitude/core/platform/Timeline;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getOptOut()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 24
    :cond_0
    sget-object v0, Lcom/amplitude/core/platform/Plugin$Type;->Before:Lcom/amplitude/core/platform/Plugin$Type;

    invoke-virtual {p0, v0, p1}, Lcom/amplitude/core/platform/Timeline;->applyPlugins(Lcom/amplitude/core/platform/Plugin$Type;Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;

    move-result-object p1

    .line 25
    sget-object v0, Lcom/amplitude/core/platform/Plugin$Type;->Enrichment:Lcom/amplitude/core/platform/Plugin$Type;

    invoke-virtual {p0, v0, p1}, Lcom/amplitude/core/platform/Timeline;->applyPlugins(Lcom/amplitude/core/platform/Plugin$Type;Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;

    move-result-object p1

    .line 27
    sget-object v0, Lcom/amplitude/core/platform/Plugin$Type;->Destination:Lcom/amplitude/core/platform/Plugin$Type;

    invoke-virtual {p0, v0, p1}, Lcom/amplitude/core/platform/Timeline;->applyPlugins(Lcom/amplitude/core/platform/Plugin$Type;Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;

    return-void
.end method

.method public final remove(Lcom/amplitude/core/platform/Plugin;)V
    .locals 2

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/amplitude/core/platform/Timeline;->plugins:Ljava/util/Map;

    .line 68
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amplitude/core/platform/Mediator;

    .line 53
    invoke-virtual {v1, p1}, Lcom/amplitude/core/platform/Mediator;->remove(Lcom/amplitude/core/platform/Plugin;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-interface {p1}, Lcom/amplitude/core/platform/Plugin;->teardown()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setAmplitude(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/amplitude/core/platform/Timeline;->amplitude:Lcom/amplitude/core/Amplitude;

    return-void
.end method
