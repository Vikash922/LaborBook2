.class Lcom/razorpay/BaseUtils$4;
.super Ljava/lang/Object;
.source "BaseUtils.java"

# interfaces
.implements Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseUtils;->getDeviceParamValues(Landroid/content/Context;Lcom/razorpay/RzpJSONCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$deviceParam:Lorg/json/JSONObject;

.field final synthetic val$jsonCallback:Lcom/razorpay/RzpJSONCallback;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Landroid/content/Context;Lcom/razorpay/RzpJSONCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1665
    iput-object p1, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/razorpay/BaseUtils$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/razorpay/BaseUtils$4;->val$jsonCallback:Lcom/razorpay/RzpJSONCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 6

    .line 1669
    const-string v0, "device_model"

    const-string v1, "device_manufacturer"

    const-string v2, "device_Id"

    const-string v3, "null"

    :try_start_0
    iget-object v4, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    const-string v5, "advertising_id"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1671
    iget-object p1, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    const-string v4, "is_roming"

    iget-object v5, p0, Lcom/razorpay/BaseUtils$4;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/razorpay/BaseUtils;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1672
    iget-object p1, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    const-string v4, "carrier_network"

    iget-object v5, p0, Lcom/razorpay/BaseUtils$4;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/razorpay/BaseUtils;->getCarrierOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1673
    iget-object p1, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    const-string v4, "carrier_id"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1675
    iget-object p1, p0, Lcom/razorpay/BaseUtils$4;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/razorpay/BaseUtils;->getDeviceAttributes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    .line 1676
    iget-object v4, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1677
    iget-object v2, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1678
    iget-object v1, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1680
    iget-object p1, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    const-string v0, "serial_number"

    invoke-static {}, Lcom/razorpay/BaseUtils;->buildSerial()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1681
    iget-object p1, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    const-string v0, "ip_address"

    sget-object v1, Lcom/razorpay/BaseUtils;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1682
    iget-object p1, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    const-string v0, "wifi_ssid"

    iget-object v1, p0, Lcom/razorpay/BaseUtils$4;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/razorpay/BaseUtils;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1683
    iget-object p1, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    const-string v0, "android_id"

    iget-object v1, p0, Lcom/razorpay/BaseUtils$4;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/razorpay/BaseUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1685
    iget-object p1, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    const-string v0, "safety_net basic_integrity"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1686
    iget-object p1, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    const-string v0, "safety_net_cts_profile_match"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1688
    iget-object p1, p0, Lcom/razorpay/BaseUtils$4;->val$jsonCallback:Lcom/razorpay/RzpJSONCallback;

    iget-object v0, p0, Lcom/razorpay/BaseUtils$4;->val$deviceParam:Lorg/json/JSONObject;

    invoke-interface {p1, v0}, Lcom/razorpay/RzpJSONCallback;->onResponse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1690
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S2"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
