.class final Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SettingsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->viewModelObserver()V
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
    c = "com.laborbook.keep.screen.home.fragment.SettingsFragment$viewModelObserver$1$2"
    f = "SettingsFragment.kt"
    i = {}
    l = {
        0x10f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $it:Lcom/laborbook/keep/screen/profile/uistate/UserUiState;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;Lcom/laborbook/keep/screen/profile/uistate/UserUiState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;",
            "Lcom/laborbook/keep/screen/profile/uistate/UserUiState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    iput-object p2, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;->$it:Lcom/laborbook/keep/screen/profile/uistate/UserUiState;

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

    new-instance p1, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;->$it:Lcom/laborbook/keep/screen/profile/uistate/UserUiState;

    invoke-direct {p1, v0, v1, p2}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;-><init>(Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;Lcom/laborbook/keep/screen/profile/uistate/UserUiState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 269
    iget v1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;->label:I

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

    .line 270
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;->tvName:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;->$it:Lcom/laborbook/keep/screen/profile/uistate/UserUiState;

    check-cast v1, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$GetUserNameSucess;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$GetUserNameSucess;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_2
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_NAME()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    iget-object v3, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;->$it:Lcom/laborbook/keep/screen/profile/uistate/UserUiState;

    check-cast v3, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$GetUserNameSucess;

    invoke-virtual {v3}, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$GetUserNameSucess;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$viewModelObserver$1$2;->label:I

    invoke-virtual {p1, v1, v3, v4}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 272
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
