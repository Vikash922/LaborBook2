.class final Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StaffListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->showLanguageBottomSheet()V
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
    c = "com.laborbook.keep.screen.home.fragment.StaffListFragment$showLanguageBottomSheet$1"
    f = "StaffListFragment.kt"
    i = {
        0x2
    }
    l = {
        0x79,
        0x7b,
        0x7c,
        0x7f,
        0x82
    }
    m = "invokeSuspend"
    n = {
        "isExistingUser"
    }
    s = {
        "Z$0"
    }
.end annotation


# instance fields
.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

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

    new-instance p1, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;-><init>(Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 120
    iget v1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->label:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v7, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-boolean v1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->Z$0:Z

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 121
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v7, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->label:I

    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 123
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getIS_EXISTING_USER()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p1, v1, v8}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 124
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v5, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v5}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v5

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p1, v5, v8}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-boolean v1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->Z$0:Z

    iput v4, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->label:I

    invoke-static {p1, v5}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez v1, :cond_9

    if-nez p1, :cond_9

    .line 125
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 127
    :cond_9
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getFIRST_TIME_APP_OPEN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_b

    .line 129
    :try_start_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->Companion:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;->newInstance()Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-virtual {p1, v1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 130
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getFIRST_TIME_APP_OPEN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$showLanguageBottomSheet$1;->label:I

    invoke-virtual {p1, v1, v3, v4}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_b

    return-object v0

    .line 135
    :catch_0
    :cond_b
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
