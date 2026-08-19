.class Lcom/razorpay/BaseRazorpay$20;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->getRecommendedInstruments(Lorg/json/JSONObject;Lcom/razorpay/RecommendedInstrumentsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/BaseRazorpay;

.field final synthetic val$callback:Lcom/razorpay/RecommendedInstrumentsCallback;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/RecommendedInstrumentsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1726
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$20;->this$0:Lcom/razorpay/BaseRazorpay;

    iput-object p2, p0, Lcom/razorpay/BaseRazorpay$20;->val$callback:Lcom/razorpay/RecommendedInstrumentsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 3

    .line 1729
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v0

    .line 1730
    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseCode()I

    move-result p1

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 1737
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1738
    const-string v1, "get_recommended_instruments"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1740
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$20;->val$callback:Lcom/razorpay/RecommendedInstrumentsCallback;

    invoke-interface {p1, v0}, Lcom/razorpay/RecommendedInstrumentsCallback;->onError(Ljava/lang/String;)V

    return-void

    .line 1744
    :cond_1
    iget-object v1, p0, Lcom/razorpay/BaseRazorpay$20;->val$callback:Lcom/razorpay/RecommendedInstrumentsCallback;

    iget-object v2, p0, Lcom/razorpay/BaseRazorpay$20;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-static {v2, p1}, Lcom/razorpay/BaseRazorpay;->access$600(Lcom/razorpay/BaseRazorpay;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/razorpay/RecommendedInstrumentsCallback;->onRecommendedInstrumentsReceived(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1746
    const-string v1, "S1"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BaseRazorpay"

    invoke-static {v2, v1, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$20;->val$callback:Lcom/razorpay/RecommendedInstrumentsCallback;

    invoke-interface {p1, v0}, Lcom/razorpay/RecommendedInstrumentsCallback;->onError(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1732
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$20;->val$callback:Lcom/razorpay/RecommendedInstrumentsCallback;

    invoke-interface {p1, v0}, Lcom/razorpay/RecommendedInstrumentsCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
