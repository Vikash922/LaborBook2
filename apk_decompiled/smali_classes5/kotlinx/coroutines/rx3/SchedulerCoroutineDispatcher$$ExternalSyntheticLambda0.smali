.class public final synthetic Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/CancellableContinuation;

.field public final synthetic f$1:Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CancellableContinuation;

    iget-object v1, p0, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;

    invoke-static {v0, v1}, Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;->$r8$lambda$M2FlZgcFnHZg6xDhjcDOh04KXxg(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/rx3/SchedulerCoroutineDispatcher;)V

    return-void
.end method
