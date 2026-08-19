.class final Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReportFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/report/ReportFragment;->generateAndSharePdf()V
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
    c = "com.laborbook.keep.screen.report.ReportFragment$generateAndSharePdf$1"
    f = "ReportFragment.kt"
    i = {}
    l = {
        0xc7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/report/ReportFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/report/ReportFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/report/ReportFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

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

    new-instance p1, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;-><init>(Lcom/laborbook/keep/screen/report/ReportFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "Error generating PDF: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 192
    iget v2, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 195
    :try_start_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentReportBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentReportBinding;->btnSharePdf:Lcom/google/android/material/button/MaterialButton;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 196
    :cond_2
    iget-object p1, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentReportBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentReportBinding;->btnSharePdf:Lcom/google/android/material/button/MaterialButton;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    sget v5, Lcom/laborbook/keep/R$string;->generating_pdf:I

    invoke-virtual {v2, v5}, Lcom/laborbook/keep/screen/report/ReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;

    iget-object v5, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;-><init>(Lcom/laborbook/keep/screen/report/ReportFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->label:I

    invoke-static {p1, v2, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 192
    :cond_4
    :goto_0
    check-cast p1, Ljava/io/File;

    if-eqz p1, :cond_5

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    iget-object v1, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-static {v1, p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->access$sharePdfFile(Lcom/laborbook/keep/screen/report/ReportFragment;Ljava/io/File;)V

    goto :goto_1

    .line 222
    :cond_5
    iget-object p1, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    sget v2, Lcom/laborbook/keep/R$string;->failed_to_generate_pdf:I

    const-string v5, "PDF generation failed"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/laborbook/keep/screen/report/ReportFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :goto_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentReportBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentReportBinding;->btnSharePdf:Lcom/google/android/material/button/MaterialButton;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 231
    :cond_6
    iget-object p1, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentReportBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentReportBinding;->btnSharePdf:Lcom/google/android/material/button/MaterialButton;

    if-eqz p1, :cond_8

    :goto_2
    iget-object v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    sget v1, Lcom/laborbook/keep/R$string;->share_pdf:I

    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/report/ReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 226
    :goto_3
    :try_start_2
    const-string v1, "ReportFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    iget-object v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/report/ReportFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    sget v2, Lcom/laborbook/keep/R$string;->failed_to_generate_pdf:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    iget-object p1, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentReportBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentReportBinding;->btnSharePdf:Lcom/google/android/material/button/MaterialButton;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v4}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 231
    :cond_7
    iget-object p1, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentReportBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentReportBinding;->btnSharePdf:Lcom/google/android/material/button/MaterialButton;

    if-eqz p1, :cond_8

    goto :goto_2

    .line 233
    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 230
    :goto_5
    iget-object v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/report/ReportFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->btnSharePdf:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v4}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 231
    :cond_9
    iget-object v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/report/ReportFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->btnSharePdf:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    sget v2, Lcom/laborbook/keep/R$string;->share_pdf:I

    invoke-virtual {v1, v2}, Lcom/laborbook/keep/screen/report/ReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    throw p1
.end method
