.class public final Landroidx/datastore/rxjava3/RxDataStore;
.super Ljava/lang/Object;
.source "RxDataStore.kt"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/rxjava3/RxDataStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/disposables/Disposable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u0015*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001\u0015B\u001d\u0008\u0002\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0007J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0006\u0010\u000f\u001a\u00020\u0010J(\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00122\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00120\u0014H\u0007R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/datastore/rxjava3/RxDataStore;",
        "T",
        "",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "delegateDs",
        "Landroidx/datastore/core/DataStore;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;)V",
        "data",
        "Lio/reactivex/rxjava3/core/Flowable;",
        "dispose",
        "",
        "isDisposed",
        "",
        "shutdownComplete",
        "Lio/reactivex/rxjava3/core/Completable;",
        "updateDataAsync",
        "Lio/reactivex/rxjava3/core/Single;",
        "transform",
        "Lio/reactivex/rxjava3/functions/Function;",
        "Companion",
        "datastore-rxjava3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/datastore/rxjava3/RxDataStore$Companion;


# instance fields
.field private final delegateDs:Landroidx/datastore/core/DataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/DataStore<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/rxjava3/RxDataStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/rxjava3/RxDataStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/datastore/rxjava3/RxDataStore;->Companion:Landroidx/datastore/rxjava3/RxDataStore$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "TT;>;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/datastore/rxjava3/RxDataStore;->delegateDs:Landroidx/datastore/core/DataStore;

    .line 50
    iput-object p2, p0, Landroidx/datastore/rxjava3/RxDataStore;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/datastore/rxjava3/RxDataStore;-><init>(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final synthetic access$getDelegateDs$p(Landroidx/datastore/rxjava3/RxDataStore;)Landroidx/datastore/core/DataStore;
    .locals 0

    .line 41
    iget-object p0, p0, Landroidx/datastore/rxjava3/RxDataStore;->delegateDs:Landroidx/datastore/core/DataStore;

    return-object p0
.end method


# virtual methods
.method public final data()Lio/reactivex/rxjava3/core/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Flowable<",
            "TT;>;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroidx/datastore/rxjava3/RxDataStore;->delegateDs:Landroidx/datastore/core/DataStore;

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v1, p0, Landroidx/datastore/rxjava3/RxDataStore;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/rx3/RxConvertKt;->asFlowable(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 3

    .line 68
    iget-object v0, p0, Landroidx/datastore/rxjava3/RxDataStore;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/datastore/rxjava3/RxDataStore;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final shutdownComplete()Lio/reactivex/rxjava3/core/Completable;
    .locals 3

    .line 80
    iget-object v0, p0, Landroidx/datastore/rxjava3/RxDataStore;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 81
    iget-object v1, p0, Landroidx/datastore/rxjava3/RxDataStore;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lkotlinx/coroutines/rx3/RxConvertKt;->asCompletable(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final updateDataAsync(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Single;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Function<",
            "TT;",
            "Lio/reactivex/rxjava3/core/Single<",
            "TT;>;>;)",
            "Lio/reactivex/rxjava3/core/Single<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Landroidx/datastore/rxjava3/RxDataStore;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Landroidx/datastore/rxjava3/RxDataStore$updateDataAsync$1;

    invoke-direct {v3, p0, p1, v2}, Landroidx/datastore/rxjava3/RxDataStore$updateDataAsync$1;-><init>(Landroidx/datastore/rxjava3/RxDataStore;Lio/reactivex/rxjava3/functions/Function;Lkotlin/coroutines/Continuation;)V

    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    .line 127
    iget-object v0, p0, Landroidx/datastore/rxjava3/RxDataStore;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlinx/coroutines/rx3/RxConvertKt;->asSingle(Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/CoroutineContext;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method
