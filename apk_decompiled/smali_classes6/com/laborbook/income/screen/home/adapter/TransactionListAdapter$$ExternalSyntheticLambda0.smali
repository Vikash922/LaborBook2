.class public final synthetic Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/laborbook/income/model/Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;Ljava/lang/String;ILcom/laborbook/income/model/Transaction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    iput-object p2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$$ExternalSyntheticLambda0;->f$3:Lcom/laborbook/income/model/Transaction;

    return-void
.end method


# virtual methods
.method public final onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;

    iget-object v1, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter$$ExternalSyntheticLambda0;->f$3:Lcom/laborbook/income/model/Transaction;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;->$r8$lambda$tOQxxzFXu_wDkGshWXI3EfF1Xyo(Lcom/laborbook/income/screen/home/adapter/TransactionListAdapter;Ljava/lang/String;ILcom/laborbook/income/model/Transaction;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method
