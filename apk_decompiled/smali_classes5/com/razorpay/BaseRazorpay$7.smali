.class Lcom/razorpay/BaseRazorpay$7;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/NativeOtpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->getCardsFlow(Lorg/json/JSONObject;Lcom/razorpay/CardsFlowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/BaseRazorpay;

.field final synthetic val$cardsFlowCallback:Lcom/razorpay/CardsFlowCallback;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/CardsFlowCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2481
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$7;->this$0:Lcom/razorpay/BaseRazorpay;

    iput-object p2, p0, Lcom/razorpay/BaseRazorpay$7;->val$cardsFlowCallback:Lcom/razorpay/CardsFlowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 2504
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$7;->this$0:Lcom/razorpay/BaseRazorpay;

    const-string p2, "BAD_REQUEST_ERROR"

    const-string v0, "An error occurred while fetch Payment Details from API"

    invoke-static {p2, v0}, Lcom/razorpay/BaseUtils;->makeErrorPayload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5

    .line 2485
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2486
    const-string p1, "next"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 2487
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2488
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "action"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "otp_generate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2489
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$7;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-static {p1, v0}, Lcom/razorpay/BaseRazorpay;->access$1002(Lcom/razorpay/BaseRazorpay;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 2490
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$7;->val$cardsFlowCallback:Lcom/razorpay/CardsFlowCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/razorpay/CardsFlowCallback;->isNativeOtpEnabled(Z)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2495
    :cond_1
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$7;->val$cardsFlowCallback:Lcom/razorpay/CardsFlowCallback;

    invoke-interface {p1, v1}, Lcom/razorpay/CardsFlowCallback;->isNativeOtpEnabled(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2497
    const-string v0, "S1"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseRazorpay"

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    const-string p1, "JSON_PARSING_ERROR"

    const-string v0, "An error occurred while parsing the JSON payload"

    invoke-static {p1, v0}, Lcom/razorpay/BaseUtils;->makeErrorPayload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/razorpay/BaseRazorpay$7;->onError(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
