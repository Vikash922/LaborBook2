.class public final Ltech/thdev/network/flowcalladapterfactory/internal/InternalUtilKt;
.super Ljava/lang/Object;
.source "InternalUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001aM\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00052\'\u0010\u0006\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00020\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u00010\u0007H\u0000\u001a\u001c\u0010\u000c\u001a\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0000\u00a8\u0006\r"
    }
    d2 = {
        "registerCallback",
        "",
        "T",
        "Lretrofit2/Call;",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "success",
        "Lkotlin/Function1;",
        "Lretrofit2/Response;",
        "Lkotlin/ParameterName;",
        "name",
        "response",
        "registerOnCancellation",
        "flow-call-adapter-factory_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final registerCallback(Lretrofit2/Call;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ltech/thdev/network/flowcalladapterfactory/internal/InternalUtilKt$registerCallback$1;

    invoke-direct {v0, p2, p1}, Ltech/thdev/network/flowcalladapterfactory/internal/InternalUtilKt$registerCallback$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p0, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public static final registerOnCancellation(Lretrofit2/Call;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "*>;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Ltech/thdev/network/flowcalladapterfactory/internal/InternalUtilKt$registerOnCancellation$1;

    invoke-direct {v0, p0}, Ltech/thdev/network/flowcalladapterfactory/internal/InternalUtilKt$registerOnCancellation$1;-><init>(Lretrofit2/Call;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
