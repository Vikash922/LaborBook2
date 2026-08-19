.class Lcom/razorpay/BaseRazorpay$6;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseRazorpay;->isUserRegisteredOnGpay(Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/GpayRegisteredListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/razorpay/BaseRazorpay;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/razorpay/GpayRegisteredListener;


# direct methods
.method constructor <init>(Lcom/razorpay/BaseRazorpay;Landroid/app/Activity;Lcom/razorpay/GpayRegisteredListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2339
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay$6;->this$0:Lcom/razorpay/BaseRazorpay;

    iput-object p2, p0, Lcom/razorpay/BaseRazorpay$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/razorpay/BaseRazorpay$6;->val$listener:Lcom/razorpay/GpayRegisteredListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/razorpay/ResponseObject;)V
    .locals 6

    .line 2343
    const-string v0, "S1"

    const-string v1, "BaseRazorpay"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2344
    const-string p1, "methods"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "gpay"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz p1, :cond_1

    .line 2346
    :try_start_1
    const-class p1, Lcom/razorpay/RzpPlugin;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v3, "com.razorpay.RzpGpayMerged"

    invoke-virtual {p1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/razorpay/RzpPlugin;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2348
    :try_start_2
    const-string v3, "com.google.android.apps.nbu.paisa.inapp.client.api.PaymentsClient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2349
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2351
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay$6;->val$activity:Landroid/app/Activity;

    new-instance v4, Lcom/razorpay/BaseRazorpay$6$1;

    invoke-direct {v4, p0}, Lcom/razorpay/BaseRazorpay$6$1;-><init>(Lcom/razorpay/BaseRazorpay$6;)V

    invoke-interface {p1, v3, v4}, Lcom/razorpay/RzpPlugin;->isRegistered(Landroid/content/Context;Lcom/razorpay/RzpPluginRegisterCallback;)V

    .line 2357
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay$6;->this$0:Lcom/razorpay/BaseRazorpay;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/razorpay/BaseRazorpay;->access$902(Lcom/razorpay/BaseRazorpay;Z)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 2364
    :catch_0
    :try_start_3
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay$6;->val$listener:Lcom/razorpay/GpayRegisteredListener;

    invoke-interface {v3, v2}, Lcom/razorpay/GpayRegisteredListener;->isUserRegistered(Z)V

    goto :goto_0

    .line 2360
    :catch_1
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay$6;->val$listener:Lcom/razorpay/GpayRegisteredListener;

    invoke-interface {v3, v2}, Lcom/razorpay/GpayRegisteredListener;->isUserRegistered(Z)V

    .line 2362
    const-string v3, "GooglePay SDK is not included"

    invoke-static {v1, v0, v3}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    :cond_0
    :goto_0
    sget-object v3, Lcom/razorpay/$sS$$__s$S$;->SDK_TYPE:Ljava/lang/String;

    sget v4, Lcom/razorpay/$sS$$__s$S$;->SDK_VERSION_CODE:I

    sget-object v5, Lcom/razorpay/$sS$$__s$S$;->SDK_VERSION:Ljava/lang/String;

    invoke-interface {p1, v3, v4, v5}, Lcom/razorpay/RzpPlugin;->isCompatible(Ljava/lang/String;ILjava/lang/String;)Lcom/razorpay/RzpPluginCompatibilityResponse;

    move-result-object p1

    .line 2367
    invoke-virtual {p1}, Lcom/razorpay/RzpPluginCompatibilityResponse;->isCompatible()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2368
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay$6;->this$0:Lcom/razorpay/BaseRazorpay;

    invoke-virtual {p1}, Lcom/razorpay/RzpPluginCompatibilityResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v4, -0x1

    invoke-virtual {v3, v4, p1}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_2
    move-exception p1

    .line 2374
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$6;->val$listener:Lcom/razorpay/GpayRegisteredListener;

    invoke-interface {p1, v2}, Lcom/razorpay/GpayRegisteredListener;->isUserRegistered(Z)V

    goto :goto_1

    .line 2378
    :cond_1
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$6;->val$listener:Lcom/razorpay/GpayRegisteredListener;

    invoke-interface {p1, v2}, Lcom/razorpay/GpayRegisteredListener;->isUserRegistered(Z)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 2382
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay$6;->val$listener:Lcom/razorpay/GpayRegisteredListener;

    invoke-interface {p1, v2}, Lcom/razorpay/GpayRegisteredListener;->isUserRegistered(Z)V

    :cond_2
    :goto_1
    return-void
.end method
