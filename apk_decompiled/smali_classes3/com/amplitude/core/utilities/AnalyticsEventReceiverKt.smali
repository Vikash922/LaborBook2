.class public final Lcom/amplitude/core/utilities/AnalyticsEventReceiverKt;
.super Ljava/lang/Object;
.source "AnalyticsEventReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnalyticsEventReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyticsEventReceiver.kt\ncom/amplitude/core/utilities/AnalyticsEventReceiverKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,25:1\n1#2:26\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toBaseEvent",
        "Lcom/amplitude/core/events/BaseEvent;",
        "Lcom/amplitude/eventbridge/Event;",
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
.method public static final toBaseEvent(Lcom/amplitude/eventbridge/Event;)Lcom/amplitude/core/events/BaseEvent;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/amplitude/core/events/BaseEvent;

    invoke-direct {v0}, Lcom/amplitude/core/events/BaseEvent;-><init>()V

    .line 18
    invoke-virtual {p0}, Lcom/amplitude/eventbridge/Event;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setEventType(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/amplitude/eventbridge/Event;->getEventProperties()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setEventProperties(Ljava/util/Map;)V

    .line 20
    invoke-virtual {p0}, Lcom/amplitude/eventbridge/Event;->getUserProperties()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setUserProperties(Ljava/util/Map;)V

    .line 21
    invoke-virtual {p0}, Lcom/amplitude/eventbridge/Event;->getGroups()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setGroups(Ljava/util/Map;)V

    .line 22
    invoke-virtual {p0}, Lcom/amplitude/eventbridge/Event;->getGroupProperties()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Lcom/amplitude/core/events/BaseEvent;->setGroupProperties(Ljava/util/Map;)V

    return-object v0
.end method
