.class Lcom/razorpay/RazorpayUtils$3$1;
.super Ljava/util/TimerTask;
.source "RazorpayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/RazorpayUtils$3;->run(Lcom/razorpay/ResponseObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/RazorpayUtils$3;


# direct methods
.method constructor <init>(Lcom/razorpay/RazorpayUtils$3;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/razorpay/RazorpayUtils$3$1;->this$0:Lcom/razorpay/RazorpayUtils$3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/razorpay/RazorpayUtils$3$1;->this$0:Lcom/razorpay/RazorpayUtils$3;

    iget-object v0, v0, Lcom/razorpay/RazorpayUtils$3;->val$paymentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/razorpay/RazorpayUtils$3$1;->this$0:Lcom/razorpay/RazorpayUtils$3;

    iget-object v1, v1, Lcom/razorpay/RazorpayUtils$3;->val$apiKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/razorpay/RazorpayUtils$3$1;->this$0:Lcom/razorpay/RazorpayUtils$3;

    iget v2, v2, Lcom/razorpay/RazorpayUtils$3;->val$pollCount:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/razorpay/RazorpayUtils$3$1;->this$0:Lcom/razorpay/RazorpayUtils$3;

    iget-object v3, v3, Lcom/razorpay/RazorpayUtils$3;->val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/razorpay/RazorpayUtils;->access$000(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;)V

    return-void
.end method
