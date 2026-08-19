.class Lcom/razorpay/RazorpayUtils$3;
.super Ljava/lang/Object;
.source "RazorpayUtils.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$apiKey:Ljava/lang/String;

.field final synthetic val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

.field final synthetic val$paymentId:Ljava/lang/String;

.field final synthetic val$pollCount:I


# direct methods
.method constructor <init>(Lcom/razorpay/PaymentCompleteInternalCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/razorpay/RazorpayUtils$3;->val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

    iput p2, p0, Lcom/razorpay/RazorpayUtils$3;->val$pollCount:I

    iput-object p3, p0, Lcom/razorpay/RazorpayUtils$3;->val$paymentId:Ljava/lang/String;

    iput-object p4, p0, Lcom/razorpay/RazorpayUtils$3;->val$apiKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 3

    .line 225
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    const-string v1, "razorpay_payment_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/razorpay/RazorpayUtils$3;->val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/razorpay/PaymentCompleteInternalCallback;->oncomplete(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_1
    iget p1, p0, Lcom/razorpay/RazorpayUtils$3;->val$pollCount:I

    const/16 v1, 0xc

    if-ge p1, v1, :cond_2

    .line 230
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/razorpay/RazorpayUtils$3$1;

    invoke-direct {v0, p0}, Lcom/razorpay/RazorpayUtils$3$1;-><init>(Lcom/razorpay/RazorpayUtils$3;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object p1, p0, Lcom/razorpay/RazorpayUtils$3;->val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

    invoke-interface {p1, v0}, Lcom/razorpay/PaymentCompleteInternalCallback;->oncomplete(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
