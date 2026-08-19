.class Lcom/razorpay/BaseRazorpay$9;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/NativeOtpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->otpResend(Lcom/razorpay/CardsFlowCallback;)V
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

    .line 2558
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$9;->this$0:Lcom/razorpay/BaseRazorpay;

    iput-object p2, p0, Lcom/razorpay/BaseRazorpay$9;->val$cardsFlowCallback:Lcom/razorpay/CardsFlowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 2580
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$9;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-virtual {v0, p1, p2}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 2562
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2563
    const-string p1, "next"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    move v2, v0

    .line 2564
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2565
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "action"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "otp_submit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2566
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$9;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-static {p1, v1}, Lcom/razorpay/BaseRazorpay;->access$1102(Lcom/razorpay/BaseRazorpay;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 2567
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$9;->val$cardsFlowCallback:Lcom/razorpay/CardsFlowCallback;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/razorpay/CardsFlowCallback;->otpResendResponse(Z)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2571
    :cond_1
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$9;->val$cardsFlowCallback:Lcom/razorpay/CardsFlowCallback;

    invoke-interface {p1, v0}, Lcom/razorpay/CardsFlowCallback;->otpResendResponse(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2573
    const-string v1, "S1"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BaseRazorpay"

    invoke-static {v2, v1, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$9;->val$cardsFlowCallback:Lcom/razorpay/CardsFlowCallback;

    invoke-interface {p1, v0}, Lcom/razorpay/CardsFlowCallback;->otpGenerateResponse(Z)V

    :goto_1
    return-void
.end method
