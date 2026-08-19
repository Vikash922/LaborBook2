.class final Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LanguageBottomSheetFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->changeLanguage(Ljava/lang/String;)V
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
    value = "SMAP\nLanguageBottomSheetFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LanguageBottomSheetFragment.kt\ncom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,370:1\n1#2:371\n*E\n"
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
    c = "com.laborbook.base.languagemanager.LanguageBottomSheetFragment$changeLanguage$1"
    f = "LanguageBottomSheetFragment.kt"
    i = {}
    l = {
        0xb0
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $languageCode:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->this$0:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    iput-object p2, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->$languageCode:Ljava/lang/String;

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

    new-instance p1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;

    iget-object v0, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->this$0:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    iget-object v1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->$languageCode:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 174
    iget v1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->label:I

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

    .line 175
    iget-object p1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->this$0:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    new-array v1, v2, [Lkotlin/Pair;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "language"

    iget-object v5, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->$languageCode:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "set_language"

    invoke-virtual {p1, v3, v1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 176
    iget-object p1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->this$0:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    invoke-virtual {p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->this$0:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    iget-object v3, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->$languageCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->access$getLanguageManager(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)Lcom/laborbook/base/languagemanager/LanguageManager;

    move-result-object v1

    iput v2, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->label:I

    invoke-virtual {v1, p1, v3, p0}, Lcom/laborbook/base/languagemanager/LanguageManager;->setLocale(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 177
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->this$0:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    invoke-virtual {p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->recreate()V

    .line 178
    :cond_3
    iget-object p1, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;->this$0:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    invoke-virtual {p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->dismiss()V

    .line 179
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
