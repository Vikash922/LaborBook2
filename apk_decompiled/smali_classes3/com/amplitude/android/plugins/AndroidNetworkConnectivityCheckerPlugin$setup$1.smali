.class final Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidNetworkConnectivityCheckerPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->setup(Lcom/amplitude/core/Amplitude;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.amplitude.android.plugins.AndroidNetworkConnectivityCheckerPlugin$setup$1"
    f = "AndroidNetworkConnectivityCheckerPlugin.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $amplitude:Lcom/amplitude/core/Amplitude;

.field label:I

.field final synthetic this$0:Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;


# direct methods
.method constructor <init>(Lcom/amplitude/core/Amplitude;Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amplitude/core/Amplitude;",
            "Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;->$amplitude:Lcom/amplitude/core/Amplitude;

    iput-object p2, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;->this$0:Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;

    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;->$amplitude:Lcom/amplitude/core/Amplitude;

    iget-object v1, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;->this$0:Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;

    invoke-direct {p1, v0, v1, p2}, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;-><init>(Lcom/amplitude/core/Amplitude;Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 24
    iget v0, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;->$amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object p1

    iget-object v0, p0, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$setup$1;->this$0:Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;

    invoke-virtual {v0}, Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;->getNetworkConnectivityChecker$android_release()Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;->isConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amplitude/core/Configuration;->setOffline(Ljava/lang/Boolean;)V

    .line 26
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
