.class final Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OtpFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/auth/screen/login/view/OtpFragment;->registerOnClickListeners()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOtpFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OtpFragment.kt\ncom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,274:1\n1#2:275\n*E\n"
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
    c = "com.laborbook.auth.screen.login.view.OtpFragment$registerOnClickListeners$1$1$1"
    f = "OtpFragment.kt"
    i = {
        0x1
    }
    l = {
        0x6c,
        0x6d
    }
    m = "invokeSuspend"
    n = {
        "installSource"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/laborbook/auth/databinding/FragmentOtpBinding;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/databinding/FragmentOtpBinding;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/screen/login/view/OtpFragment;",
            "Lcom/laborbook/auth/databinding/FragmentOtpBinding;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    iput-object p2, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->$this_apply:Lcom/laborbook/auth/databinding/FragmentOtpBinding;

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

    new-instance p1, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;

    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    iget-object v1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->$this_apply:Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    invoke-direct {p1, v0, v1, p2}, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;-><init>(Lcom/laborbook/auth/screen/login/view/OtpFragment;Lcom/laborbook/auth/databinding/FragmentOtpBinding;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 107
    iget v1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->label:I

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-virtual {p1}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getINSTALL_SOURCE()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 107
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-virtual {v1}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v5, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v5}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getINSTALL_REFERRER_RAW()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->label:I

    invoke-static {v1, v5}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    .line 107
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-static {v1}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->access$getViewModel(Lcom/laborbook/auth/screen/login/view/OtpFragment;)Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-static {v2}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->access$getMobileNumber$p(Lcom/laborbook/auth/screen/login/view/OtpFragment;)Ljava/lang/String;

    move-result-object v7

    .line 114
    iget-object v2, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->$this_apply:Lcom/laborbook/auth/databinding/FragmentOtpBinding;

    iget-object v2, v2, Lcom/laborbook/auth/databinding/FragmentOtpBinding;->otpView:Lcom/mukeshsolanki/OtpView;

    invoke-virtual {v2}, Lcom/mukeshsolanki/OtpView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 115
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    move-object v0, v5

    :cond_5
    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 116
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move-object v5, p1

    :goto_2
    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    .line 111
    new-instance p1, Lcom/laborbook/auth/model/request/AuthRequestBody;

    const-string v6, "91"

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/laborbook/auth/model/request/AuthRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, p1}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->verifyOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;)Lkotlinx/coroutines/Job;

    .line 119
    iget-object p1, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    new-array v0, v4, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    iget-object v2, p0, Lcom/laborbook/auth/screen/login/view/OtpFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/OtpFragment;

    invoke-static {v2}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->access$getMobileNumber$p(Lcom/laborbook/auth/screen/login/view/OtpFragment;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v3, v2

    :goto_3
    const-string v2, "mobile_number"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "verify_otp"

    invoke-virtual {p1, v1, v0}, Lcom/laborbook/auth/screen/login/view/OtpFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 120
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
