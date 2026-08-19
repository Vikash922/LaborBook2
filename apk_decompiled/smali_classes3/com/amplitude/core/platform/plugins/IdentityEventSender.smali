.class public final Lcom/amplitude/core/platform/plugins/IdentityEventSender;
.super Ljava/lang/Object;
.source "IdentityEventSender.kt"

# interfaces
.implements Lcom/amplitude/core/platform/Plugin;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/amplitude/core/platform/plugins/IdentityEventSender;",
        "Lcom/amplitude/core/platform/Plugin;",
        "()V",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "getAmplitude",
        "()Lcom/amplitude/core/Amplitude;",
        "setAmplitude",
        "(Lcom/amplitude/core/Amplitude;)V",
        "eventBridge",
        "Lcom/amplitude/eventbridge/EventBridge;",
        "type",
        "Lcom/amplitude/core/platform/Plugin$Type;",
        "getType",
        "()Lcom/amplitude/core/platform/Plugin$Type;",
        "execute",
        "Lcom/amplitude/core/events/BaseEvent;",
        "event",
        "setup",
        "",
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

.field private eventBridge:Lcom/amplitude/eventbridge/EventBridge;

.field private final type:Lcom/amplitude/core/platform/Plugin$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/amplitude/core/platform/Plugin$Type;->Before:Lcom/amplitude/core/platform/Plugin$Type;

    iput-object v0, p0, Lcom/amplitude/core/platform/plugins/IdentityEventSender;->type:Lcom/amplitude/core/platform/Plugin$Type;

    return-void
.end method


# virtual methods
.method public execute(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getUserProperties()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/amplitude/core/platform/plugins/IdentityEventSender;->eventBridge:Lcom/amplitude/eventbridge/EventBridge;

    if-nez v0, :cond_0

    const-string v0, "eventBridge"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/amplitude/eventbridge/EventChannel;->IDENTIFY:Lcom/amplitude/eventbridge/EventChannel;

    invoke-static {p1}, Lcom/amplitude/core/platform/plugins/IdentityEventSenderKt;->toBridgeEvent(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/eventbridge/Event;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amplitude/eventbridge/EventBridge;->sendEvent(Lcom/amplitude/eventbridge/EventChannel;Lcom/amplitude/eventbridge/Event;)V

    :cond_1
    return-object p1
.end method

.method public getAmplitude()Lcom/amplitude/core/Amplitude;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amplitude/core/platform/plugins/IdentityEventSender;->amplitude:Lcom/amplitude/core/Amplitude;

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

    .line 12
    iget-object v0, p0, Lcom/amplitude/core/platform/plugins/IdentityEventSender;->type:Lcom/amplitude/core/platform/Plugin$Type;

    return-object v0
.end method

.method public setAmplitude(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/amplitude/core/platform/plugins/IdentityEventSender;->amplitude:Lcom/amplitude/core/Amplitude;

    return-void
.end method

.method public setup(Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-super {p0, p1}, Lcom/amplitude/core/platform/Plugin;->setup(Lcom/amplitude/core/Amplitude;)V

    .line 19
    sget-object v0, Lcom/amplitude/eventbridge/EventBridgeContainer;->Companion:Lcom/amplitude/eventbridge/EventBridgeContainer$Companion;

    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amplitude/core/Configuration;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amplitude/eventbridge/EventBridgeContainer$Companion;->getInstance(Ljava/lang/String;)Lcom/amplitude/eventbridge/EventBridgeContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amplitude/eventbridge/EventBridgeContainer;->getEventBridge()Lcom/amplitude/eventbridge/EventBridge;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/amplitude/core/platform/plugins/IdentityEventSender;->eventBridge:Lcom/amplitude/eventbridge/EventBridge;

    return-void
.end method
