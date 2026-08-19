.class final Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BookKeepActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/BookKeepActivity;->preloadCalendarExitInterstitialIfEligible()V
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
    c = "com.laborbook.keep.screen.BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1"
    f = "BookKeepActivity.kt"
    i = {}
    l = {
        0x265
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
            "Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

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

    new-instance p1, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 612
    iget v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;->label:I

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

    .line 613
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;->label:I

    invoke-static {p1, v1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$canShowDailyCalendarExitInterstitial(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 615
    :cond_3
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1, v2}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$setCalendarExitInterstitialLoading$p(Lcom/laborbook/keep/screen/BookKeepActivity;Z)V

    .line 616
    new-instance p1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    check-cast v0, Landroid/content/Context;

    .line 622
    new-instance v1, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1$1;

    iget-object v2, p0, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-direct {v1, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;)V

    check-cast v1, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    .line 618
    const-string v2, "ca-app-pub-4991346658410627/1647300108"

    invoke-static {v0, v2, p1, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    .line 634
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
