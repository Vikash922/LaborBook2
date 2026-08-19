.class final Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BookKeepActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1;->onAdLoaded()V
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
    c = "com.laborbook.keep.screen.BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1"
    f = "BookKeepActivity.kt"
    i = {}
    l = {
        0x2bf
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/BookKeepActivity;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/BookKeepActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

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

    new-instance p1, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 702
    iget v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;->label:I

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

    .line 703
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;->label:I

    invoke-static {p1, v1}, Lcom/laborbook/base/datastore/DataStoreManagerExtensionsKt;->shouldShowHomePageAds(Lcom/laborbook/base/datastore/DataStoreManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    .line 704
    const-string v1, "binding"

    if-eqz p1, :cond_7

    .line 705
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    iget-object v3, p1, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adsShadow:Landroid/view/View;

    if-eqz v3, :cond_4

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 706
    :cond_4
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v0, p1

    :goto_1
    iget-object p1, v0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz p1, :cond_6

    move-object v3, p1

    check-cast v3, Landroid/view/View;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 707
    :cond_6
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    const/4 v0, 0x2

    .line 710
    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v3, "status"

    const-string v4, "onAdLoaded"

    invoke-direct {v1, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 711
    new-instance v1, Lkotlin/Pair;

    const-string v3, "source"

    const-string v4, "Home"

    invoke-direct {v1, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v2

    .line 709
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    .line 707
    const-string v1, "google_banner_ad"

    invoke-virtual {p1, v1, v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->triggerSystemEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_3

    .line 716
    :cond_7
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_8
    iget-object v2, p1, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adsShadow:Landroid/view/View;

    if-eqz v2, :cond_9

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 717
    :cond_9
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move-object v0, p1

    :goto_2
    iget-object p1, v0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz p1, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 719
    :cond_b
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
