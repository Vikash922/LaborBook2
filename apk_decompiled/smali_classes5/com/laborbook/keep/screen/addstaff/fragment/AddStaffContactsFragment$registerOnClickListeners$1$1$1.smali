.class final Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AddStaffContactsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->registerOnClickListeners()V
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
    c = "com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$registerOnClickListeners$1$1$1"
    f = "AddStaffContactsFragment.kt"
    i = {}
    l = {
        0xb6,
        0xb9
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;",
            "Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->$this_apply:Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    iput-object p2, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;

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

    new-instance p1, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->$this_apply:Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;

    invoke-direct {p1, v0, v1, p2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;-><init>(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 174
    iget v1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 175
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->$this_apply:Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etStaffMobileNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    .line 177
    const-string v5, "[\\s()-]+"

    invoke-direct {v1, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v5, ""

    invoke-virtual {v1, p1, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xa

    .line 178
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 180
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->$this_apply:Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etStaffName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    iget-object v6, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;

    invoke-virtual {v6}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v6

    sget-object v7, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v7}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->label:I

    invoke-static {v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    return-object v0

    :cond_3
    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    .line 174
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 179
    new-instance v5, Lcom/laborbook/keep/model/AddStaffUserRequestBody;

    invoke-direct {v5, v2, v1, p1}, Lcom/laborbook/keep/model/AddStaffUserRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->access$getViewModel(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;)Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->addStaffUser(Lcom/laborbook/keep/model/AddStaffUserRequestBody;)Lkotlinx/coroutines/Job;

    .line 185
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1$1;

    iget-object v2, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->$this_apply:Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    invoke-direct {v1, v2, v4}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1$1;-><init>(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->label:I

    invoke-static {p1, v1, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 190
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;

    check-cast p1, Lcom/laborbook/base/BaseFragment;

    const-string v0, "add_labor_manual"

    invoke-static {p1, v0, v4, v3, v4}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 191
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
