.class public final Lcom/amplitude/core/platform/EventPipeline;
.super Ljava/lang/Object;
.source "EventPipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/core/platform/EventPipeline$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventPipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventPipeline.kt\ncom/amplitude/core/platform/EventPipeline\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,197:1\n1#2:198\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 D2\u00020\u0001:\u0001DB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u00106\u001a\u000207J\u0008\u00108\u001a\u00020\u0014H\u0002J\u0008\u00109\u001a\u00020\u000eH\u0002J\u000e\u0010:\u001a\u0002072\u0006\u0010;\u001a\u00020<J\u0008\u0010=\u001a\u000207H\u0002J\u0008\u0010>\u001a\u00020?H\u0002J\u0006\u0010@\u001a\u000207J\u0006\u0010A\u001a\u000207J\u0008\u0010B\u001a\u00020?H\u0002J\u0008\u0010C\u001a\u00020?H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010 \u001a\u00020!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u001e\u0010%\u001a\u00020\u00082\u0006\u0010$\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\nR\u001e\u0010\'\u001a\u00020\u00082\u0006\u0010$\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\nR\u0014\u0010)\u001a\u00020*8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0014\u0010-\u001a\u00020.8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0014\u00101\u001a\u0008\u0012\u0004\u0012\u00020302X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u00104\u001a\u0008\u0012\u0004\u0012\u00020502X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006E"
    }
    d2 = {
        "Lcom/amplitude/core/platform/EventPipeline;",
        "",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "(Lcom/amplitude/core/Amplitude;)V",
        "eventCount",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "exceededRetries",
        "",
        "getExceededRetries",
        "()Z",
        "setExceededRetries",
        "(Z)V",
        "flushInterval",
        "",
        "getFlushInterval",
        "()J",
        "setFlushInterval",
        "(J)V",
        "flushQueueSize",
        "",
        "getFlushQueueSize",
        "()I",
        "setFlushQueueSize",
        "(I)V",
        "flushSizeDivider",
        "getFlushSizeDivider",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "setFlushSizeDivider",
        "(Ljava/util/concurrent/atomic/AtomicInteger;)V",
        "httpClient",
        "Lcom/amplitude/core/utilities/HttpClient;",
        "responseHandler",
        "Lcom/amplitude/core/utilities/ResponseHandler;",
        "getResponseHandler",
        "()Lcom/amplitude/core/utilities/ResponseHandler;",
        "<set-?>",
        "running",
        "getRunning",
        "scheduled",
        "getScheduled",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "storage",
        "Lcom/amplitude/core/Storage;",
        "getStorage",
        "()Lcom/amplitude/core/Storage;",
        "uploadChannel",
        "Lkotlinx/coroutines/channels/Channel;",
        "",
        "writeChannel",
        "Lcom/amplitude/core/platform/WriteQueueMessage;",
        "flush",
        "",
        "getFlushCount",
        "getFlushIntervalInMillis",
        "put",
        "event",
        "Lcom/amplitude/core/events/BaseEvent;",
        "registerShutdownHook",
        "schedule",
        "Lkotlinx/coroutines/Job;",
        "start",
        "stop",
        "upload",
        "write",
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
.field public static final Companion:Lcom/amplitude/core/platform/EventPipeline$Companion;

.field public static final UPLOAD_SIG:Ljava/lang/String; = "#!upload"


# instance fields
.field private final amplitude:Lcom/amplitude/core/Amplitude;

.field private final eventCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private exceededRetries:Z

.field private flushInterval:J

.field private flushQueueSize:I

.field private flushSizeDivider:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final httpClient:Lcom/amplitude/core/utilities/HttpClient;

.field private final responseHandler:Lcom/amplitude/core/utilities/ResponseHandler;

.field private running:Z

.field private scheduled:Z

.field private final uploadChannel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final writeChannel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lcom/amplitude/core/platform/WriteQueueMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/core/platform/EventPipeline$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/core/platform/EventPipeline$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/core/platform/EventPipeline;->Companion:Lcom/amplitude/core/platform/EventPipeline$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amplitude/core/Amplitude;)V
    .locals 4

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amplitude/core/platform/EventPipeline;->amplitude:Lcom/amplitude/core/Amplitude;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amplitude/core/platform/EventPipeline;->eventCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    new-instance v0, Lcom/amplitude/core/utilities/HttpClient;

    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amplitude/core/utilities/HttpClient;-><init>(Lcom/amplitude/core/Configuration;)V

    iput-object v0, p0, Lcom/amplitude/core/platform/EventPipeline;->httpClient:Lcom/amplitude/core/utilities/HttpClient;

    .line 33
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getFlushIntervalMillis()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/amplitude/core/platform/EventPipeline;->flushInterval:J

    .line 34
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getFlushQueueSize()I

    move-result v0

    iput v0, p0, Lcom/amplitude/core/platform/EventPipeline;->flushQueueSize:I

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amplitude/core/platform/EventPipeline;->flushSizeDivider:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    iput-boolean v1, p0, Lcom/amplitude/core/platform/EventPipeline;->running:Z

    .line 54
    iput-boolean v1, p0, Lcom/amplitude/core/platform/EventPipeline;->scheduled:Z

    const v0, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 56
    invoke-static {v0, v1, v1, v2, v1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/amplitude/core/platform/EventPipeline;->writeChannel:Lkotlinx/coroutines/channels/Channel;

    .line 57
    invoke-static {v0, v1, v1, v2, v1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/platform/EventPipeline;->uploadChannel:Lkotlinx/coroutines/channels/Channel;

    .line 59
    invoke-direct {p0}, Lcom/amplitude/core/platform/EventPipeline;->registerShutdownHook()V

    .line 62
    invoke-direct {p0}, Lcom/amplitude/core/platform/EventPipeline;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v1

    .line 65
    invoke-direct {p0}, Lcom/amplitude/core/platform/EventPipeline;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    .line 66
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getRetryDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    .line 62
    invoke-interface {v0, p0, v1, v2, p1}, Lcom/amplitude/core/Storage;->getResponseHandler(Lcom/amplitude/core/platform/EventPipeline;Lcom/amplitude/core/Configuration;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)Lcom/amplitude/core/utilities/ResponseHandler;

    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/amplitude/core/platform/EventPipeline;->responseHandler:Lcom/amplitude/core/utilities/ResponseHandler;

    return-void
.end method

.method public static final synthetic access$getAmplitude$p(Lcom/amplitude/core/platform/EventPipeline;)Lcom/amplitude/core/Amplitude;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amplitude/core/platform/EventPipeline;->amplitude:Lcom/amplitude/core/Amplitude;

    return-object p0
.end method

.method public static final synthetic access$getEventCount$p(Lcom/amplitude/core/platform/EventPipeline;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amplitude/core/platform/EventPipeline;->eventCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$getFlushCount(Lcom/amplitude/core/platform/EventPipeline;)I
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amplitude/core/platform/EventPipeline;->getFlushCount()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getFlushIntervalInMillis(Lcom/amplitude/core/platform/EventPipeline;)J
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/amplitude/core/platform/EventPipeline;->getFlushIntervalInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getHttpClient$p(Lcom/amplitude/core/platform/EventPipeline;)Lcom/amplitude/core/utilities/HttpClient;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amplitude/core/platform/EventPipeline;->httpClient:Lcom/amplitude/core/utilities/HttpClient;

    return-object p0
.end method

.method public static final synthetic access$getStorage(Lcom/amplitude/core/platform/EventPipeline;)Lcom/amplitude/core/Storage;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amplitude/core/platform/EventPipeline;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUploadChannel$p(Lcom/amplitude/core/platform/EventPipeline;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amplitude/core/platform/EventPipeline;->uploadChannel:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$getWriteChannel$p(Lcom/amplitude/core/platform/EventPipeline;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amplitude/core/platform/EventPipeline;->writeChannel:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$schedule(Lcom/amplitude/core/platform/EventPipeline;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amplitude/core/platform/EventPipeline;->schedule()Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setScheduled$p(Lcom/amplitude/core/platform/EventPipeline;Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/amplitude/core/platform/EventPipeline;->scheduled:Z

    return-void
.end method

.method private final getFlushCount()I
    .locals 2

    .line 158
    iget v0, p0, Lcom/amplitude/core/platform/EventPipeline;->flushQueueSize:I

    iget-object v1, p0, Lcom/amplitude/core/platform/EventPipeline;->flushSizeDivider:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    div-int/2addr v0, v1

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method private final getFlushIntervalInMillis()J
    .locals 2

    .line 163
    iget-wide v0, p0, Lcom/amplitude/core/platform/EventPipeline;->flushInterval:J

    return-wide v0
.end method

.method private final getScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amplitude/core/platform/EventPipeline;->amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getAmplitudeScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method private final getStorage()Lcom/amplitude/core/Storage;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amplitude/core/platform/EventPipeline;->amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v0

    return-object v0
.end method

.method private final registerShutdownHook()V
    .locals 2

    .line 178
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 179
    new-instance v1, Lcom/amplitude/core/platform/EventPipeline$registerShutdownHook$1;

    invoke-direct {v1, p0}, Lcom/amplitude/core/platform/EventPipeline$registerShutdownHook$1;-><init>(Lcom/amplitude/core/platform/EventPipeline;)V

    check-cast v1, Ljava/lang/Thread;

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method private final schedule()Lkotlinx/coroutines/Job;
    .locals 6

    .line 167
    invoke-direct {p0}, Lcom/amplitude/core/platform/EventPipeline;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/core/platform/EventPipeline;->amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v1}, Lcom/amplitude/core/Amplitude;->getStorageIODispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/amplitude/core/platform/EventPipeline$schedule$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/amplitude/core/platform/EventPipeline$schedule$1;-><init>(Lcom/amplitude/core/platform/EventPipeline;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method private final upload()Lkotlinx/coroutines/Job;
    .locals 6

    .line 120
    invoke-direct {p0}, Lcom/amplitude/core/platform/EventPipeline;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/core/platform/EventPipeline;->amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v1}, Lcom/amplitude/core/Amplitude;->getNetworkIODispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/amplitude/core/platform/EventPipeline$upload$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/amplitude/core/platform/EventPipeline$upload$1;-><init>(Lcom/amplitude/core/platform/EventPipeline;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method private final write()Lkotlinx/coroutines/Job;
    .locals 6

    .line 92
    invoke-direct {p0}, Lcom/amplitude/core/platform/EventPipeline;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/core/platform/EventPipeline;->amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v1}, Lcom/amplitude/core/Amplitude;->getStorageIODispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/amplitude/core/platform/EventPipeline$write$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/amplitude/core/platform/EventPipeline$write$1;-><init>(Lcom/amplitude/core/platform/EventPipeline;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final flush()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/amplitude/core/platform/EventPipeline;->writeChannel:Lkotlinx/coroutines/channels/Channel;

    new-instance v1, Lcom/amplitude/core/platform/WriteQueueMessage;

    sget-object v2, Lcom/amplitude/core/platform/WriteQueueMessageType;->FLUSH:Lcom/amplitude/core/platform/WriteQueueMessageType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/amplitude/core/platform/WriteQueueMessage;-><init>(Lcom/amplitude/core/platform/WriteQueueMessageType;Lcom/amplitude/core/events/BaseEvent;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getExceededRetries()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/amplitude/core/platform/EventPipeline;->exceededRetries:Z

    return v0
.end method

.method public final getFlushInterval()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/amplitude/core/platform/EventPipeline;->flushInterval:J

    return-wide v0
.end method

.method public final getFlushQueueSize()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/amplitude/core/platform/EventPipeline;->flushQueueSize:I

    return v0
.end method

.method public final getFlushSizeDivider()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amplitude/core/platform/EventPipeline;->flushSizeDivider:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final getResponseHandler()Lcom/amplitude/core/utilities/ResponseHandler;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amplitude/core/platform/EventPipeline;->responseHandler:Lcom/amplitude/core/utilities/ResponseHandler;

    return-object v0
.end method

.method public final getRunning()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/amplitude/core/platform/EventPipeline;->running:Z

    return v0
.end method

.method public final getScheduled()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/amplitude/core/platform/EventPipeline;->scheduled:Z

    return v0
.end method

.method public final put(Lcom/amplitude/core/events/BaseEvent;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getAttempts$core()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amplitude/core/events/BaseEvent;->setAttempts$core(I)V

    .line 72
    iget-object v0, p0, Lcom/amplitude/core/platform/EventPipeline;->writeChannel:Lkotlinx/coroutines/channels/Channel;

    new-instance v1, Lcom/amplitude/core/platform/WriteQueueMessage;

    sget-object v2, Lcom/amplitude/core/platform/WriteQueueMessageType;->EVENT:Lcom/amplitude/core/platform/WriteQueueMessageType;

    invoke-direct {v1, v2, p1}, Lcom/amplitude/core/platform/WriteQueueMessage;-><init>(Lcom/amplitude/core/platform/WriteQueueMessageType;Lcom/amplitude/core/events/BaseEvent;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setExceededRetries(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/amplitude/core/platform/EventPipeline;->exceededRetries:Z

    return-void
.end method

.method public final setFlushInterval(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/amplitude/core/platform/EventPipeline;->flushInterval:J

    return-void
.end method

.method public final setFlushQueueSize(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/amplitude/core/platform/EventPipeline;->flushQueueSize:I

    return-void
.end method

.method public final setFlushSizeDivider(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/amplitude/core/platform/EventPipeline;->flushSizeDivider:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public final start()V
    .locals 1

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/amplitude/core/platform/EventPipeline;->running:Z

    .line 81
    invoke-direct {p0}, Lcom/amplitude/core/platform/EventPipeline;->write()Lkotlinx/coroutines/Job;

    .line 82
    invoke-direct {p0}, Lcom/amplitude/core/platform/EventPipeline;->upload()Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/amplitude/core/platform/EventPipeline;->uploadChannel:Lkotlinx/coroutines/channels/Channel;

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/channels/ReceiveChannel$DefaultImpls;->cancel$default(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/amplitude/core/platform/EventPipeline;->writeChannel:Lkotlinx/coroutines/channels/Channel;

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/channels/ReceiveChannel$DefaultImpls;->cancel$default(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/amplitude/core/platform/EventPipeline;->running:Z

    return-void
.end method
