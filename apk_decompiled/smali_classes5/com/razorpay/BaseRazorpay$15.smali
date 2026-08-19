.class Lcom/razorpay/BaseRazorpay$15;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->sS$$$ss_()V
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

    .line 1073
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$15;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 8

    .line 1077
    const-string v0, "data"

    const-string v1, "request"

    .line 0
    const-string v2, "{\"error\":{\"code\":3, \"description\": "

    .line 1077
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1078
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseCode()I

    move-result v5

    const/16 v6, 0x190

    const/4 v7, 0x5

    if-lt v5, v6, :cond_0

    .line 1080
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$15;->this$0:Lcom/razorpay/BaseRazorpay;

    const-string v0, "{\"error\":{\"code\": \"BAD_REQUEST_ERROR\", \"description\": \"An error occured while fetching payment details\"}}"

    invoke-virtual {p1, v7, v0}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    return-void

    .line 1083
    :cond_0
    const-string v5, "error"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$15;->this$0:Lcom/razorpay/BaseRazorpay;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "}}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    return-void

    .line 1087
    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1088
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1089
    iget-object v1, p0, Lcom/razorpay/BaseRazorpay$15;->this$0:Lcom/razorpay/BaseRazorpay;

    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/razorpay/BaseRazorpay;->access$202(Lcom/razorpay/BaseRazorpay;Ljava/lang/String;)Ljava/lang/String;

    .line 1091
    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1092
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$15;->this$0:Lcom/razorpay/BaseRazorpay;

    iget-object p1, p1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    const-string v1, "razorpay_payment_id"

    const-string v2, "payment_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "intent_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1094
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$15;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-static {v0, p1}, Lcom/razorpay/BaseRazorpay;->access$300(Lcom/razorpay/BaseRazorpay;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1098
    const-string v0, "S0"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseRazorpay"

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
