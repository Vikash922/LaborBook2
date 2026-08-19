.class final Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IncomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->togglePrivacyMode()V
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
    c = "com.laborbook.income.screen.home.fragment.IncomeFragment$togglePrivacyMode$1"
    f = "IncomeFragment.kt"
    i = {
        0x1
    }
    l = {
        0x119,
        0x11e
    }
    m = "invokeSuspend"
    n = {
        "newValue"
    }
    s = {
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field label:I

.field final synthetic this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/income/screen/home/fragment/IncomeFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

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

    new-instance p1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;

    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 279
    iget v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->I$0:I

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

    .line 281
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRIVACY_MODE_ENABLED()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v4

    .line 282
    iget-object v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    .line 284
    new-array v5, v4, [Lkotlin/Pair;

    new-instance v6, Lkotlin/Pair;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "privacy_mode"

    invoke-direct {v6, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v3

    invoke-static {v5}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v5

    .line 282
    const-string v6, "toggle_privacy_mode"

    invoke-virtual {v1, v6, v5}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 286
    iget-object v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-virtual {v1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v5, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v5}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRIVACY_MODE_ENABLED()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v5

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->I$0:I

    iput v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->label:I

    invoke-virtual {v1, v5, v6, v7}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move v0, p1

    .line 287
    :goto_1
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    if-eqz v0, :cond_5

    move v1, v4

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    invoke-static {p1, v1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->access$updatePrivacyModeUI(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Z)V

    .line 288
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$togglePrivacyMode$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-static {p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->access$getExpenseAdapter$p(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    move-result-object p1

    if-eqz p1, :cond_7

    if-eqz v0, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p1, v3}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;->togglePrivacyMode(Z)V

    .line 289
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
