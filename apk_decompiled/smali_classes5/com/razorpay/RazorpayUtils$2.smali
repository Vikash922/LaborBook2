.class Lcom/razorpay/RazorpayUtils$2;
.super Ljava/lang/Object;
.source "RazorpayUtils.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$apiKey:Ljava/lang/String;

.field final synthetic val$appResponse:Lorg/json/JSONObject;

.field final synthetic val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

.field final synthetic val$paymentId:Ljava/lang/String;

.field final synthetic val$pollCount:I


# direct methods
.method public static synthetic $r8$lambda$wKOQheIIs1xQ9INk-HOni16ileQ(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/razorpay/RazorpayUtils$2;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static synthetic $sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;Lorg/json/JSONObject;)V
    .locals 0

    add-int/lit8 p2, p2, 0x1

    .line 201
    invoke-static {p0, p1, p2, p3, p4}, Lcom/razorpay/RazorpayUtils;->access$100(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;Lorg/json/JSONObject;)V

    return-void
.end method

.method constructor <init>(Lcom/razorpay/PaymentCompleteInternalCallback;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/razorpay/RazorpayUtils$2;->val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

    iput p2, p0, Lcom/razorpay/RazorpayUtils$2;->val$pollCount:I

    iput-object p3, p0, Lcom/razorpay/RazorpayUtils$2;->val$paymentId:Ljava/lang/String;

    iput-object p4, p0, Lcom/razorpay/RazorpayUtils$2;->val$apiKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/razorpay/RazorpayUtils$2;->val$appResponse:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 7

    const-string v0, "{\"error\":{\"code\": \""

    .line 195
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 196
    const-string v2, "razorpay_payment_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/razorpay/RazorpayUtils$2;->val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/razorpay/PaymentCompleteInternalCallback;->oncomplete(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :cond_1
    iget v4, p0, Lcom/razorpay/RazorpayUtils$2;->val$pollCount:I

    const/16 p1, 0xc

    if-ge v4, p1, :cond_2

    .line 200
    iget-object v2, p0, Lcom/razorpay/RazorpayUtils$2;->val$paymentId:Ljava/lang/String;

    iget-object v3, p0, Lcom/razorpay/RazorpayUtils$2;->val$apiKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/razorpay/RazorpayUtils$2;->val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

    iget-object v6, p0, Lcom/razorpay/RazorpayUtils$2;->val$appResponse:Lorg/json/JSONObject;

    new-instance p1, Lcom/razorpay/RazorpayUtils$2$$ExternalSyntheticLambda0;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/razorpay/RazorpayUtils$2$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/razorpay/RazorpayUtils;->onTimer(Lcom/razorpay/RazorpayUtils$TimerCallback;)V

    goto :goto_0

    .line 204
    :cond_2
    iget-object p1, p0, Lcom/razorpay/RazorpayUtils$2;->val$appResponse:Lorg/json/JSONObject;

    const-string v1, "recurring"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 205
    iget-object p1, p0, Lcom/razorpay/RazorpayUtils$2;->val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

    const-string v0, "{\"error\": {\"code\": 0,\"description\": \"The status of your payment is pending. You can either wait or retry to pay successfully\"}}"

    invoke-interface {p1, v0}, Lcom/razorpay/PaymentCompleteInternalCallback;->oncomplete(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/razorpay/RazorpayUtils$2;->val$appResponse:Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "apiResponse"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 209
    iget-object v1, p0, Lcom/razorpay/RazorpayUtils$2;->val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/razorpay/RazorpayUtils$2;->val$appResponse:Lorg/json/JSONObject;

    const-string v3, "resultCode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\", \"description\": \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"}}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/razorpay/PaymentCompleteInternalCallback;->oncomplete(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    iget-object p1, p0, Lcom/razorpay/RazorpayUtils$2;->val$callback:Lcom/razorpay/PaymentCompleteInternalCallback;

    iget-object v0, p0, Lcom/razorpay/RazorpayUtils$2;->val$appResponse:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/razorpay/PaymentCompleteInternalCallback;->oncomplete(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
