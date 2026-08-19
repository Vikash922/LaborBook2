.class public final Lkotlinx/coroutines/rx3/RxConvertKt;
.super Ljava/lang/Object;
.source "RxConvert.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a1\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0008\u0007\u001a1\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\t\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0008\u0007\u001a\u0012\u0010\n\u001a\u00020\u000b*\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006\u001a \u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u000e\u001a*\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u001a+\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00020\u0011\"\u0004\u0008\u0000\u0010\u0002*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0006\u00f8\u0001\u0000\u001a*\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\t\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u001a(\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0015\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0006\u0082\u0002\u0004\n\u0002\u00089\u00a8\u0006\u0016"
    }
    d2 = {
        "_asFlowable",
        "Lio/reactivex/rxjava3/core/Flowable;",
        "T",
        "",
        "Lkotlinx/coroutines/flow/Flow;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "from",
        "_asObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "asCompletable",
        "Lio/reactivex/rxjava3/core/Completable;",
        "Lkotlinx/coroutines/Job;",
        "asFlow",
        "Lio/reactivex/rxjava3/core/ObservableSource;",
        "asFlowable",
        "asMaybe",
        "Lio/reactivex/rxjava3/core/Maybe;",
        "Lkotlinx/coroutines/Deferred;",
        "asObservable",
        "asSingle",
        "Lio/reactivex/rxjava3/core/Single;",
        "kotlinx-coroutines-rx3"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$ux6ryHe0QtRHVhG400zgFTYfXLs(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/Flow;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/rx3/RxConvertKt;->asObservable$lambda$0(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/Flow;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method

.method public static final asCompletable(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Completable;
    .locals 2

    .line 25
    new-instance v0, Lkotlinx/coroutines/rx3/RxConvertKt$asCompletable$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/rx3/RxConvertKt$asCompletable$1;-><init>(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0}, Lkotlinx/coroutines/rx3/RxCompletableKt;->rxCompletable(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static final asFlow(Lio/reactivex/rxjava3/core/ObservableSource;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "TT;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 71
    new-instance v0, Lkotlinx/coroutines/rx3/RxConvertKt$asFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/rx3/RxConvertKt$asFlow$1;-><init>(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final asFlowable(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Flowable<",
            "TT;>;"
        }
    .end annotation

    .line 136
    invoke-static {p0, p1}, Lkotlinx/coroutines/reactive/ReactiveFlowKt;->asPublisher(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lorg/reactivestreams/Publisher;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Flowable;->fromPublisher(Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic asFlowable$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 135
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/rx3/RxConvertKt;->asFlowable(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static final asMaybe(Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Maybe<",
            "TT;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lkotlinx/coroutines/rx3/RxConvertKt$asMaybe$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/rx3/RxConvertKt$asMaybe$1;-><init>(Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0}, Lkotlinx/coroutines/rx3/RxMaybeKt;->rxMaybe(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static final asObservable(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic asObservable$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 103
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/rx3/RxConvertKt;->asObservable(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static final asObservable$lambda$0(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/Flow;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 4

    .line 108
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->ATOMIC:Lkotlinx/coroutines/CoroutineStart;

    new-instance v2, Lkotlinx/coroutines/rx3/RxConvertKt$asObservable$1$job$1;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lkotlinx/coroutines/rx3/RxConvertKt$asObservable$1$job$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lio/reactivex/rxjava3/core/ObservableEmitter;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p0, v1, v2}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p0

    .line 123
    new-instance p1, Lkotlinx/coroutines/rx3/RxCancellable;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/rx3/RxCancellable;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast p1, Lio/reactivex/rxjava3/functions/Cancellable;

    invoke-interface {p2, p1}, Lio/reactivex/rxjava3/core/ObservableEmitter;->setCancellable(Lio/reactivex/rxjava3/functions/Cancellable;)V

    return-void
.end method

.method public static final asSingle(Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Single<",
            "TT;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lkotlinx/coroutines/rx3/RxConvertKt$asSingle$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/rx3/RxConvertKt$asSingle$1;-><init>(Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0}, Lkotlinx/coroutines/rx3/RxSingleKt;->rxSingle(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic from(Lkotlinx/coroutines/flow/Flow;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = ""
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/rx3/RxConvertKt;->from$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic from(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = ""
    .end annotation

    .line 144
    invoke-static {p0, p1}, Lkotlinx/coroutines/rx3/RxConvertKt;->asFlowable(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic from(Lkotlinx/coroutines/flow/Flow;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = ""
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/rx3/RxConvertKt;->from$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic from(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = ""
    .end annotation

    .line 151
    invoke-static {p0, p1}, Lkotlinx/coroutines/rx3/RxConvertKt;->asObservable(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic from$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 143
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/rx3/RxConvertKt;->from(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic from$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 151
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/rx3/RxConvertKt;->from(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
