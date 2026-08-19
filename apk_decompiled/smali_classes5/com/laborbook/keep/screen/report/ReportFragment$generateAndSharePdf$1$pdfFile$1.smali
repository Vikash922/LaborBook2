.class final Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReportFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
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
    c = "com.laborbook.keep.screen.report.ReportFragment$generateAndSharePdf$1$pdfFile$1"
    f = "ReportFragment.kt"
    i = {}
    l = {}
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
            "Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

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

    new-instance p1, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;-><init>(Lcom/laborbook/keep/screen/report/ReportFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 199
    iget v1, v0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->label:I

    if-nez v1, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 200
    sget-object v2, Lcom/laborbook/base/utils/PdfGenerator;->Companion:Lcom/laborbook/base/utils/PdfGenerator$Companion;

    .line 201
    iget-object v1, v0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/report/ReportFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v1, "requireContext(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v1, v0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/report/ReportFragment;->access$getStaffName$p(Lcom/laborbook/keep/screen/report/ReportFragment;)Ljava/lang/String;

    move-result-object v4

    .line 203
    iget-object v1, v0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/report/ReportFragment;->access$getStaffPhone$p(Lcom/laborbook/keep/screen/report/ReportFragment;)Ljava/lang/String;

    move-result-object v5

    .line 204
    iget-object v1, v0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/report/ReportFragment;->access$getMonthYear$p(Lcom/laborbook/keep/screen/report/ReportFragment;)Ljava/lang/String;

    move-result-object v6

    .line 205
    iget-object v1, v0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/report/ReportFragment;->access$getPresentCount$p(Lcom/laborbook/keep/screen/report/ReportFragment;)I

    move-result v7

    .line 206
    iget-object v1, v0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/report/ReportFragment;->access$getAbsentCount$p(Lcom/laborbook/keep/screen/report/ReportFragment;)I

    move-result v8

    .line 207
    iget-object v1, v0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/report/ReportFragment;->access$getOvertimeCount$p(Lcom/laborbook/keep/screen/report/ReportFragment;)D

    move-result-wide v9

    .line 208
    iget-object v1, v0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/report/ReportFragment;->access$getHalfdayCount$p(Lcom/laborbook/keep/screen/report/ReportFragment;)I

    move-result v11

    .line 209
    iget-object v1, v0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/report/ReportFragment;->access$getPPlusHalf$p(Lcom/laborbook/keep/screen/report/ReportFragment;)Ljava/lang/String;

    move-result-object v12

    .line 210
    iget-object v1, v0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/report/ReportFragment;->access$getPPlusP$p(Lcom/laborbook/keep/screen/report/ReportFragment;)Ljava/lang/String;

    move-result-object v13

    .line 211
    iget-object v1, v0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/report/ReportFragment;->access$getAdvanceAmount$p(Lcom/laborbook/keep/screen/report/ReportFragment;)D

    move-result-wide v14

    .line 212
    iget-object v1, v0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1$pdfFile$1;->this$0:Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/report/ReportFragment;->access$getTotalEarnings$p(Lcom/laborbook/keep/screen/report/ReportFragment;)D

    move-result-wide v16

    .line 200
    invoke-virtual/range {v2 .. v17}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->generateStaffReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDILjava/lang/String;Ljava/lang/String;DD)Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 199
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
