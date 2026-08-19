.class public final Lcom/amplitude/core/utilities/FileResponseHandler;
.super Ljava/lang/Object;
.source "FileResponseHandler.kt"

# interfaces
.implements Lcom/amplitude/core/utilities/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileResponseHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileResponseHandler.kt\ncom/amplitude/core/utilities/FileResponseHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,192:1\n1858#2,3:193\n1849#2,2:196\n1849#2,2:198\n1290#3,2:200\n*S KotlinDebug\n*F\n+ 1 FileResponseHandler.kt\ncom/amplitude/core/utilities/FileResponseHandler\n*L\n76#1:193,3\n84#1:196,2\n142#1:198,2\n157#1:200,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ \u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J \u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\'2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J \u0010(\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020*2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J \u0010+\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020-2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J \u0010.\u001a\u00020\u001e2\u0006\u0010/\u001a\u0002002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J \u00101\u001a\u00020\u001e2\u0006\u00102\u001a\u0002032\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\u0010\u00104\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020$H\u0002J\u0008\u00105\u001a\u00020\u001eH\u0002J\u0012\u00106\u001a\u00020\u001e2\u0008\u0008\u0002\u00107\u001a\u000208H\u0002J&\u00109\u001a\u00020\u001e2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020;0:2\u0006\u0010<\u001a\u00020\u00162\u0006\u0010=\u001a\u00020$H\u0002R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0016@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0016X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lcom/amplitude/core/utilities/FileResponseHandler;",
        "Lcom/amplitude/core/utilities/ResponseHandler;",
        "storage",
        "Lcom/amplitude/core/utilities/EventsFileStorage;",
        "eventPipeline",
        "Lcom/amplitude/core/platform/EventPipeline;",
        "configuration",
        "Lcom/amplitude/core/Configuration;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "logger",
        "Lcom/amplitude/common/Logger;",
        "(Lcom/amplitude/core/utilities/EventsFileStorage;Lcom/amplitude/core/platform/EventPipeline;Lcom/amplitude/core/Configuration;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/amplitude/common/Logger;)V",
        "backoff",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "value",
        "",
        "currentFlushInterval",
        "setCurrentFlushInterval",
        "(J)V",
        "",
        "currentFlushQueueSize",
        "setCurrentFlushQueueSize",
        "(I)V",
        "maxQueueSize",
        "retries",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
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
        "removeCallbackByInsertId",
        "resetBackOff",
        "triggerBackOff",
        "withSizeUpdate",
        "",
        "triggerEventsCallback",
        "",
        "Lcom/amplitude/core/events/BaseEvent;",
        "status",
        "message",
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
.field private backoff:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final configuration:Lcom/amplitude/core/Configuration;

.field private currentFlushInterval:J

.field private currentFlushQueueSize:I

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final eventPipeline:Lcom/amplitude/core/platform/EventPipeline;

.field private final logger:Lcom/amplitude/common/Logger;

.field private final maxQueueSize:I

.field private retries:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final storage:Lcom/amplitude/core/utilities/EventsFileStorage;


# direct methods
.method public constructor <init>(Lcom/amplitude/core/utilities/EventsFileStorage;Lcom/amplitude/core/platform/EventPipeline;Lcom/amplitude/core/Configuration;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/amplitude/common/Logger;)V
    .locals 1

    const-string/jumbo v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventPipeline"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    .line 18
    iput-object p2, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->eventPipeline:Lcom/amplitude/core/platform/EventPipeline;

    .line 19
    iput-object p3, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->configuration:Lcom/amplitude/core/Configuration;

    .line 20
    iput-object p4, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 21
    iput-object p5, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 22
    iput-object p6, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->logger:Lcom/amplitude/common/Logger;

    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->retries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    invoke-virtual {p3}, Lcom/amplitude/core/Configuration;->getFlushIntervalMillis()I

    move-result p1

    int-to-long p4, p1

    iput-wide p4, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->currentFlushInterval:J

    .line 31
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->backoff:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    invoke-virtual {p3}, Lcom/amplitude/core/Configuration;->getFlushQueueSize()I

    move-result p1

    iput p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->currentFlushQueueSize:I

    const/16 p1, 0x32

    .line 37
    iput p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->maxQueueSize:I

    return-void
.end method

.method public static final synthetic access$getCurrentFlushInterval$p(Lcom/amplitude/core/utilities/FileResponseHandler;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->currentFlushInterval:J

    return-wide v0
.end method

.method public static final synthetic access$getEventPipeline$p(Lcom/amplitude/core/utilities/FileResponseHandler;)Lcom/amplitude/core/platform/EventPipeline;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->eventPipeline:Lcom/amplitude/core/platform/EventPipeline;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/amplitude/core/utilities/FileResponseHandler;)Lcom/amplitude/common/Logger;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->logger:Lcom/amplitude/common/Logger;

    return-object p0
.end method

.method public static final synthetic access$getStorage$p(Lcom/amplitude/core/utilities/FileResponseHandler;)Lcom/amplitude/core/utilities/EventsFileStorage;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    return-object p0
.end method

.method private final removeCallbackByInsertId(Ljava/lang/String;)V
    .locals 4

    .line 156
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\"insert_id\":\"(.{36})\","

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 157
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 200
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/text/MatchResult;

    .line 158
    iget-object v1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/amplitude/core/utilities/EventsFileStorage;->removeEventCallback(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final resetBackOff()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->backoff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->backoff:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 185
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->retries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 186
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->configuration:Lcom/amplitude/core/Configuration;

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getFlushIntervalMillis()I

    move-result v0

    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/amplitude/core/utilities/FileResponseHandler;->setCurrentFlushInterval(J)V

    .line 187
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->configuration:Lcom/amplitude/core/Configuration;

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getFlushQueueSize()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amplitude/core/utilities/FileResponseHandler;->setCurrentFlushQueueSize(I)V

    .line 188
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->eventPipeline:Lcom/amplitude/core/platform/EventPipeline;

    invoke-virtual {v0, v1}, Lcom/amplitude/core/platform/EventPipeline;->setExceededRetries(Z)V

    :cond_0
    return-void
.end method

.method private final setCurrentFlushInterval(J)V
    .locals 1

    .line 28
    iput-wide p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->currentFlushInterval:J

    .line 29
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->eventPipeline:Lcom/amplitude/core/platform/EventPipeline;

    invoke-virtual {v0, p1, p2}, Lcom/amplitude/core/platform/EventPipeline;->setFlushInterval(J)V

    return-void
.end method

.method private final setCurrentFlushQueueSize(I)V
    .locals 1

    .line 34
    iput p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->currentFlushQueueSize:I

    .line 35
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->eventPipeline:Lcom/amplitude/core/platform/EventPipeline;

    invoke-virtual {v0, p1}, Lcom/amplitude/core/platform/EventPipeline;->setFlushQueueSize(I)V

    return-void
.end method

.method private final triggerBackOff(Z)V
    .locals 7

    .line 163
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->logger:Lcom/amplitude/common/Logger;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Back off to retry sending events later."

    invoke-interface {v0, v1}, Lcom/amplitude/common/Logger;->debug(Ljava/lang/String;)V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->backoff:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->retries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v2, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->configuration:Lcom/amplitude/core/Configuration;

    invoke-virtual {v2}, Lcom/amplitude/core/Configuration;->getFlushMaxRetries()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 166
    iget-wide v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->currentFlushInterval:J

    const/4 v2, 0x2

    int-to-long v3, v2

    mul-long/2addr v0, v3

    invoke-direct {p0, v0, v1}, Lcom/amplitude/core/utilities/FileResponseHandler;->setCurrentFlushInterval(J)V

    if-eqz p1, :cond_3

    .line 168
    iget p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->currentFlushQueueSize:I

    mul-int/2addr p1, v2

    iget v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->maxQueueSize:I

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amplitude/core/utilities/FileResponseHandler;->setCurrentFlushQueueSize(I)V

    goto :goto_2

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->eventPipeline:Lcom/amplitude/core/platform/EventPipeline;

    invoke-virtual {p1, v1}, Lcom/amplitude/core/platform/EventPipeline;->setExceededRetries(Z)V

    .line 173
    iget-object p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->logger:Lcom/amplitude/common/Logger;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Max retries "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->configuration:Lcom/amplitude/core/Configuration;

    invoke-virtual {v1}, Lcom/amplitude/core/Configuration;->getFlushMaxRetries()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exceeded, temporarily stop scheduling new events sending out."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amplitude/common/Logger;->debug(Ljava/lang/String;)V

    .line 174
    :goto_1
    iget-object v1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v2, p1

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/amplitude/core/utilities/FileResponseHandler$triggerBackOff$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amplitude/core/utilities/FileResponseHandler$triggerBackOff$1;-><init>(Lcom/amplitude/core/utilities/FileResponseHandler;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic triggerBackOff$default(Lcom/amplitude/core/utilities/FileResponseHandler;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 162
    :cond_0
    invoke-direct {p0, p1}, Lcom/amplitude/core/utilities/FileResponseHandler;->triggerBackOff(Z)V

    return-void
.end method

.method private final triggerEventsCallback(Ljava/util/List;ILjava/lang/String;)V
    .locals 4
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

    .line 142
    check-cast p1, Ljava/lang/Iterable;

    .line 198
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amplitude/core/events/BaseEvent;

    .line 143
    iget-object v1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->configuration:Lcom/amplitude/core/Configuration;

    invoke-virtual {v1}, Lcom/amplitude/core/Configuration;->getCallback()Lkotlin/jvm/functions/Function3;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 144
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :goto_1
    invoke-virtual {v0}, Lcom/amplitude/core/events/BaseEvent;->getInsertId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    invoke-interface {v2, v1}, Lcom/amplitude/core/utilities/EventsFileStorage;->getEventCallback(Ljava/lang/String;)Lkotlin/jvm/functions/Function3;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 148
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    invoke-interface {v0, v1}, Lcom/amplitude/core/utilities/EventsFileStorage;->removeEventCallback(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public handleBadRequestResponse(Lcom/amplitude/core/utilities/BadRequestResponse;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 10

    const-string v0, "badRequestResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->logger:Lcom/amplitude/common/Logger;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handle response, status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/BadRequestResponse;->getStatus()Lcom/amplitude/core/utilities/HttpStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/BadRequestResponse;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amplitude/common/Logger;->debug(Ljava/lang/String;)V

    .line 59
    :goto_0
    check-cast p2, Ljava/lang/String;

    .line 62
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amplitude/core/utilities/JSONUtilKt;->toEvents(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 69
    sget-object v0, Lcom/amplitude/core/utilities/HttpStatus;->BAD_REQUEST:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {v0}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/BadRequestResponse;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, v0, p1}, Lcom/amplitude/core/utilities/FileResponseHandler;->triggerEventsCallback(Ljava/util/List;ILjava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    invoke-interface {p1, p2}, Lcom/amplitude/core/utilities/EventsFileStorage;->removeFile(Ljava/lang/String;)Z

    return-void

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/amplitude/core/utilities/BadRequestResponse;->getEventIndicesToDrop()Ljava/util/Set;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 76
    check-cast p3, Ljava/lang/Iterable;

    .line 194
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v5, Lcom/amplitude/core/events/BaseEvent;

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1, v5}, Lcom/amplitude/core/utilities/BadRequestResponse;->isEventSilenced(Lcom/amplitude/core/events/BaseEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 80
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 78
    :cond_4
    :goto_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move v4, v6

    goto :goto_1

    .line 83
    :cond_5
    sget-object p3, Lcom/amplitude/core/utilities/HttpStatus;->BAD_REQUEST:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {p3}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result p3

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/BadRequestResponse;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p3, p1}, Lcom/amplitude/core/utilities/FileResponseHandler;->triggerEventsCallback(Ljava/util/List;ILjava/lang/String;)V

    .line 84
    check-cast v2, Ljava/lang/Iterable;

    .line 196
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amplitude/core/events/BaseEvent;

    .line 85
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->eventPipeline:Lcom/amplitude/core/platform/EventPipeline;

    invoke-virtual {v0, p3}, Lcom/amplitude/core/platform/EventPipeline;->put(Lcom/amplitude/core/events/BaseEvent;)V

    goto :goto_4

    .line 87
    :cond_6
    iget-object v4, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v5, p1

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/amplitude/core/utilities/FileResponseHandler$handleBadRequestResponse$3;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lcom/amplitude/core/utilities/FileResponseHandler$handleBadRequestResponse$3;-><init>(Lcom/amplitude/core/utilities/FileResponseHandler;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 90
    invoke-direct {p0, v3}, Lcom/amplitude/core/utilities/FileResponseHandler;->triggerBackOff(Z)V

    return-void

    :catch_0
    move-exception p1

    .line 64
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    invoke-interface {v0, p2}, Lcom/amplitude/core/utilities/EventsFileStorage;->removeFile(Ljava/lang/String;)Z

    .line 65
    invoke-direct {p0, p3}, Lcom/amplitude/core/utilities/FileResponseHandler;->removeCallbackByInsertId(Ljava/lang/String;)V

    .line 66
    throw p1
.end method

.method public handleFailedResponse(Lcom/amplitude/core/utilities/FailedResponse;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "failedResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object p3, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->logger:Lcom/amplitude/common/Logger;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handle response, status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/FailedResponse;->getStatus()Lcom/amplitude/core/utilities/HttpStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/FailedResponse;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/amplitude/common/Logger;->debug(Ljava/lang/String;)V

    .line 137
    :goto_0
    iget-object p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/amplitude/core/utilities/EventsFileStorage;->releaseFile(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 138
    invoke-direct {p0, p1}, Lcom/amplitude/core/utilities/FileResponseHandler;->triggerBackOff(Z)V

    return-void
.end method

.method public handlePayloadTooLargeResponse(Lcom/amplitude/core/utilities/PayloadTooLargeResponse;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "payloadTooLargeResponse"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "events"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventsString"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v3, v1, Lcom/amplitude/core/utilities/FileResponseHandler;->logger:Lcom/amplitude/common/Logger;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Handle response, status: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/amplitude/core/utilities/PayloadTooLargeResponse;->getStatus()Lcom/amplitude/core/utilities/HttpStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/amplitude/core/utilities/PayloadTooLargeResponse;->getError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/amplitude/common/Logger;->debug(Ljava/lang/String;)V

    .line 95
    :goto_0
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 98
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v5, :cond_1

    .line 105
    invoke-static {v0}, Lcom/amplitude/core/utilities/JSONUtilKt;->toEvents(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 106
    sget-object v2, Lcom/amplitude/core/utilities/HttpStatus;->PAYLOAD_TOO_LARGE:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {v2}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/amplitude/core/utilities/PayloadTooLargeResponse;->getError()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v4}, Lcom/amplitude/core/utilities/FileResponseHandler;->triggerEventsCallback(Ljava/util/List;ILjava/lang/String;)V

    .line 107
    iget-object v7, v1, Lcom/amplitude/core/utilities/FileResponseHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v1, Lcom/amplitude/core/utilities/FileResponseHandler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/amplitude/core/utilities/FileResponseHandler$handlePayloadTooLargeResponse$1;

    invoke-direct {v0, v1, v3, v6}, Lcom/amplitude/core/utilities/FileResponseHandler$handlePayloadTooLargeResponse$1;-><init>(Lcom/amplitude/core/utilities/FileResponseHandler;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 113
    :cond_1
    iget-object v13, v1, Lcom/amplitude/core/utilities/FileResponseHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, v1, Lcom/amplitude/core/utilities/FileResponseHandler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v14, v2

    check-cast v14, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/amplitude/core/utilities/FileResponseHandler$handlePayloadTooLargeResponse$2;

    invoke-direct {v2, v1, v3, v0, v6}, Lcom/amplitude/core/utilities/FileResponseHandler$handlePayloadTooLargeResponse$2;-><init>(Lcom/amplitude/core/utilities/FileResponseHandler;Ljava/lang/String;Lorg/json/JSONArray;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v2

    check-cast v16, Lkotlin/jvm/functions/Function2;

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    .line 116
    invoke-direct {v1, v0}, Lcom/amplitude/core/utilities/FileResponseHandler;->triggerBackOff(Z)V

    return-void

    :catch_0
    move-exception v0

    .line 100
    iget-object v4, v1, Lcom/amplitude/core/utilities/FileResponseHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    invoke-interface {v4, v3}, Lcom/amplitude/core/utilities/EventsFileStorage;->removeFile(Ljava/lang/String;)Z

    .line 101
    invoke-direct {v1, v2}, Lcom/amplitude/core/utilities/FileResponseHandler;->removeCallbackByInsertId(Ljava/lang/String;)V

    .line 102
    throw v0
.end method

.method public handleSuccessResponse(Lcom/amplitude/core/utilities/SuccessResponse;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "successResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    check-cast p2, Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->logger:Lcom/amplitude/common/Logger;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Handle response, status: "

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/SuccessResponse;->getStatus()Lcom/amplitude/core/utilities/HttpStatus;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amplitude/common/Logger;->debug(Ljava/lang/String;)V

    .line 44
    :goto_0
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amplitude/core/utilities/JSONUtilKt;->toEvents(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    sget-object p3, Lcom/amplitude/core/utilities/HttpStatus;->SUCCESS:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {p3}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result p3

    const-string v0, "Event sent success."

    invoke-direct {p0, p1, p3, v0}, Lcom/amplitude/core/utilities/FileResponseHandler;->triggerEventsCallback(Ljava/util/List;ILjava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v2, p1

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/amplitude/core/utilities/FileResponseHandler$handleSuccessResponse$1;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lcom/amplitude/core/utilities/FileResponseHandler$handleSuccessResponse$1;-><init>(Lcom/amplitude/core/utilities/FileResponseHandler;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 54
    invoke-direct {p0}, Lcom/amplitude/core/utilities/FileResponseHandler;->resetBackOff()V

    return-void

    :catch_0
    move-exception p1

    .line 46
    iget-object v0, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    invoke-interface {v0, p2}, Lcom/amplitude/core/utilities/EventsFileStorage;->removeFile(Ljava/lang/String;)Z

    .line 47
    invoke-direct {p0, p3}, Lcom/amplitude/core/utilities/FileResponseHandler;->removeCallbackByInsertId(Ljava/lang/String;)V

    .line 48
    throw p1
.end method

.method public handleTimeoutResponse(Lcom/amplitude/core/utilities/TimeoutResponse;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "timeoutResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object p3, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->logger:Lcom/amplitude/common/Logger;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Handle response, status: "

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/TimeoutResponse;->getStatus()Lcom/amplitude/core/utilities/HttpStatus;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/amplitude/common/Logger;->debug(Ljava/lang/String;)V

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/amplitude/core/utilities/EventsFileStorage;->releaseFile(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 130
    invoke-direct {p0, p1}, Lcom/amplitude/core/utilities/FileResponseHandler;->triggerBackOff(Z)V

    return-void
.end method

.method public handleTooManyRequestsResponse(Lcom/amplitude/core/utilities/TooManyRequestsResponse;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "tooManyRequestsResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object p3, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->logger:Lcom/amplitude/common/Logger;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handle response, status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->getStatus()Lcom/amplitude/core/utilities/HttpStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/amplitude/common/Logger;->debug(Ljava/lang/String;)V

    .line 122
    :goto_0
    iget-object p1, p0, Lcom/amplitude/core/utilities/FileResponseHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/amplitude/core/utilities/EventsFileStorage;->releaseFile(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 123
    invoke-direct {p0, p1}, Lcom/amplitude/core/utilities/FileResponseHandler;->triggerBackOff(Z)V

    return-void
.end method
