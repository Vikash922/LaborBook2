.class final Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EditProfileViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;->updateStaffSalary(Ljava/lang/String;Ljava/lang/String;D)V
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
    c = "com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel$updateStaffSalary$1"
    f = "EditProfileViewModel.kt"
    i = {}
    l = {
        0x30,
        0x30
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $salary:D

.field final synthetic $salaryType:Ljava/lang/String;

.field final synthetic $staffId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;Ljava/lang/String;DLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->this$0:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;

    iput-object p2, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->$salaryType:Ljava/lang/String;

    iput-wide p3, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->$salary:D

    iput-object p5, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->$staffId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;

    iget-object v1, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->this$0:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;

    iget-object v2, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->$salaryType:Ljava/lang/String;

    iget-wide v3, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->$salary:D

    iget-object v5, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->$staffId:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;-><init>(Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;Ljava/lang/String;DLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 40
    iget v1, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    :try_start_2
    iget-object p1, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->this$0:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;->access$getCurrentDateAsString(Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;)Ljava/lang/String;

    move-result-object p1

    .line 43
    new-instance v1, Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;

    .line 44
    iget-object v4, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->$salaryType:Ljava/lang/String;

    .line 45
    iget-wide v5, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->$salary:D

    .line 43
    invoke-direct {v1, v4, v5, v6, p1}, Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->this$0:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;->access$getKeepRepository$p(Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;)Lcom/laborbook/keep/repository/KeepRepository;

    move-result-object p1

    iget-object v4, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->$staffId:Ljava/lang/String;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->label:I

    invoke-interface {p1, v4, v1, v5}, Lcom/laborbook/keep/repository/KeepRepository;->addOrUpdateSalary(Ljava/lang/String;Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    sget-object v1, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1$1;->INSTANCE:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1$1;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->label:I

    invoke-interface {p1, v1, v3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 51
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->this$0:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;->getSalaryUpdateResult()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 53
    :goto_2
    iget-object v0, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->this$0:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;->getSalaryUpdateResult()Landroidx/lifecycle/MutableLiveData;

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

    .line 55
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
