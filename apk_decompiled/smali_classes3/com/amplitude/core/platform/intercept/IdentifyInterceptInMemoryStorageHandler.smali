.class public final Lcom/amplitude/core/platform/intercept/IdentifyInterceptInMemoryStorageHandler;
.super Ljava/lang/Object;
.source "IdentifyInterceptInMemoryStorageHandler.kt"

# interfaces
.implements Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u0005\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/amplitude/core/platform/intercept/IdentifyInterceptInMemoryStorageHandler;",
        "Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;",
        "storage",
        "Lcom/amplitude/core/utilities/InMemoryStorage;",
        "(Lcom/amplitude/core/utilities/InMemoryStorage;)V",
        "clearIdentifyIntercepts",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getTransferIdentifyEvent",
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
.field private final storage:Lcom/amplitude/core/utilities/InMemoryStorage;


# direct methods
.method public constructor <init>(Lcom/amplitude/core/utilities/InMemoryStorage;)V
    .locals 1

    const-string/jumbo v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptInMemoryStorageHandler;->storage:Lcom/amplitude/core/utilities/InMemoryStorage;

    return-void
.end method


# virtual methods
.method public clearIdentifyIntercepts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 27
    iget-object p1, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptInMemoryStorageHandler;->storage:Lcom/amplitude/core/utilities/InMemoryStorage;

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/InMemoryStorage;->removeEvents()V

    .line 28
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getTransferIdentifyEvent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/amplitude/core/events/BaseEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 12
    iget-object p1, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptInMemoryStorageHandler;->storage:Lcom/amplitude/core/utilities/InMemoryStorage;

    invoke-virtual {p1}, Lcom/amplitude/core/utilities/InMemoryStorage;->readEventsContent()Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amplitude/core/events/BaseEvent;

    .line 18
    sget-object v1, Lcom/amplitude/core/platform/intercept/IdentifyInterceptorUtil;->INSTANCE:Lcom/amplitude/core/platform/intercept/IdentifyInterceptorUtil;

    invoke-virtual {v0}, Lcom/amplitude/core/events/BaseEvent;->getUserProperties()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-virtual {v3}, Lcom/amplitude/core/events/IdentifyOperation;->getOperationType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptorUtil;->filterNonNullValues(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 19
    sget-object v2, Lcom/amplitude/core/platform/intercept/IdentifyInterceptorUtil;->INSTANCE:Lcom/amplitude/core/platform/intercept/IdentifyInterceptorUtil;

    const/4 v3, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptorUtil;->mergeIdentifyList(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 20
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 21
    invoke-virtual {v0}, Lcom/amplitude/core/events/BaseEvent;->getUserProperties()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-virtual {v2}, Lcom/amplitude/core/events/IdentifyOperation;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Any?>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
