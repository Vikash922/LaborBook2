.class Lcom/razorpay/BaseRazorpay$4;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->_SS$$$$s(Ljava/lang/String;)V
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

    .line 2166
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$4;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 8

    .line 2169
    const-string v0, "status"

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    .line 2170
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$4;->this$0:Lcom/razorpay/BaseRazorpay;

    const/16 v0, 0x198

    const-string v1, "{\"error\":{\"code\":408, \"description\": Payment Unsuccessful}}"

    invoke-virtual {p1, v0, v1}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    return-void

    .line 2174
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2175
    const-string p1, "razorpay_payment_id"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "razorpay_order_id"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "razorpay_signature"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2176
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$4;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-static {p1, v1}, Lcom/razorpay/BaseRazorpay;->access$400(Lcom/razorpay/BaseRazorpay;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2177
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "created"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2178
    new-instance p1, Lcom/razorpay/BaseRazorpay$4$1;

    const-wide/16 v4, 0xbb8

    const-wide/16 v6, 0x3e8

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/razorpay/BaseRazorpay$4$1;-><init>(Lcom/razorpay/BaseRazorpay$4;JJ)V

    .line 2188
    invoke-virtual {p1}, Lcom/razorpay/BaseRazorpay$4$1;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 2189
    :cond_2
    const-string p1, "error"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2190
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$4;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-static {p1, v1}, Lcom/razorpay/BaseRazorpay;->access$400(Lcom/razorpay/BaseRazorpay;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2194
    const-string v0, "S0"

    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseRazorpay"

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
