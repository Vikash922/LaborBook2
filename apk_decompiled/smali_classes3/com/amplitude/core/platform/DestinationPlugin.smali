.class public abstract Lcom/amplitude/core/platform/DestinationPlugin;
.super Ljava/lang/Object;
.source "Plugin.kt"

# interfaces
.implements Lcom/amplitude/core/platform/EventPlugin;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aJ\u000e\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/amplitude/core/platform/DestinationPlugin;",
        "Lcom/amplitude/core/platform/EventPlugin;",
        "()V",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "getAmplitude",
        "()Lcom/amplitude/core/Amplitude;",
        "setAmplitude",
        "(Lcom/amplitude/core/Amplitude;)V",
        "enabled",
        "",
        "getEnabled$core",
        "()Z",
        "setEnabled$core",
        "(Z)V",
        "timeline",
        "Lcom/amplitude/core/platform/Timeline;",
        "type",
        "Lcom/amplitude/core/platform/Plugin$Type;",
        "getType",
        "()Lcom/amplitude/core/platform/Plugin$Type;",
        "add",
        "",
        "plugin",
        "Lcom/amplitude/core/platform/Plugin;",
        "execute",
        "Lcom/amplitude/core/events/BaseEvent;",
        "event",
        "process",
        "remove",
        "setup",
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

.field private enabled:Z

.field private final timeline:Lcom/amplitude/core/platform/Timeline;

.field private final type:Lcom/amplitude/core/platform/Plugin$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/amplitude/core/platform/Plugin$Type;->Destination:Lcom/amplitude/core/platform/Plugin$Type;

    iput-object v0, p0, Lcom/amplitude/core/platform/DestinationPlugin;->type:Lcom/amplitude/core/platform/Plugin$Type;

    .line 56
    new-instance v0, Lcom/amplitude/core/platform/Timeline;

    invoke-direct {v0}, Lcom/amplitude/core/platform/Timeline;-><init>()V

    iput-object v0, p0, Lcom/amplitude/core/platform/DestinationPlugin;->timeline:Lcom/amplitude/core/platform/Timeline;

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/amplitude/core/platform/DestinationPlugin;->enabled:Z

    return-void
.end method


# virtual methods
.method public final add(Lcom/amplitude/core/platform/Plugin;)V
    .locals 1

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/amplitude/core/platform/DestinationPlugin;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amplitude/core/platform/Plugin;->setAmplitude(Lcom/amplitude/core/Amplitude;)V

    .line 67
    iget-object v0, p0, Lcom/amplitude/core/platform/DestinationPlugin;->timeline:Lcom/amplitude/core/platform/Timeline;

    invoke-virtual {v0, p1}, Lcom/amplitude/core/platform/Timeline;->add(Lcom/amplitude/core/platform/Plugin;)V

    return-void
.end method

.method public final execute(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAmplitude()Lcom/amplitude/core/Amplitude;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amplitude/core/platform/DestinationPlugin;->amplitude:Lcom/amplitude/core/Amplitude;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "amplitude"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEnabled$core()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/amplitude/core/platform/DestinationPlugin;->enabled:Z

    return v0
.end method

.method public getType()Lcom/amplitude/core/platform/Plugin$Type;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amplitude/core/platform/DestinationPlugin;->type:Lcom/amplitude/core/platform/Plugin$Type;

    return-object v0
.end method

.method public final process(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;
    .locals 3

    .line 76
    iget-boolean v0, p0, Lcom/amplitude/core/platform/DestinationPlugin;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/amplitude/core/platform/DestinationPlugin;->timeline:Lcom/amplitude/core/platform/Timeline;

    sget-object v2, Lcom/amplitude/core/platform/Plugin$Type;->Before:Lcom/amplitude/core/platform/Plugin$Type;

    invoke-virtual {v0, v2, p1}, Lcom/amplitude/core/platform/Timeline;->applyPlugins(Lcom/amplitude/core/platform/Plugin$Type;Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/amplitude/core/platform/DestinationPlugin;->timeline:Lcom/amplitude/core/platform/Timeline;

    sget-object v2, Lcom/amplitude/core/platform/Plugin$Type;->Enrichment:Lcom/amplitude/core/platform/Plugin$Type;

    invoke-virtual {v0, v2, p1}, Lcom/amplitude/core/platform/Timeline;->applyPlugins(Lcom/amplitude/core/platform/Plugin$Type;Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    instance-of v0, p1, Lcom/amplitude/core/events/IdentifyEvent;

    if-eqz v0, :cond_2

    .line 85
    check-cast p1, Lcom/amplitude/core/events/IdentifyEvent;

    invoke-virtual {p0, p1}, Lcom/amplitude/core/platform/DestinationPlugin;->identify(Lcom/amplitude/core/events/IdentifyEvent;)Lcom/amplitude/core/events/IdentifyEvent;

    move-result-object p1

    check-cast p1, Lcom/amplitude/core/events/BaseEvent;

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 87
    :cond_2
    instance-of v0, p1, Lcom/amplitude/core/events/GroupIdentifyEvent;

    if-eqz v0, :cond_3

    .line 88
    check-cast p1, Lcom/amplitude/core/events/GroupIdentifyEvent;

    invoke-virtual {p0, p1}, Lcom/amplitude/core/platform/DestinationPlugin;->groupIdentify(Lcom/amplitude/core/events/GroupIdentifyEvent;)Lcom/amplitude/core/events/GroupIdentifyEvent;

    move-result-object p1

    check-cast p1, Lcom/amplitude/core/events/BaseEvent;

    goto :goto_0

    .line 90
    :cond_3
    instance-of v0, p1, Lcom/amplitude/core/events/RevenueEvent;

    if-eqz v0, :cond_4

    .line 91
    check-cast p1, Lcom/amplitude/core/events/RevenueEvent;

    invoke-virtual {p0, p1}, Lcom/amplitude/core/platform/DestinationPlugin;->revenue(Lcom/amplitude/core/events/RevenueEvent;)Lcom/amplitude/core/events/RevenueEvent;

    move-result-object p1

    check-cast p1, Lcom/amplitude/core/events/BaseEvent;

    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {p0, p1}, Lcom/amplitude/core/platform/DestinationPlugin;->track(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-object v1
.end method

.method public final remove(Lcom/amplitude/core/platform/Plugin;)V
    .locals 1

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/amplitude/core/platform/DestinationPlugin;->timeline:Lcom/amplitude/core/platform/Timeline;

    invoke-virtual {v0, p1}, Lcom/amplitude/core/platform/Timeline;->remove(Lcom/amplitude/core/platform/Plugin;)V

    return-void
.end method

.method public setAmplitude(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/amplitude/core/platform/DestinationPlugin;->amplitude:Lcom/amplitude/core/Amplitude;

    return-void
.end method

.method public final setEnabled$core(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/amplitude/core/platform/DestinationPlugin;->enabled:Z

    return-void
.end method

.method public setup(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1}, Lcom/amplitude/core/platform/EventPlugin;->setup(Lcom/amplitude/core/Amplitude;)V

    .line 62
    iget-object v0, p0, Lcom/amplitude/core/platform/DestinationPlugin;->timeline:Lcom/amplitude/core/platform/Timeline;

    invoke-virtual {v0, p1}, Lcom/amplitude/core/platform/Timeline;->setAmplitude(Lcom/amplitude/core/Amplitude;)V

    return-void
.end method
