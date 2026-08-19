.class public final Lcom/laborbook/keep/screen/status/TransactionStatusFragment$requestGoogleAds$1$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "TransactionStatusFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/status/TransactionStatusFragment$requestGoogleAds$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "com/laborbook/keep/screen/status/TransactionStatusFragment$requestGoogleAds$1$1",
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
.field final synthetic this$0:Lcom/laborbook/keep/screen/status/TransactionStatusFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/status/TransactionStatusFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/status/TransactionStatusFragment;

    .line 96
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/status/TransactionStatusFragment;

    const/4 v1, 0x2

    .line 133
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "status"

    const-string v4, "onAdClicked"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 134
    new-instance v2, Lkotlin/Pair;

    const-string v3, "source"

    const-string v4, "Advance"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 132
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 130
    const-string v2, "google_banner_ad_click"

    invoke-virtual {v0, v2, v1}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/status/TransactionStatusFragment;

    const/4 v1, 0x2

    .line 143
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "status"

    const-string v4, "onAdClosed"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 144
    new-instance v2, Lkotlin/Pair;

    const-string v3, "source"

    const-string v4, "Advance"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 142
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 140
    const-string v2, "google_banner_ad_close"

    invoke-virtual {v0, v2, v1}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 4

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/status/TransactionStatusFragment;

    const/4 v0, 0x2

    .line 111
    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "status"

    const-string v3, "onAdFailedToLoad"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 112
    new-instance v1, Lkotlin/Pair;

    const-string v2, "source"

    const-string v3, "Advance"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 110
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    .line 108
    const-string v1, "google_banner_ad"

    invoke-virtual {p1, v1, v0}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->triggerSystemEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 116
    iget-object p1, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/status/TransactionStatusFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->access$loadCustomAd(Lcom/laborbook/keep/screen/status/TransactionStatusFragment;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/status/TransactionStatusFragment;

    const/4 v1, 0x2

    .line 101
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "status"

    const-string v4, "onAdLoaded"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 102
    new-instance v2, Lkotlin/Pair;

    const-string v3, "source"

    const-string v4, "Advance"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 100
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 98
    const-string v2, "google_banner_ad"

    invoke-virtual {v0, v2, v1}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->triggerSystemEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$requestGoogleAds$1$1;->this$0:Lcom/laborbook/keep/screen/status/TransactionStatusFragment;

    const/4 v1, 0x2

    .line 123
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "status"

    const-string v4, "onAdOpened"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 124
    new-instance v2, Lkotlin/Pair;

    const-string v3, "source"

    const-string v4, "Advance"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 122
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 120
    const-string v2, "google_banner_ad_open"

    invoke-virtual {v0, v2, v1}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
