.class final Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EditProfileViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel$updateStaffProfile$1$1"
    f = "EditProfileViewModel.kt"
    i = {}
    l = {
        0x5e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $newName:Ljava/lang/String;

.field final synthetic $salary:Ljava/lang/Double;

.field final synthetic $salaryChanged:Z

.field final synthetic $salaryType:Ljava/lang/String;

.field final synthetic $staffId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;


# direct methods
.method constructor <init>(ZLjava/lang/Double;Ljava/lang/String;Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$salaryChanged:Z

    iput-object p2, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$salary:Ljava/lang/Double;

    iput-object p3, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$salaryType:Ljava/lang/String;

    iput-object p4, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->this$0:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;

    iput-object p5, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$staffId:Ljava/lang/String;

    iput-object p6, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$newName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v8, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;

    iget-boolean v1, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$salaryChanged:Z

    iget-object v2, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$salary:Ljava/lang/Double;

    iget-object v3, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$salaryType:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->this$0:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;

    iget-object v5, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$staffId:Ljava/lang/String;

    iget-object v6, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$newName:Ljava/lang/String;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;-><init>(ZLjava/lang/Double;Ljava/lang/String;Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/coroutines/Continuation;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 67
    iget v1, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 71
    check-cast v1, Ljava/util/Collection;

    new-instance v3, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1$1;

    iget-object v4, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->this$0:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;

    iget-object v5, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$staffId:Ljava/lang/String;

    iget-object v6, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$newName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v3, v4, v5, v6, v9}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1$1;-><init>(Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    iget-boolean v3, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$salaryChanged:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$salary:Ljava/lang/Double;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$salaryType:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 80
    iget-object v3, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->this$0:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;

    invoke-static {v3}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;->access$getCurrentDateAsString(Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;)Ljava/lang/String;

    move-result-object v3

    .line 81
    new-instance v4, Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;

    .line 82
    iget-object v5, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$salaryType:Ljava/lang/String;

    .line 83
    iget-object v6, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$salary:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 81
    invoke-direct {v4, v5, v6, v7, v3}, Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 86
    new-instance v3, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1$2;

    iget-object v5, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->this$0:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;

    iget-object v6, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->$staffId:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v4, v9}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1$2;-><init>(Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;Ljava/lang/String;Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;Lkotlin/coroutines/Continuation;)V

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_2
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->label:I

    invoke-static {v1, p1}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 95
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffProfile$1$1;->this$0:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;->getUpdateResult()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 96
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
