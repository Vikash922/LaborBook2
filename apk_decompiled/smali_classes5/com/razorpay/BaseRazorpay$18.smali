.class Lcom/razorpay/BaseRazorpay$18;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/FetchPreferencesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->getCheckoutPreferences()V
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

    .line 1638
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$18;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    .line 1642
    const-string v0, "fee_bearer"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1643
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1644
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1645
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$18;->this$0:Lcom/razorpay/BaseRazorpay;

    iget-object v0, v0, Lcom/razorpay/BaseRazorpay;->upiTurbo:Lcom/razorpay/UpiTurbo;

    if-eqz v0, :cond_1

    .line 1648
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$18;->this$0:Lcom/razorpay/BaseRazorpay;

    iget-object v0, v0, Lcom/razorpay/BaseRazorpay;->upiTurbo:Lcom/razorpay/UpiTurbo;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/razorpay/UpiTurbo;->setFeeBearer(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
