.class Lcom/razorpay/BaseRazorpay$10;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/NativeOtpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->otpSubmit(Ljava/lang/String;Lcom/razorpay/CardsFlowCallback;)V
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

    .line 2595
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$10;->this$0:Lcom/razorpay/BaseRazorpay;

    iput-object p2, p0, Lcom/razorpay/BaseRazorpay$10;->val$cardsFlowCallback:Lcom/razorpay/CardsFlowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 2613
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$10;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-virtual {v0, p1, p2}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 2599
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2600
    const-string p1, "next"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2601
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$10;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-static {p1, v1}, Lcom/razorpay/BaseRazorpay;->access$400(Lcom/razorpay/BaseRazorpay;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2603
    :cond_0
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$10;->val$cardsFlowCallback:Lcom/razorpay/CardsFlowCallback;

    invoke-interface {p1, v0}, Lcom/razorpay/CardsFlowCallback;->onOtpSubmitError(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2606
    const-string v1, "S1"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BaseRazorpay"

    invoke-static {v2, v1, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$10;->val$cardsFlowCallback:Lcom/razorpay/CardsFlowCallback;

    invoke-interface {p1, v0}, Lcom/razorpay/CardsFlowCallback;->onOtpSubmitError(Z)V

    :goto_0
    return-void
.end method
