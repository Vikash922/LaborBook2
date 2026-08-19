.class final Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AddStaffContactsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->setObserver()V
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
    c = "com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$setObserver$1$1"
    f = "AddStaffContactsFragment.kt"
    i = {}
    l = {
        0x82
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $staff:Lcom/laborbook/keep/model/Staff;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/model/Staff;Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/model/Staff;",
            "Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->$staff:Lcom/laborbook/keep/model/Staff;

    iput-object p2, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;

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

    new-instance p1, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->$staff:Lcom/laborbook/keep/model/Staff;

    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;

    invoke-direct {p1, v0, v1, p2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;-><init>(Lcom/laborbook/keep/model/Staff;Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 122
    iget v1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->$staff:Lcom/laborbook/keep/model/Staff;

    invoke-virtual {p1}, Lcom/laborbook/keep/model/Staff;->getMobileNumber()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    .line 125
    const-string v3, "[\\s()-]+"

    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v1, p1, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xa

    .line 126
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 128
    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->$staff:Lcom/laborbook/keep/model/Staff;

    invoke-virtual {v1}, Lcom/laborbook/keep/model/Staff;->getName()Ljava/lang/String;

    move-result-object v1

    .line 130
    iget-object v4, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;

    invoke-virtual {v4}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v4

    sget-object v5, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v5}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->label:I

    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v2

    .line 122
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 127
    new-instance v2, Lcom/laborbook/keep/model/AddStaffUserRequestBody;

    invoke-direct {v2, v1, v0, p1}, Lcom/laborbook/keep/model/AddStaffUserRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->access$getViewModel(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;)Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->addStaffUser(Lcom/laborbook/keep/model/AddStaffUserRequestBody;)Lkotlinx/coroutines/Job;

    .line 133
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;->this$0:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;

    check-cast p1, Lcom/laborbook/base/BaseFragment;

    const-string v0, "add_labor_from_contacts"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 134
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
