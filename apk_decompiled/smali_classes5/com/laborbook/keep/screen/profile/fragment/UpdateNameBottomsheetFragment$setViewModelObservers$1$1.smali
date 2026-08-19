.class final Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UpdateNameBottomsheetFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->setViewModelObservers()V
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
    c = "com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment$setViewModelObservers$1$1"
    f = "UpdateNameBottomsheetFragment.kt"
    i = {}
    l = {
        0x51
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;->this$0:Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;->this$0:Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;-><init>(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 80
    iget v1, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;->this$0:Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_NAME()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    .line 82
    iget-object v3, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;->this$0:Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;

    invoke-virtual {v3}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->etName:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    .line 81
    iput v2, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;->label:I

    invoke-virtual {p1, v1, v3, v4}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 84
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;->this$0:Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 85
    :cond_4
    iget-object p1, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;->this$0:Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;->this$0:Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;

    sget v1, Lcom/laborbook/keep/R$string;->user_name_updated_successfully:I

    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 86
    iget-object p1, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;->this$0:Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->dismiss()V

    .line 87
    iget-object p1, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;->this$0:Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->access$getViewModel(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;)Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;->triggerUpdateUserNameUiState()V

    .line 88
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
