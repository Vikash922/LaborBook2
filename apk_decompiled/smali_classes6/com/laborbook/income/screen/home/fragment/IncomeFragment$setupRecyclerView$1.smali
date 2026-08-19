.class final Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IncomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->setupRecyclerView()V
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
    c = "com.laborbook.income.screen.home.fragment.IncomeFragment$setupRecyclerView$1"
    f = "IncomeFragment.kt"
    i = {}
    l = {
        0x127
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;


# direct methods
.method public static synthetic $r8$lambda$-eFDT-tjA6l0Icslc4zZxMI-AHk(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/Transaction;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->invokeSuspend$lambda$0(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/Transaction;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YiaQidqKuW18L0s_KCVk9UehJHA(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->invokeSuspend$lambda$1(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/income/screen/home/fragment/IncomeFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/Transaction;I)Lkotlin/Unit;
    .locals 7

    .line 299
    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getId()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getType()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getDate()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getAmount()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getReason()Ljava/lang/String;

    move-result-object v5

    .line 304
    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getPaymentMethod()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 298
    invoke-static/range {v0 .. v6}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->access$openTransactionDetails(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 308
    new-array p2, p2, [Lkotlin/Pair;

    new-instance v0, Lkotlin/Pair;

    const-string v1, "income_type"

    invoke-virtual {p1}, Lcom/laborbook/income/model/Transaction;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v0, p2, p1

    invoke-static {p2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 306
    const-string p2, "view_income"

    invoke-virtual {p0, p2, p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 310
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)Lkotlin/Unit;
    .locals 1

    .line 312
    invoke-static {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->access$isLastPage$p(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->access$isFetching$p(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 313
    invoke-static {p0, v0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->access$setFetching$p(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Z)V

    .line 314
    invoke-static {p0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->access$loadMoreData(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    .line 316
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    new-instance p1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;

    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 293
    iget v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->label:I

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

    .line 295
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRIVACY_MODE_ENABLED()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 296
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    new-instance v1, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    iget-object v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    new-instance v3, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    iget-object v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    new-instance v4, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)V

    .line 317
    iget-object v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-static {v2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->access$getAdUnitId$p(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-direct {v1, p1, v3, v4, v2}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;-><init>(ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->access$setExpenseAdapter$p(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;)V

    .line 320
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentIncomeBinding;->rvExpense:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$setupRecyclerView$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-static {v0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->access$getExpenseAdapter$p(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;)Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 321
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
