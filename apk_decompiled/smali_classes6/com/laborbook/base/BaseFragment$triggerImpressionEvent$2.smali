.class final Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BaseFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/base/BaseFragment;->triggerImpressionEvent(Ljava/lang/String;Ljava/util/HashMap;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.laborbook.base.BaseFragment$triggerImpressionEvent$2"
    f = "BaseFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $eventName:Ljava/lang/String;

.field final synthetic $hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/laborbook/base/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/laborbook/base/BaseFragment<",
            "TVB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/base/BaseFragment<",
            "TVB;>;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;->this$0:Lcom/laborbook/base/BaseFragment;

    iput-object p2, p0, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;->$eventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;->$hashMap:Ljava/util/HashMap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;

    iget-object v0, p0, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;->this$0:Lcom/laborbook/base/BaseFragment;

    iget-object v1, p0, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;->$eventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;->$hashMap:Ljava/util/HashMap;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;-><init>(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 73
    iget v0, p0, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    :try_start_0
    iget-object p1, p0, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;->this$0:Lcom/laborbook/base/BaseFragment;

    invoke-virtual {p1}, Lcom/laborbook/base/BaseFragment;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;->$eventName:Ljava/lang/String;

    .line 77
    const-string v1, "impression"

    const/4 v2, 0x2

    .line 78
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Mixpanel"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Firebase"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 79
    iget-object v3, p0, Lcom/laborbook/base/BaseFragment$triggerImpressionEvent$2;->$hashMap:Ljava/util/HashMap;

    .line 75
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/laborbook/base/analytics/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
