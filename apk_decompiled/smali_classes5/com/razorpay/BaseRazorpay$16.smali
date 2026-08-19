.class Lcom/razorpay/BaseRazorpay$16;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->oncomplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/BaseRazorpay;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseRazorpay;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1393
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$16;->this$0:Lcom/razorpay/BaseRazorpay;

    iput-object p2, p0, Lcom/razorpay/BaseRazorpay$16;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1396
    sput-boolean v0, Lcom/razorpay/BaseConfig;->paymentInProgress:Z

    .line 1397
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$16;->this$0:Lcom/razorpay/BaseRazorpay;

    iget-object v0, v0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    const-string v1, "razorpay_payment_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string v0, "payment_result_receive"

    invoke-static {v0}, Lcom/razorpay/MonitoringUtil;->setCheckoutStage(Ljava/lang/String;)V

    .line 1400
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay$16;->val$response:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1401
    iget-object v1, p0, Lcom/razorpay/BaseRazorpay$16;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-static {v1, v0}, Lcom/razorpay/BaseRazorpay;->access$400(Lcom/razorpay/BaseRazorpay;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1403
    iget-object v1, p0, Lcom/razorpay/BaseRazorpay$16;->this$0:Lcom/razorpay/BaseRazorpay;

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    .line 1404
    const-string v1, "S1"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseRazorpay"

    invoke-static {v2, v1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    :goto_0
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->postData()V

    .line 1407
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$16;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-virtual {v0}, Lcom/razorpay/BaseRazorpay;->finish()V

    return-void
.end method
