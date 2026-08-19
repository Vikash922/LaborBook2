.class final Lkotlinx/coroutines/rx3/SubscriptionChannel;
.super Lkotlinx/coroutines/channels/BufferedChannel;
.source "RxChannel.kt"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;
.implements Lio/reactivex/rxjava3/core/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/BufferedChannel<",
        "TT;>;",
        "Lio/reactivex/rxjava3/core/Observer<",
        "TT;>;",
        "Lio/reactivex/rxjava3/core/MaybeObserver<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0007\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00010\u00032\n\u0012\u0006\u0012\u0004\u0008\u0002H\u00010\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0008\u00028\u0000H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0008H\u0016J\u001a\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0008\u00028\u0000H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011R\u0011\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007X\u0082\u0004\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u00089\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlinx/coroutines/rx3/SubscriptionChannel;",
        "T",
        "Lkotlinx/coroutines/channels/BufferedChannel;",
        "Lio/reactivex/rxjava3/core/Observer;",
        "Lio/reactivex/rxjava3/core/MaybeObserver;",
        "()V",
        "_subscription",
        "Lkotlinx/atomicfu/AtomicRef;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "onClosedIdempotent",
        "",
        "onComplete",
        "onError",
        "e",
        "",
        "onNext",
        "t",
        "(Ljava/lang/Object;)V",
        "onSubscribe",
        "sub",
        "onSuccess",
        "kotlinx-coroutines-rx3"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic _subscription$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _subscription$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_subscription$volatile"

    const-class v2, Lkotlinx/coroutines/rx3/SubscriptionChannel;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/rx3/SubscriptionChannel;->_subscription$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const v2, 0x7fffffff

    .line 56
    invoke-direct {p0, v2, v0, v1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final synthetic get_subscription$volatile()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/rx3/SubscriptionChannel;->_subscription$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic get_subscription$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/rx3/SubscriptionChannel;->_subscription$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic set_subscription$volatile(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/rx3/SubscriptionChannel;->_subscription$volatile:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onClosedIdempotent()V
    .locals 2

    .line 62
    invoke-static {}, Lkotlinx/coroutines/rx3/SubscriptionChannel;->get_subscription$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/rx3/SubscriptionChannel;->close(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/rx3/SubscriptionChannel;->close(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/rx3/SubscriptionChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/rx3/SubscriptionChannel;->get_subscription$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/rx3/SubscriptionChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/rx3/SubscriptionChannel;->close(Ljava/lang/Throwable;)Z

    return-void
.end method
