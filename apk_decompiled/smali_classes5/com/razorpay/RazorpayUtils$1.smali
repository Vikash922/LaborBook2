.class Lcom/razorpay/RazorpayUtils$1;
.super Ljava/lang/Object;
.source "RazorpayUtils.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$apiKey:Ljava/lang/String;

.field final synthetic val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

.field final synthetic val$paymentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/razorpay/RazorpayUtils$1;->val$paymentId:Ljava/lang/String;

    iput-object p2, p0, Lcom/razorpay/RazorpayUtils$1;->val$apiKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/razorpay/RazorpayUtils$1;->val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 3

    .line 173
    iget-object p1, p0, Lcom/razorpay/RazorpayUtils$1;->val$paymentId:Ljava/lang/String;

    iget-object v0, p0, Lcom/razorpay/RazorpayUtils$1;->val$apiKey:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/razorpay/RazorpayUtils$1;->val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

    invoke-static {p1, v0, v1, v2}, Lcom/razorpay/RazorpayUtils;->access$000(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;)V

    return-void
.end method
