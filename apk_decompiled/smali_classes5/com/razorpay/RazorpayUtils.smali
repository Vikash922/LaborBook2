.class Lcom/razorpay/RazorpayUtils;
.super Ljava/lang/Object;
.source "RazorpayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/razorpay/RazorpayUtils$TimerCallback;
    }
.end annotation


# direct methods
.method private static $sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/razorpay/GlobalUrlConfig;->getPaymentsEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/cancel?key_id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static $sS$$__s$S$(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 424
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 429
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 430
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 431
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 432
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 435
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    .line 436
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2, p1}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 442
    :cond_2
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 443
    check-cast v2, Lorg/json/JSONArray;

    const/4 v3, 0x0

    .line 444
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 445
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 446
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_3

    .line 447
    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4, p1}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    return-object v0
.end method

.method private static $sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;)V
    .locals 2

    .line 222
    invoke-static {p0, p1}, Lcom/razorpay/RazorpayUtils;->s$SSss(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/razorpay/RazorpayUtils$3;

    invoke-direct {v1, p3, p2, p0, p1}, Lcom/razorpay/RazorpayUtils$3;-><init>(Lcom/razorpay/PaymentCompleteInternalCallback;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/razorpay/Owl;->get(Ljava/lang/String;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static $sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;Lorg/json/JSONObject;)V
    .locals 8

    .line 192
    invoke-static {p0, p1}, Lcom/razorpay/RazorpayUtils;->s$SSss(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/razorpay/RazorpayUtils$2;

    move-object v1, v7

    move-object v2, p3

    move v3, p2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/razorpay/RazorpayUtils$2;-><init>(Lcom/razorpay/PaymentCompleteInternalCallback;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0, v7}, Lcom/razorpay/Owl;->get(Ljava/lang/String;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static $sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V
    .locals 4

    .line 169
    const-string v0, "markPaymentCancelAndPollForPaymentStatus"

    const-string v1, "RazorpayUtils"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    invoke-static {p0, p1}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/razorpay/RazorpayUtils$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/razorpay/RazorpayUtils$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V

    invoke-static {v2, v3}, Lcom/razorpay/Owl;->get(Ljava/lang/String;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    .line 176
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p0

    invoke-virtual {p0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 178
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;)V
    .locals 0

    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;Lorg/json/JSONObject;)V
    .locals 0

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;Lorg/json/JSONObject;)V

    return-void
.end method

.method static genericPollForPaymentStatus(Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V
    .locals 3

    .line 86
    const-string v0, "genericPollForPaymentStatus"

    const-string v1, "RazorpayUtils"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    const-string v2, "razorpay_payment_id"

    invoke-static {p0, v2}, Lcom/razorpay/SharedPreferenceUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 92
    invoke-static {p0, p1, v2, p2}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;)V

    .line 93
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p0

    invoke-virtual {p0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p0

    invoke-virtual {p0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 95
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static getBankLogoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 357
    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/GlobalUrlConfig;->getCdnUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "."

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->getBankLogoBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->getBankLogoExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/GlobalUrlConfig;->getCdnUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/bank/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->getBankLogoExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getCardNetwork(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 290
    const-string v0, "unknown"

    const-string v1, "getCardNetwork"

    const-string v2, "RazorpayUtils"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v3

    invoke-virtual {v3}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 291
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v3

    invoke-virtual {v3}, Lcom/razorpay/$sS$$__s$S$;->getCardNetworkTypeRegexJson()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz p0, :cond_3

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    goto :goto_2

    .line 298
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 299
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 300
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 302
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-virtual {p0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_1

    goto :goto_1

    :catch_0
    move-exception v5

    .line 308
    :try_start_2
    const-string v6, "S0"

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v6, v5}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v5, v0

    .line 313
    :goto_1
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p0

    invoke-virtual {p0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p0

    invoke-static {v2, v1, p0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v5

    .line 295
    :cond_3
    :goto_2
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p0

    invoke-virtual {p0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p0

    invoke-static {v2, v1, p0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    .line 316
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static getCardNetworkLength(Ljava/lang/String;)I
    .locals 2

    .line 323
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->getNetworkCardLengthJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->getNetworkCardLengthJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 327
    const-string v0, "error:exception"

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RazorpayUtils"

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method static getLastPaymentAmount(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 249
    invoke-static {p0}, Lcom/razorpay/SharedPreferenceUtil;->getPrivatePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 250
    const-string v0, "rzp_last_payment_amount"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getLastPaymentLocalOrderId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 254
    invoke-static {p0}, Lcom/razorpay/SharedPreferenceUtil;->getPrivatePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 255
    const-string v0, "rzp_last_payment_session_id"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getLastPaymentTimestamp(Landroid/content/Context;)J
    .locals 3

    .line 259
    invoke-static {p0}, Lcom/razorpay/SharedPreferenceUtil;->getPrivatePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 260
    const-string v0, "rzp_last_payment_timestamp"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getNestedRazorpayPaymentData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .line 394
    const-string v0, "razorpay_signature"

    const-string v1, "razorpay_order_id"

    const-string v2, "razorpay_payment_id"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 397
    invoke-static {p0, v2}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 399
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    :cond_0
    invoke-static {p0, v1}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 405
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    :cond_1
    invoke-static {p0, v0}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 411
    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v3

    :catch_0
    move-exception p0

    .line 416
    const-string v0, "error:exception"

    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RazorpayUtils"

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static getWalletLogoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 374
    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/GlobalUrlConfig;->getCdnUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "."

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->getBankLogoBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->getBankLogoExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/GlobalUrlConfig;->getCdnUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/wallet/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->getBankLogoExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getWalletSqLogoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 366
    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/GlobalUrlConfig;->getCdnUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "."

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->getBankLogoBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->getBankLogoExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/GlobalUrlConfig;->getCdnUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/wallet-sq/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->getBankLogoExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static handleCredIntentPaymentResponse(Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V
    .locals 3

    .line 154
    const-string v0, "handleCredIntentPaymentResponse"

    const-string v1, "RazorpayUtils"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    const-string v2, "razorpay_payment_id"

    invoke-static {p0, v2}, Lcom/razorpay/SharedPreferenceUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 156
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 160
    invoke-static {p0, p1, v2, p2}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;)V

    .line 161
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p0

    invoke-virtual {p0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 157
    :cond_1
    :goto_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p0

    invoke-virtual {p0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 163
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static handleGpayFeaturePaymentResponse(Lorg/json/JSONObject;Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V
    .locals 3

    .line 138
    const-string v0, "handleGpayFeaturePaymentResponse"

    const-string v1, "RazorpayUtils"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 139
    const-string v2, "razorpay_payment_id"

    invoke-static {p1, v2}, Lcom/razorpay/SharedPreferenceUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 145
    invoke-static {p1, p2, v2, p3, p0}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;Lorg/json/JSONObject;)V

    .line 146
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p0

    invoke-virtual {p0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 141
    :cond_1
    :goto_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p0

    invoke-virtual {p0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 148
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static handleUpiIntentAutoPayPayment(Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V
    .locals 6

    .line 65
    const-string v0, "handleUpiIntentAutoPayPayment"

    const-string v1, "RazorpayUtils"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    const-string v2, "razorpay_payment_id"

    invoke-static {p0, v2}, Lcom/razorpay/SharedPreferenceUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 72
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 73
    const-string v4, "recurring"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    invoke-static {p0, p1, v2, p2, v3}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 76
    :catch_0
    :try_start_2
    invoke-static {p0, p1, v2, p2}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;)V

    .line 78
    :goto_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p0

    invoke-virtual {p0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 68
    :cond_1
    :goto_1
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p0

    invoke-virtual {p0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 80
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method static handleUpiIntentPaymentWhenActivityDestroyed(Lorg/json/JSONObject;Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V
    .locals 5

    .line 106
    const-string v0, "handleUpiIntentPaymentWhenActivityDestroyed"

    const-string v1, "RazorpayUtils"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    const-string v2, "razorpay_payment_id"

    invoke-static {p1, v2}, Lcom/razorpay/SharedPreferenceUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 112
    :cond_0
    const-string v2, "txnId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :try_start_1
    const-string v3, "data"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "apiResponse"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "request"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    .line 121
    :goto_0
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 122
    invoke-static {p1, p2, v4, p3}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;)V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 124
    const-string v2, "url"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-static {p1, p2, v4, p3, p0}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;ILcom/razorpay/PaymentCompleteInternalCallback;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 128
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/razorpay/RazorpayUtils;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V

    .line 130
    :goto_1
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p0

    invoke-virtual {p0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 109
    :cond_3
    :goto_2
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p0

    invoke-virtual {p0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 132
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method static isValidCardNumber(Ljava/lang/String;)Z
    .locals 7

    .line 334
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    .line 335
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 336
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move p0, v2

    move v3, p0

    :goto_1
    const/4 v4, 0x1

    if-ge p0, v0, :cond_3

    sub-int v5, v0, p0

    sub-int/2addr v5, v4

    .line 345
    aget v5, v1, v5

    .line 348
    rem-int/lit8 v6, p0, 0x2

    if-ne v6, v4, :cond_1

    mul-int/lit8 v5, v5, 0x2

    :cond_1
    const/16 v4, 0x9

    if-le v5, v4, :cond_2

    add-int/lit8 v5, v5, -0x9

    :cond_2
    add-int/2addr v3, v5

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 353
    :cond_3
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_4

    move v2, v4

    :cond_4
    return v2
.end method

.method public static onTimer(Lcom/razorpay/RazorpayUtils$TimerCallback;)V
    .locals 4

    .line 384
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/razorpay/RazorpayUtils$4;

    invoke-direct {v1, p0}, Lcom/razorpay/RazorpayUtils$4;-><init>(Lcom/razorpay/RazorpayUtils$TimerCallback;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private static s$SSss(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/razorpay/GlobalUrlConfig;->getPaymentsEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/status?key_id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    const/16 v4, 0x22

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_1

    packed-switch v3, :pswitch_data_0

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "\\u%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 43
    :pswitch_0
    const-string v3, "\\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 37
    :pswitch_1
    const-string v3, "\\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 40
    :pswitch_2
    const-string v3, "\\b"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 46
    :cond_2
    const-string v3, "\\r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 49
    :cond_3
    const-string v3, "\\f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static setLastPaymentAmount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 269
    invoke-static {p0}, Lcom/razorpay/SharedPreferenceUtil;->getPrivateEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 270
    const-string v0, "rzp_last_payment_amount"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLastPaymentLocalOrderId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 274
    invoke-static {p0}, Lcom/razorpay/SharedPreferenceUtil;->getPrivateEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 275
    const-string v0, "rzp_last_payment_session_id"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLastPaymentSuccessful(Landroid/content/Context;Z)V
    .locals 1

    .line 284
    invoke-static {p0}, Lcom/razorpay/SharedPreferenceUtil;->getPrivateEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 285
    const-string v0, "rzp_last_payment_status"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setLastPaymentTimestamp(Landroid/content/Context;J)V
    .locals 1

    .line 279
    invoke-static {p0}, Lcom/razorpay/SharedPreferenceUtil;->getPrivateEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 280
    const-string v0, "rzp_last_payment_timestamp"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static wasLastPaymentSuccessful(Landroid/content/Context;)Z
    .locals 2

    .line 264
    invoke-static {p0}, Lcom/razorpay/SharedPreferenceUtil;->getPrivatePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 265
    const-string v0, "rzp_last_payment_status"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
