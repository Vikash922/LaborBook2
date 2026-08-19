.class public final Lcom/amplitude/core/platform/plugins/AmplitudeDestination;
.super Lcom/amplitude/core/platform/DestinationPlugin;
.source "AmplitudeDestination.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\nJ\u0008\u0010\r\u001a\u00020\u0008H\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\t\u001a\u00020\u000fH\u0016J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0016J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/amplitude/core/platform/plugins/AmplitudeDestination;",
        "Lcom/amplitude/core/platform/DestinationPlugin;",
        "()V",
        "identifyInterceptor",
        "Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;",
        "pipeline",
        "Lcom/amplitude/core/platform/EventPipeline;",
        "enqueue",
        "",
        "payload",
        "Lcom/amplitude/core/events/BaseEvent;",
        "enqueuePipeline",
        "event",
        "flush",
        "groupIdentify",
        "Lcom/amplitude/core/events/GroupIdentifyEvent;",
        "identify",
        "Lcom/amplitude/core/events/IdentifyEvent;",
        "revenue",
        "Lcom/amplitude/core/events/RevenueEvent;",
        "setup",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "track",
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
.field private identifyInterceptor:Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;

.field private pipeline:Lcom/amplitude/core/platform/EventPipeline;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amplitude/core/platform/DestinationPlugin;-><init>()V

    return-void
.end method

.method public static final synthetic access$getIdentifyInterceptor$p(Lcom/amplitude/core/platform/plugins/AmplitudeDestination;)Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->identifyInterceptor:Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;

    return-object p0
.end method

.method public static final synthetic access$getPipeline$p(Lcom/amplitude/core/platform/plugins/AmplitudeDestination;)Lcom/amplitude/core/platform/EventPipeline;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->pipeline:Lcom/amplitude/core/platform/EventPipeline;

    return-object p0
.end method

.method private final enqueue(Lcom/amplitude/core/events/BaseEvent;)V
    .locals 7

    if-nez p1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object v0

    const-string v1, "Event is invalid for missing information like userId and deviceId. Dropping event: "

    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getEventType()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amplitude/common/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getAmplitudeScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getStorageIODispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/amplitude/core/platform/plugins/AmplitudeDestination$enqueue$1$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/amplitude/core/platform/plugins/AmplitudeDestination$enqueue$1$1;-><init>(Lcom/amplitude/core/platform/plugins/AmplitudeDestination;Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method


# virtual methods
.method public final enqueuePipeline(Lcom/amplitude/core/events/BaseEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->pipeline:Lcom/amplitude/core/platform/EventPipeline;

    if-nez v0, :cond_0

    const-string v0, "pipeline"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amplitude/core/platform/EventPipeline;->put(Lcom/amplitude/core/events/BaseEvent;)V

    return-void
.end method

.method public flush()V
    .locals 7

    .line 38
    invoke-virtual {p0}, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getAmplitudeScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getStorageIODispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/amplitude/core/platform/plugins/AmplitudeDestination$flush$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/amplitude/core/platform/plugins/AmplitudeDestination$flush$1;-><init>(Lcom/amplitude/core/platform/plugins/AmplitudeDestination;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public groupIdentify(Lcom/amplitude/core/events/GroupIdentifyEvent;)Lcom/amplitude/core/events/GroupIdentifyEvent;
    .locals 1

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p1

    check-cast v0, Lcom/amplitude/core/events/BaseEvent;

    invoke-direct {p0, v0}, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->enqueue(Lcom/amplitude/core/events/BaseEvent;)V

    return-object p1
.end method

.method public identify(Lcom/amplitude/core/events/IdentifyEvent;)Lcom/amplitude/core/events/IdentifyEvent;
    .locals 1

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v0, p1

    check-cast v0, Lcom/amplitude/core/events/BaseEvent;

    invoke-direct {p0, v0}, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->enqueue(Lcom/amplitude/core/events/BaseEvent;)V

    return-object p1
.end method

.method public revenue(Lcom/amplitude/core/events/RevenueEvent;)Lcom/amplitude/core/events/RevenueEvent;
    .locals 1

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/amplitude/core/events/BaseEvent;

    invoke-direct {p0, v0}, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->enqueue(Lcom/amplitude/core/events/BaseEvent;)V

    return-object p1
.end method

.method public setup(Lcom/amplitude/core/Amplitude;)V
    .locals 7

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Lcom/amplitude/core/platform/DestinationPlugin;->setup(Lcom/amplitude/core/Amplitude;)V

    .line 68
    new-instance v0, Lcom/amplitude/core/platform/EventPipeline;

    invoke-direct {v0, p1}, Lcom/amplitude/core/platform/EventPipeline;-><init>(Lcom/amplitude/core/Amplitude;)V

    iput-object v0, p0, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->pipeline:Lcom/amplitude/core/platform/EventPipeline;

    .line 71
    invoke-virtual {v0}, Lcom/amplitude/core/platform/EventPipeline;->start()V

    .line 72
    new-instance v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;

    .line 73
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getIdentifyInterceptStorage()Lcom/amplitude/core/Storage;

    move-result-object v2

    .line 75
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object v4

    .line 76
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v5

    move-object v1, v0

    move-object v3, p1

    move-object v6, p0

    .line 72
    invoke-direct/range {v1 .. v6}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;-><init>(Lcom/amplitude/core/Storage;Lcom/amplitude/core/Amplitude;Lcom/amplitude/common/Logger;Lcom/amplitude/core/Configuration;Lcom/amplitude/core/platform/plugins/AmplitudeDestination;)V

    iput-object v0, p0, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->identifyInterceptor:Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;

    .line 80
    new-instance p1, Lcom/amplitude/core/platform/plugins/IdentityEventSender;

    invoke-direct {p1}, Lcom/amplitude/core/platform/plugins/IdentityEventSender;-><init>()V

    check-cast p1, Lcom/amplitude/core/platform/Plugin;

    invoke-virtual {p0, p1}, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->add(Lcom/amplitude/core/platform/Plugin;)V

    return-void
.end method

.method public track(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;
    .locals 1

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->enqueue(Lcom/amplitude/core/events/BaseEvent;)V

    return-object p1
.end method
