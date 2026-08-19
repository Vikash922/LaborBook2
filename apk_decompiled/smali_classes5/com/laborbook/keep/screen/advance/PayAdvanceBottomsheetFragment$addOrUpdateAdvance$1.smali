.class final Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PayAdvanceBottomsheetFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;->addOrUpdateAdvance(Ljava/lang/String;)V
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
    c = "com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1"
    f = "PayAdvanceBottomsheetFragment.kt"
    i = {}
    l = {
        0xff
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $parsedAdvance:I

.field final synthetic $updatedDescription:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->this$0:Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;

    iput p2, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->$parsedAdvance:I

    iput-object p3, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->$updatedDescription:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->this$0:Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;

    iget v1, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->$parsedAdvance:I

    iget-object v2, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->$updatedDescription:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;-><init>(Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 245
    iget v1, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/laborbook/keep/model/Advance;

    iget-object v1, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 247
    :try_start_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->this$0:Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;->access$getViewModel(Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;)Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;

    move-result-object p1

    .line 248
    iget-object v1, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->this$0:Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;->access$getId$p(Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, ""

    if-nez v1, :cond_2

    move-object v1, v3

    .line 250
    :cond_2
    :try_start_2
    new-instance v4, Lcom/laborbook/keep/model/Advance;

    .line 251
    iget-object v5, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->this$0:Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;

    invoke-static {v5}, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;->access$getDate$p(Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v5, v3

    .line 252
    :cond_3
    iget v6, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->$parsedAdvance:I

    .line 253
    iget-object v7, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->$updatedDescription:Ljava/lang/String;

    .line 254
    iget-object v8, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->this$0:Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;

    invoke-static {v8}, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;->access$getPaymentMethod$p(Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;)Ljava/lang/String;

    move-result-object v8

    .line 250
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/laborbook/keep/model/Advance;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v5, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->this$0:Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;

    invoke-virtual {v5}, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v5

    sget-object v6, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v6}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$addOrUpdateAdvance$1;->label:I

    invoke-static {v3, v5}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v4

    move-object v9, v2

    move-object v2, p1

    move-object p1, v9

    .line 245
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 249
    new-instance v3, Lcom/laborbook/keep/model/AddAdvanceRequestBody;

    invoke-direct {v3, v0, p1}, Lcom/laborbook/keep/model/AddAdvanceRequestBody;-><init>(Lcom/laborbook/keep/model/Advance;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v2, v1, v3}, Lcom/laborbook/keep/screen/advance/viewmodel/AddAdvanceViewModel;->addAdvance(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;)Lkotlinx/coroutines/Job;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 259
    :catch_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
