.class final Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LanguageBottomSheetFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->loadSavedLanguage()V
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
    c = "com.laborbook.base.languagemanager.LanguageBottomSheetFragment$loadSavedLanguage$1"
    f = "LanguageBottomSheetFragment.kt"
    i = {}
    l = {
        0x75
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;->this$0:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

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

    new-instance p1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;

    iget-object v0, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;->this$0:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 116
    iget v1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;->label:I

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

    .line 117
    iget-object p1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;->this$0:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    invoke-static {p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->access$getLanguageManager(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)Lcom/laborbook/base/languagemanager/LanguageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/laborbook/base/languagemanager/LanguageManager;->getSavedLanguage()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 116
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;->this$0:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    invoke-static {v0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->access$markSelected(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Ljava/lang/String;)V

    .line 119
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
