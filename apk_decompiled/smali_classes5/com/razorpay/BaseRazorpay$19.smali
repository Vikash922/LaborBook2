.class Lcom/razorpay/BaseRazorpay$19;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/FetchPreferencesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->getPaymentMethods(Lorg/json/JSONObject;Lcom/razorpay/PaymentMethodsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/BaseRazorpay;

.field final synthetic val$paymentMethodsCallback:Lcom/razorpay/PaymentMethodsCallback;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/PaymentMethodsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1688
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$19;->this$0:Lcom/razorpay/BaseRazorpay;

    iput-object p2, p0, Lcom/razorpay/BaseRazorpay$19;->val$paymentMethodsCallback:Lcom/razorpay/PaymentMethodsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1697
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$19;->val$paymentMethodsCallback:Lcom/razorpay/PaymentMethodsCallback;

    invoke-interface {v0, p1}, Lcom/razorpay/PaymentMethodsCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1

    .line 1691
    invoke-static {p1}, Lcom/razorpay/BaseRazorpay;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1692
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$19;->val$paymentMethodsCallback:Lcom/razorpay/PaymentMethodsCallback;

    invoke-interface {v0, p1}, Lcom/razorpay/PaymentMethodsCallback;->onPaymentMethodsReceived(Ljava/lang/String;)V

    return-void
.end method
