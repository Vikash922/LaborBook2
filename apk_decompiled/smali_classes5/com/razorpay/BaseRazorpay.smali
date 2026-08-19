.class public abstract Lcom/razorpay/BaseRazorpay;
.super Ljava/lang/Object;
.source "BaseRazorpay.java"

# interfaces
.implements Lcom/razorpay/OnAppSelectedListener;
.implements Lcom/razorpay/PaymentCompleteInternalCallback;
.implements Lcom/razorpay/RzpInternalCallback;


# static fields
.field private static $S$S$s$__Ss:I = 0x0

.field public static final INVALID_OPTIONS:I = 0x3

.field public static final NETWORK_ERROR:I = 0x2

.field public static final PARSING_ERROR:I = 0x4

.field public static final PAYMENT_CANCELED:I = 0x0

.field public static final PAYMENT_ERROR:I = 0x5

.field static final RAZORPAY_ORDER_ID:Ljava/lang/String; = "razorpay_order_id"

.field static final RAZORPAY_PAYMENT_ID:Ljava/lang/String; = "razorpay_payment_id"

.field static final RAZORPAY_SIGNATURE:Ljava/lang/String; = "razorpay_signature"

.field public static final TLS_ERROR:I = 0x6

.field public static UpiTurbo:Lcom/razorpay/UpiTurboUtilities;


# instance fields
.field private $S$_ss_:Ljava/lang/String;

.field private $SSs_$S_$$s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private $sS$$__s$S$:Ljava/lang/String;

.field private $s_$$s$_ss:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private $ss_$S_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/razorpay/ApplicationDetails;",
            ">;"
        }
    .end annotation
.end field

.field private $sss$$s:Ljava/lang/String;

.field private SSsS$sss__s:Z

.field private S_$S$$:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private S_SS$s:Ljava/lang/String;

.field private S__s_$$:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ss$$S__:Z

.field private _$S$$S:Z

.field private _$_$_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _S$$SS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _SS$$$$s:Lorg/json/JSONObject;

.field private _Ssss$:Lcom/razorpay/RazorpayWebViewClient;

.field private _SsssS:Ljava/lang/String;

.field private __$$__s_$:Ljava/lang/String;

.field private __S_s:Lorg/json/JSONObject;

.field private _sS$S_$$sss:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/razorpay/ApplicationDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected activity:Landroid/app/Activity;

.field public amazonPayWallet:Lcom/razorpay/AmazonPayWallet;

.field protected apiKey:Ljava/lang/String;

.field protected extActiveRzpPluginInstance:Lcom/razorpay/RzpPlugin;

.field protected isExtRzpPluginActive:Z

.field protected mShouldDisplayLogo:Z

.field protected magicView:Landroid/view/ViewGroup;

.field public otpAssist:Lcom/razorpay/OtpAssist;

.field protected paymentResultListener:Lcom/razorpay/PaymentResultListener;

.field protected paymentResultWithDataListener:Lcom/razorpay/PaymentResultWithDataListener;

.field private s$SSss:Lcom/razorpay/RazorpayWebChromeClient;

.field private s$S_SsS$SS:Z

.field private s$s___s$$_S:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sS$$$ss_:Lorg/json/JSONObject;

.field private s_SSsSss:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ssS__$SS_S$:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ss__Ss$S$:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public upiTurbo:Lcom/razorpay/UpiTurbo;

.field protected useBottomSheet:Z

.field protected webview:Landroid/webkit/WebView;


# direct methods
.method private $S$S$s$__Ss()V
    .locals 3

    .line 2157
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->$S$_ss_:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2162
    :cond_0
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->$S$_ss_:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/razorpay/BaseRazorpay;->_SS$$$$s(Ljava/lang/String;)V

    return-void

    .line 2158
    :cond_1
    :goto_0
    const-string v0, "S1"

    const-string v1, "credStatusUrl is null or empty"

    const-string v2, "BaseRazorpay"

    invoke-static {v2, v0, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static $S$_ss_(Ljava/lang/String;)J
    .locals 2

    .line 1837
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1838
    const-string p0, "subscription"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1840
    const-string v0, "amount"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 1843
    const-string v0, "S1"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BaseRazorpay"

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private $S$_ss_()Z
    .locals 5

    .line 466
    const-string v0, "disable_hardware_acceleration"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "merchant_flag_not_set"

    const-string v4, "enabled"

    if-nez v2, :cond_0

    .line 467
    :try_start_1
    invoke-direct {p0, v4, v3}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    invoke-direct {p0, v4, v3}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 479
    :cond_1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 480
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/razorpay/PerformanceUtil;->getPerformanceClass(Landroid/content/Context;)I

    .line 481
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/razorpay/PerformanceUtil;->isLowEndDevice(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 485
    const-string v0, "high_end_device"

    invoke-direct {p0, v4, v0}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    if-eqz v0, :cond_4

    .line 490
    const-string v2, "OPPO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 496
    :cond_3
    const-string v0, "disabled"

    const-string v2, "oppo_low_end_device"

    invoke-direct {p0, v0, v2}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v0, "Hardware acceleration disabled: OPPO low-end device detected"

    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 491
    :cond_4
    :goto_0
    const-string v0, "not_oppo_manufacturer"

    invoke-direct {p0, v4, v0}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HW Accel: ERROR - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-static {v0}, Lcom/razorpay/Logger;->e(Ljava/lang/String;)V

    return v1

    :catch_1
    move-exception v0

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HW Accel: ERROR - Invalid flag value (expected boolean): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {v0}, Lcom/razorpay/Logger;->e(Ljava/lang/String;)V

    return v1
.end method

.method private $S$_ss_(Lorg/json/JSONObject;)Z
    .locals 3

    .line 1807
    const-string v0, "method"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    .line 1811
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1816
    :cond_1
    const-string v1, "app_package"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1817
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1821
    :cond_2
    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/razorpay/BaseUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method private static $sS$$__s$S$(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 2148
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2150
    const-string v0, "RESULT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private $sS$$__s$S$(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 2630
    const-string v0, "razorpay_payment_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "next"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2632
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 2633
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2634
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2635
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "url"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2639
    const-string p2, "S0"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseRazorpay"

    invoke-static {v0, p2, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static $sS$$__s$S$(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/razorpay/ApplicationDetails;",
            ">;"
        }
    .end annotation

    .line 647
    invoke-static {p0}, Lcom/razorpay/BaseRazorpay;->s$SSss(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 648
    const-string v1, "upi://pay"

    invoke-static {p0, v1}, Lcom/razorpay/BaseUtils;->getListOfAppsWhichHandleDeepLink(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 649
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    .line 651
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 653
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 655
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    :try_start_0
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/razorpay/BaseRazorpay;->_Ssss$(Landroid/content/Context;Ljava/lang/String;)Lcom/razorpay/ApplicationDetails;

    move-result-object v3

    .line 660
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 662
    const-string v4, "S0"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v5, "BaseRazorpay"

    invoke-static {v5, v4, v3}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static $sS$$__s$S$(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 671
    invoke-static {p0, p1}, Lcom/razorpay/BaseUtils;->getListOfAppsWhichHandleDeepLink(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 672
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 674
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 675
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private $sS$$__s$S$()V
    .locals 3

    .line 283
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    .line 285
    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->getWalletsWithAppToAppRedirection()Ljava/util/ArrayList;

    move-result-object v0

    .line 284
    invoke-static {v1, v0}, Lcom/razorpay/BaseUtils;->getAppsWithPackageNames(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/BaseRazorpay;->$SSs_$S_$$s:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Lcom/razorpay/AnalyticsProperty;

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->$SSs_$S_$$s:Ljava/util/ArrayList;

    .line 287
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v0, v1, v2}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    .line 286
    const-string v1, "wallets_with_app_to_app_redirection"

    invoke-static {v1, v0}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 289
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_WALLETS_WITH_APP_TO_APP_REDIRECTION_IDENTIFIED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    return-void
.end method

.method private $sS$$__s$S$(Landroid/app/Activity;)V
    .locals 6

    .line 204
    const-string v0, "initRazorpay"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 208
    sput-object v2, Lcom/razorpay/BaseUtils;->apiKey:Ljava/lang/String;

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    :cond_1
    invoke-static {p1}, Lcom/razorpay/BaseUtils;->getKeyId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 216
    const-string v2, "CUSTOM"

    sput-object v2, Lcom/razorpay/AnalyticsUtil;->libraryType:Ljava/lang/String;

    .line 217
    invoke-static {p1}, Lcom/razorpay/$sS$$__s$S$;->getAdvertisingIdFromUtil(Landroid/content/Context;)V

    .line 218
    sget-object v2, Lcom/razorpay/$sS$$__s$S$;->SDK_VERSION:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/razorpay/SharedPreferenceUtil;->handleSdkUpdate(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/razorpay/$sS$$__s$S$;->init(Landroid/content/Context;)V

    .line 220
    sget v2, Lcom/razorpay/$sS$$__s$S$;->SDK_VERSION_CODE:I

    invoke-static {p1, v2}, Lcom/razorpay/BaseUtils;->checkForLatestVersion(Landroid/content/Context;I)V

    .line 221
    invoke-static {}, Lcom/razorpay/BaseUtils;->setup()V

    .line 222
    invoke-static {p1}, Lcom/razorpay/CacheManager;->init(Landroid/content/Context;)V

    .line 223
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    .line 225
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 226
    instance-of v2, p1, Lcom/razorpay/PaymentResultListener;

    if-eqz v2, :cond_3

    .line 227
    move-object v2, p1

    check-cast v2, Lcom/razorpay/PaymentResultListener;

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->paymentResultListener:Lcom/razorpay/PaymentResultListener;

    goto :goto_0

    .line 228
    :cond_3
    instance-of v2, p1, Lcom/razorpay/PaymentResultWithDataListener;

    if-eqz v2, :cond_4

    .line 229
    move-object v2, p1

    check-cast v2, Lcom/razorpay/PaymentResultWithDataListener;

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->paymentResultWithDataListener:Lcom/razorpay/PaymentResultWithDataListener;

    .line 232
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/razorpay/BaseRazorpay;->isMagicPresent()Z

    move-result v2

    sput-boolean v2, Lcom/razorpay/$sS$$__s$S$;->IS_MAGIC_ENABLED:Z

    .line 233
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/razorpay/$sS$$__s$S$;->fetchConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    sget-object v3, Lcom/razorpay/$sS$$__s$S$;->SDK_TYPE:Ljava/lang/String;

    sget v4, Lcom/razorpay/$sS$$__s$S$;->SDK_VERSION_CODE:I

    sget-object v5, Lcom/razorpay/$sS$$__s$S$;->SDK_VERSION:Ljava/lang/String;

    invoke-static {p1, v2, v3, v4, v5}, Lcom/razorpay/AnalyticsUtil;->setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    const-string v2, "custom_ui"

    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/razorpay/MonitoringUtil;->startCheckout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v2, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_INIT_END:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 237
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->postData()V

    .line 238
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->s$SSss()V

    .line 239
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$()V

    .line 240
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Landroid/app/Activity;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 214
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Please set your Razorpay API key in AndroidManifest.xml"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 244
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private $sS$$__s$S$(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    .line 257
    invoke-static {p1}, Lcom/razorpay/BaseUtils;->getAllPluginsFromManifest(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 258
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 259
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 260
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 261
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "com.razorpay.plugin.amazonpay_wallet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "com.razorpay.plugin.upi_turbo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "com.razorpay.plugin.edge"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 274
    :pswitch_0
    new-instance v2, Lcom/razorpay/AmazonPayWallet;

    invoke-direct {v2}, Lcom/razorpay/AmazonPayWallet;-><init>()V

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->amazonPayWallet:Lcom/razorpay/AmazonPayWallet;

    .line 275
    invoke-virtual {v2, p1, v1, p2}, Lcom/razorpay/AmazonPayWallet;->initiate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :pswitch_1
    new-instance v1, Lcom/razorpay/UpiTurbo;

    invoke-direct {v1, p1}, Lcom/razorpay/UpiTurbo;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/razorpay/BaseRazorpay;->upiTurbo:Lcom/razorpay/UpiTurbo;

    goto :goto_0

    .line 269
    :pswitch_2
    new-instance v1, Lcom/razorpay/OtpAssist;

    invoke-direct {v1}, Lcom/razorpay/OtpAssist;-><init>()V

    iput-object v1, p0, Lcom/razorpay/BaseRazorpay;->otpAssist:Lcom/razorpay/OtpAssist;

    .line 270
    invoke-virtual {v1, p1, p2}, Lcom/razorpay/OtpAssist;->initRazorpayOtpAssist(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x720efb6f -> :sswitch_2
        -0x2b81d687 -> :sswitch_1
        0x22915d48 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private $sS$$__s$S$(Ljava/lang/String;)V
    .locals 2

    .line 1110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1111
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1112
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private $sS$$__s$S$(Ljava/lang/String;Lcom/razorpay/FetchPreferencesCallback;)V
    .locals 4

    .line 1879
    const-string v0, "fetchPreferences"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1880
    sget-object v2, Lcom/razorpay/AnalyticsEvent;->FETCH_PREFERENCES_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 1881
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->$s_$$s$_ss()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    .line 1884
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1885
    :cond_0
    invoke-interface {p2, v2}, Lcom/razorpay/FetchPreferencesCallback;->onResponse(Ljava/lang/String;)V

    .line 1886
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1894
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/razorpay/GlobalUrlConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/v1/preferences?key_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    .line 1896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&subscription_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1898
    :cond_2
    new-instance p1, Lcom/razorpay/BaseRazorpay$2;

    invoke-direct {p1, p0, p2}, Lcom/razorpay/BaseRazorpay$2;-><init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/FetchPreferencesCallback;)V

    invoke-static {v2, p1}, Lcom/razorpay/Owl;->get(Ljava/lang/String;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    .line 1912
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1914
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private $sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 514
    const-string v0, "disable_hardware_acceleration"

    :try_start_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 515
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/razorpay/PerformanceUtil;->getPerformanceClass(Landroid/content/Context;)I

    move-result v2

    .line 516
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/razorpay/PerformanceUtil;->isLowEndDevice(Landroid/content/Context;)Z

    move-result v3

    .line 517
    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    .line 518
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 520
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 521
    const-string v5, "manufacturer"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v1, "performance_class"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v1, "is_low_end_device"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v1, "merchant_flag_enabled"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v0, "hw_acceleration_status"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string p1, "reason"

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOMUI_HARDWARE_ACCELERATION_CHECK:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v4}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 530
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error tracking hardware acceleration: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/razorpay/Logger;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private $sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;Lcom/razorpay/NativeOtpCallback;)V
    .locals 3

    .line 2646
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2647
    const-string v1, "content-type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2648
    new-instance v1, Lcom/razorpay/BaseRazorpay$11;

    invoke-direct {v1, p0, p3}, Lcom/razorpay/BaseRazorpay$11;-><init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/NativeOtpCallback;)V

    invoke-static {p1, p2, v0, v1}, Lcom/razorpay/Owl;->post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    return-void
.end method

.method private $sS$$__s$S$(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 8

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 401
    const-string v2, "S1"

    const-string v3, "BaseRazorpay"

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_0

    .line 405
    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 407
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v2, v7}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 413
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    :goto_2
    if-ge v4, p1, :cond_1

    .line 416
    :try_start_1
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    .line 418
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 423
    :cond_1
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->__$$__s_$()V

    .line 424
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->_$_$_:Ljava/util/ArrayList;

    .line 425
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->ssS__$SS_S$:Ljava/util/ArrayList;

    .line 427
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->_sS$S_$$sss:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->_$_$_:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->s_SSsSss:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 433
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->_sS$S_$$sss:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 435
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->ssS__$SS_S$:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->s_SSsSss:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    return-void
.end method

.method private $sS$$__s$S$(Lorg/json/JSONObject;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 881
    const-string v0, "_[flow]"

    const-string v1, "display_logo"

    const-string v2, "handlePayload"

    const-string v3, "BaseRazorpay"

    const-string v4, "preferred_apps_order"

    const-string v5, "upi_app_package_name"

    const-string v6, "wallet"

    const-string v7, "method"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v8

    invoke-virtual {v8}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v8

    invoke-static {v3, v2, v8}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v8, 0x0

    .line 882
    iput-object v8, p0, Lcom/razorpay/BaseRazorpay;->$sss$$s:Ljava/lang/String;

    .line 884
    sget-object v8, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_PAYLOAD_PASSED:Lcom/razorpay/AnalyticsEvent;

    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    .line 885
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 886
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/razorpay/MonitoringUtil;->setPaymentMethod(Ljava/lang/String;)V

    .line 889
    :cond_0
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "upi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 890
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "intent"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 891
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->s$SSss()V

    .line 892
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/BaseRazorpay;->$sss$$s:Ljava/lang/String;

    .line 894
    new-instance v0, Lcom/razorpay/AnalyticsProperty;

    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->$sss$$s:Ljava/lang/String;

    sget-object v8, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v0, v4, v8}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v5, v0}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 895
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_APP_PASSED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    goto :goto_0

    .line 896
    :cond_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "other_apps_order"

    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 898
    :cond_2
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_INTENT_APPS_PREFERENCE_PASSED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 899
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 900
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 902
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 903
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 904
    sget-object v4, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_INTENT_APPS_PREFERRED_ORDER_PASSED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v4}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 907
    :cond_3
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 908
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 909
    sget-object v4, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_INTENT_APPS_OTHER_ORDER_PASSED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v4}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 912
    :cond_4
    invoke-direct {p0, v0, v8}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 916
    :cond_5
    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 917
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/razorpay/BaseRazorpay;->mShouldDisplayLogo:Z

    :cond_6
    const/4 v0, 0x0

    .line 920
    iput-boolean v0, p0, Lcom/razorpay/BaseRazorpay;->s$S_SsS$SS:Z

    .line 921
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 922
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 923
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "touchngo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    iput-boolean v0, p0, Lcom/razorpay/BaseRazorpay;->s$S_SsS$SS:Z

    if-eqz v1, :cond_8

    .line 925
    new-instance p1, Lcom/razorpay/AnalyticsProperty;

    iget-boolean v0, p0, Lcom/razorpay/BaseRazorpay;->s$S_SsS$SS:Z

    sget-object v1, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {p1, v0, v1}, Lcom/razorpay/AnalyticsProperty;-><init>(ZLcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v6, p1}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 926
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_WALLET_SELECTED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 929
    :cond_8
    invoke-static {}, Lcom/razorpay/BaseUtils;->getInstance()Lcom/razorpay/BaseUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/razorpay/BaseRazorpay;->s$S_SsS$SS:Z

    invoke-virtual {p1, v0, v1}, Lcom/razorpay/BaseUtils;->setDeeplinkEnabled(Landroid/content/Context;Z)V

    .line 931
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v3, v2, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 933
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private $sS$$__s$S$(Lcom/razorpay/ResponseObject;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2663
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2664
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseCode()I

    move-result p1

    const/16 v2, 0x190

    if-lt p1, v2, :cond_0

    return v0

    .line 2667
    :cond_0
    const-string p1, "error"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 2671
    const-string v1, "S0"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BaseRazorpay"

    invoke-static {v2, v1, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private $sS$$__s$S$(Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2393
    const-string v0, "com.google.android.apps.nbu.paisa.user"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "com.razorpay.plugin.googlepay_all"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/razorpay/BaseRazorpay;->Ss$$S__:Z

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "com.razorpay.plugin.googlepay"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private $s_$$s$_ss()Ljava/lang/String;
    .locals 2

    .line 1871
    const-string v0, "rzp_payment_preferences"

    invoke-static {v0}, Lcom/razorpay/CacheManager;->hasExpired(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1872
    invoke-static {v0}, Lcom/razorpay/CacheManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 158
    sget-object v0, Lcom/razorpay/UpiTurboUtilities;->INSTANCE:Lcom/razorpay/UpiTurboUtilities;

    sput-object v0, Lcom/razorpay/BaseRazorpay;->UpiTurbo:Lcom/razorpay/UpiTurboUtilities;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .line 188
    const-string v0, "BaseRazorpay(Activity)"

    const-string v1, "BaseRazorpay"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 52
    iput-boolean v2, p0, Lcom/razorpay/BaseRazorpay;->useBottomSheet:Z

    const/4 v3, 0x0

    .line 54
    iput-boolean v3, p0, Lcom/razorpay/BaseRazorpay;->isExtRzpPluginActive:Z

    .line 58
    const-string v4, "https://api.razorpay.com/v1/"

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$:Ljava/lang/String;

    .line 78
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    .line 81
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->_SS$$$$s:Lorg/json/JSONObject;

    .line 82
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->sS$$$ss_:Lorg/json/JSONObject;

    .line 84
    iput-boolean v3, p0, Lcom/razorpay/BaseRazorpay;->s$S_SsS$SS:Z

    .line 96
    iput-boolean v3, p0, Lcom/razorpay/BaseRazorpay;->SSsS$sss__s:Z

    .line 101
    iput-boolean v2, p0, Lcom/razorpay/BaseRazorpay;->mShouldDisplayLogo:Z

    .line 106
    iput-boolean v3, p0, Lcom/razorpay/BaseRazorpay;->Ss$$S__:Z

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->$SSs_$S_$$s:Ljava/util/ArrayList;

    .line 146
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->S_$S$$:Ljava/util/HashSet;

    .line 147
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->_S$$SS:Ljava/util/HashSet;

    .line 148
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->s$s___s$$_S:Ljava/util/HashSet;

    .line 150
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->S__s_$$:Ljava/util/LinkedHashSet;

    .line 190
    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 191
    invoke-direct {p0, p1}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 192
    invoke-static {p1}, Lcom/razorpay/GlobalUrlConfig;->initiate(Lorg/json/JSONObject;)V

    .line 193
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    .line 162
    const-string v0, "BaseRazorpay(Activity,String)"

    const-string v1, "BaseRazorpay"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 52
    iput-boolean v2, p0, Lcom/razorpay/BaseRazorpay;->useBottomSheet:Z

    const/4 v3, 0x0

    .line 54
    iput-boolean v3, p0, Lcom/razorpay/BaseRazorpay;->isExtRzpPluginActive:Z

    .line 58
    const-string v4, "https://api.razorpay.com/v1/"

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$:Ljava/lang/String;

    .line 78
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    .line 81
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->_SS$$$$s:Lorg/json/JSONObject;

    .line 82
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->sS$$$ss_:Lorg/json/JSONObject;

    .line 84
    iput-boolean v3, p0, Lcom/razorpay/BaseRazorpay;->s$S_SsS$SS:Z

    .line 96
    iput-boolean v3, p0, Lcom/razorpay/BaseRazorpay;->SSsS$sss__s:Z

    .line 101
    iput-boolean v2, p0, Lcom/razorpay/BaseRazorpay;->mShouldDisplayLogo:Z

    .line 106
    iput-boolean v3, p0, Lcom/razorpay/BaseRazorpay;->Ss$$S__:Z

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->$SSs_$S_$$s:Ljava/util/ArrayList;

    .line 146
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->S_$S$$:Ljava/util/HashSet;

    .line 147
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->_S$$SS:Ljava/util/HashSet;

    .line 148
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->s$s___s$$_S:Ljava/util/HashSet;

    .line 150
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->S__s_$$:Ljava/util/LinkedHashSet;

    .line 164
    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    iput-object p2, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    .line 166
    invoke-direct {p0, p1}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 167
    invoke-static {p1}, Lcom/razorpay/GlobalUrlConfig;->initiate(Lorg/json/JSONObject;)V

    .line 168
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .line 174
    const-string v0, "BaseRazorpay(Activity,String,JSONObject)"

    const-string v1, "BaseRazorpay"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 52
    iput-boolean v2, p0, Lcom/razorpay/BaseRazorpay;->useBottomSheet:Z

    const/4 v3, 0x0

    .line 54
    iput-boolean v3, p0, Lcom/razorpay/BaseRazorpay;->isExtRzpPluginActive:Z

    .line 58
    const-string v4, "https://api.razorpay.com/v1/"

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$:Ljava/lang/String;

    .line 78
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    .line 81
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->_SS$$$$s:Lorg/json/JSONObject;

    .line 82
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->sS$$$ss_:Lorg/json/JSONObject;

    .line 84
    iput-boolean v3, p0, Lcom/razorpay/BaseRazorpay;->s$S_SsS$SS:Z

    .line 96
    iput-boolean v3, p0, Lcom/razorpay/BaseRazorpay;->SSsS$sss__s:Z

    .line 101
    iput-boolean v2, p0, Lcom/razorpay/BaseRazorpay;->mShouldDisplayLogo:Z

    .line 106
    iput-boolean v3, p0, Lcom/razorpay/BaseRazorpay;->Ss$$S__:Z

    .line 135
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->$SSs_$S_$$s:Ljava/util/ArrayList;

    .line 146
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->S_$S$$:Ljava/util/HashSet;

    .line 147
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->_S$$SS:Ljava/util/HashSet;

    .line 148
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->s$s___s$$_S:Ljava/util/HashSet;

    .line 150
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, p0, Lcom/razorpay/BaseRazorpay;->S__s_$$:Ljava/util/LinkedHashSet;

    .line 176
    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v4

    invoke-virtual {v4}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v4

    invoke-static {v1, v0, v4}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    invoke-static {p3}, Lcom/razorpay/GlobalUrlConfig;->initiate(Lorg/json/JSONObject;)V

    .line 178
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/razorpay/GlobalUrlConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v4, "/v1/"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$:Ljava/lang/String;

    .line 179
    iput-boolean v3, p0, Lcom/razorpay/BaseRazorpay;->mShouldDisplayLogo:Z

    .line 180
    const-string p3, "rzp_"

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v2

    iput-object p2, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    .line 181
    invoke-direct {p0, p1}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Landroid/app/Activity;)V

    .line 182
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 184
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private SSsS$sss__s()V
    .locals 3

    .line 2686
    :try_start_0
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->Ss$$S__()V

    .line 2688
    new-instance v0, Lcom/razorpay/BaseRazorpay$13;

    invoke-direct {v0, p0}, Lcom/razorpay/BaseRazorpay$13;-><init>(Lcom/razorpay/BaseRazorpay;)V

    iput-object v0, p0, Lcom/razorpay/BaseRazorpay;->$s_$$s$_ss:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 2718
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->$s_$$s$_ss:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2721
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error registering TNG lifecycle callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2722
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2721
    const-string v1, "BaseRazorpay"

    const-string v2, "S1"

    invoke-static {v1, v2, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/razorpay/RazorpayUtils;->genericPollForPaymentStatus(Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V

    :goto_0
    return-void
.end method

.method private Ss$$S__()V
    .locals 2

    .line 2733
    :try_start_0
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->$s_$$s$_ss:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2734
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->$s_$$s$_ss:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    .line 2735
    iput-object v0, p0, Lcom/razorpay/BaseRazorpay;->$s_$$s$_ss:Landroid/app/Application$ActivityLifecycleCallbacks;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private _SS$$$$s()V
    .locals 6

    .line 1004
    const-string v0, "payWithGpayFeature"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1007
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1008
    const-string v3, "content-type"

    const-string v4, "application/json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1011
    :try_start_1
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    const-string v4, "key_id"

    iget-object v5, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1018
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "payments/create/ajax"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/razorpay/BaseRazorpay$12;

    invoke-direct {v5, p0}, Lcom/razorpay/BaseRazorpay$12;-><init>(Lcom/razorpay/BaseRazorpay;)V

    invoke-static {v3, v4, v2, v5}, Lcom/razorpay/Owl;->post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    .line 1046
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1013
    const-string v3, "S1"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 1048
    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private _SS$$$$s(Ljava/lang/String;)V
    .locals 1

    .line 2166
    new-instance v0, Lcom/razorpay/BaseRazorpay$4;

    invoke-direct {v0, p0}, Lcom/razorpay/BaseRazorpay$4;-><init>(Lcom/razorpay/BaseRazorpay;)V

    invoke-static {p1, v0}, Lcom/razorpay/Owl;->get(Ljava/lang/String;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static _Ssss$(Landroid/content/Context;Ljava/lang/String;)Lcom/razorpay/ApplicationDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 773
    invoke-static {p0, p1}, Lcom/razorpay/BaseUtils;->getBase64FromOtherAppsResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-static {p1, p0}, Lcom/razorpay/BaseUtils;->getAppNameOfPackageName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 775
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/razorpay/$sS$$__s$S$;->getAppLogoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    new-instance v2, Lcom/razorpay/ApplicationDetails;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/razorpay/ApplicationDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private _Ssss$(Lorg/json/JSONObject;)Lcom/razorpay/PaymentData;
    .locals 5

    .line 1503
    const-string v0, "razorpay_signature"

    const-string v1, "razorpay_order_id"

    const-string v2, "razorpay_payment_id"

    new-instance v3, Lcom/razorpay/PaymentData;

    invoke-direct {v3}, Lcom/razorpay/PaymentData;-><init>()V

    .line 1505
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/razorpay/PaymentData;->setData(Lorg/json/JSONObject;)V

    .line 1506
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1507
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/razorpay/PaymentData;->setPaymentId(Ljava/lang/String;)V

    .line 1509
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1510
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/razorpay/PaymentData;->setOrderId(Ljava/lang/String;)V

    .line 1512
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1513
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/razorpay/PaymentData;->setSignature(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1516
    const-string v0, "S1"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseRazorpay"

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v3
.end method

.method private _Ssss$(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "<input type=\'hidden\' name=\'_[checkout_id]\' value=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "<input type=\'hidden\' name=\'_[os]\' value=\'android\'>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "<input type=\'hidden\' name=\'_[package_name]\' value=\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "<input type=\'hidden\' name=\'_[platform]\' value=\'mobile_sdk\'>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "<input type=\'hidden\' name=\'_[cellular_network_type]\' value="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/razorpay/BaseUtils;->getCellularNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "<input type=\'hidden\' name=\'_[data_network_type]\' value=\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/razorpay/BaseUtils;->getDataNetworkType(Landroid/content/Context;)Lcom/razorpay/NetworkType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/razorpay/NetworkType;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "<input type=\'hidden\' name=\'_[locale]\' value=\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/razorpay/BaseUtils;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "<input type=\'hidden\' name=\'_[library]\' value=\'custom\'>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "<input type=\'hidden\' name=\'_[library_version]\' value=\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Lcom/razorpay/$sS$$__s$S$;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1288
    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->$sss$$s:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "<input type=\'hidden\' name=\'_[app]\' value=\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v1

    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->$sss$$s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/razorpay/$sS$$__s$S$;->getIntentAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private _Ssss$()V
    .locals 6

    .line 328
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->_sS$S_$$sss:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->$ss_$S_:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    return-void

    .line 331
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/razorpay/BaseRazorpay;->_sS$S_$$sss:Ljava/util/HashMap;

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/razorpay/BaseRazorpay;->$ss_$S_:Ljava/util/HashMap;

    .line 335
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->_S$$SS:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "S1"

    const-string v3, "BaseRazorpay"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 336
    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->ss__Ss$S$:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v1}, Lcom/razorpay/BaseRazorpay;->s$SSss(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    :try_start_0
    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->$ss_$S_:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v5, v1}, Lcom/razorpay/BaseRazorpay;->_Ssss$(Landroid/content/Context;Ljava/lang/String;)Lcom/razorpay/ApplicationDetails;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 340
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_2
    iget-boolean v0, p0, Lcom/razorpay/BaseRazorpay;->_$S$$S:Z

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->s$s___s$$_S:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 347
    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->ss__Ss$S$:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 349
    :try_start_1
    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->_sS$S_$$sss:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v5, v1}, Lcom/razorpay/BaseRazorpay;->_Ssss$(Landroid/content/Context;Ljava/lang/String;)Lcom/razorpay/ApplicationDetails;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 351
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->ss__Ss$S$:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 357
    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->S_$S$$:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 359
    :try_start_2
    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->_sS$S_$$sss:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v5, v1}, Lcom/razorpay/BaseRazorpay;->_Ssss$(Landroid/content/Context;Ljava/lang/String;)Lcom/razorpay/ApplicationDetails;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 361
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private _SsssS()Z
    .locals 7

    .line 2813
    const-string v0, "provider"

    const-string v1, "wallet"

    const-string v2, "method"

    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 2815
    :cond_0
    :try_start_0
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    const-string v6, "amazonpay"

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v5

    .line 2819
    :cond_1
    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "paylater"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_2

    return v5

    :catch_0
    move-exception v0

    .line 2823
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error checking Amazon Pay payload: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/Logger;->e(Ljava/lang/String;)V

    :cond_2
    return v4
.end method

.method private static __$$__s_$(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1826
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1827
    const-string p0, "methods"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 1828
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1830
    const-string v0, "S1"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BaseRazorpay"

    invoke-static {v1, v0, p0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private __$$__s_$(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1782
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 1783
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1784
    const-string p1, "items"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 1789
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 1790
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1791
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1796
    :cond_1
    invoke-direct {p0, v4}, Lcom/razorpay/BaseRazorpay;->$S$_ss_(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1797
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1801
    :cond_3
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1802
    const-string p1, "count"

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method private __$$__s_$()V
    .locals 4

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->__S_s()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 385
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/razorpay/BaseRazorpay;->s_SSsSss:Ljava/util/ArrayList;

    .line 387
    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->S__s_$$:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 388
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->_sS$S_$$sss:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 390
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->s_SSsSss:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->s_SSsSss:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private __S_s()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/razorpay/ApplicationDetails;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 370
    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 372
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/razorpay/ApplicationDetails;

    .line 373
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->s$s___s$$_S:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/razorpay/ApplicationDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    invoke-virtual {v2}, Lcom/razorpay/ApplicationDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private __S_s(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1760
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1762
    const-string v1, "device_details"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1763
    const-string v2, "android"

    const-string v3, "sdk"

    const-string v4, "os"

    const-string v5, "platform"

    if-nez p1, :cond_0

    .line 1764
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1765
    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1766
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1768
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1770
    invoke-virtual {v6, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1772
    :cond_1
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1773
    invoke-virtual {v6, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    move-object p1, v6

    .line 1776
    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1777
    const-string p1, "action"

    const-string v1, "get_recommended_instruments"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private __S_s(Ljava/lang/String;)V
    .locals 3

    .line 1363
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1364
    const-string v1, "url_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string v1, "merchant_preferred_upi_apps_order"

    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->_$_$_:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1366
    const-string v1, "merchant_other_upi_apps_order"

    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->ssS__$SS_S$:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1367
    const-string v1, "list_remaining_apps"

    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->s_SSsSss:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1368
    const-string v1, "upi://pay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "upi_app_details_list"

    if-eqz v1, :cond_0

    .line 1369
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->__S_s()Ljava/util/HashMap;

    move-result-object p1

    .line 1370
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1371
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1372
    :cond_0
    const-string v1, "upi://mandate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1373
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->$ss_$S_:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1374
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1378
    :cond_1
    :goto_0
    new-instance p1, Lcom/razorpay/AppSelectorFragment;

    invoke-direct {p1}, Lcom/razorpay/AppSelectorFragment;-><init>()V

    .line 1379
    invoke-virtual {p1, p0}, Lcom/razorpay/AppSelectorFragment;->setAppSelectListener(Lcom/razorpay/OnAppSelectedListener;)V

    .line 1380
    invoke-virtual {p1, v0}, Lcom/razorpay/AppSelectorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1382
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1383
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    .line 1384
    const-string v2, "AppSelectorFragment"

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 1385
    invoke-virtual {p1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 1386
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 44
    sget v0, Lcom/razorpay/BaseRazorpay;->$S$S$s$__Ss:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    .line 44
    sput p0, Lcom/razorpay/BaseRazorpay;->$S$S$s$__Ss:I

    return p0
.end method

.method static synthetic access$008()I
    .locals 2

    .line 44
    sget v0, Lcom/razorpay/BaseRazorpay;->$S$S$s$__Ss:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/razorpay/BaseRazorpay;->$S$S$s$__Ss:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1002(Lcom/razorpay/BaseRazorpay;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->_SS$$$$s:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/razorpay/BaseRazorpay;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->sS$$$ss_:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/ResponseObject;)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Lcom/razorpay/ResponseObject;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/razorpay/BaseRazorpay;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->Ss$$S__()V

    return-void
.end method

.method static synthetic access$202(Lcom/razorpay/BaseRazorpay;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->$S$_ss_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/razorpay/BaseRazorpay;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/razorpay/BaseRazorpay;Lorg/json/JSONObject;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/razorpay/BaseRazorpay;->s$SSss(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/razorpay/BaseRazorpay;->__$$__s_$(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/razorpay/BaseRazorpay;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lcom/razorpay/BaseRazorpay;->__$$__s_$(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ljava/lang/String;)J
    .locals 2

    .line 44
    invoke-static {p0}, Lcom/razorpay/BaseRazorpay;->$S$_ss_(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/razorpay/BaseRazorpay;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->$S$S$s$__Ss()V

    return-void
.end method

.method static synthetic access$902(Lcom/razorpay/BaseRazorpay;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/razorpay/BaseRazorpay;->Ss$$S__:Z

    return p1
.end method

.method public static calculateEmi(JID)J
    .locals 6

    const-wide v0, 0x4092c00000000000L    # 1200.0

    div-double/2addr p3, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v2, p3, v0

    int-to-double v4, p2

    .line 1972
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    long-to-double p0, p0

    mul-double/2addr p0, p3

    mul-double/2addr p0, v2

    sub-double/2addr v2, v0

    div-double/2addr p0, v2

    .line 1973
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static canShowUpiIntentMethod(Landroid/content/Context;)Z
    .locals 1

    .line 762
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_SHOULD_SHOW_UPI_INTENT_METHOD:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 764
    invoke-static {p0}, Lcom/razorpay/BaseRazorpay;->s$SSss(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 765
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getAppsWhichSupportAutoPayIntent(Landroid/content/Context;Lcom/razorpay/RzpUpiSupportedAppsCallback;)V
    .locals 1

    .line 637
    const-string v0, "upi://mandate"

    invoke-static {p0, v0}, Lcom/razorpay/BaseRazorpay;->s$SSss(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/razorpay/RzpUpiSupportedAppsCallback;->onReceiveUpiSupportedApps(Ljava/util/List;)V

    return-void
.end method

.method public static getAppsWhichSupportUpi(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/razorpay/ApplicationDetails;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 642
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_GET_APPS_SUPPORTING_UPI:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 643
    invoke-static {p0}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAppsWhichSupportUpi(Landroid/content/Context;Lcom/razorpay/RzpUpiSupportedAppsCallback;)V
    .locals 5

    .line 608
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_GET_APPS_SUPPORTING_UPI:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 609
    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getAllPluginsFromManifest(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 615
    :try_start_0
    const-class v3, Lcom/razorpay/RzpPlugin;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/razorpay/RzpPlugin;

    .line 616
    new-instance v3, Lcom/razorpay/BaseRazorpay$1;

    invoke-direct {v3, v0, p1, p0}, Lcom/razorpay/BaseRazorpay$1;-><init>(Ljava/util/HashMap;Lcom/razorpay/RzpUpiSupportedAppsCallback;Landroid/content/Context;)V

    invoke-interface {v2, p0, v3}, Lcom/razorpay/RzpPlugin;->isRegistered(Landroid/content/Context;Lcom/razorpay/RzpPluginRegisterCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 627
    const-string v3, "S0"

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BaseRazorpay"

    invoke-static {v4, v3, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-static {p0}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/razorpay/RzpUpiSupportedAppsCallback;->onReceiveUpiSupportedApps(Ljava/util/List;)V

    goto :goto_0

    .line 632
    :cond_0
    invoke-static {p0}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/razorpay/RzpUpiSupportedAppsCallback;->onReceiveUpiSupportedApps(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public static isCredAppInstalled(Landroid/content/Context;)Z
    .locals 3

    .line 699
    const-string v0, "credpay://checkout"

    invoke-static {p0, v0}, Lcom/razorpay/BaseRazorpay;->s$SSss(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 701
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/razorpay/ApplicationDetails;

    .line 702
    invoke-virtual {v0}, Lcom/razorpay/ApplicationDetails;->getAppName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cred"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/razorpay/ApplicationDetails;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cred qa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static s$SSss(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 711
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_APPS_DISCOVERY_START:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 714
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 716
    invoke-static {p0}, Lcom/razorpay/$sS$$__s$S$;->ensureInitialized(Landroid/content/Context;)V

    .line 718
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isUpiWhiteListingEnabled()Z

    move-result v2

    .line 720
    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getSetOfPackageNamesSupportingUpi(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object p0

    .line 721
    const-string v3, "allUpiDeviceApps"

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 725
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->getUpiWhiteListedApps()Ljava/util/HashSet;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 727
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 731
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 732
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 733
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 728
    :cond_2
    :goto_1
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 739
    :cond_3
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->getUpiBlackListedApps()Ljava/util/HashSet;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 741
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 749
    :cond_4
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 750
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 751
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 755
    :cond_6
    const-string p0, "filteredApps"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    sget-object p0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_APPS_DISCOVERY_SUCCESS:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    return-object v1

    :cond_7
    :goto_3
    if-eqz p0, :cond_8

    return-object p0

    .line 745
    :cond_8
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method private static s$SSss(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/razorpay/ApplicationDetails;",
            ">;"
        }
    .end annotation

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 683
    invoke-static {p0, p1}, Lcom/razorpay/BaseUtils;->getListOfAppsWhichHandleDeepLink(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 684
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 688
    :try_start_0
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/razorpay/BaseRazorpay;->_Ssss$(Landroid/content/Context;Ljava/lang/String;)Lcom/razorpay/ApplicationDetails;

    move-result-object v1

    .line 689
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 691
    const-string v2, "S0"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BaseRazorpay"

    invoke-static {v3, v2, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private s$SSss()V
    .locals 2

    .line 294
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/razorpay/BaseUtils;->getSetOfPackageNamesSupportingUpi(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/razorpay/BaseRazorpay;->ss__Ss$S$:Ljava/util/HashSet;

    .line 298
    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->isUpiWhiteListingEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/razorpay/BaseRazorpay;->_$S$$S:Z

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->getUpiWhiteListedApps()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/razorpay/BaseRazorpay;->s$s___s$$_S:Ljava/util/HashSet;

    if-nez v1, :cond_1

    .line 303
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/razorpay/BaseRazorpay;->s$s___s$$_S:Ljava/util/HashSet;

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->getUpiBlackListedApps()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/razorpay/BaseRazorpay;->S_$S$$:Ljava/util/HashSet;

    if-nez v1, :cond_1

    .line 308
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/razorpay/BaseRazorpay;->S_$S$$:Ljava/util/HashSet;

    .line 312
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->getUpiAutoPaySupportedApps()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/razorpay/BaseRazorpay;->_S$$SS:Ljava/util/HashSet;

    if-eqz v1, :cond_2

    .line 313
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/razorpay/BaseRazorpay;->_S$$SS:Ljava/util/HashSet;

    .line 317
    :cond_3
    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->getUpiAppsPreferredOrder()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/BaseRazorpay;->S__s_$$:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_4

    .line 320
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/razorpay/BaseRazorpay;->S__s_$$:Ljava/util/LinkedHashSet;

    .line 323
    :cond_4
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->_Ssss$()V

    .line 324
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->__$$__s_$()V

    return-void
.end method

.method private s$SSss(Landroid/content/Intent;)V
    .locals 3

    .line 2202
    const-string v0, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2208
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2209
    const-string v1, "sender"

    const-string v2, "razorpay"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2210
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2211
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2212
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    const-string v1, "javascript:OTPElf.elfBridge.setSms(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2213
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_OTP_POPULATION_JS:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2215
    const-string v0, "error:exception"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseRazorpay"

    invoke-static {v2, v0, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    const-string v0, "Exception"

    invoke-static {v0, p1}, Lcom/razorpay/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private s$SSss(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2397
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {p2, p1, v0}, Lcom/razorpay/BaseUtils;->startActivityForResult(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 2398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p2, :cond_0

    .line 2399
    const-string p2, "null"

    :cond_0
    const-string v1, "url"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 2400
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "custom_chooser"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    const-string p2, "package_name"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2402
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_APP_LAUNCHED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    return-void
.end method

.method private s$SSss(Lorg/json/JSONObject;)V
    .locals 11

    .line 1414
    const-string v0, "oncomplete(JSONObject)"

    const-string v1, "BaseRazorpay"

    const-string v2, "sdk_error_code"

    const-string v3, "razorpay_payment_id"

    const/4 v4, 0x4

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v5

    invoke-virtual {v5}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v5

    invoke-static {v1, v0, v5}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1416
    const-string v5, "error"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x5

    const-string v7, "return code"

    const-string v8, "fail"

    const-string v9, "payload"

    const-string v10, "payment_status"

    if-eqz v5, :cond_1

    .line 1420
    :try_start_1
    new-instance v3, Lcom/razorpay/AnalyticsProperty;

    sget-object v5, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v3, v8, v5}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v10, v3}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 1421
    new-instance v3, Lcom/razorpay/AnalyticsProperty;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v3, v5, v8}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v9, v3}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 1423
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1424
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1425
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1428
    :cond_0
    new-instance v2, Lcom/razorpay/AnalyticsProperty;

    sget-object v3, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v2, v6, v3}, Lcom/razorpay/AnalyticsProperty;-><init>(ILcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v7, v2}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 1429
    sget-object v2, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_PAYMENT_COMPLETE:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 1430
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1431
    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1442
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "4"

    if-nez v2, :cond_3

    .line 1443
    :try_start_2
    new-instance p1, Lcom/razorpay/AnalyticsProperty;

    sget-object v2, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {p1, v8, v2}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v10, p1}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 1444
    new-instance p1, Lcom/razorpay/AnalyticsProperty;

    const-string v2, "empty payload"

    sget-object v5, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {p1, v2, v5}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v9, p1}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 1445
    new-instance p1, Lcom/razorpay/AnalyticsProperty;

    sget-object v2, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {p1, v3, v2}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v7, p1}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 1446
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_PAYMENT_COMPLETE:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 1448
    const-string p1, "You may have canceled the payment or the payment would have timed out"

    invoke-virtual {p0, v6, p1}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    goto :goto_1

    .line 1450
    :cond_3
    new-instance v2, Lcom/razorpay/AnalyticsProperty;

    sget-object v5, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v2, v8, v5}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v10, v2}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 1451
    new-instance v2, Lcom/razorpay/AnalyticsProperty;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v5, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v2, p1, v5}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v9, v2}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 1452
    new-instance p1, Lcom/razorpay/AnalyticsProperty;

    sget-object v2, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {p1, v3, v2}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v7, p1}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 1453
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_PAYMENT_COMPLETE:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 1455
    const-string p1, "Post payment parsing error"

    invoke-virtual {p0, v4, p1}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    goto :goto_1

    .line 1432
    :cond_4
    :goto_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1433
    invoke-static {p1}, Lcom/razorpay/RazorpayUtils;->getNestedRazorpayPaymentData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1435
    :cond_5
    invoke-direct {p0, p1}, Lcom/razorpay/BaseRazorpay;->_Ssss$(Lorg/json/JSONObject;)Lcom/razorpay/PaymentData;

    move-result-object v2

    .line 1436
    const-string v3, "payment_id"

    new-instance v5, Lcom/razorpay/AnalyticsProperty;

    invoke-virtual {v2}, Lcom/razorpay/PaymentData;->getPaymentId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v5, v6, v7}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v3, v5}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 1437
    new-instance v3, Lcom/razorpay/AnalyticsProperty;

    const-string v5, "success"

    sget-object v6, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v3, v5, v6}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v10, v3}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 1438
    new-instance v3, Lcom/razorpay/AnalyticsProperty;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v5, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v3, p1, v5}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v9, v3}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 1439
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_PAYMENT_COMPLETE:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 1440
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/razorpay/RazorpayUtils;->setLastPaymentSuccessful(Landroid/content/Context;Z)V

    .line 1441
    invoke-virtual {v2}, Lcom/razorpay/PaymentData;->getPaymentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/razorpay/BaseRazorpay;->onSuccess(Ljava/lang/String;Lcom/razorpay/PaymentData;)V

    .line 1458
    :goto_1
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1460
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    .line 1461
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private s$SSss(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1268
    :cond_0
    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    const-string v2, "upi://mandate"

    invoke-static {v1, v2}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1270
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1271
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private final s$S_SsS$SS()V
    .locals 6

    const-string v0, "https://api.razorpay.com/v1/payments/"

    const-string v1, "Basic "

    .line 1607
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->_SsssS:Ljava/lang/String;

    if-nez v2, :cond_0

    return-void

    .line 1617
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/razorpay/BaseUtils;->constructBasicAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1619
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1620
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->_SsssS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cancel?platform=android_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1624
    const-string v1, "Sending cancel request"

    invoke-static {v1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 1625
    new-instance v1, Lcom/razorpay/BaseRazorpay$17;

    invoke-direct {v1, p0}, Lcom/razorpay/BaseRazorpay$17;-><init>(Lcom/razorpay/BaseRazorpay;)V

    invoke-static {v0, v3, v1}, Lcom/razorpay/Owl;->get(Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    const/4 v0, 0x0

    .line 1630
    iput-object v0, p0, Lcom/razorpay/BaseRazorpay;->_SsssS:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1632
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in cancel req: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 1633
    const-string v1, "S2"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseRazorpay"

    invoke-static {v2, v1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sS$$$ss_()V
    .locals 6

    .line 1054
    const-string v0, "payWithCred"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1056
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1057
    const-string v3, "content-type"

    const-string v4, "application/json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1060
    :try_start_1
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    const-string v4, "key_id"

    iget-object v5, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1061
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1062
    const-string v4, "platform"

    const-string v5, "app"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1063
    const-string v4, "os"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1064
    const-string v4, "device"

    const-string v5, "mobile"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1065
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1066
    const-string v5, "agent"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1067
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    const-string v5, "_"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1073
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "payments/create/ajax"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/razorpay/BaseRazorpay$15;

    invoke-direct {v5, p0}, Lcom/razorpay/BaseRazorpay$15;-><init>(Lcom/razorpay/BaseRazorpay;)V

    invoke-static {v3, v4, v2, v5}, Lcom/razorpay/Owl;->post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    .line 1103
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1069
    const-string v2, "S1"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 1105
    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private sS$$$ss_(Ljava/lang/String;)V
    .locals 6

    .line 2297
    const-string v0, "S1"

    const-string v1, "BaseRazorpay"

    .line 2299
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2306
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

    .line 2307
    sget-object v3, Lcom/razorpay/$sS$$__s$S$;->SDK_TYPE:Ljava/lang/String;

    sget v4, Lcom/razorpay/$sS$$__s$S$;->SDK_VERSION_CODE:I

    sget-object v5, Lcom/razorpay/$sS$$__s$S$;->SDK_VERSION:Ljava/lang/String;

    invoke-interface {p1, v3, v4, v5}, Lcom/razorpay/RzpPlugin;->isCompatible(Ljava/lang/String;ILjava/lang/String;)Lcom/razorpay/RzpPluginCompatibilityResponse;

    move-result-object v3

    .line 2308
    invoke-virtual {v3}, Lcom/razorpay/RzpPluginCompatibilityResponse;->isCompatible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2309
    invoke-virtual {v3}, Lcom/razorpay/RzpPluginCompatibilityResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, p1}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    return-void

    .line 2312
    :cond_0
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-interface {p1, v3, v2, v4}, Lcom/razorpay/RzpPlugin;->doesHandlePayload(Ljava/lang/String;Lorg/json/JSONObject;Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 2313
    iput-boolean v3, p0, Lcom/razorpay/BaseRazorpay;->isExtRzpPluginActive:Z

    .line 2314
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->extActiveRzpPluginInstance:Lcom/razorpay/RzpPlugin;

    .line 2315
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-interface {p1, v3, v2, v4, p0}, Lcom/razorpay/RzpPlugin;->processPayment(Ljava/lang/String;Lorg/json/JSONObject;Landroid/app/Activity;Lcom/razorpay/RzpInternalCallback;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 2319
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :catch_4
    move-exception p1

    .line 2301
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final callNativeIntent(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1328
    const-string v0, "com.google.android.apps.nbu.paisa.user"

    const-string v1, "upi_app_package_name"

    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->__$$__s_$:Ljava/lang/String;

    .line 1329
    const-string v2, "payment_handover"

    invoke-static {v2}, Lcom/razorpay/MonitoringUtil;->setCheckoutStage(Ljava/lang/String;)V

    .line 1330
    sget-object v2, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_NATIVE_INTENT_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 1336
    :try_start_0
    const-string v2, "type"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "application"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "google_pay"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1337
    invoke-direct {p0, p1}, Lcom/razorpay/BaseRazorpay;->sS$$$ss_(Ljava/lang/String;)V

    return-void

    .line 1340
    :cond_0
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1341
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay;->__$$__s_$:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/razorpay/BaseRazorpay;->openUpiApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1342
    :cond_1
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->$sss$$s:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->ss__Ss$S$:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1343
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->$sss$$s:Ljava/lang/String;

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Lcom/razorpay/BaseUtils;->startActivityForResult(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 1344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1345
    const-string v1, "url"

    if-nez p1, :cond_2

    const-string p1, "null"

    :cond_2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    const-string p1, "custom_chooser"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    const-string p1, "package_name"

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->$sss$$s:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_UPI_MERCHANT_PASSED_APP_LAUNCHED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1349
    :cond_3
    iget-boolean v0, p0, Lcom/razorpay/BaseRazorpay;->s$S_SsS$SS:Z

    if-eqz v0, :cond_4

    .line 1350
    const-string v0, "my.com.tngdigital.ewallet"

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Lcom/razorpay/BaseUtils;->startActivityForResult(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 1351
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_TNG_REDIRECT_TRIGGERED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    goto :goto_0

    .line 1354
    :cond_4
    invoke-direct {p0, p1}, Lcom/razorpay/BaseRazorpay;->__S_s(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1357
    const-string v0, "S1"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseRazorpay"

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public changeApiKey(Ljava/lang/String;)V
    .locals 1

    .line 2221
    const-string v0, "rzp_payment_preferences"

    invoke-static {v0}, Lcom/razorpay/CacheManager;->expireKey(Ljava/lang/String;)V

    .line 2222
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    .line 2223
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Landroid/app/Activity;)V

    return-void
.end method

.method checkAndRestorePreviousSessionIfRetry(Lorg/json/JSONObject;)V
    .locals 7

    .line 568
    :try_start_0
    const-string v0, "amount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 571
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 578
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/razorpay/RazorpayUtils;->wasLastPaymentSuccessful(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 582
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/razorpay/RazorpayUtils;->setLastPaymentSuccessful(Landroid/content/Context;Z)V

    goto :goto_0

    .line 584
    :cond_1
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/razorpay/RazorpayUtils;->getLastPaymentAmount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 585
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/razorpay/RazorpayUtils;->getLastPaymentTimestamp(Landroid/content/Context;)J

    move-result-wide v3

    if-eqz v2, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    .line 586
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sub-long v2, v0, v3

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 591
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/razorpay/RazorpayUtils;->getLastPaymentLocalOrderId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/razorpay/AnalyticsUtil;->setLocalOrderId(Ljava/lang/String;)V

    .line 598
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/razorpay/RazorpayUtils;->setLastPaymentAmount(Landroid/content/Context;Ljava/lang/String;)V

    .line 599
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Lcom/razorpay/RazorpayUtils;->setLastPaymentTimestamp(Landroid/content/Context;J)V

    .line 600
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/razorpay/RazorpayUtils;->setLastPaymentLocalOrderId(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 602
    const-string v0, "S1"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseRazorpay"

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected finish()V
    .locals 4

    .line 1527
    const-string v0, "finish"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    .line 1528
    sput-boolean v2, Lcom/razorpay/BaseConfig;->paymentInProgress:Z

    .line 1529
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->postData()V

    .line 1534
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->refreshOrderSession()V

    const/4 v3, 0x0

    .line 1535
    iput-object v3, p0, Lcom/razorpay/BaseRazorpay;->_SsssS:Ljava/lang/String;

    .line 1536
    iput-boolean v2, p0, Lcom/razorpay/BaseRazorpay;->SSsS$sss__s:Z

    .line 1537
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1538
    invoke-static {}, Lcom/razorpay/RazorpayExceptionHandler;->unregister()V

    .line 1539
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->otpAssist:Lcom/razorpay/OtpAssist;

    if-eqz v2, :cond_0

    .line 1540
    invoke-virtual {v2}, Lcom/razorpay/OtpAssist;->reset()V

    .line 1543
    :cond_0
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->Ss$$S__()V

    .line 1544
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1546
    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getBankLogoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2235
    invoke-static {p1}, Lcom/razorpay/RazorpayUtils;->getBankLogoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCardNetwork(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2231
    invoke-static {p1}, Lcom/razorpay/RazorpayUtils;->getCardNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCardNetworkLength(Ljava/lang/String;)I
    .locals 0

    .line 2247
    invoke-static {p1}, Lcom/razorpay/RazorpayUtils;->getCardNetworkLength(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCardOtpData(Lcom/razorpay/CardsFlowCallback;)V
    .locals 4

    .line 2516
    const-string v0, "getCardOtpData"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2517
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->_SS$$$$s:Lorg/json/JSONObject;

    const-string v3, "razorpay_payment_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2518
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 2521
    :cond_0
    const-string v2, "otp_generate"

    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->_SS$$$$s:Lorg/json/JSONObject;

    invoke-direct {p0, v2, v3}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 2523
    new-instance v3, Lcom/razorpay/BaseRazorpay$8;

    invoke-direct {v3, p0, p1}, Lcom/razorpay/BaseRazorpay$8;-><init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/CardsFlowCallback;)V

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1, v3}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;Lcom/razorpay/NativeOtpCallback;)V

    .line 2549
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2551
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getCardsFlow(Lorg/json/JSONObject;Lcom/razorpay/CardsFlowCallback;)V
    .locals 4

    .line 2477
    const-string v0, "getCardsFlow"

    const-string v1, "BaseRazorpay"

    .line 0
    const-string v2, "https://api.razorpay.com/v1/payments/create/checkout/json?key_id="

    .line 2477
    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v3

    invoke-virtual {v3}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2481
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/razorpay/BaseRazorpay$7;

    invoke-direct {v3, p0, p2}, Lcom/razorpay/BaseRazorpay$7;-><init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/CardsFlowCallback;)V

    invoke-direct {p0, v2, p1, v3}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;Lcom/razorpay/NativeOtpCallback;)V

    .line 2508
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2510
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getCheckoutPreferences()V
    .locals 2

    .line 1638
    new-instance v0, Lcom/razorpay/BaseRazorpay$18;

    invoke-direct {v0, p0}, Lcom/razorpay/BaseRazorpay$18;-><init>(Lcom/razorpay/BaseRazorpay;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Lcom/razorpay/FetchPreferencesCallback;)V

    return-void
.end method

.method public getPaymentMethods(Lcom/razorpay/PaymentMethodsCallback;)V
    .locals 3

    .line 1664
    const-string v0, "getPaymentMethods(PaymentMethodsCallback)"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    .line 1665
    invoke-virtual {p0, v2, p1}, Lcom/razorpay/BaseRazorpay;->getPaymentMethods(Lorg/json/JSONObject;Lcom/razorpay/PaymentMethodsCallback;)V

    .line 1666
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1668
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getPaymentMethods(Lorg/json/JSONObject;Lcom/razorpay/PaymentMethodsCallback;)V
    .locals 4

    .line 1674
    const-string v0, "subscription_id"

    const-string v1, "getPaymentMethods(JSONObject,PaymentMethodsCallback)"

    const-string v2, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v3

    invoke-virtual {v3}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 1679
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 1681
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1683
    :try_start_2
    const-string v0, "S1"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 1688
    :goto_0
    new-instance v0, Lcom/razorpay/BaseRazorpay$19;

    invoke-direct {v0, p0, p2}, Lcom/razorpay/BaseRazorpay$19;-><init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/PaymentMethodsCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Lcom/razorpay/FetchPreferencesCallback;)V

    .line 1701
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v2, v1, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1703
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public getRecommendedInstruments(Lorg/json/JSONObject;Lcom/razorpay/RecommendedInstrumentsCallback;)V
    .locals 6

    .line 1709
    const-string v0, "getRecommendedInstruments"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    .line 1712
    const-string p1, "Invalid options"

    invoke-interface {p2, p1}, Lcom/razorpay/RecommendedInstrumentsCallback;->onError(Ljava/lang/String;)V

    .line 1713
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1717
    :cond_0
    invoke-direct {p0, p1}, Lcom/razorpay/BaseRazorpay;->__S_s(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1718
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1719
    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    const-string v3, "https://api.razorpay.com/pg_router/v1/checkout/activity"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1721
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "key_id"

    iget-object v5, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    .line 1722
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 1723
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1724
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1726
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/razorpay/BaseRazorpay$20;

    invoke-direct {v4, p0, p2}, Lcom/razorpay/BaseRazorpay$20;-><init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/RecommendedInstrumentsCallback;)V

    invoke-static {v3, p1, v2, v4}, Lcom/razorpay/Owl;->post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    .line 1752
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1754
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    .line 1755
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/razorpay/RecommendedInstrumentsCallback;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getSubscriptionAmount(Ljava/lang/String;Lcom/razorpay/SubscriptionAmountCallback;)V
    .locals 3

    .line 1851
    const-string v0, "getSubscriptionAmount"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1852
    new-instance v2, Lcom/razorpay/BaseRazorpay$21;

    invoke-direct {v2, p0, p2}, Lcom/razorpay/BaseRazorpay$21;-><init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/SubscriptionAmountCallback;)V

    invoke-direct {p0, p1, v2}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Lcom/razorpay/FetchPreferencesCallback;)V

    .line 1864
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1866
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getWalletLogoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2239
    invoke-static {p1}, Lcom/razorpay/RazorpayUtils;->getWalletLogoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWalletSqLogoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2243
    invoke-static {p1}, Lcom/razorpay/RazorpayUtils;->getWalletSqLogoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method isMagicPresent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUserRegisteredOnGpay(Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/GpayRegisteredListener;)V
    .locals 3

    .line 2326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2327
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "preferences?key_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "&currency%5B0%5D=INR&amount=100&_%5Bcheckout_id%5D="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2332
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "&_%5Bos%5D=android&_%5Bpackage_name%5D="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2334
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "&_%5Bplatform%5D=mobile_sdk&_%5Blocale%5D="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2336
    invoke-static {}, Lcom/razorpay/BaseUtils;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "&_%5Blibrary%5D=custom&_%5Blibrary_version%5D="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Lcom/razorpay/$sS$$__s$S$;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2339
    new-instance v1, Lcom/razorpay/BaseRazorpay$6;

    invoke-direct {v1, p0, p1, p3}, Lcom/razorpay/BaseRazorpay$6;-><init>(Lcom/razorpay/BaseRazorpay;Landroid/app/Activity;Lcom/razorpay/GpayRegisteredListener;)V

    invoke-static {p2, v0, v1}, Lcom/razorpay/Owl;->get(Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    return-void
.end method

.method public isValidCardNumber(Ljava/lang/String;)Z
    .locals 0

    .line 2227
    invoke-static {p1}, Lcom/razorpay/RazorpayUtils;->isValidCardNumber(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isValidVpa(Ljava/lang/String;Lcom/razorpay/ValidateVpaCallback;)V
    .locals 7

    .line 1920
    const-string v0, "isValidVpa"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1922
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/razorpay/BaseUtils;->getDataNetworkType(Landroid/content/Context;)Lcom/razorpay/NetworkType;

    move-result-object v2

    sget-object v3, Lcom/razorpay/NetworkType;->UNKNOWN:Lcom/razorpay/NetworkType;

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 1927
    :cond_0
    sget-object v2, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_VALIDATE_VPA_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 1929
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "payments/validate/account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1931
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1932
    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1935
    :try_start_1
    const-string v5, "entity"

    const-string v6, "vpa"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1936
    const-string v5, "value"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1937
    const-string p1, "key_id"

    iget-object v5, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1939
    invoke-static {v4}, Lcom/razorpay/BaseUtils;->makeUrlEncodedPayload(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/razorpay/BaseRazorpay$3;

    invoke-direct {v4, p0, p2}, Lcom/razorpay/BaseRazorpay$3;-><init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/ValidateVpaCallback;)V

    invoke-static {v2, p1, v3, v4}, Lcom/razorpay/Owl;->post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1953
    :goto_0
    :try_start_2
    invoke-interface {p2}, Lcom/razorpay/ValidateVpaCallback;->onFailure()V

    .line 1954
    const-string p2, "S2"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    :goto_1
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 1923
    :cond_1
    :goto_2
    invoke-interface {p2}, Lcom/razorpay/ValidateVpaCallback;->onFailure()V

    .line 1924
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 1959
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1978
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/razorpay/BaseRazorpay;->onActivityResult(IILandroid/content/Intent;Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;Z)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1983
    const-string v4, "Status"

    const-string v5, "recurring"

    const-string v6, "onActivityResult"

    const-string v7, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v8

    invoke-virtual {v8}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v8

    invoke-static {v7, v6, v8}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1989
    iget-object v8, v1, Lcom/razorpay/BaseRazorpay;->otpAssist:Lcom/razorpay/OtpAssist;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/razorpay/OtpAssist;->getSMS_CONSENT_REQUEST()I

    move-result v8

    if-ne v0, v8, :cond_0

    .line 1990
    iget-object v4, v1, Lcom/razorpay/BaseRazorpay;->otpAssist:Lcom/razorpay/OtpAssist;

    invoke-virtual {v4, v0, v2, v3}, Lcom/razorpay/OtpAssist;->onActivityResultReceived(IILandroid/content/Intent;)V

    .line 1991
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-static {v7, v6, v0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1996
    :cond_0
    iget-object v8, v1, Lcom/razorpay/BaseRazorpay;->amazonPayWallet:Lcom/razorpay/AmazonPayWallet;

    if-eqz v8, :cond_2

    const/16 v9, 0x26aa

    if-eq v0, v9, :cond_1

    const/16 v9, 0x26ab

    if-ne v0, v9, :cond_2

    .line 1997
    :cond_1
    iget-object v4, v1, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v8, v0, v2, v3, v4}, Lcom/razorpay/AmazonPayWallet;->onActivityResult(IILandroid/content/Intent;Lorg/json/JSONObject;)V

    .line 1998
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-static {v7, v6, v0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 2002
    :cond_2
    iget-boolean v8, v1, Lcom/razorpay/BaseRazorpay;->isExtRzpPluginActive:Z

    if-eqz v8, :cond_3

    .line 2003
    iget-object v4, v1, Lcom/razorpay/BaseRazorpay;->extActiveRzpPluginInstance:Lcom/razorpay/RzpPlugin;

    iget-object v5, v1, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-interface {v4, v5, v0, v2, v3}, Lcom/razorpay/RzpPlugin;->onActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2004
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 2005
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-static {v7, v6, v0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 2009
    :cond_3
    iget-object v8, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    const-string v9, "razorpay_payment_id"

    invoke-static {v8, v9}, Lcom/razorpay/SharedPreferenceUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/razorpay/BaseRazorpay;->_SsssS:Ljava/lang/String;

    .line 2012
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2014
    const-string v9, "requestCode"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    const-string v9, "resultCode"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    const-string v9, "paymentId"

    iget-object v10, v1, Lcom/razorpay/BaseRazorpay;->_SsssS:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2023
    const-string v9, "{\"error\":{\"code\":\"BAD_REQUEST_ERROR\",\"description\":\"Payment processing cancelled by user\"}}"

    const/16 v10, 0x63

    const/4 v11, -0x1

    const/4 v12, 0x5

    const/4 v13, 0x1

    if-nez v3, :cond_7

    :try_start_1
    iget-object v14, v1, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    iget-object v14, v1, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v13, :cond_7

    .line 2024
    const-string v5, "auto_pay_recurring"

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v8, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v2, v11, :cond_6

    if-eqz v2, :cond_4

    if-eq v2, v13, :cond_6

    goto :goto_1

    .line 2031
    :cond_4
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->_SsssS:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 2032
    invoke-virtual {v1, v9}, Lcom/razorpay/BaseRazorpay;->oncomplete(Ljava/lang/String;)V

    goto :goto_0

    .line 2034
    :cond_5
    invoke-static {v0}, Lcom/razorpay/BaseUtils;->getPaymentCancelledResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2035
    invoke-direct/range {p0 .. p0}, Lcom/razorpay/BaseRazorpay;->s$S_SsS$SS()V

    .line 2036
    invoke-virtual {v1, v12, v0}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    .line 2038
    :goto_0
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 2039
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-static {v7, v6, v0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 2028
    :cond_6
    iget-object v5, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    iget-object v9, v1, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-static {v5, v9, v1}, Lcom/razorpay/RazorpayUtils;->handleUpiIntentAutoPayPayment(Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V

    .line 2042
    :goto_1
    sget-object v5, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_NATIVE_INTENT_ONACTIVITY_RESULT:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v8}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    goto/16 :goto_3

    :cond_7
    if-ne v0, v10, :cond_b

    if-nez v3, :cond_b

    if-eqz p4, :cond_9

    .line 2048
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->_SsssS:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2053
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_8

    .line 2054
    const-string v0, "<html><head><title>Processing, Please Wait...</title><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/><meta http-equiv=\"pragma\" content=\"no-cache\"><meta http-equiv=\"cache-control\" content=\"no-cache\"><style><style> html, body { width: 100%; } #content { width: 88%; max-width: 520px; text-align: center; position: absolute; transform: translate(-50%, -50%); top: 50%; left: 50%; } #title { color: #528ff0; font-size: 22px; } #ldr { width: 100%; height: 1px; position: relative; background: #e1e1e1; } #lding { height: 3px; top: -1px; background: #528ff0; position: absolute; animation: spin 20s cubic-bezier(0,0.1,0,1) forwards; animation-delay: 10; } @-webkit-keyframes spin { 0% { width: 0; } 100% { width: 90%; } } @keyframes spin { 0% { width: 0; } 100% { width: 90%; } } #desc { font-size: 16px; color: #8a8a8a; } #content > div { margin-bottom: 20px; } form { display: none; } .hide { display: none; }</style></head><body onload=\"document.forms[0].submit()\"><div id=\"content\"> <div id=\"title\">Processing Payment</div> <div id=\"ldr\"> <div id=\"lding\"></div> </div> <div id=\"desc\">Please wait while we fetch your transaction details and process your payment</div> <img id=\"rzplogo\" style=\"width:160px;margin-top:80px\" src=\"data:image/png;base64,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\"/>{{form}}</div></body><script></script></html>"

    const-string v2, "{{form}}"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 2055
    iget-object v14, v1, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    const-string v15, "https://api.razorpay.com"

    const-string v17, "text/html"

    const-string v18, "UTF-8"

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    :cond_8
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/razorpay/RazorpayUtils;->genericPollForPaymentStatus(Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V

    .line 2058
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 2059
    const-string v0, "isActivityRecreated"

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_NATIVE_INTENT_ONACTIVITY_RESULT:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v8}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    .line 2061
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-static {v7, v6, v0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 2064
    :cond_9
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->_SsssS:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 2065
    invoke-virtual {v1, v9}, Lcom/razorpay/BaseRazorpay;->oncomplete(Ljava/lang/String;)V

    goto :goto_2

    .line 2067
    :cond_a
    invoke-static {v0}, Lcom/razorpay/BaseUtils;->getPaymentCancelledResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2068
    invoke-direct/range {p0 .. p0}, Lcom/razorpay/BaseRazorpay;->s$S_SsS$SS()V

    .line 2069
    invoke-virtual {v1, v12, v0}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    .line 2071
    :goto_2
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 2072
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_NATIVE_INTENT_ONACTIVITY_RESULT:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v8}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    .line 2073
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-static {v7, v6, v0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 2078
    :cond_b
    :goto_3
    iget-object v5, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->popBackStack()V

    const/16 v5, 0x3e9

    if-ne v0, v5, :cond_d

    if-ne v2, v11, :cond_c

    .line 2084
    invoke-direct {v1, v3}, Lcom/razorpay/BaseRazorpay;->s$SSss(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 2087
    :cond_c
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_CONSENT_DECLINED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    goto/16 :goto_9

    :cond_d
    if-ne v0, v10, :cond_12

    .line 2091
    invoke-static/range {p3 .. p3}, Lcom/razorpay/BaseUtils;->getJSONFromIntentData(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2092
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "failure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "fail"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_7

    .line 2099
    :cond_e
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "activity_destroyed"

    if-eqz v0, :cond_10

    :try_start_2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/razorpay/GlobalUrlConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 2100
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2103
    :try_start_3
    const-string v3, "isWebviewVisible"

    iget-object v4, v1, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_f

    goto :goto_4

    :cond_f
    move v13, v0

    :goto_4
    invoke-virtual {v2, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 2106
    :try_start_4
    const-string v3, "S0"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v3, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    :goto_5
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    const-string v3, "javascript: appLaunched(%s)"

    iget-object v4, v1, Lcom/razorpay/BaseRazorpay;->S_SS$s:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2110
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    const-string v3, "javascript: pollStatus(%s)"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_6

    .line 2112
    :cond_10
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    iget-object v3, v1, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-static {v2, v0, v3, v1}, Lcom/razorpay/RazorpayUtils;->handleUpiIntentPaymentWhenActivityDestroyed(Lorg/json/JSONObject;Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V

    .line 2115
    :goto_6
    const-string v0, "result"

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_NATIVE_INTENT_ONACTIVITY_RESULT:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v8}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    goto :goto_9

    .line 2093
    :cond_11
    :goto_7
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->_SsssS:Ljava/lang/String;

    invoke-static {v0}, Lcom/razorpay/BaseUtils;->getPaymentCancelledResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2094
    invoke-direct/range {p0 .. p0}, Lcom/razorpay/BaseRazorpay;->s$S_SsS$SS()V

    .line 2095
    invoke-virtual {v1, v12, v0}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    .line 2096
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-static {v7, v6, v0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_12
    const/16 v3, 0x14

    if-ne v0, v3, :cond_15

    if-eq v2, v11, :cond_14

    if-eqz v2, :cond_13

    if-eq v2, v13, :cond_14

    goto :goto_8

    .line 2127
    :cond_13
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->_SsssS:Ljava/lang/String;

    invoke-static {v0}, Lcom/razorpay/BaseUtils;->getPaymentCancelledResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2128
    invoke-direct/range {p0 .. p0}, Lcom/razorpay/BaseRazorpay;->s$S_SsS$SS()V

    .line 2129
    invoke-virtual {v1, v12, v0}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    goto :goto_8

    .line 2123
    :cond_14
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/razorpay/RazorpayUtils;->handleCredIntentPaymentResponse(Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V

    .line 2132
    :goto_8
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_NATIVE_INTENT_ONACTIVITY_RESULT:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v8}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    .line 2140
    :cond_15
    :goto_9
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-static {v7, v6, v0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    .line 2142
    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_a
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1566
    const-string v0, "onBackPressed"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1567
    sget-object v2, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_BACK_PRESSED_HARD:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 1568
    iget-boolean v2, p0, Lcom/razorpay/BaseRazorpay;->SSsS$sss__s:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1569
    invoke-virtual {p0}, Lcom/razorpay/BaseRazorpay;->trackBackPress()V

    .line 1570
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->s$S_SsS$SS()V

    .line 1572
    :cond_0
    const-string v2, "{\"error\":{\"code\":\"BAD_REQUEST_ERROR\",\"description\":\"Payment processing cancelled by user\"}}"

    invoke-virtual {p0, v2}, Lcom/razorpay/BaseRazorpay;->oncomplete(Ljava/lang/String;)V

    .line 1573
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1575
    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method onError(ILjava/lang/String;)V
    .locals 4

    .line 1483
    const-string v0, "onError"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1484
    const-string v2, "merchant_callback_handover"

    invoke-static {v2}, Lcom/razorpay/MonitoringUtil;->setCheckoutStage(Ljava/lang/String;)V

    .line 1485
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->paymentResultListener:Lcom/razorpay/PaymentResultListener;

    if-eqz v2, :cond_0

    .line 1486
    invoke-interface {v2, p1, p2}, Lcom/razorpay/PaymentResultListener;->onPaymentError(ILjava/lang/String;)V

    goto :goto_0

    .line 1487
    :cond_0
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->paymentResultWithDataListener:Lcom/razorpay/PaymentResultWithDataListener;

    if-eqz v2, :cond_1

    .line 1488
    new-instance v3, Lcom/razorpay/PaymentData;

    invoke-direct {v3}, Lcom/razorpay/PaymentData;-><init>()V

    invoke-interface {v2, p1, p2, v3}, Lcom/razorpay/PaymentResultWithDataListener;->onPaymentError(ILjava/lang/String;Lcom/razorpay/PaymentData;)V

    .line 1490
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/razorpay/MonitoringUtil;->clearCheckout(Landroid/content/Context;)V

    .line 1491
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1493
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1295
    const-string p1, "onPageFinished called"

    invoke-static {p1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 1296
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay;->otpAssist:Lcom/razorpay/OtpAssist;

    if-eqz p1, :cond_0

    .line 1297
    invoke-virtual {p1}, Lcom/razorpay/OtpAssist;->onPageFinished()V

    :cond_0
    return-void
.end method

.method onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1303
    const-string p1, "onPageStarted called"

    invoke-static {p1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onPaymentError(ILjava/lang/String;)V
    .locals 4

    .line 2442
    const-string v0, "onPaymentError"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2444
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2445
    const-string v3, "response"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2446
    const-string v3, "code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_PLUGIN_INTERNAL_CALLBACK_ERROR:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v2}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    .line 2448
    const-string p1, "provider"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "GOOGLE_PAY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_0

    .line 2450
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-static {p1, v2, v3, p0}, Lcom/razorpay/RazorpayUtils;->handleGpayFeaturePaymentResponse(Lorg/json/JSONObject;Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V

    .line 2451
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    .line 2458
    :catch_0
    :cond_0
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2459
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/razorpay/BaseRazorpay;->oncomplete(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2461
    :try_start_3
    const-string v2, "S0"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_PLUGIN_INTERNAL_CALLBACK_ERROR_EXCEPTION:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 2463
    invoke-virtual {p0, p2}, Lcom/razorpay/BaseRazorpay;->oncomplete(Ljava/lang/String;)V

    .line 2466
    :goto_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 2468
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;)V
    .locals 8

    .line 2408
    const-string v0, "provider"

    const-string v1, "S0"

    const-string v2, "onPaymentSuccess"

    const-string v3, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v4

    invoke-virtual {v4}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2409
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2410
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GOOGLE_PAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2412
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2413
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    const-string v6, "activity_destroyed"

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v7, "https://api.razorpay.com"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2414
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2417
    :try_start_2
    const-string v6, "isWebviewVisible"

    iget-object v7, p0, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2419
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    :goto_1
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    const-string v5, "javascript: pollStatus(%s)"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 2424
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-static {v4, v0, v5, p0}, Lcom/razorpay/RazorpayUtils;->handleUpiIntentPaymentWhenActivityDestroyed(Lorg/json/JSONObject;Landroid/app/Activity;Ljava/lang/String;Lcom/razorpay/PaymentCompleteInternalCallback;)V

    .line 2427
    :goto_2
    const-string v0, "result"

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2428
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_NATIVE_INTENT_ONACTIVITY_RESULT:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    .line 2430
    :cond_2
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v3, v2, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 2434
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception p1

    .line 2432
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    return-void
.end method

.method abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method onSuccess(Ljava/lang/String;Lcom/razorpay/PaymentData;)V
    .locals 3

    .line 1467
    const-string v0, "onSuccess"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1468
    const-string v2, "merchant_callback_handover"

    invoke-static {v2}, Lcom/razorpay/MonitoringUtil;->setCheckoutStage(Ljava/lang/String;)V

    .line 1469
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->paymentResultListener:Lcom/razorpay/PaymentResultListener;

    if-eqz v2, :cond_0

    .line 1470
    invoke-interface {v2, p1}, Lcom/razorpay/PaymentResultListener;->onPaymentSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 1471
    :cond_0
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->paymentResultWithDataListener:Lcom/razorpay/PaymentResultWithDataListener;

    if-eqz v2, :cond_1

    .line 1472
    invoke-interface {v2, p1, p2}, Lcom/razorpay/PaymentResultWithDataListener;->onPaymentSuccess(Ljava/lang/String;Lcom/razorpay/PaymentData;)V

    .line 1474
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/razorpay/MonitoringUtil;->clearCheckout(Landroid/content/Context;)V

    .line 1475
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1477
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onUpiAppLaunched(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2251
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->S_SS$s:Ljava/lang/String;

    return-void
.end method

.method public final oncomplete(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1393
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/BaseRazorpay$16;

    invoke-direct {v1, p0, p1}, Lcom/razorpay/BaseRazorpay$16;-><init>(Lcom/razorpay/BaseRazorpay;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected openCheckout(Lorg/json/JSONObject;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 939
    const-string v0, "openCheckout(JSONObject)"

    const-string v1, "BaseRazorpay"

    .line 0
    const-string v2, "<input type=\'hidden\' name=\'key_id\' value=\'"

    .line 939
    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v3

    invoke-virtual {v3}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 941
    invoke-static {}, Lcom/razorpay/BaseUtils;->isDeviceHaveCorrectTlsVersion()Z

    move-result v3

    if-nez v3, :cond_0

    .line 942
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_TLS_ERROR:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 943
    const-string p1, "TLSv1  is not supported for security reasons"

    const/4 v2, 0x6

    invoke-virtual {p0, v2, p1}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    .line 944
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 948
    :cond_0
    invoke-direct {p0, p1}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Lorg/json/JSONObject;)V

    .line 950
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->addFilteredPropertiesFromPayload(Lorg/json/JSONObject;)V

    .line 951
    const-string v3, "payment_submit"

    invoke-static {v3}, Lcom/razorpay/MonitoringUtil;->setCheckoutStage(Ljava/lang/String;)V

    .line 952
    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/razorpay/MonitoringUtil;->persistActiveCheckout(Landroid/content/Context;)V

    .line 953
    sget-object v3, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_SUBMIT_START:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v3}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 955
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 956
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 961
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 962
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 963
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 965
    const-string v6, "upi_app_package_name"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "display_logo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "preferred_apps_order"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "other_apps_order"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 969
    :cond_2
    instance-of v5, v5, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "<input type=\'hidden\' name=\'%s\' value=\'%s\'>"

    if-eqz v5, :cond_3

    .line 970
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 971
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 972
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 973
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 974
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/razorpay/RazorpayUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 975
    const-string v10, "%s[%s]"

    filled-new-array {v4, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/razorpay/RazorpayUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 976
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 980
    :cond_3
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/razorpay/RazorpayUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 981
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 985
    :cond_4
    invoke-direct {p0, v2}, Lcom/razorpay/BaseRazorpay;->_Ssss$(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 987
    const-string v2, "<html><head><title>Processing, Please Wait...</title><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/><meta http-equiv=\"pragma\" content=\"no-cache\"><meta http-equiv=\"cache-control\" content=\"no-cache\"><style><style> html, body { width: 100%; } #content { width: 88%; max-width: 520px; text-align: center; position: absolute; transform: translate(-50%, -50%); top: 50%; left: 50%; } #title { color: #528ff0; font-size: 22px; } #ldr { width: 100%; height: 1px; position: relative; background: #e1e1e1; } #lding { height: 3px; top: -1px; background: #528ff0; position: absolute; animation: spin 20s cubic-bezier(0,0.1,0,1) forwards; animation-delay: 10; } @-webkit-keyframes spin { 0% { width: 0; } 100% { width: 90%; } } @keyframes spin { 0% { width: 0; } 100% { width: 90%; } } #desc { font-size: 16px; color: #8a8a8a; } #content > div { margin-bottom: 20px; } form { display: none; } .hide { display: none; }</style></head><body onload=\"document.forms[0].submit()\"><div id=\"content\"> <div id=\"title\">Processing Payment</div> <div id=\"ldr\"> <div id=\"lding\"></div> </div> <div id=\"desc\">Please wait while we fetch your transaction details and process your payment</div> <img id=\"rzplogo\" style=\"width:160px;margin-top:80px\" src=\"data:image/png;base64,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\"/>{{form}}</div></body><script></script></html>"

    const-string v3, "{{form}}"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<form method=\'post\' action=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "checkout/embedded\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "</form>"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 990
    iget-boolean v2, p0, Lcom/razorpay/BaseRazorpay;->mShouldDisplayLogo:Z

    if-nez v2, :cond_5

    .line 991
    const-string v2, "<script></script>"

    const-string v3, "<script>document.getElementById(\'rzplogo\').className = \'hide\';</script>"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    move-object v4, p1

    .line 994
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    const-string v3, "https://api.razorpay.com"

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 998
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public openCheckout(Lorg/json/JSONObject;Lcom/razorpay/PaymentResultListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 814
    const-string v0, "openCheckout(JSONObject,PaymentResultListener)"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 815
    iput-object p2, p0, Lcom/razorpay/BaseRazorpay;->paymentResultListener:Lcom/razorpay/PaymentResultListener;

    .line 816
    invoke-virtual {p0, p1}, Lcom/razorpay/BaseRazorpay;->openCheckout(Lorg/json/JSONObject;)V

    .line 817
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 819
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public openCheckout(Lorg/json/JSONObject;Lcom/razorpay/PaymentResultWithDataListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 825
    const-string v0, "openCheckout(JSONObject,PaymentResultWithDataListener)"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 826
    iput-object p2, p0, Lcom/razorpay/BaseRazorpay;->paymentResultWithDataListener:Lcom/razorpay/PaymentResultWithDataListener;

    .line 827
    invoke-virtual {p0, p1}, Lcom/razorpay/BaseRazorpay;->openCheckout(Lorg/json/JSONObject;)V

    .line 828
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 830
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public openUpiApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2256
    const-string v0, "S1"

    const-string v1, "BaseRazorpay"

    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/razorpay/BaseUtils;->getAllPluginsFromManifest(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2258
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v2, p1}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    const-string v4, "recurring"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 2264
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2266
    :try_start_0
    const-class v4, Lcom/razorpay/RzpPlugin;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/razorpay/RzpPlugin;

    .line 2268
    const-string v4, "com.google.android.apps.nbu.paisa.user"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2269
    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/razorpay/BaseRazorpay$5;

    invoke-direct {v5, p0}, Lcom/razorpay/BaseRazorpay$5;-><init>(Lcom/razorpay/BaseRazorpay;)V

    invoke-interface {v3, v4, v5}, Lcom/razorpay/RzpPlugin;->isRegistered(Landroid/content/Context;Lcom/razorpay/RzpPluginRegisterCallback;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2275
    :try_start_1
    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    const-string v5, "_[app]"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2276
    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    const-string v5, "url_data"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v4

    .line 2278
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-interface {v3, v4, v5, v6}, Lcom/razorpay/RzpPlugin;->doesHandlePayload(Ljava/lang/String;Lorg/json/JSONObject;Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 2282
    iput-boolean v2, p0, Lcom/razorpay/BaseRazorpay;->isExtRzpPluginActive:Z

    .line 2283
    iput-object v3, p0, Lcom/razorpay/BaseRazorpay;->extActiveRzpPluginInstance:Lcom/razorpay/RzpPlugin;

    .line 2284
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-interface {v3, v2, v4, v5, p0}, Lcom/razorpay/RzpPlugin;->processPayment(Ljava/lang/String;Lorg/json/JSONObject;Landroid/app/Activity;Lcom/razorpay/RzpInternalCallback;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    .line 2289
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/razorpay/BaseRazorpay;->s$SSss(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 2259
    :cond_4
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/razorpay/BaseRazorpay;->s$SSss(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public otpResend(Lcom/razorpay/CardsFlowCallback;)V
    .locals 4

    .line 2557
    const-string v0, "otpResend"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2558
    const-string v2, "otp_resend"

    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->sS$$$ss_:Lorg/json/JSONObject;

    invoke-direct {p0, v2, v3}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/razorpay/BaseRazorpay$9;

    invoke-direct {v3, p0, p1}, Lcom/razorpay/BaseRazorpay$9;-><init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/CardsFlowCallback;)V

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1, v3}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;Lcom/razorpay/NativeOtpCallback;)V

    .line 2584
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2586
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public otpSubmit(Ljava/lang/String;Lcom/razorpay/CardsFlowCallback;)V
    .locals 4

    .line 2592
    const-string v0, "otpSubmit"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2593
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2594
    const-string v3, "otp"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2595
    const-string p1, "otp_submit"

    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->sS$$$ss_:Lorg/json/JSONObject;

    invoke-direct {p0, p1, v3}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/razorpay/BaseRazorpay$10;

    invoke-direct {v3, p0, p2}, Lcom/razorpay/BaseRazorpay$10;-><init>(Lcom/razorpay/BaseRazorpay;Lcom/razorpay/CardsFlowCallback;)V

    invoke-direct {p0, p1, v2, v3}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Ljava/lang/String;Lcom/razorpay/NativeOtpCallback;)V

    .line 2617
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2621
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2619
    const-string p2, "S1"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public redirectToBankPage()V
    .locals 3

    .line 2626
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    const-string v1, "redirect"

    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->_SS$$$$s:Lorg/json/JSONObject;

    invoke-direct {p0, v1, v2}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final reset()V
    .locals 0

    .line 1555
    invoke-virtual {p0}, Lcom/razorpay/BaseRazorpay;->finish()V

    return-void
.end method

.method public final setMagicView(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 556
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->magicView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 557
    iput-boolean p1, p0, Lcom/razorpay/BaseRazorpay;->useBottomSheet:Z

    return-void

    .line 554
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Magic View cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setPaymentID(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPaymentID called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 1584
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->_SsssS:Ljava/lang/String;

    .line 1585
    invoke-static {p1}, Lcom/razorpay/MonitoringUtil;->setPaymentId(Ljava/lang/String;)V

    .line 1586
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->amazonPayWallet:Lcom/razorpay/AmazonPayWallet;

    if-eqz v0, :cond_0

    .line 1587
    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->_SsssS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/razorpay/AmazonPayWallet;->setDataForPolling(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    :cond_0
    invoke-virtual {p0, p1}, Lcom/razorpay/BaseRazorpay;->setPaymentIdInAddon(Ljava/lang/String;)V

    .line 1590
    new-instance v0, Lcom/razorpay/AnalyticsProperty;

    sget-object v1, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v0, p1, v1}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    const-string v1, "payment_id"

    invoke-static {v1, v0}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 1591
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    const-string v1, "razorpay_payment_id"

    invoke-static {v0, v1, p1}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_PAYMENT_ID_ATTACHED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    return-void
.end method

.method abstract setPaymentIdInAddon(Ljava/lang/String;)V
.end method

.method protected abstract setUpAddon(Lorg/json/JSONObject;)V
.end method

.method public setWebChromeClient(Lcom/razorpay/RazorpayWebChromeClient;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->s$SSss:Lcom/razorpay/RazorpayWebChromeClient;

    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 4

    .line 452
    const-string v0, "setWebView"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 453
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    .line 454
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/razorpay/BaseUtils;->setWebViewSettings(Landroid/content/Context;Landroid/webkit/WebView;Z)V

    .line 455
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFormData()V

    .line 456
    const-string v2, "CheckoutBridge"

    invoke-virtual {p1, p0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 459
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setWebviewClient(Lcom/razorpay/RazorpayWebViewClient;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/razorpay/BaseRazorpay;->_Ssss$:Lcom/razorpay/RazorpayWebViewClient;

    return-void
.end method

.method setup(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 841
    const-string v0, "setup"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 843
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 852
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->s$SSss:Lcom/razorpay/RazorpayWebChromeClient;

    if-nez v2, :cond_0

    .line 853
    new-instance v2, Lcom/razorpay/RazorpayWebChromeClient;

    invoke-direct {v2, p0}, Lcom/razorpay/RazorpayWebChromeClient;-><init>(Lcom/razorpay/BaseRazorpay;)V

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->s$SSss:Lcom/razorpay/RazorpayWebChromeClient;

    .line 855
    :cond_0
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->_Ssss$:Lcom/razorpay/RazorpayWebViewClient;

    if-nez v2, :cond_1

    .line 856
    new-instance v2, Lcom/razorpay/RazorpayWebViewClient;

    invoke-direct {v2, p0}, Lcom/razorpay/RazorpayWebViewClient;-><init>(Lcom/razorpay/BaseRazorpay;)V

    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->_Ssss$:Lcom/razorpay/RazorpayWebViewClient;

    .line 859
    :cond_1
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->_Ssss$:Lcom/razorpay/RazorpayWebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 860
    iget-object v2, p0, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/razorpay/BaseRazorpay;->s$SSss:Lcom/razorpay/RazorpayWebChromeClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const/4 v2, 0x0

    .line 863
    iput-object v2, p0, Lcom/razorpay/BaseRazorpay;->_SsssS:Ljava/lang/String;

    const/4 v2, 0x1

    .line 864
    iput-boolean v2, p0, Lcom/razorpay/BaseRazorpay;->SSsS$sss__s:Z

    .line 869
    invoke-virtual {p0, p1}, Lcom/razorpay/BaseRazorpay;->checkAndRestorePreviousSessionIfRetry(Lorg/json/JSONObject;)V

    .line 871
    invoke-virtual {p0, p1}, Lcom/razorpay/BaseRazorpay;->setUpAddon(Lorg/json/JSONObject;)V

    .line 873
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 844
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "WebView Inaccessible"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 875
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    .line 2744
    const-string v0, "shouldOverrideUrlLoading"

    const-string v1, "BaseRazorpay"

    .line 0
    const-string v2, "Error parsing deep link URL: "

    const/4 v3, 0x0

    .line 2744
    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v4

    invoke-virtual {v4}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v4

    invoke-static {v1, v0, v4}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2745
    iget-object v4, p0, Lcom/razorpay/BaseRazorpay;->amazonPayWallet:Lcom/razorpay/AmazonPayWallet;

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->_SsssS()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2746
    iget-object v0, p0, Lcom/razorpay/BaseRazorpay;->amazonPayWallet:Lcom/razorpay/AmazonPayWallet;

    iget-object v1, p0, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/razorpay/BaseRazorpay$14;

    invoke-direct {v2, p0}, Lcom/razorpay/BaseRazorpay$14;-><init>(Lcom/razorpay/BaseRazorpay;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/razorpay/AmazonPayWallet;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;Lcom/razorpay/RzpInternalCallback;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2759
    :cond_0
    const-string v4, "razorpay://"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 2763
    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2764
    const-string v6, "fallback"

    invoke-virtual {v4, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2766
    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2768
    const-string p1, "webview:url"

    new-instance v4, Lcom/razorpay/AnalyticsProperty;

    sget-object v6, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v4, p2, v6}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {p1, v4}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 2769
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_WEBVIEW_URL_OVERRIDE:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 2770
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2771
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2774
    :try_start_2
    const-string p2, "RazorpayWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2776
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2780
    :cond_1
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isTNGRedirectionEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/razorpay/BaseRazorpay;->s$S_SsS$SS:Z

    if-nez p1, :cond_2

    goto :goto_0

    .line 2785
    :cond_2
    const-string p1, "tngdigital"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2786
    iget-object p1, p0, Lcom/razorpay/BaseRazorpay;->$SSs_$S_$$s:Ljava/util/ArrayList;

    const-string v2, "my.com.tngdigital.ewallet"

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v2, "url"

    if-eqz p1, :cond_3

    .line 2788
    :try_start_3
    invoke-direct {p0}, Lcom/razorpay/BaseRazorpay;->SSsS$sss__s()V

    .line 2790
    invoke-virtual {p0, p2}, Lcom/razorpay/BaseRazorpay;->callNativeIntent(Ljava/lang/String;)V

    .line 2792
    new-instance p1, Lcom/razorpay/AnalyticsProperty;

    sget-object v4, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {p1, p2, v4}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v2, p1}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 2793
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_WEBVIEW_URL_OVERRIDE:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 2794
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2795
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2797
    :cond_3
    new-instance p1, Lcom/razorpay/AnalyticsProperty;

    sget-object v4, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {p1, p2, v4}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v2, p1}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 2798
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_TNG_WALLET_WEB_FLOW_TRIGGERED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 2799
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2800
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2804
    :cond_4
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2805
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2781
    :cond_5
    :goto_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2782
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 2807
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    .line 2808
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/HashMap;Lcom/razorpay/PaymentResultWithDataListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/razorpay/PaymentResultWithDataListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 803
    const-string p1, "submit(HashMap,PaymentResultWithDataListener)"

    const-string v0, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v1

    invoke-virtual {v1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 804
    iput-object p2, p0, Lcom/razorpay/BaseRazorpay;->paymentResultWithDataListener:Lcom/razorpay/PaymentResultWithDataListener;

    .line 806
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p2

    invoke-virtual {p2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 808
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected submit(Lorg/json/JSONObject;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1117
    const-string v0, "wallet"

    const-string v3, "method"

    const-string v4, "submit(JSONObject)"

    const-string v5, "app_present"

    const-string v6, "recurring"

    const-string v7, "provider"

    const-string v8, "BaseRazorpay"

    .line 0
    const-string v9, "<input type=\'hidden\' name=\'key_id\' value=\'"

    const/4 v10, 0x1

    .line 1117
    :try_start_0
    sput-boolean v10, Lcom/razorpay/BaseConfig;->paymentInProgress:Z

    .line 1118
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v11

    invoke-virtual {v11}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v11

    invoke-static {v8, v4, v11}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1119
    const-string v11, "payment_submit"

    invoke-static {v11}, Lcom/razorpay/MonitoringUtil;->setCheckoutStage(Ljava/lang/String;)V

    .line 1120
    iget-object v11, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/razorpay/MonitoringUtil;->persistActiveCheckout(Landroid/content/Context;)V

    .line 1122
    invoke-static {}, Lcom/razorpay/BaseUtils;->isDeviceHaveCorrectTlsVersion()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1123
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_TLS_ERROR:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 1124
    iget-object v9, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    const-string v10, "tls"

    const-string v11, "check"

    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_TLS_ERROR:Lcom/razorpay/AnalyticsEvent;

    .line 1128
    invoke-virtual {v0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "TLSv1  is not supported for security reasons"

    const-string v16, "not_available"

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 1124
    invoke-static/range {v9 .. v16}, Lcom/razorpay/MonitoringUtil;->trackCriticalDependencyFailure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 1134
    const-string v0, "TLSv1  is not supported for security reasons"

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/razorpay/BaseRazorpay;->onError(ILjava/lang/String;)V

    .line 1135
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-static {v8, v4, v0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1139
    :cond_0
    iput-object v2, v1, Lcom/razorpay/BaseRazorpay;->__S_s:Lorg/json/JSONObject;

    .line 1140
    invoke-direct/range {p0 .. p1}, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$(Lorg/json/JSONObject;)V

    .line 1143
    invoke-direct/range {p0 .. p0}, Lcom/razorpay/BaseRazorpay;->$S$_ss_()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    .line 1144
    iget-object v11, v1, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    invoke-virtual {v11, v10, v12}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1147
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/razorpay/AnalyticsUtil;->addFilteredPropertiesFromPayload(Lorg/json/JSONObject;)V

    .line 1148
    sget-object v10, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_SUBMIT_START:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v10}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 1150
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "google_pay"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1151
    invoke-direct/range {p0 .. p0}, Lcom/razorpay/BaseRazorpay;->_SS$$$$s()V

    return-void

    .line 1155
    :cond_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "amazonpay"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1156
    iget-object v0, v1, Lcom/razorpay/BaseRazorpay;->amazonPayWallet:Lcom/razorpay/AmazonPayWallet;

    if-eqz v0, :cond_3

    .line 1157
    const-string v10, "payment_meta_data"

    iget-object v11, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v11}, Lcom/razorpay/AmazonPayWallet;->getPaymentMetadata(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1165
    :cond_3
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v10, "upi_app_package_name"

    if-eqz v0, :cond_5

    .line 1166
    :try_start_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "upi"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1167
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1168
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "preferred"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1169
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1170
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/razorpay/BaseRazorpay;->s$SSss(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1171
    :cond_4
    const-string v0, "1"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1175
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/razorpay/BaseRazorpay;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\'>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1176
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "cred"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1177
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1178
    invoke-direct/range {p0 .. p0}, Lcom/razorpay/BaseRazorpay;->sS$$$ss_()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 1182
    :cond_6
    :try_start_2
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1183
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1185
    :try_start_3
    const-string v5, "S0"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v5, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "<input type=\'hidden\' name=\'_[agent]\' value=\'{\n  \"os\":\"android\",\n  \"platform\":\"app\",\n  \"device\":\"mobile\"\n}\'>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1195
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1200
    :cond_8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1202
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1203
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1204
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v9

    invoke-virtual {v9}, Lcom/razorpay/$sS$$__s$S$;->getIsOtpReadEnabled()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1205
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1d

    if-ge v9, v11, :cond_9

    iget-object v9, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    const-string v11, "android.permission.RECEIVE_SMS"

    invoke-static {v9, v11}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_c

    .line 1206
    :cond_9
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "netbanking"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "card"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1207
    :cond_a
    iget-object v9, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsUserConsent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 1208
    new-instance v9, Landroid/content/IntentFilter;

    const-string v11, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {v9, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1209
    new-instance v11, Lcom/razorpay/AutoReadOtpHelperCustom;

    iget-object v13, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-direct {v11, v13}, Lcom/razorpay/AutoReadOtpHelperCustom;-><init>(Landroid/app/Activity;)V

    .line 1211
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x22

    if-lt v13, v14, :cond_b

    iget-object v13, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    .line 1212
    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v13, v14, :cond_b

    .line 1213
    iget-object v13, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    const/4 v14, 0x2

    invoke-virtual {v13, v11, v9, v14}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2

    .line 1215
    :cond_b
    iget-object v13, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-virtual {v13, v11, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1218
    :goto_2
    sget-object v9, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_TASK:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v9}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 1224
    :cond_c
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "display_logo"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "preferred_apps_order"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "other_apps_order"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto/16 :goto_1

    .line 1228
    :cond_d
    instance-of v7, v7, Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v9, "<input type=\'hidden\' name=\'%s\' value=\'%s\'>"

    if-eqz v7, :cond_e

    .line 1229
    :try_start_4
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1230
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 1231
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1232
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1233
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/razorpay/RazorpayUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1234
    const-string v15, "%s[%s]"

    filled-new-array {v5, v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v15, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/razorpay/RazorpayUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1235
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v9, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1239
    :cond_e
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/razorpay/RazorpayUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1240
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 1244
    :cond_f
    invoke-direct {v1, v6}, Lcom/razorpay/BaseRazorpay;->_Ssss$(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1246
    const-string v2, "<html><head><title>Processing, Please Wait...</title><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/><meta http-equiv=\"pragma\" content=\"no-cache\"><meta http-equiv=\"cache-control\" content=\"no-cache\"><style><style> html, body { width: 100%; } #content { width: 88%; max-width: 520px; text-align: center; position: absolute; transform: translate(-50%, -50%); top: 50%; left: 50%; } #title { color: #528ff0; font-size: 22px; } #ldr { width: 100%; height: 1px; position: relative; background: #e1e1e1; } #lding { height: 3px; top: -1px; background: #528ff0; position: absolute; animation: spin 20s cubic-bezier(0,0.1,0,1) forwards; animation-delay: 10; } @-webkit-keyframes spin { 0% { width: 0; } 100% { width: 90%; } } @keyframes spin { 0% { width: 0; } 100% { width: 90%; } } #desc { font-size: 16px; color: #8a8a8a; } #content > div { margin-bottom: 20px; } form { display: none; } .hide { display: none; }</style></head><body onload=\"document.forms[0].submit()\"><div id=\"content\"> <div id=\"title\">Processing Payment</div> <div id=\"ldr\"> <div id=\"lding\"></div> </div> <div id=\"desc\">Please wait while we fetch your transaction details and process your payment</div> <img id=\"rzplogo\" style=\"width:160px;margin-top:80px\" src=\"data:image/png;base64,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\"/>{{form}}</div></body><script></script></html>"

    const-string v3, "{{form}}"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<form method=\'post\' action=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/razorpay/BaseRazorpay;->$sS$$__s$S$:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "payments/create/checkout\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</form>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1249
    iget-boolean v2, v1, Lcom/razorpay/BaseRazorpay;->mShouldDisplayLogo:Z

    if-nez v2, :cond_10

    .line 1250
    const-string v2, "<script></script>"

    const-string v3, "<script>document.getElementById(\'rzplogo\').className = \'hide\';</script>"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_10
    move-object v11, v0

    .line 1253
    iget-object v9, v1, Lcom/razorpay/BaseRazorpay;->webview:Landroid/webkit/WebView;

    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/GlobalUrlConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v10

    const-string v12, "text/html"

    const-string v13, "UTF-8"

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-static {v8, v4, v0}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 1258
    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->reportUncaughtException(Ljava/lang/Throwable;)V

    .line 1259
    iget-object v2, v1, Lcom/razorpay/BaseRazorpay;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/razorpay/Lumberjack;->saveEventsToPreferences(Landroid/content/Context;)V

    .line 1260
    throw v0
.end method

.method public submit(Lorg/json/JSONObject;Lcom/razorpay/PaymentResultListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 781
    const-string v0, "submit(JSONObject,PaymentResultListener)"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 782
    iput-object p2, p0, Lcom/razorpay/BaseRazorpay;->paymentResultListener:Lcom/razorpay/PaymentResultListener;

    .line 783
    invoke-virtual {p0, p1}, Lcom/razorpay/BaseRazorpay;->submit(Lorg/json/JSONObject;)V

    .line 784
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 786
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public submit(Lorg/json/JSONObject;Lcom/razorpay/PaymentResultWithDataListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 792
    const-string v0, "submit(JSONObject,PaymentResultWithDataListener)"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 793
    iput-object p2, p0, Lcom/razorpay/BaseRazorpay;->paymentResultWithDataListener:Lcom/razorpay/PaymentResultWithDataListener;

    .line 794
    invoke-virtual {p0, p1}, Lcom/razorpay/BaseRazorpay;->submit(Lorg/json/JSONObject;)V

    .line 795
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 797
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method abstract trackBackPress()V
.end method

.method public validateFields(Lorg/json/JSONObject;Lcom/razorpay/ValidationListener;)V
    .locals 3

    .line 1312
    const-string v0, "validateFields"

    const-string v1, "BaseRazorpay"

    :try_start_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1313
    invoke-static {p1}, Lcom/razorpay/$S$_ss_;->validateFields(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1315
    invoke-interface {p2}, Lcom/razorpay/ValidationListener;->onValidationSuccess()V

    goto :goto_0

    .line 1317
    :cond_0
    invoke-interface {p2, p1}, Lcom/razorpay/ValidationListener;->onValidationError(Ljava/util/Map;)V

    .line 1319
    :goto_0
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/$sS$$__s$S$;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/razorpay/AnalyticsUtil;->logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1321
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->reportCaughtException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
