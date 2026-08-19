.class final Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SubscriptionRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;->verifySubscription-0E7RQCE(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.laborbook.keep.repository.SubscriptionRepositoryImpl"
    f = "SubscriptionRepositoryImpl.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x65,
        0x65
    }
    m = "verifySubscription-0E7RQCE"
    n = {
        "result",
        "result"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->this$0:Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->label:I

    iget-object p1, p0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->this$0:Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v0, v1}, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;->verifySubscription-0E7RQCE(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
