.class final Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BookKeepActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/BookKeepActivity;->loadCustomAd()V
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
    value = "SMAP\nBookKeepActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookKeepActivity.kt\ncom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n1#1,901:1\n50#2,5:902\n*S KotlinDebug\n*F\n+ 1 BookKeepActivity.kt\ncom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1\n*L\n786#1:902,5\n*E\n"
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
    c = "com.laborbook.keep.screen.BookKeepActivity$loadCustomAd$1"
    f = "BookKeepActivity.kt"
    i = {}
    l = {
        0x30a
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
            "Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lkotlin/Lazy;)Lcom/laborbook/base/ads/CustomAdManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/laborbook/base/ads/CustomAdManager;",
            ">;)",
            "Lcom/laborbook/base/ads/CustomAdManager;"
        }
    .end annotation

    .line 786
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/base/ads/CustomAdManager;

    return-object p0
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

    new-instance p1, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 775
    iget v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->label:I

    const/4 v2, 0x1

    const-string v3, "binding"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    .line 778
    :try_start_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->label:I

    invoke-static {p1, v1}, Lcom/laborbook/base/datastore/DataStoreManagerExtensionsKt;->shouldShowHomePageAds(Lcom/laborbook/base/datastore/DataStoreManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    .line 781
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_3
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->customAdView:Lcom/laborbook/base/ads/CustomAdView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/laborbook/base/ads/CustomAdView;->hide()V

    .line 782
    :cond_4
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_5
    iget-object v5, p1, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adsShadow:Landroid/view/View;

    if-eqz v5, :cond_6

    const/4 v9, 0x3

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 783
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 786
    :cond_7
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    check-cast p1, Landroid/content/ComponentCallbacks;

    .line 904
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 906
    new-instance v1, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1$invokeSuspend$$inlined$inject$default$1;

    invoke-direct {v1, p1, v4, v4}, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1$invokeSuspend$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 787
    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->invokeSuspend$lambda$0(Lkotlin/Lazy;)Lcom/laborbook/base/ads/CustomAdManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/laborbook/base/ads/CustomAdManager;->getCustomAdDataSync()Lcom/laborbook/base/ads/CustomAdData;

    move-result-object p1

    .line 789
    invoke-virtual {p1}, Lcom/laborbook/base/ads/CustomAdData;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 790
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_8
    iget-object v0, v0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->customAdView:Lcom/laborbook/base/ads/CustomAdView;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/BookKeepActivity;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laborbook/base/ads/CustomAdView;->setAnalytics(Lcom/laborbook/base/analytics/Analytics;)V

    .line 791
    :cond_9
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_a
    iget-object v0, v0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->customAdView:Lcom/laborbook/base/ads/CustomAdView;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/laborbook/base/ads/CustomAdView;->loadAd(Lcom/laborbook/base/ads/CustomAdData;)V

    .line 792
    :cond_b
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_c
    iget-object v5, p1, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adsShadow:Landroid/view/View;

    if-eqz v5, :cond_14

    const/4 v9, 0x3

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 794
    :cond_d
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p1

    if-nez p1, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_e
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->customAdView:Lcom/laborbook/base/ads/CustomAdView;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/laborbook/base/ads/CustomAdView;->hide()V

    .line 795
    :cond_f
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p1

    if-nez p1, :cond_10

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_10
    iget-object v5, p1, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adsShadow:Landroid/view/View;

    if-eqz v5, :cond_14

    const/4 v9, 0x3

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 798
    :catch_0
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p1

    if-nez p1, :cond_11

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_11
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->customAdView:Lcom/laborbook/base/ads/CustomAdView;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/laborbook/base/ads/CustomAdView;->hide()V

    .line 799
    :cond_12
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p1

    if-nez p1, :cond_13

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_13
    move-object v4, p1

    :goto_1
    iget-object v5, v4, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adsShadow:Landroid/view/View;

    if-eqz v5, :cond_14

    const/4 v9, 0x3

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 801
    :cond_14
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
