.class public final Lkotlinx/coroutines/rx3/RxAwaitKt;
.super Ljava/lang/Object;
.source "RxAwait.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxAwait.kt\nkotlinx/coroutines/rx3/RxAwaitKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,274:1\n318#2,11:275\n318#2,11:286\n318#2,11:297\n318#2,11:308\n*S KotlinDebug\n*F\n+ 1 RxAwait.kt\nkotlinx/coroutines/rx3/RxAwaitKt\n*L\n21#1:275,11\n40#1:286,11\n117#1:297,11\n219#1:308,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086@\u00a2\u0006\u0002\u0010\u0003\u001a%\u0010\u0000\u001a\u0004\u0018\u0001H\u0004\"\u0004\u0008\u0000\u0010\u0004*\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00040\u0005H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u001a#\u0010\u0000\u001a\u0002H\u0004\"\u0004\u0008\u0000\u0010\u0004*\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00040\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008\u001a#\u0010\t\u001a\u0002H\u0004\"\u0004\u0008\u0000\u0010\u0004*\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00040\nH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a+\u0010\u000c\u001a\u0002H\u0004\"\u0004\u0008\u0000\u0010\u0004*\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00040\n2\u0006\u0010\r\u001a\u0002H\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e\u001a1\u0010\u000f\u001a\u0002H\u0004\"\u0004\u0008\u0000\u0010\u0004*\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00040\n2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0011H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012\u001a%\u0010\u0013\u001a\u0004\u0018\u0001H\u0004\"\u0004\u0008\u0000\u0010\u0004*\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00040\nH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a#\u0010\u0014\u001a\u0002H\u0004\"\u0004\u0008\u0000\u0010\u0004*\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00040\nH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a9\u0010\u0015\u001a\u0004\u0018\u0001H\u0004\"\u0004\u0008\u0000\u0010\u0004*\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00040\n2\u0006\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u0001H\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018\u001a+\u0010\u0019\u001a\u0002H\u0004\"\u0004\u0008\u0000\u0010\u0004*\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00040\u00052\u0006\u0010\r\u001a\u0002H\u0004H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001a\u001a#\u0010\u001b\u001a\u0002H\u0004\"\u0004\u0008\u0000\u0010\u0004*\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00040\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u001a#\u0010\u001b\u001a\u0002H\u0004\"\u0004\u0008\u0000\u0010\u0004*\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00040\nH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a%\u0010\u001c\u001a\u0004\u0018\u0001H\u0004\"\u0004\u0008\u0000\u0010\u0004*\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00040\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u001a\u0018\u0010\u001d\u001a\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0000\u0082\u0002\u0004\n\u0002\u00089\u00a8\u0006!"
    }
    d2 = {
        "await",
        "",
        "Lio/reactivex/rxjava3/core/CompletableSource;",
        "(Lio/reactivex/rxjava3/core/CompletableSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "T",
        "Lio/reactivex/rxjava3/core/MaybeSource;",
        "(Lio/reactivex/rxjava3/core/MaybeSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/SingleSource;",
        "(Lio/reactivex/rxjava3/core/SingleSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitFirst",
        "Lio/reactivex/rxjava3/core/ObservableSource;",
        "(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitFirstOrDefault",
        "default",
        "(Lio/reactivex/rxjava3/core/ObservableSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitFirstOrElse",
        "defaultValue",
        "Lkotlin/Function0;",
        "(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitFirstOrNull",
        "awaitLast",
        "awaitOne",
        "mode",
        "Lkotlinx/coroutines/rx3/Mode;",
        "(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlinx/coroutines/rx3/Mode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitOrDefault",
        "(Lio/reactivex/rxjava3/core/MaybeSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitSingle",
        "awaitSingleOrNull",
        "disposeOnCancellation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "d",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
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
.method public static final synthetic access$awaitOne(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlinx/coroutines/rx3/Mode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/rx3/RxAwaitKt;->awaitOne(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlinx/coroutines/rx3/Mode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final await(Lio/reactivex/rxjava3/core/CompletableSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/CompletableSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 276
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 282
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 283
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 22
    new-instance v2, Lkotlinx/coroutines/rx3/RxAwaitKt$await$2$1;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/rx3/RxAwaitKt$await$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v2, Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {p0, v2}, Lio/reactivex/rxjava3/core/CompletableSource;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    .line 284
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 275
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    .line 285
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic await(Lio/reactivex/rxjava3/core/MaybeSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of awaitSingleOrNull()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.awaitSingleOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    .line 82
    invoke-static {p0, p1}, Lkotlinx/coroutines/rx3/RxAwaitKt;->awaitSingleOrNull(Lio/reactivex/rxjava3/core/MaybeSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final await(Lio/reactivex/rxjava3/core/SingleSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/SingleSource<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 298
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 304
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 305
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 118
    new-instance v2, Lkotlinx/coroutines/rx3/RxAwaitKt$await$5$1;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/rx3/RxAwaitKt$await$5$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v2, Lio/reactivex/rxjava3/core/SingleObserver;

    invoke-interface {p0, v2}, Lio/reactivex/rxjava3/core/SingleSource;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 306
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 297
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p0
.end method

.method public static final awaitFirst(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 138
    sget-object v1, Lkotlinx/coroutines/rx3/Mode;->FIRST:Lkotlinx/coroutines/rx3/Mode;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/rx3/RxAwaitKt;->awaitOne$default(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlinx/coroutines/rx3/Mode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    return-object p0
.end method

.method public static final awaitFirstOrDefault(Lio/reactivex/rxjava3/core/ObservableSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "TT;>;TT;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 151
    sget-object v0, Lkotlinx/coroutines/rx3/Mode;->FIRST_OR_DEFAULT:Lkotlinx/coroutines/rx3/Mode;

    invoke-static {p0, v0, p1, p2}, Lkotlinx/coroutines/rx3/RxAwaitKt;->awaitOne(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlinx/coroutines/rx3/Mode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    return-object p0
.end method

.method public static final awaitFirstOrElse(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitFirstOrElse$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitFirstOrElse$1;

    iget v1, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitFirstOrElse$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitFirstOrElse$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitFirstOrElse$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitFirstOrElse$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitFirstOrElse$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v4, v0

    iget-object p2, v4, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitFirstOrElse$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 173
    iget v1, v4, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitFirstOrElse$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v4, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitFirstOrElse$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 174
    sget-object p2, Lkotlinx/coroutines/rx3/Mode;->FIRST_OR_DEFAULT:Lkotlinx/coroutines/rx3/Mode;

    iput-object p1, v4, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitFirstOrElse$1;->L$0:Ljava/lang/Object;

    iput v2, v4, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitFirstOrElse$1;->label:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/rx3/RxAwaitKt;->awaitOne$default(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlinx/coroutines/rx3/Mode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    :cond_4
    return-object p2
.end method

.method public static final awaitFirstOrNull(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 162
    sget-object v1, Lkotlinx/coroutines/rx3/Mode;->FIRST_OR_DEFAULT:Lkotlinx/coroutines/rx3/Mode;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/rx3/RxAwaitKt;->awaitOne$default(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlinx/coroutines/rx3/Mode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final awaitLast(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 187
    sget-object v1, Lkotlinx/coroutines/rx3/Mode;->LAST:Lkotlinx/coroutines/rx3/Mode;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/rx3/RxAwaitKt;->awaitOne$default(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlinx/coroutines/rx3/Mode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    return-object p0
.end method

.method private static final awaitOne(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlinx/coroutines/rx3/Mode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "TT;>;",
            "Lkotlinx/coroutines/rx3/Mode;",
            "TT;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 309
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 315
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 316
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 220
    new-instance v2, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitOne$2$1;

    invoke-direct {v2, v1, p1, p2}, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitOne$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/rx3/Mode;Ljava/lang/Object;)V

    check-cast v2, Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p0, v2}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    .line 317
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 308
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p0
.end method

.method static synthetic awaitOne$default(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlinx/coroutines/rx3/Mode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 216
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/rx3/RxAwaitKt;->awaitOne(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlinx/coroutines/rx3/Mode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic awaitOrDefault(Lio/reactivex/rxjava3/core/MaybeSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of awaitSingleOrNull()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.awaitSingleOrNull() ?: default"
            imports = {}
        .end subannotation
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitOrDefault$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitOrDefault$1;

    iget v1, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitOrDefault$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitOrDefault$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitOrDefault$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitOrDefault$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitOrDefault$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitOrDefault$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 105
    iget v2, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitOrDefault$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitOrDefault$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p1, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitOrDefault$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitOrDefault$1;->label:I

    invoke-static {p0, v0}, Lkotlinx/coroutines/rx3/RxAwaitKt;->awaitSingleOrNull(Lio/reactivex/rxjava3/core/MaybeSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, p2

    :goto_2
    return-object p1
.end method

.method public static final awaitSingle(Lio/reactivex/rxjava3/core/MaybeSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/MaybeSource<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitSingle$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitSingle$1;

    iget v1, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitSingle$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitSingle$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitSingle$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitSingle$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitSingle$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitSingle$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 59
    iget v2, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitSingle$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v3, v0, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitSingle$1;->label:I

    invoke-static {p0, v0}, Lkotlinx/coroutines/rx3/RxAwaitKt;->awaitSingleOrNull(Lio/reactivex/rxjava3/core/MaybeSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public static final awaitSingle(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 201
    sget-object v1, Lkotlinx/coroutines/rx3/Mode;->SINGLE:Lkotlinx/coroutines/rx3/Mode;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/rx3/RxAwaitKt;->awaitOne$default(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlinx/coroutines/rx3/Mode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    return-object p0
.end method

.method public static final awaitSingleOrNull(Lio/reactivex/rxjava3/core/MaybeSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/MaybeSource<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 287
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 293
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 294
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 41
    new-instance v2, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitSingleOrNull$2$1;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/rx3/RxAwaitKt$awaitSingleOrNull$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v2, Lio/reactivex/rxjava3/core/MaybeObserver;

    invoke-interface {p0, v2}, Lio/reactivex/rxjava3/core/MaybeSource;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    .line 295
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 286
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p0
.end method

.method public static final disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "*>;",
            "Lio/reactivex/rxjava3/disposables/Disposable;",
            ")V"
        }
    .end annotation

    .line 206
    new-instance v0, Lkotlinx/coroutines/rx3/RxAwaitKt$disposeOnCancellation$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/rx3/RxAwaitKt$disposeOnCancellation$1;-><init>(Lio/reactivex/rxjava3/disposables/Disposable;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
