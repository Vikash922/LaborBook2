.class public final Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$requestGoogleAds$1$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "IncomeTransactionStatusFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$requestGoogleAds$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "com/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$requestGoogleAds$1$1",
        "Lcom/google/android/gms/ads/AdListener;",
        "onAdLoaded",
        "",
        "onAdFailedToLoad",
        "errorCode",
        "Lcom/google/android/gms/ads/LoadAdError;",
        "onAdOpened",
        "onAdClicked",
        "onAdClosed",
        "income_release"
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
.field final synthetic this$0:Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$requestGoogleAds$1$1;->this$0:Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$requestGoogleAds$1$1;->this$0:Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;

    const/4 v1, 0x2

    .line 132
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "status"

    const-string v4, "onAdClicked"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 133
    new-instance v2, Lkotlin/Pair;

    const-string v3, "source"

    const-string v4, "Expense"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 131
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 129
    const-string v2, "google_banner_ad_click"

    invoke-virtual {v0, v2, v1}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$requestGoogleAds$1$1;->this$0:Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;

    const/4 v1, 0x2

    .line 142
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "status"

    const-string v4, "onAdClosed"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 143
    new-instance v2, Lkotlin/Pair;

    const-string v3, "source"

    const-string v4, "Expense"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 141
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 139
    const-string v2, "google_banner_ad_close"

    invoke-virtual {v0, v2, v1}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 4

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$requestGoogleAds$1$1;->this$0:Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;

    const/4 v0, 0x2

    .line 110
    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "status"

    const-string v3, "onAdFailedToLoad"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 111
    new-instance v1, Lkotlin/Pair;

    const-string v2, "source"

    const-string v3, "Income"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 109
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    .line 107
    const-string v1, "google_banner_ad"

    invoke-virtual {p1, v1, v0}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->triggerSystemEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 115
    iget-object p1, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$requestGoogleAds$1$1;->this$0:Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;

    invoke-static {p1}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->access$loadCustomAd(Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$requestGoogleAds$1$1;->this$0:Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;

    const/4 v1, 0x2

    .line 100
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "status"

    const-string v4, "onAdLoaded"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 101
    new-instance v2, Lkotlin/Pair;

    const-string v3, "source"

    const-string v4, "Expense"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 99
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 97
    const-string v2, "google_banner_ad"

    invoke-virtual {v0, v2, v1}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->triggerSystemEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$requestGoogleAds$1$1;->this$0:Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;

    const/4 v1, 0x2

    .line 122
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "status"

    const-string v4, "onAdOpened"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 123
    new-instance v2, Lkotlin/Pair;

    const-string v3, "source"

    const-string v4, "Expense"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 121
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 119
    const-string v2, "google_banner_ad_open"

    invoke-virtual {v0, v2, v1}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
