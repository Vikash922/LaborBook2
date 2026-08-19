.class Lcom/razorpay/BaseRazorpay$12;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->_SS$$$$s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/BaseRazorpay;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseRazorpay;)V
    .locals 0

    .line 1018
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$12;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 8

    .line 1022
    const-string v0, "type"

    .line 0
    const-string v1, "{\"error\":{\"code\":3, \"description\": "

    .line 1022
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1023
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseCode()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x190

    const-string v6, "{\"error\":{\"code\": \"BAD_REQUEST_ERROR\", \"description\": \"An error occurred while fetching payment details\"}}"

    const/4 v7, 0x5

    if-lt v4, v5, :cond_0

    .line 1025
    :try_start_1
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$12;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-virtual {p1, v7, v6}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    return-void

    .line 1028
    :cond_0
    const-string v4, "error"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$12;->this$0:Lcom/razorpay/BaseRazorpay;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "}}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    return-void

    .line 1032
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "application"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1033
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$12;->this$0:Lcom/razorpay/BaseRazorpay;

    iget-object p1, p1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    const-string v0, "razorpay_payment_id"

    const-string v1, "payment_id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$12;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/razorpay/BaseRazorpay;->callNativeIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 1037
    :cond_2
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$12;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-virtual {p1, v7, v6}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1041
    const-string v0, "S0"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseRazorpay"

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
