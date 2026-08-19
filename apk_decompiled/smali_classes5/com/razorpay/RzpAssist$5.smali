.class Lcom/razorpay/RzpAssist$5;
.super Ljava/lang/Object;
.source "RzpAssist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/RzpAssist;->onOtpParsed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/RzpAssist;

.field final synthetic val$otpJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/razorpay/RzpAssist;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/razorpay/RzpAssist$5;->this$0:Lcom/razorpay/RzpAssist;

    iput-object p2, p0, Lcom/razorpay/RzpAssist$5;->val$otpJson:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 388
    const-string v0, "sender"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/razorpay/RzpAssist$5;->val$otpJson:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 389
    const-string v2, "otp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 391
    const-string v4, "bank"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    new-instance v4, Lcom/razorpay/OTP;

    invoke-direct {v4, v2, v3, v1}, Lcom/razorpay/OTP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 394
    invoke-virtual {v4}, Lcom/razorpay/OTP;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-virtual {v4}, Lcom/razorpay/OTP;->getSender()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RZRPAY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "razorpay_otp"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 396
    :try_start_1
    iget-object v0, p0, Lcom/razorpay/RzpAssist$5;->this$0:Lcom/razorpay/RzpAssist;

    invoke-static {v0, v3}, Lcom/razorpay/RzpAssist;->access$202(Lcom/razorpay/RzpAssist;Z)Z

    .line 397
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 399
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lcom/razorpay/RzpAssist$5;->this$0:Lcom/razorpay/RzpAssist;

    invoke-static {v0, v3}, Lcom/razorpay/RzpAssist;->access$302(Lcom/razorpay/RzpAssist;Z)Z

    .line 405
    const-string v0, "payment_otp_received"

    new-instance v2, Lcom/razorpay/AnalyticsProperty;

    sget-object v4, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v2, v3, v4}, Lcom/razorpay/AnalyticsProperty;-><init>(ZLcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v0, v2}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 407
    :goto_0
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->OTP_RECEIVED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v1}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 409
    const-string v1, "Error in parsing json"

    invoke-static {v1, v0}, Lcom/razorpay/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
