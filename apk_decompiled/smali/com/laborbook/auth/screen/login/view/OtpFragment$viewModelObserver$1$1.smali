.class final Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OtpFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/auth/screen/login/view/OtpFragment;->viewModelObserver()V
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
    c = "com.laborbook.auth.screen.login.view.OtpFragment$viewModelObserver$1$1"
    f = "OtpFragment.kt"
    i = {}
    l = {
        0x98
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $it:Lcom/laborbook/auth/screen/login/uistate/UiState;

.field label:I

.field final synthetic this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/screen/login/uistate/UiState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/screen/login/view/OtpFragment;",
            "Lcom/laborbook/auth/screen/login/uistate/UiState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    iput-object p2, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->$it:Lcom/laborbook/auth/screen/login/uistate/UiState;

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

    new-instance p1, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;

    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    iget-object v1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->$it:Lcom/laborbook/auth/screen/login/uistate/UiState;

    invoke-direct {p1, v0, v1, p2}, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;-><init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/screen/login/uistate/UiState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 148
    iget v1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->label:I

    const-string v2, "requireContext(...)"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 149
    iget-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    check-cast p1, Lcom/laborbook/base/BaseFragment;

    const-string v1, "login_success"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {p1, v1, v4, v5, v4}, Lcom/laborbook/base/BaseFragment;->triggerSystemEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 150
    iget-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    check-cast p1, Lcom/laborbook/base/BaseFragment;

    const-string v1, "mobile_otp_truecaller"

    invoke-static {p1, v1, v4, v5, v4}, Lcom/laborbook/base/BaseFragment;->triggerSystemEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 151
    sget-object v6, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->INSTANCE:Lcom/laborbook/base/analytics/FacebookPaymentEvents;

    iget-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-virtual {p1}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v8, "otp"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logCompletedRegistration$default(Lcom/laborbook/base/analytics/FacebookPaymentEvents;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    iget-object v1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->$it:Lcom/laborbook/auth/screen/login/uistate/UiState;

    check-cast v1, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;

    invoke-virtual {v1}, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpVerified;->getAuthResponse()Lcom/laborbook/auth/model/request/AuthResponse;

    move-result-object v1

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->label:I

    invoke-static {p1, v1, v4}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->access$storeUserDetails(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/model/request/AuthResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 153
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-virtual {p1}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getModuleNavigator()Lcom/laborbook/base/navigator/ModuleNavigator;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-virtual {v0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/laborbook/base/navigator/ActivitiesNameEnum;->BookKeepActivityEnum:Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    invoke-virtual {p1, v0, v1}, Lcom/laborbook/base/navigator/ModuleNavigator;->startActivity(Landroid/content/Context;Lcom/laborbook/base/navigator/ActivitiesNameEnum;)V

    .line 154
    iget-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$viewModelObserver$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-virtual {p1}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 155
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
