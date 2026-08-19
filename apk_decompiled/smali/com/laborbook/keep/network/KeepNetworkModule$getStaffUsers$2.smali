.class final Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KeepNetworkModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/network/KeepNetworkModule;->getStaffUsers(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lretrofit2/Response<",
        "Lcom/boilerplate/network/model/DataResponse<",
        "Lcom/laborbook/keep/model/StaffUserResponseModel;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lretrofit2/Response;",
        "Lcom/boilerplate/network/model/DataResponse;",
        "Lcom/laborbook/keep/model/StaffUserResponseModel;"
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
    c = "com.laborbook.keep.network.KeepNetworkModule$getStaffUsers$2"
    f = "KeepNetworkModule.kt"
    i = {}
    l = {
        0x22
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/network/KeepNetworkModule;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/network/KeepNetworkModule;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/network/KeepNetworkModule;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    iput-object p2, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;->$id:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;

    iget-object v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    iget-object v2, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;->$id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;-><init>(Lcom/laborbook/keep/network/KeepNetworkModule;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/keep/model/StaffUserResponseModel;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 34
    iget v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;->this$0:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-static {p1}, Lcom/laborbook/keep/network/KeepNetworkModule;->access$getApi$p(Lcom/laborbook/keep/network/KeepNetworkModule;)Lcom/laborbook/keep/network/KeepApi;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;->$id:Ljava/lang/String;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/network/KeepNetworkModule$getStaffUsers$2;->label:I

    invoke-interface {p1, v1, v3}, Lcom/laborbook/keep/network/KeepApi;->getStaffUsers(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
