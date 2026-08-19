.class public final Lcom/amplitude/core/utilities/BadRequestResponse;
.super Ljava/lang/Object;
.source "Response.kt"

# interfaces
.implements Lcom/amplitude/core/utilities/Response;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001eJ\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR \u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR \u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR \u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\r\"\u0004\u0008\u0018\u0010\u000fR\u0014\u0010\u0019\u001a\u00020\u001aX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006#"
    }
    d2 = {
        "Lcom/amplitude/core/utilities/BadRequestResponse;",
        "Lcom/amplitude/core/utilities/Response;",
        "response",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "error",
        "",
        "getError",
        "()Ljava/lang/String;",
        "eventsWithInvalidFields",
        "",
        "",
        "getEventsWithInvalidFields",
        "()Ljava/util/Set;",
        "setEventsWithInvalidFields",
        "(Ljava/util/Set;)V",
        "eventsWithMissingFields",
        "getEventsWithMissingFields",
        "setEventsWithMissingFields",
        "silencedDevices",
        "getSilencedDevices",
        "setSilencedDevices",
        "silencedEvents",
        "getSilencedEvents",
        "setSilencedEvents",
        "status",
        "Lcom/amplitude/core/utilities/HttpStatus;",
        "getStatus",
        "()Lcom/amplitude/core/utilities/HttpStatus;",
        "getEventIndicesToDrop",
        "",
        "isEventSilenced",
        "",
        "event",
        "Lcom/amplitude/core/events/BaseEvent;",
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
.field private final error:Ljava/lang/String;

.field private eventsWithInvalidFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private eventsWithMissingFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private silencedDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private silencedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final status:Lcom/amplitude/core/utilities/HttpStatus;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/amplitude/core/utilities/HttpStatus;->BAD_REQUEST:Lcom/amplitude/core/utilities/HttpStatus;

    iput-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->status:Lcom/amplitude/core/utilities/HttpStatus;

    .line 56
    const-string v0, "error"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/amplitude/core/utilities/JSONUtilKt;->getStringWithDefault(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->error:Ljava/lang/String;

    .line 57
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->eventsWithInvalidFields:Ljava/util/Set;

    .line 58
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->eventsWithMissingFields:Ljava/util/Set;

    .line 59
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->silencedEvents:Ljava/util/Set;

    .line 60
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->silencedDevices:Ljava/util/Set;

    .line 63
    const-string v0, "events_with_invalid_fields"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response.getJSONObject(\"\u2026nts_with_invalid_fields\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amplitude/core/utilities/JSONUtilKt;->collectIndices(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->eventsWithInvalidFields:Ljava/util/Set;

    .line 67
    :cond_0
    const-string v0, "events_with_missing_fields"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response.getJSONObject(\"\u2026nts_with_missing_fields\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amplitude/core/utilities/JSONUtilKt;->collectIndices(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->eventsWithMissingFields:Ljava/util/Set;

    .line 71
    :cond_1
    const-string/jumbo v0, "silenced_devices"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "response.getJSONArray(\"silenced_devices\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->silencedDevices:Ljava/util/Set;

    .line 74
    :cond_2
    const-string/jumbo v0, "silenced_events"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "response.getJSONArray(\"silenced_events\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amplitude/core/utilities/JSONUtilKt;->toIntArray(Lorg/json/JSONArray;)[I

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toSet([I)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->silencedEvents:Ljava/util/Set;

    :cond_3
    return-void
.end method


# virtual methods
.method public final getError()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventIndicesToDrop()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 81
    iget-object v1, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->eventsWithInvalidFields:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget-object v1, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->eventsWithMissingFields:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 83
    iget-object v1, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->silencedEvents:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getEventsWithInvalidFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->eventsWithInvalidFields:Ljava/util/Set;

    return-object v0
.end method

.method public final getEventsWithMissingFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->eventsWithMissingFields:Ljava/util/Set;

    return-object v0
.end method

.method public final getSilencedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->silencedDevices:Ljava/util/Set;

    return-object v0
.end method

.method public final getSilencedEvents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->silencedEvents:Ljava/util/Set;

    return-object v0
.end method

.method public getStatus()Lcom/amplitude/core/utilities/HttpStatus;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->status:Lcom/amplitude/core/utilities/HttpStatus;

    return-object v0
.end method

.method public final isEventSilenced(Lcom/amplitude/core/events/BaseEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 90
    move-object p1, p0

    check-cast p1, Lcom/amplitude/core/utilities/BadRequestResponse;

    const/4 p1, 0x0

    return p1

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/BadRequestResponse;->getSilencedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final setEventsWithInvalidFields(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->eventsWithInvalidFields:Ljava/util/Set;

    return-void
.end method

.method public final setEventsWithMissingFields(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->eventsWithMissingFields:Ljava/util/Set;

    return-void
.end method

.method public final setSilencedDevices(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->silencedDevices:Ljava/util/Set;

    return-void
.end method

.method public final setSilencedEvents(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/amplitude/core/utilities/BadRequestResponse;->silencedEvents:Ljava/util/Set;

    return-void
.end method
