.class Lcom/razorpay/BaseRazorpay$3;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->isValidVpa(Ljava/lang/String;Lcom/razorpay/ValidateVpaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/BaseRazorpay;

.field final synthetic val$callback:Lcom/razorpay/ValidateVpaCallback;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/ValidateVpaCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1939
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$3;->this$0:Lcom/razorpay/BaseRazorpay;

    iput-object p2, p0, Lcom/razorpay/BaseRazorpay$3;->val$callback:Lcom/razorpay/ValidateVpaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 2

    .line 1942
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object p1

    .line 1944
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1945
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$3;->val$callback:Lcom/razorpay/ValidateVpaCallback;

    invoke-interface {p1, v0}, Lcom/razorpay/ValidateVpaCallback;->onResponse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1947
    :goto_0
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay$3;->val$callback:Lcom/razorpay/ValidateVpaCallback;

    invoke-interface {v0}, Lcom/razorpay/ValidateVpaCallback;->onFailure()V

    .line 1948
    const-string v0, "S2"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseRazorpay"

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
