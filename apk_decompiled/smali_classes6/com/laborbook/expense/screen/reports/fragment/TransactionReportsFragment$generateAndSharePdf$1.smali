.class final Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionReportsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->generateAndSharePdf()V
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
    c = "com.laborbook.expense.screen.reports.fragment.TransactionReportsFragment$generateAndSharePdf$1"
    f = "TransactionReportsFragment.kt"
    i = {}
    l = {
        0x123
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

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

    new-instance p1, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;

    iget-object v0, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;-><init>(Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "Failed to generate PDF: "

    const-string v1, "Error generating PDF: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 286
    iget v3, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 288
    :try_start_1
    iget-object p1, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    invoke-virtual {p1}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;->btnSharePdf:Landroid/widget/Button;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 289
    :cond_2
    iget-object p1, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    invoke-virtual {p1}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;->btnSharePdf:Landroid/widget/Button;

    goto :goto_0

    :cond_3
    move-object p1, v6

    :goto_0
    instance-of v3, p1, Landroid/widget/Button;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v6

    :goto_1
    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    sget v7, Lcom/laborbook/expense/R$string;->generating_pdf:I

    invoke-virtual {v3, v7}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1$pdfFile$1;

    iget-object v7, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    invoke-direct {v3, v7, v6}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1$pdfFile$1;-><init>(Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->label:I

    invoke-static {p1, v3, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    return-object v2

    .line 286
    :cond_6
    :goto_2
    check-cast p1, Ljava/io/File;

    if-eqz p1, :cond_7

    .line 297
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 298
    iget-object v2, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    invoke-static {v2, p1}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->access$sharePdfFile(Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;Ljava/io/File;)V

    goto :goto_3

    .line 300
    :cond_7
    iget-object p1, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    invoke-virtual {p1}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "Failed to generate PDF"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :goto_3
    iget-object p1, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    invoke-virtual {p1}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;->btnSharePdf:Landroid/widget/Button;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 307
    :cond_8
    iget-object p1, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    invoke-virtual {p1}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;->btnSharePdf:Landroid/widget/Button;

    goto :goto_4

    :cond_9
    move-object p1, v6

    :goto_4
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_a

    move-object v6, p1

    :cond_a
    if-eqz v6, :cond_e

    :goto_5
    iget-object p1, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    sget v0, Lcom/laborbook/expense/R$string;->share_pdf:I

    invoke-virtual {p1, v0}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v6, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 303
    :goto_6
    :try_start_2
    const-string v2, "TransactionReportsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v2, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    iget-object v1, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    invoke-virtual {v1}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v1, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    iget-object p1, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    invoke-virtual {p1}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;->btnSharePdf:Landroid/widget/Button;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 307
    :cond_b
    iget-object p1, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    invoke-virtual {p1}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;->btnSharePdf:Landroid/widget/Button;

    goto :goto_7

    :cond_c
    move-object p1, v6

    :goto_7
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_d

    move-object v6, p1

    :cond_d
    if-eqz v6, :cond_e

    goto :goto_5

    .line 309
    :cond_e
    :goto_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 306
    :goto_9
    iget-object v0, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    invoke-virtual {v0}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;->btnSharePdf:Landroid/widget/Button;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 307
    :cond_f
    iget-object v0, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    invoke-virtual {v0}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/laborbook/expense/databinding/FragmentTransactionReportsBinding;->btnSharePdf:Landroid/widget/Button;

    goto :goto_a

    :cond_10
    move-object v0, v6

    :goto_a
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_11

    move-object v6, v0

    :cond_11
    if-eqz v6, :cond_12

    iget-object v0, p0, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;

    sget v1, Lcom/laborbook/expense/R$string;->share_pdf:I

    invoke-virtual {v0, v1}, Lcom/laborbook/expense/screen/reports/fragment/TransactionReportsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    throw p1
.end method
