.class final Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CalendarViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1;->emit(Lcom/boilerplate/network/model/NetworkResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1$WhenMappings;
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
    c = "com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$getCurrentSalary$1$1$1"
    f = "CalendarViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $result:Lcom/boilerplate/network/model/NetworkResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/keep/model/CurrentSalaryResponse;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;


# direct methods
.method constructor <init>(Lcom/boilerplate/network/model/NetworkResult;Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/keep/model/CurrentSalaryResponse;",
            ">;",
            "Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;->$result:Lcom/boilerplate/network/model/NetworkResult;

    iput-object p2, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;->this$0:Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

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

    new-instance p1, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;->$result:Lcom/boilerplate/network/model/NetworkResult;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;->this$0:Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;-><init>(Lcom/boilerplate/network/model/NetworkResult;Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 184
    iget v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 185
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;->$result:Lcom/boilerplate/network/model/NetworkResult;

    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResult;->getStatus()Lcom/boilerplate/network/model/NetworkResultStatus;

    move-result-object p1

    sget-object v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResultStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;->this$0:Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->access$getUiState(Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$CurrentSalaryLoading;

    invoke-direct {v1, v0}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$CurrentSalaryLoading;-><init>(Z)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;->this$0:Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->access$getUiState(Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetCurrentSalaryError;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;->$result:Lcom/boilerplate/network/model/NetworkResult;

    invoke-virtual {v1}, Lcom/boilerplate/network/model/NetworkResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "Failed to fetch current salary"

    :cond_2
    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetCurrentSalaryError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;->$result:Lcom/boilerplate/network/model/NetworkResult;

    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/model/CurrentSalaryResponse;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel$getCurrentSalary$1$1$1;->this$0:Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

    .line 188
    invoke-static {v0}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->access$getUiState(Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetCurrentSalarySuccess;

    invoke-direct {v1, p1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetCurrentSalarySuccess;-><init>(Lcom/laborbook/keep/model/CurrentSalaryResponse;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 198
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 184
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
