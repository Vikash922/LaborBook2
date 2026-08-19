.class final Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/auth/screen/login/view/LoginFragment;->onSuccess(Lcom/truecaller/android/sdk/oAuth/TcOAuthData;)V
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
    value = "SMAP\nLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginFragment.kt\ncom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,452:1\n1#2:453\n*E\n"
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
    c = "com.laborbook.auth.screen.login.view.LoginFragment$onSuccess$1$1"
    f = "LoginFragment.kt"
    i = {
        0x1
    }
    l = {
        0x164,
        0x165
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
.field final synthetic $tcOAuthData:Lcom/truecaller/android/sdk/oAuth/TcOAuthData;

.field final synthetic $verifier:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lcom/truecaller/android/sdk/oAuth/TcOAuthData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/screen/login/view/LoginFragment;",
            "Lcom/truecaller/android/sdk/oAuth/TcOAuthData;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    iput-object p2, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->$tcOAuthData:Lcom/truecaller/android/sdk/oAuth/TcOAuthData;

    iput-object p3, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->$verifier:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;

    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    iget-object v1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->$tcOAuthData:Lcom/truecaller/android/sdk/oAuth/TcOAuthData;

    iget-object v2, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->$verifier:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;-><init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lcom/truecaller/android/sdk/oAuth/TcOAuthData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 355
    iget v1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->label:I

    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->L$0:Ljava/lang/Object;

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

    .line 356
    iget-object p1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-virtual {p1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getINSTALL_SOURCE()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 355
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 357
    iget-object v1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-virtual {v1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getINSTALL_REFERRER_RAW()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    .line 355
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 358
    iget-object v1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->this$0:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-static {v1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->access$getViewModel(Lcom/laborbook/auth/screen/login/view/LoginFragment;)Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    move-result-object v1

    .line 360
    iget-object v2, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->$tcOAuthData:Lcom/truecaller/android/sdk/oAuth/TcOAuthData;

    invoke-virtual {v2}, Lcom/truecaller/android/sdk/oAuth/TcOAuthData;->getAuthorizationCode()Ljava/lang/String;

    move-result-object v2

    .line 361
    iget-object v3, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;->$verifier:Ljava/lang/String;

    .line 362
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    move-object v0, v5

    :cond_5
    check-cast v0, Ljava/lang/String;

    .line 363
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move-object v5, p1

    :goto_2
    check-cast v5, Ljava/lang/String;

    .line 359
    new-instance p1, Lcom/laborbook/auth/model/request/TruecallerRequestBody;

    invoke-direct {p1, v2, v3, v0, v5}, Lcom/laborbook/auth/model/request/TruecallerRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, p1}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->truecallerLogin(Lcom/laborbook/auth/model/request/TruecallerRequestBody;)Lkotlinx/coroutines/Job;

    .line 366
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
