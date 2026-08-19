.class final Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ResponseCallAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter;->adapt(Lretrofit2/Call;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lretrofit2/Response<",
        "TT;>;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResponseCallAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponseCallAdapter.kt\ntech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,36:1\n314#2,11:37\n*S KotlinDebug\n*F\n+ 1 ResponseCallAdapter.kt\ntech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1\n*L\n22#1:37,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lretrofit2/Response;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "tech.thdev.network.flowcalladapterfactory.internal.ResponseCallAdapter$adapt$1"
    f = "ResponseCallAdapter.kt"
    i = {}
    l = {
        0x25,
        0x16
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $call:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->$call:Lretrofit2/Call;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;

    iget-object v1, p0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->$call:Lretrofit2/Call;

    invoke-direct {v0, v1, p2}, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;-><init>(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 21
    iget v1, p0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    iget-object v1, p0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v3, p0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lretrofit2/Call;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 22
    iget-object p1, p0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->$call:Lretrofit2/Call;

    .line 37
    iput-object p1, p0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->label:I

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    .line 38
    new-instance v5, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 44
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 45
    move-object v3, v5

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    .line 23
    new-instance v6, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1$1$1;

    invoke-direct {v6, v3}, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1$1$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v3, v6}, Ltech/thdev/network/flowcalladapterfactory/internal/InternalUtilKt;->registerCallback(Lretrofit2/Call;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function1;)V

    .line 33
    invoke-static {p1, v3}, Ltech/thdev/network/flowcalladapterfactory/internal/InternalUtilKt;->registerOnCancellation(Lretrofit2/Call;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 46
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 37
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_3

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne p1, v0, :cond_4

    return-object v0

    .line 47
    :cond_4
    :goto_0
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x0

    .line 22
    iput-object v4, p0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter$adapt$1;->label:I

    invoke-interface {v1, p1, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 35
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
