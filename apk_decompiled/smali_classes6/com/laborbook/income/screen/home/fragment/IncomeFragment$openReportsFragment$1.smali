.class final Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IncomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->openReportsFragment()V
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
    value = "SMAP\nIncomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IncomeFragment.kt\ncom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,677:1\n808#2,11:678\n1557#2:689\n1628#2,3:690\n774#2:693\n865#2,2:694\n*S KotlinDebug\n*F\n+ 1 IncomeFragment.kt\ncom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1\n*L\n262#1:678,11\n263#1:689\n263#1:690,3\n264#1:693\n264#1:694,2\n*E\n"
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
    c = "com.laborbook.income.screen.home.fragment.IncomeFragment$openReportsFragment$1"
    f = "IncomeFragment.kt"
    i = {}
    l = {
        0xf8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
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
            "Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

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

    new-instance p1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;

    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 247
    iget v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;->label:I

    const/4 v2, 0x0

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

    .line 248
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRIVACY_MODE_ENABLED()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 253
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    .line 254
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    sget v1, Lcom/laborbook/income/R$string;->disable_privacy_mode_to_access_reports:I

    invoke-virtual {v0, v1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 252
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 257
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 261
    :cond_3
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getAllTransactionItems$income_release()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 687
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;

    if-eqz v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 688
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 678
    check-cast v0, Ljava/lang/Iterable;

    .line 689
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 690
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 691
    check-cast v1, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;

    .line 263
    invoke-virtual {v1}, Lcom/laborbook/income/model/TransactionItem$TransactionItemView;->getTransaction()Lcom/laborbook/income/model/Transaction;

    move-result-object v1

    .line 691
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 692
    :cond_6
    check-cast p1, Ljava/util/List;

    .line 689
    check-cast p1, Ljava/lang/Iterable;

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 694
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "CREDIT"

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/laborbook/income/model/Transaction;

    .line 264
    invoke-virtual {v3}, Lcom/laborbook/income/model/Transaction;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 694
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 695
    :cond_8
    check-cast v0, Ljava/util/List;

    .line 266
    new-instance p1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 267
    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-virtual {v0}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    .line 268
    sget-object v1, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;->Companion:Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$Companion;

    .line 271
    iget-object v3, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-virtual {v3}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getMonthNumber$income_release()I

    move-result v3

    .line 272
    iget-object v4, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openReportsFragment$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-virtual {v4}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getCurrentYear$income_release()I

    move-result v4

    .line 268
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$Companion;->newInstance(Ljava/util/ArrayList;Ljava/lang/String;II)Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 267
    invoke-virtual {v0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Landroidx/fragment/app/Fragment;)V

    .line 275
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
