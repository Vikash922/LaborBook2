.class final Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OvertimeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;->deleteOvertime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.laborbook.keep.screen.calendar.viewmodel.OvertimeViewModel$deleteOvertime$1"
    f = "OvertimeViewModel.kt"
    i = {}
    l = {
        0x33,
        0x33
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $date:Ljava/lang/String;

.field final synthetic $managerId:Ljava/lang/String;

.field final synthetic $userId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->this$0:Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;

    iput-object p2, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->$date:Ljava/lang/String;

    iput-object p4, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->$managerId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->this$0:Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;

    iget-object v2, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->$date:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->$managerId:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;-><init>(Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 49
    iget v1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    :try_start_2
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->this$0:Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;->access$getRepository$p(Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;)Lcom/laborbook/keep/repository/KeepRepository;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->$userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->$date:Ljava/lang/String;

    iget-object v5, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->$managerId:Ljava/lang/String;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->label:I

    invoke-interface {p1, v1, v4, v5, v6}, Lcom/laborbook/keep/repository/KeepRepository;->deleteOvertime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1$1;

    iget-object v3, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->this$0:Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;

    invoke-direct {v1, v3}, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1$1;-><init>(Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;)V

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->label:I

    invoke-interface {p1, v1, v3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v0, :cond_4

    return-object v0

    .line 59
    :goto_1
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel$deleteOvertime$1;->this$0:Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;->getOtResult()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 61
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
