.class public final synthetic Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/laborbook/expense/model/Transaction;

.field public final synthetic f$3:Lcom/google/android/gms/ads/nativead/NativeAd;


# direct methods
.method public synthetic constructor <init>(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;ILcom/laborbook/expense/model/Transaction;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    iput p2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1$$ExternalSyntheticLambda0;->f$2:Lcom/laborbook/expense/model/Transaction;

    iput-object p4, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1$$ExternalSyntheticLambda0;->f$3:Lcom/google/android/gms/ads/nativead/NativeAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;

    iget v1, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1$$ExternalSyntheticLambda0;->f$2:Lcom/laborbook/expense/model/Transaction;

    iget-object v3, p0, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1$$ExternalSyntheticLambda0;->f$3:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-static {v0, v1, v2, v3}, Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$loadNativeAd$adLoader$1$1;->$r8$lambda$-ensKs9an2nL7FrOdKUtDmDJS7w(Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;ILcom/laborbook/expense/model/Transaction;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method
