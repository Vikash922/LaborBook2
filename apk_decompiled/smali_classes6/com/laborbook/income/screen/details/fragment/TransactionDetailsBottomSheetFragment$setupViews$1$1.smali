.class final Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionDetailsBottomSheetFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;->setupViews()V
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
    c = "com.laborbook.income.screen.details.fragment.TransactionDetailsBottomSheetFragment$setupViews$1$1"
    f = "TransactionDetailsBottomSheetFragment.kt"
    i = {}
    l = {
        0x62
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;

.field label:I

.field final synthetic this$0:Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;",
            "Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->this$0:Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;

    iput-object p2, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->$this_apply:Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;

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

    new-instance p1, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;

    iget-object v0, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->this$0:Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;

    iget-object v1, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->$this_apply:Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;

    invoke-direct {p1, v0, v1, p2}, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;-><init>(Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 97
    iget v1, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

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

    .line 98
    iget-object p1, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->this$0:Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRIVACY_MODE_ENABLED()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_3

    .line 102
    iget-object p1, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->$this_apply:Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;->tvAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    invoke-virtual {p1, v0}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->$this_apply:Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;->ivSecretAmount:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->$this_apply:Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;->tvEdit:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setAlpha(F)V

    goto :goto_1

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->$this_apply:Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;->tvAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    invoke-virtual {p1, v3}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->$this_apply:Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;->ivSecretAmount:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->this$0:Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;

    sget v1, Lcom/laborbook/income/R$string;->rupee:I

    invoke-virtual {v0, v1}, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->this$0:Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;

    invoke-static {v0}, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;->access$getAmount$p(Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->$this_apply:Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;

    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;->tvAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p1, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->this$0:Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/laborbook/income/R$color;->button_green_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 116
    iget-object v0, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->$this_apply:Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;

    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;->tvAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    invoke-virtual {v0, p1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setTextColor(I)V

    .line 118
    iget-object p1, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$setupViews$1$1;->$this_apply:Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;

    iget-object p1, p1, Lcom/laborbook/income/databinding/FragmentTransactionDetailsBinding;->tvEdit:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setAlpha(F)V

    .line 120
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
