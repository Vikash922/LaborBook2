.class final Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel$deleteStaffUser$1$1;
.super Ljava/lang/Object;
.source "DeleteStaffViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel$deleteStaffUser$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
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


# instance fields
.field final synthetic this$0:Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel$deleteStaffUser$1$1;->this$0:Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/boilerplate/network/model/NetworkResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 23
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel$deleteStaffUser$1$1$1;

    iget-object v2, p0, Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel$deleteStaffUser$1$1;->this$0:Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel$deleteStaffUser$1$1$1;-><init>(Lcom/boilerplate/network/model/NetworkResult;Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Lcom/boilerplate/network/model/NetworkResult;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel$deleteStaffUser$1$1;->emit(Lcom/boilerplate/network/model/NetworkResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
