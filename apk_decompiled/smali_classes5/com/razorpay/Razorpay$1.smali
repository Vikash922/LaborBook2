.class Lcom/razorpay/Razorpay$1;
.super Ljava/lang/Object;
.source "Razorpay.java"

# interfaces
.implements Lcom/razorpay/RzpInternalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/razorpay/Razorpay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/Razorpay;


# direct methods
.method constructor <init>(Lcom/razorpay/Razorpay;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/razorpay/Razorpay$1;->this$0:Lcom/razorpay/Razorpay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentError(ILjava/lang/String;)V
    .locals 3

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    const-string v1, "response"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CUSTOMUI_INTERNAL_CALLBACK_ERROR:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    .line 30
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v1, "sdk_error_code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    iget-object p1, p0, Lcom/razorpay/Razorpay$1;->this$0:Lcom/razorpay/Razorpay;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/razorpay/Razorpay;->oncomplete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOMUI_INTERNAL_CALLBACK_ERROR_EXCEPTION:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 36
    iget-object p1, p0, Lcom/razorpay/Razorpay$1;->this$0:Lcom/razorpay/Razorpay;

    invoke-virtual {p1, p2}, Lcom/razorpay/Razorpay;->oncomplete(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;)V
    .locals 2

    .line 18
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOMUI_INTERNAL_CALLBACK_SUCCESS:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    .line 19
    iget-object v0, p0, Lcom/razorpay/Razorpay$1;->this$0:Lcom/razorpay/Razorpay;

    invoke-virtual {v0, p1}, Lcom/razorpay/Razorpay;->oncomplete(Ljava/lang/String;)V

    return-void
.end method
