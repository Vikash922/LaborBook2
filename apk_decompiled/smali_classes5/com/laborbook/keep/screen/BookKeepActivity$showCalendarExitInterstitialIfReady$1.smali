.class public final Lcom/laborbook/keep/screen/BookKeepActivity$showCalendarExitInterstitialIfReady$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "BookKeepActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/BookKeepActivity;->showCalendarExitInterstitialIfReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/laborbook/keep/screen/BookKeepActivity$showCalendarExitInterstitialIfReady$1",
        "Lcom/google/android/gms/ads/FullScreenContentCallback;",
        "onAdShowedFullScreenContent",
        "",
        "onAdDismissedFullScreenContent",
        "onAdFailedToShowFullScreenContent",
        "adError",
        "Lcom/google/android/gms/ads/AdError;",
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
.field final synthetic $today:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/BookKeepActivity;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/BookKeepActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity$showCalendarExitInterstitialIfReady$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    iput p2, p0, Lcom/laborbook/keep/screen/BookKeepActivity$showCalendarExitInterstitialIfReady$1;->$today:I

    .line 648
    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 0

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    const-string v0, "adError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 7

    .line 650
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$showCalendarExitInterstitialIfReady$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/laborbook/keep/screen/BookKeepActivity;->access$setCalendarExitInterstitialShownThisSession$p(Lcom/laborbook/keep/screen/BookKeepActivity;Z)V

    .line 651
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity$showCalendarExitInterstitialIfReady$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$showCalendarExitInterstitialIfReady$1$onAdShowedFullScreenContent$1;

    iget-object v2, p0, Lcom/laborbook/keep/screen/BookKeepActivity$showCalendarExitInterstitialIfReady$1;->this$0:Lcom/laborbook/keep/screen/BookKeepActivity;

    iget v3, p0, Lcom/laborbook/keep/screen/BookKeepActivity$showCalendarExitInterstitialIfReady$1;->$today:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/laborbook/keep/screen/BookKeepActivity$showCalendarExitInterstitialIfReady$1$onAdShowedFullScreenContent$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
