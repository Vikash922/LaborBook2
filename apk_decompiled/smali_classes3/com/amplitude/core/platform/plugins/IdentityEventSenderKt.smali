.class public final Lcom/amplitude/core/platform/plugins/IdentityEventSenderKt;
.super Ljava/lang/Object;
.source "IdentityEventSender.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toBridgeEvent",
        "Lcom/amplitude/eventbridge/Event;",
        "Lcom/amplitude/core/events/BaseEvent;",
        "core"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toBridgeEvent(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/eventbridge/Event;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/amplitude/eventbridge/Event;

    .line 32
    invoke-virtual {p0}, Lcom/amplitude/core/events/BaseEvent;->getEventType()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {p0}, Lcom/amplitude/core/events/BaseEvent;->getEventProperties()Ljava/util/Map;

    move-result-object v3

    .line 34
    invoke-virtual {p0}, Lcom/amplitude/core/events/BaseEvent;->getUserProperties()Ljava/util/Map;

    move-result-object v4

    .line 35
    invoke-virtual {p0}, Lcom/amplitude/core/events/BaseEvent;->getGroups()Ljava/util/Map;

    move-result-object v5

    .line 36
    invoke-virtual {p0}, Lcom/amplitude/core/events/BaseEvent;->getGroupProperties()Ljava/util/Map;

    move-result-object v6

    move-object v1, v0

    .line 31
    invoke-direct/range {v1 .. v6}, Lcom/amplitude/eventbridge/Event;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method
