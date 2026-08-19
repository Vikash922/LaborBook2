.class public final Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1$1;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "BookKeepActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1$1",
        "Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;",
        "onAdFailedToLoad",
        "",
        "error",
        "Lcom/google/android/gms/ads/LoadAdError;",
        "onAdLoaded",
        "ad",
        "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
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

    iput-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    .line 622
    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$setCalendarExitInterstitialLoading$p(Lcom/laborbook/keep/screen/BookKeepActivity;Z)V

    .line 625
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$setCalendarExitInterstitial$p(Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 2

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$setCalendarExitInterstitialLoading$p(Lcom/laborbook/keep/screen/BookKeepActivity;Z)V

    .line 630
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {v0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$setCalendarExitInterstitial$p(Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 622
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1$1;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method
