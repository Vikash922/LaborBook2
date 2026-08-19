.class public final Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "BookKeepActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1",
        "Lcom/google/android/gms/ads/AdListener;",
        "onAdLoaded",
        "",
        "onAdFailedToLoad",
        "errorCode",
        "Lcom/google/android/gms/ads/LoadAdError;",
        "onAdOpened",
        "onAdClicked",
        "onAdClosed",
        "keep_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laborbook/keep/screen/BookKeepActivity;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/BookKeepActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    .line 699
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 5

    .line 747
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    const/4 v1, 0x2

    .line 750
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "status"

    const-string v4, "onAdClicked"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 751
    new-instance v2, Lkotlin/Pair;

    const-string v3, "source"

    const-string v4, "Home"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 749
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 747
    const-string v2, "google_banner_ad_click"

    invoke-virtual {v0, v2, v1}, Lcom/laborbook/keep/screen/BookKeepActivity;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 5

    .line 757
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    const/4 v1, 0x2

    .line 760
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "status"

    const-string v4, "onAdClosed"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 761
    new-instance v2, Lkotlin/Pair;

    const-string v3, "source"

    const-string v4, "Home"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 759
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 757
    const-string v2, "google_banner_ad_close"

    invoke-virtual {v0, v2, v1}, Lcom/laborbook/keep/screen/BookKeepActivity;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 8

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v2, p1, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adsShadow:Landroid/view/View;

    if-eqz v2, :cond_1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 724
    :cond_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz p1, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 725
    :cond_3
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    const/4 v0, 0x2

    .line 728
    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "status"

    const-string v3, "onAdFailedToLoad"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 729
    new-instance v1, Lkotlin/Pair;

    const-string v2, "source"

    const-string v3, "Home"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 727
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    .line 725
    const-string v1, "google_banner_ad"

    invoke-virtual {p1, v1, v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->triggerSystemEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 733
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$loadCustomAd(Lcom/laborbook/keep/screen/BookKeepActivity;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 7

    .line 702
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;

    iget-object v2, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onAdOpened()V
    .locals 5

    .line 737
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    const/4 v1, 0x2

    .line 740
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "status"

    const-string v4, "onAdOpened"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 741
    new-instance v2, Lkotlin/Pair;

    const-string v3, "source"

    const-string v4, "Home"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 739
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 737
    const-string v2, "google_banner_ad_open"

    invoke-virtual {v0, v2, v1}, Lcom/laborbook/keep/screen/BookKeepActivity;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
