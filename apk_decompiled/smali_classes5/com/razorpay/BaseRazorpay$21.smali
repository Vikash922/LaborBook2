.class Lcom/razorpay/BaseRazorpay$21;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/FetchPreferencesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->getSubscriptionAmount(Ljava/lang/String;Lcom/razorpay/SubscriptionAmountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/BaseRazorpay;

.field final synthetic val$subscriptionAmountCallback:Lcom/razorpay/SubscriptionAmountCallback;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/SubscriptionAmountCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1852
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$21;->this$0:Lcom/razorpay/BaseRazorpay;

    iput-object p2, p0, Lcom/razorpay/BaseRazorpay$21;->val$subscriptionAmountCallback:Lcom/razorpay/SubscriptionAmountCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1861
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$21;->val$subscriptionAmountCallback:Lcom/razorpay/SubscriptionAmountCallback;

    invoke-interface {v0, p1}, Lcom/razorpay/SubscriptionAmountCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .line 1855
    invoke-static {p1}, Lcom/razorpay/BaseRazorpay;->access$700(Ljava/lang/String;)J

    move-result-wide v0

    .line 1856
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$21;->val$subscriptionAmountCallback:Lcom/razorpay/SubscriptionAmountCallback;

    invoke-interface {p1, v0, v1}, Lcom/razorpay/SubscriptionAmountCallback;->onSubscriptionAmountReceived(J)V

    return-void
.end method
