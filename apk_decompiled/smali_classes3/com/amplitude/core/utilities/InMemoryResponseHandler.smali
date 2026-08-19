.class public final Lcom/amplitude/core/utilities/InMemoryResponseHandler;
.super Ljava/lang/Object;
.source "InMemoryResponseHandler.kt"

# interfaces
.implements Lcom/amplitude/core/utilities/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/core/utilities/InMemoryResponseHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInMemoryResponseHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMemoryResponseHandler.kt\ncom/amplitude/core/utilities/InMemoryResponseHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1858#2,3:125\n1849#2,2:128\n1849#2,2:130\n1858#2,3:132\n1849#2,2:135\n1849#2,2:137\n1849#2,2:139\n1849#2,2:141\n*S KotlinDebug\n*F\n+ 1 InMemoryResponseHandler.kt\ncom/amplitude/core/utilities/InMemoryResponseHandler\n*L\n35#1:125,3\n43#1:128,2\n55#1:130,2\n65#1:132,3\n75#1:135,2\n100#1:137,2\n108#1:139,2\n114#1:141,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 02\u00020\u0001:\u00010B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J \u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J \u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J \u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J \u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J \u0010\'\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J&\u0010*\u001a\u00020\u00142\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020,0+2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u001aH\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u00061"
    }
    d2 = {
        "Lcom/amplitude/core/utilities/InMemoryResponseHandler;",
        "Lcom/amplitude/core/utilities/ResponseHandler;",
        "eventPipeline",
        "Lcom/amplitude/core/platform/EventPipeline;",
        "configuration",
        "Lcom/amplitude/core/Configuration;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "(Lcom/amplitude/core/platform/EventPipeline;Lcom/amplitude/core/Configuration;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "getConfiguration",
        "()Lcom/amplitude/core/Configuration;",
        "getDispatcher",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "getEventPipeline",
        "()Lcom/amplitude/core/platform/EventPipeline;",
        "getScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "handleBadRequestResponse",
        "",
        "badRequestResponse",
        "Lcom/amplitude/core/utilities/BadRequestResponse;",
        "events",
        "",
        "eventsString",
        "",
        "handleFailedResponse",
        "failedResponse",
        "Lcom/amplitude/core/utilities/FailedResponse;",
        "handlePayloadTooLargeResponse",
        "payloadTooLargeResponse",
        "Lcom/amplitude/core/utilities/PayloadTooLargeResponse;",
        "handleSuccessResponse",
        "successResponse",
        "Lcom/amplitude/core/utilities/SuccessResponse;",
        "handleTimeoutResponse",
        "timeoutResponse",
        "Lcom/amplitude/core/utilities/TimeoutResponse;",
        "handleTooManyRequestsResponse",
        "tooManyRequestsResponse",
        "Lcom/amplitude/core/utilities/TooManyRequestsResponse;",
        "triggerEventsCallback",
        "",
        "Lcom/amplitude/core/events/BaseEvent;",
        "status",
        "",
        "message",
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
.field public static final BACK_OFF:J = 0x7530L

.field public static final Companion:Lcom/amplitude/core/utilities/InMemoryResponseHandler$Companion;


# instance fields
.field private final configuration:Lcom/amplitude/core/Configuration;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final eventPipeline:Lcom/amplitude/core/platform/EventPipeline;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/core/utilities/InMemoryResponseHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/core/utilities/InMemoryResponseHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->Companion:Lcom/amplitude/core/utilities/InMemoryResponseHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amplitude/core/platform/EventPipeline;Lcom/amplitude/core/Configuration;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    const-string v0, "eventPipeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->eventPipeline:Lcom/amplitude/core/platform/EventPipeline;

    .line 13
    iput-object p2, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->configuration:Lcom/amplitude/core/Configuration;

    .line 14
    iput-object p3, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 15
    iput-object p4, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method private final triggerEventsCallback(Ljava/util/List;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amplitude/core/events/BaseEvent;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 114
    check-cast p1, Ljava/lang/Iterable;

    .line 141
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amplitude/core/events/BaseEvent;

    .line 115
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/core/Configuration;->getCallback()Lkotlin/jvm/functions/Function3;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_1
    invoke-virtual {v0}, Lcom/amplitude/core/events/BaseEvent;->getCallback()Lkotlin/jvm/functions/Function3;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final getConfiguration()Lcom/amplitude/core/Configuration;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->configuration:Lcom/amplitude/core/Configuration;

    return-object v0
.end method

.method public final getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final getEventPipeline()Lcom/amplitude/core/platform/EventPipeline;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->eventPipeline:Lcom/amplitude/core/platform/EventPipeline;

    return-object v0
.end method

.method public final getScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public handleBadRequestResponse(Lcom/amplitude/core/utilities/BadRequestResponse;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    const-string v0, "badRequestResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    check-cast p2, Ljava/util/List;

    .line 28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 29
    sget-object p3, Lcom/amplitude/core/utilities/HttpStatus;->BAD_REQUEST:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {p3}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result p3

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/BadRequestResponse;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->triggerEventsCallback(Ljava/util/List;ILjava/lang/String;)V

    return-void

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/amplitude/core/utilities/BadRequestResponse;->getEventIndicesToDrop()Ljava/util/Set;

    move-result-object p3

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 35
    check-cast p2, Ljava/lang/Iterable;

    .line 126
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v3, Lcom/amplitude/core/events/BaseEvent;

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v3}, Lcom/amplitude/core/utilities/BadRequestResponse;->isEventSilenced(Lcom/amplitude/core/events/BaseEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 39
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 37
    :cond_3
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move v2, v4

    goto :goto_0

    .line 42
    :cond_4
    sget-object p2, Lcom/amplitude/core/utilities/HttpStatus;->BAD_REQUEST:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {p2}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/BadRequestResponse;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->triggerEventsCallback(Ljava/util/List;ILjava/lang/String;)V

    .line 43
    check-cast v1, Ljava/lang/Iterable;

    .line 128
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amplitude/core/events/BaseEvent;

    .line 44
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->getEventPipeline()Lcom/amplitude/core/platform/EventPipeline;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/amplitude/core/platform/EventPipeline;->put(Lcom/amplitude/core/events/BaseEvent;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public handleFailedResponse(Lcom/amplitude/core/utilities/FailedResponse;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    const-string v0, "failedResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    check-cast p2, Ljava/util/List;

    .line 98
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 100
    check-cast p2, Ljava/lang/Iterable;

    .line 137
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amplitude/core/events/BaseEvent;

    .line 101
    invoke-virtual {v1}, Lcom/amplitude/core/events/BaseEvent;->getAttempts$core()I

    move-result v2

    invoke-virtual {p0}, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amplitude/core/Configuration;->getFlushMaxRetries()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 102
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    sget-object p2, Lcom/amplitude/core/utilities/HttpStatus;->FAILED:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {p2}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/FailedResponse;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p2, p1}, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->triggerEventsCallback(Ljava/util/List;ILjava/lang/String;)V

    .line 108
    check-cast v0, Ljava/lang/Iterable;

    .line 139
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amplitude/core/events/BaseEvent;

    .line 109
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->getEventPipeline()Lcom/amplitude/core/platform/EventPipeline;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/amplitude/core/platform/EventPipeline;->put(Lcom/amplitude/core/events/BaseEvent;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public handlePayloadTooLargeResponse(Lcom/amplitude/core/utilities/PayloadTooLargeResponse;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-string v0, "payloadTooLargeResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    check-cast p2, Ljava/util/List;

    .line 50
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 51
    sget-object p3, Lcom/amplitude/core/utilities/HttpStatus;->PAYLOAD_TOO_LARGE:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {p3}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result p3

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/PayloadTooLargeResponse;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->triggerEventsCallback(Ljava/util/List;ILjava/lang/String;)V

    return-void

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->eventPipeline:Lcom/amplitude/core/platform/EventPipeline;

    invoke-virtual {p1}, Lcom/amplitude/core/platform/EventPipeline;->getFlushSizeDivider()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 55
    check-cast p2, Ljava/lang/Iterable;

    .line 130
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amplitude/core/events/BaseEvent;

    .line 56
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->getEventPipeline()Lcom/amplitude/core/platform/EventPipeline;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/amplitude/core/platform/EventPipeline;->put(Lcom/amplitude/core/events/BaseEvent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleSuccessResponse(Lcom/amplitude/core/utilities/SuccessResponse;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "successResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "events"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventsString"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    check-cast p2, Ljava/util/List;

    sget-object p1, Lcom/amplitude/core/utilities/HttpStatus;->SUCCESS:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result p1

    const-string p3, "Event sent success."

    invoke-direct {p0, p2, p1, p3}, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->triggerEventsCallback(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public handleTimeoutResponse(Lcom/amplitude/core/utilities/TimeoutResponse;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "timeoutResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "events"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventsString"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    check-cast p2, Ljava/util/List;

    .line 88
    iget-object v0, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p1, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v1, p1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTimeoutResponse$1;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p0, p3}, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTimeoutResponse$1;-><init>(Ljava/util/List;Lcom/amplitude/core/utilities/InMemoryResponseHandler;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public handleTooManyRequestsResponse(Lcom/amplitude/core/utilities/TooManyRequestsResponse;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "tooManyRequestsResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    check-cast p2, Ljava/util/List;

    .line 62
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 65
    check-cast p2, Ljava/lang/Iterable;

    .line 133
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/amplitude/core/events/BaseEvent;

    .line 66
    invoke-virtual {p1, v3}, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->isEventExceedDailyQuota(Lcom/amplitude/core/events/BaseEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->getThrottledEvents()Ljava/util/Set;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move v2, v4

    goto :goto_0

    .line 74
    :cond_3
    sget-object p2, Lcom/amplitude/core/utilities/HttpStatus;->TOO_MANY_REQUESTS:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {p2}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p2, p1}, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->triggerEventsCallback(Ljava/util/List;ILjava/lang/String;)V

    .line 75
    check-cast v0, Ljava/lang/Iterable;

    .line 135
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amplitude/core/events/BaseEvent;

    .line 76
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->getEventPipeline()Lcom/amplitude/core/platform/EventPipeline;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/amplitude/core/platform/EventPipeline;->put(Lcom/amplitude/core/events/BaseEvent;)V

    goto :goto_2

    .line 78
    :cond_4
    iget-object v2, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p1, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v3, p1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p0, p2}, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;-><init>(Ljava/util/List;Lcom/amplitude/core/utilities/InMemoryResponseHandler;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
