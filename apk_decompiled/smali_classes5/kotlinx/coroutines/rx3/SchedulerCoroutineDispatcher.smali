.class public final Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "RxScheduler.kt"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxScheduler.kt\nkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,178:1\n1#2:179\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001c\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u00060\rj\u0002`\u000eH\u0016J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\n\u0010\u000c\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u001e\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00182\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Lkotlinx/coroutines/Delay;",
        "scheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "(Lio/reactivex/rxjava3/core/Scheduler;)V",
        "getScheduler",
        "()Lio/reactivex/rxjava3/core/Scheduler;",
        "dispatch",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "invokeOnTimeout",
        "Lkotlinx/coroutines/DisposableHandle;",
        "timeMillis",
        "",
        "scheduleResumeAfterDelay",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "toString",
        "",
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


# instance fields
.field private final scheduler:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method public static synthetic $r8$lambda$JuLM-zPY1VZPpZ8cBXpZjRNL6K4(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    invoke-static {p0}, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;->invokeOnTimeout$lambda$2(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M2FlZgcFnHZg6xDhjcDOh04KXxg(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;->scheduleResumeAfterDelay$lambda$1(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;)V

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/core/Scheduler;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    .line 148
    iput-object p1, p0, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method

.method private static final invokeOnTimeout$lambda$2(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    .line 166
    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method

.method private static final scheduleResumeAfterDelay$lambda$1(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;)V
    .locals 1

    .line 158
    check-cast p1, Lkotlinx/coroutines/CoroutineDispatcher;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/CancellableContinuation;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated without replacement as an internal method never intended for public use"
    .end annotation

    .line 144
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay$DefaultImpls;->delay(Lkotlinx/coroutines/Delay;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 173
    instance-of v0, p1, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;

    iget-object p1, p1, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    iget-object v0, p0, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getScheduler()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 148
    iget-object v0, p0, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 176
    iget-object v0, p0, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;
    .locals 1

    .line 165
    iget-object p4, p0, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, p3, p1, p2, v0}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 166
    new-instance p2, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher$$ExternalSyntheticLambda1;-><init>(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-object p2
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v1, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, p0}, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;)V

    .line 159
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 157
    invoke-virtual {v0, v1, p1, p2, v2}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 160
    invoke-static {p3, p1}, Lkotlinx/coroutines/rx3/RxAwaitKt;->disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Scheduler;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
