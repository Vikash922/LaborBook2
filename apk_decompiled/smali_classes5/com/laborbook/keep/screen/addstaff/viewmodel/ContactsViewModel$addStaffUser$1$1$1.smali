.class final Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ContactsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1;->emit(Lcom/boilerplate/network/model/NetworkResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1$WhenMappings;
    }
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
    c = "com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel$addStaffUser$1$1$1"
    f = "ContactsViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $it:Lcom/boilerplate/network/model/NetworkResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/keep/model/AddStaffUserResponse;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;


# direct methods
.method constructor <init>(Lcom/boilerplate/network/model/NetworkResult;Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/keep/model/AddStaffUserResponse;",
            ">;",
            "Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;->$it:Lcom/boilerplate/network/model/NetworkResult;

    iput-object p2, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

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

    new-instance p1, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;->$it:Lcom/boilerplate/network/model/NetworkResult;

    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;-><init>(Lcom/boilerplate/network/model/NetworkResult;Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 58
    iget v0, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;->$it:Lcom/boilerplate/network/model/NetworkResult;

    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResult;->getStatus()Lcom/boilerplate/network/model/NetworkResultStatus;

    move-result-object p1

    sget-object v0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResultStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 74
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->access$getUiState(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Loading;->INSTANCE:Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Loading;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 59
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->access$getUiState(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffAddError;

    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;->$it:Lcom/boilerplate/network/model/NetworkResult;

    invoke-virtual {v1}, Lcom/boilerplate/network/model/NetworkResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffAddError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 61
    :cond_3
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->access$getUiState(Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel$addStaffUser$1$1$1;->$it:Lcom/boilerplate/network/model/NetworkResult;

    invoke-virtual {v0}, Lcom/boilerplate/network/model/NetworkResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/model/AddStaffUserResponse;

    if-eqz v0, :cond_4

    .line 62
    new-instance v1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffUserAddedSuccess;

    .line 63
    invoke-virtual {v0}, Lcom/laborbook/keep/model/AddStaffUserResponse;->getId()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v0}, Lcom/laborbook/keep/model/AddStaffUserResponse;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-direct {v1, v2, v0}, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffUserAddedSuccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 61
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 77
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 58
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
