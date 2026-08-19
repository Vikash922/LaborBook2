.class Lcom/razorpay/AnalyticsUtil;
.super Ljava/lang/Object;
.source "AnalyticsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/razorpay/AnalyticsUtil$PendingEvent;
    }
.end annotation


# static fields
.field private static $I__I:I = 0x0

.field private static $l$I1I11I1:Ljava/lang/String; = null

.field static BUILD_TYPE:Ljava/lang/String; = null

.field static FRAMEWORK:Ljava/lang/String; = null

.field private static final I__1l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/razorpay/AnalyticsUtil$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field static KEY_TYPE:Ljava/lang/String; = null

.field static MERCHANT_APP_BUILD:I = 0x0

.field static MERCHANT_APP_NAME:Ljava/lang/CharSequence; = null

.field static MERCHANT_APP_NAMESPACE:Ljava/lang/CharSequence; = null

.field static MERCHANT_APP_TARGET_SDK:I = 0x0

.field static MERCHANT_APP_VERSION:Ljava/lang/CharSequence; = null

.field private static _1__:Ljava/lang/String; = null

.field private static __l1_:Ljava/lang/String; = null

.field private static final _l_1l__:Ljava/lang/Object;

.field private static _llI:Ljava/lang/String; = null

.field private static l$1_I$l$:Z = false

.field public static libraryType:Ljava/lang/String;

.field static sessionErroredApiCalls:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->_l_1l__:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->I__1l:Ljava/util/List;

    .line 48
    const-string v0, "standealone"

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->_1__:Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    sput v0, Lcom/razorpay/AnalyticsUtil;->sessionErroredApiCalls:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFilteredPropertiesFromPayload(Lorg/json/JSONObject;)V
    .locals 0

    .line 244
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->addFilteredPropertiesFromPayload(Lorg/json/JSONObject;)V

    return-void
.end method

.method static addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V
    .locals 2

    .line 236
    iget-object v0, p1, Lcom/razorpay/AnalyticsProperty;->scope:Lcom/razorpay/AnalyticsProperty$Scope;

    sget-object v1, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    if-ne v0, v1, :cond_0

    .line 237
    iget-object p1, p1, Lcom/razorpay/AnalyticsProperty;->value:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/razorpay/Lumberjack;->addPaymentProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p1, Lcom/razorpay/AnalyticsProperty;->scope:Lcom/razorpay/AnalyticsProperty$Scope;

    sget-object v1, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    if-ne v0, v1, :cond_1

    .line 239
    iget-object p1, p1, Lcom/razorpay/AnalyticsProperty;->value:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/razorpay/Lumberjack;->addOrderProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static getAnalyticsDataForCheckout(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .line 296
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 298
    :try_start_0
    const-string v1, "platform"

    const-string v2, "mobile_sdk"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v1, "platform_version"

    sget-object v2, Lcom/razorpay/AnalyticsUtil;->$l$I1I11I1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v1, "os"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string v1, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    invoke-static {p0}, Lcom/razorpay/ResourceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "device"

    if-eqz p0, :cond_0

    .line 303
    :try_start_1
    const-string p0, "tablet"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 305
    :cond_0
    const-string p0, "mobile"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 308
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "critical"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method static getAppDetail()Ljava/lang/String;
    .locals 3

    .line 248
    sget-boolean v0, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_NAME:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_VERSION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_BUILD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static getBuildType()Ljava/lang/String;
    .locals 1

    .line 108
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->BUILD_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method static getErrorProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 287
    const-string v1, "severity"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 288
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "unhandled"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string p0, "source"

    const-string v1, "self"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string p0, "stack"

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string p0, "message"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getExtraAnalyticsPayload()Lorg/json/JSONObject;
    .locals 1

    .line 736
    invoke-static {}, Lcom/razorpay/Lumberjack;->getContextPayload()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static getFramework()Ljava/lang/String;
    .locals 1

    .line 722
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->FRAMEWORK:Ljava/lang/String;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "native"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->FRAMEWORK:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static getJSONErrorResponse(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 766
    const-string v0, "source"

    const-string v1, "unhandled"

    const-string v2, "severity"

    const-string v3, "message"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 767
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 769
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 770
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 771
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 772
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 774
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    const-string v1, "stack"

    if-eqz p0, :cond_0

    .line 776
    :try_start_1
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 778
    :cond_0
    const-string p0, "AbstractMethodError"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    :goto_0
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 781
    const-string p0, "tags"

    invoke-virtual {v0, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 783
    const-string p0, "error"

    invoke-virtual {v5, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 785
    const-string p0, "data"

    invoke-virtual {v4, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    .line 788
    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error adding analytics property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 789
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to JSONObject"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 788
    const-string v0, "S0"

    invoke-static {p0, v0, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static getJSONResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 741
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 742
    const-string v1, "response"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 747
    :catch_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method public static getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 751
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 753
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 755
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 757
    invoke-virtual {v2}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error adding analytics property "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 758
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to JSONObject"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 757
    const-string v3, "S0"

    invoke-static {v2, v3, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getKeyType()Ljava/lang/String;
    .locals 1

    .line 112
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->KEY_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method static getKeyType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 386
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 390
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 391
    const-string v0, "rzp_live"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    const-string p0, "live"

    return-object p0

    .line 394
    :cond_1
    const-string v0, "rzp_test"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 395
    const-string p0, "test"

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method static getLocalOrderId()Ljava/lang/String;
    .locals 1

    .line 437
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->_llI:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 438
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->_llI:Ljava/lang/String;

    .line 440
    :cond_0
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->_llI:Ljava/lang/String;

    return-object v0
.end method

.method static getLocalPaymentId()Ljava/lang/String;
    .locals 1

    .line 430
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->__l1_:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 431
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->__l1_:Ljava/lang/String;

    .line 433
    :cond_0
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->__l1_:Ljava/lang/String;

    return-object v0
.end method

.method static getPageLoadEndProperties(Ljava/lang/String;J)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 335
    const-string v1, "url"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    long-to-double p0, p1

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p0, v1

    .line 336
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "page_load_time"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static getPageLoadStartProperties(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 320
    const-string v1, "url"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static getPendingEventNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->_l_1l__:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    sget-object v2, Lcom/razorpay/AnalyticsUtil;->I__1l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/razorpay/AnalyticsUtil$PendingEvent;

    .line 216
    iget-object v3, v3, Lcom/razorpay/AnalyticsUtil$PendingEvent;->eventName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 219
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 640
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 641
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 642
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 643
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getUniqueId()Ljava/lang/String;
    .locals 6

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x1434b198400L

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    const-wide v2, 0x416c2f0200000000L    # 1.4776336E7

    .line 478
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 479
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/razorpay/AnalyticsUtil;->tobase62(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/razorpay/AnalyticsUtil;->tobase62(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 481
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static isCheckoutUrl(Ljava/lang/String;)Z
    .locals 1

    .line 330
    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/BaseConfig;->getCheckoutEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isNullOrEmpty(Ljava/lang/CharSequence;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    .line 402
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 405
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v1, :cond_1

    .line 408
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-gt v5, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le v1, v3, :cond_2

    add-int/lit8 v5, v1, -0x1

    .line 413
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-gt v5, v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v3

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :cond_4
    :goto_2
    return v0
.end method

.method private static l$1_I$l$(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 206
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 208
    :catch_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method private static l$1_I$l$(Landroid/content/Context;)V
    .locals 3

    .line 95
    const-string v0, "country_code"

    .line 0
    const-string v1, "Loaded cached country code: "

    .line 95
    :try_start_0
    invoke-static {p0, v0}, Lcom/razorpay/SharedPreferenceUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    invoke-static {v0, p0}, Lcom/razorpay/Lumberjack;->addOrderProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 102
    const-string v0, "Failed to load cached country code"

    invoke-static {v0, p0}, Lcom/razorpay/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static l$1_I$l$(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 77
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->_1__:Ljava/lang/String;

    sget-object v1, Lcom/razorpay/AnalyticsUtil;->$l$I1I11I1:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/razorpay/Lumberjack;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "merchant_key"

    invoke-static {v0, p1}, Lcom/razorpay/Lumberjack;->addOrderProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    const-string p1, "merchant_package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/razorpay/Lumberjack;->addOrderProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$(Landroid/content/Context;)V

    .line 81
    invoke-static {p0}, Lcom/razorpay/RazorpayExceptionHandler;->register(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 82
    sput-boolean p1, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$:Z

    .line 83
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-static {}, Lcom/razorpay/Lumberjack;->postData()V

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/razorpay/MonitoringUtil;->capturePreviousProcessExit(Landroid/content/Context;)V

    return-void

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Merchant key not set"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Context not set"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static l$1_I$l$()Z
    .locals 6

    .line 179
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->_l_1l__:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    sget-object v1, Lcom/razorpay/AnalyticsUtil;->I__1l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 183
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 184
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Analytics pending event flush: count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 188
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/razorpay/AnalyticsUtil$PendingEvent;

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Analytics pending event flush: event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/razorpay/AnalyticsUtil$PendingEvent;->eventName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", properties="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/razorpay/AnalyticsUtil$PendingEvent;->properties:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", metric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/razorpay/AnalyticsUtil$PendingEvent;->metric:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 192
    iget-object v2, v1, Lcom/razorpay/AnalyticsUtil$PendingEvent;->metric:Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 193
    iget-object v2, v1, Lcom/razorpay/AnalyticsUtil$PendingEvent;->eventName:Ljava/lang/String;

    iget-object v1, v1, Lcom/razorpay/AnalyticsUtil$PendingEvent;->properties:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/razorpay/Lumberjack;->trackEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v2, v1, Lcom/razorpay/AnalyticsUtil$PendingEvent;->eventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/razorpay/AnalyticsUtil$PendingEvent;->properties:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v1, v1, Lcom/razorpay/AnalyticsUtil$PendingEvent;->metric:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/razorpay/Lumberjack;->trackEventWithMetric(Ljava/lang/String;Lorg/json/JSONObject;J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 185
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static l$1_I$l$(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Long;)Z
    .locals 5

    const-string v0, "Analytics pending event queued: event="

    .line 161
    sget-boolean v1, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 164
    :cond_0
    sget-object v1, Lcom/razorpay/AnalyticsUtil;->_l_1l__:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    sget-boolean v3, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$:Z

    if-eqz v3, :cond_1

    .line 166
    monitor-exit v1

    return v2

    .line 168
    :cond_1
    sget-object v2, Lcom/razorpay/AnalyticsUtil;->I__1l:Ljava/util/List;

    new-instance v3, Lcom/razorpay/AnalyticsUtil$PendingEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, p0, v4, p2}, Lcom/razorpay/AnalyticsUtil$PendingEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Long;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", pending_count="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 170
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", properties="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", metric="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 169
    invoke-static {p0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 173
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static logCheckoutFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 566
    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 567
    const-string v0, "class_name"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string p0, "function_name"

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object p0, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_FUNCTION_ENTRY:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p0, p2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static logCheckoutFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 587
    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 588
    const-string v0, "class_name"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string p0, "function_name"

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object p0, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_FUNCTION_EXIT:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p0, p2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static logCustomUIFunctionEntry(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 608
    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 609
    const-string v0, "class_name"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string p0, "function_name"

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object p0, Lcom/razorpay/AnalyticsEvent;->CUSTOMUI_FUNCTION_ENTRY:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p0, p2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static logCustomUIFunctionExit(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 629
    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 630
    const-string v0, "class_name"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string p0, "function_name"

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object p0, Lcom/razorpay/AnalyticsEvent;->CUSTOMUI_FUNCTION_EXIT:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p0, p2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static postData()V
    .locals 1

    .line 124
    sget-boolean v0, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/razorpay/Lumberjack;->postData()V

    :cond_0
    return-void
.end method

.method static refreshOrderSession()V
    .locals 1

    .line 457
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->_llI:Ljava/lang/String;

    .line 458
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->__l1_:Ljava/lang/String;

    .line 459
    invoke-static {}, Lcom/razorpay/Lumberjack;->clearOrderProperties()V

    .line 460
    invoke-static {}, Lcom/razorpay/Lumberjack;->clearPaymentProperties()V

    return-void
.end method

.method static refreshPaymentSession()V
    .locals 1

    .line 448
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->__l1_:Ljava/lang/String;

    .line 449
    invoke-static {}, Lcom/razorpay/Lumberjack;->clearPaymentProperties()V

    return-void
.end method

.method static reportBlockingCaughtException(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    .line 545
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->sanitizeStackTrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 547
    invoke-static {p0, p1, v1, v0}, Lcom/razorpay/MonitoringUtil;->trackBlockingCaughtException(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;)V

    return-void
.end method

.method static reportCaughtException(Ljava/lang/Throwable;)V
    .locals 3

    .line 528
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 530
    new-instance v1, Ljava/util/HashMap;

    const-string v2, "S1"

    .line 531
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/razorpay/AnalyticsUtil;->getErrorProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 533
    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->sanitizeStackTrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 537
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->ERROR_LOGGED:Lcom/razorpay/AnalyticsEvent;

    .line 538
    invoke-virtual {v0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-static {v1}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 537
    invoke-static {v0, v1, p0}, Lcom/razorpay/Lumberjack;->trackExceptionEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static reportError(Ljava/lang/AbstractMethodError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 274
    sget-object p0, Lcom/razorpay/AnalyticsEvent;->ERROR_LOGGED:Lcom/razorpay/AnalyticsEvent;

    .line 275
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 276
    invoke-static {p1, p2}, Lcom/razorpay/AnalyticsUtil;->getErrorProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/razorpay/AnalyticsUtil;->getJSONErrorResponse(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    .line 274
    invoke-static {p0, p2, p1}, Lcom/razorpay/Lumberjack;->trackErrorEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 279
    const-string p0, "S0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "S1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget p0, Lcom/razorpay/AnalyticsUtil;->sessionErroredApiCalls:I

    const/4 p2, 0x1

    if-ge p0, p2, :cond_1

    .line 280
    invoke-static {p1}, Lcom/razorpay/Lumberjack;->logVajraCritialError(Ljava/lang/String;)V

    .line 281
    sget p0, Lcom/razorpay/AnalyticsUtil;->sessionErroredApiCalls:I

    add-int/2addr p0, p2

    sput p0, Lcom/razorpay/AnalyticsUtil;->sessionErroredApiCalls:I

    :cond_1
    return-void
.end method

.method static reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 261
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->ERROR_LOGGED:Lcom/razorpay/AnalyticsEvent;

    .line 262
    invoke-virtual {v0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {p1, p2}, Lcom/razorpay/AnalyticsUtil;->getErrorProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/razorpay/AnalyticsUtil;->getJSONErrorResponse(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    .line 261
    invoke-static {v0, p0, p1}, Lcom/razorpay/Lumberjack;->trackErrorEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 266
    const-string p0, "S0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "S1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget p0, Lcom/razorpay/AnalyticsUtil;->sessionErroredApiCalls:I

    const/4 p2, 0x1

    if-ge p0, p2, :cond_1

    .line 267
    invoke-static {p1}, Lcom/razorpay/Lumberjack;->logVajraCritialError(Ljava/lang/String;)V

    .line 268
    sget p0, Lcom/razorpay/AnalyticsUtil;->sessionErroredApiCalls:I

    add-int/2addr p0, p2

    sput p0, Lcom/razorpay/AnalyticsUtil;->sessionErroredApiCalls:I

    :cond_1
    return-void
.end method

.method static reportUncaughtException(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 500
    invoke-static {p0, v0, v0}, Lcom/razorpay/AnalyticsUtil;->reportUncaughtException(Ljava/lang/Throwable;Ljava/lang/Thread;Landroid/content/Context;)V

    return-void
.end method

.method static reportUncaughtException(Ljava/lang/Throwable;Ljava/lang/Thread;Landroid/content/Context;)V
    .locals 4

    .line 504
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 507
    const-string v1, "com.razorpay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 511
    :cond_0
    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 512
    new-instance v1, Ljava/util/HashMap;

    const-string v2, "S0"

    .line 513
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/razorpay/AnalyticsUtil;->getErrorProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 515
    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->sanitizeStackTrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {p2, p0, p1, v0}, Lcom/razorpay/MonitoringUtil;->trackSdkCrash(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;)V

    .line 520
    sget-object p0, Lcom/razorpay/AnalyticsEvent;->EXCEPTION_LOGGED:Lcom/razorpay/AnalyticsEvent;

    .line 521
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p0

    .line 522
    invoke-static {v1}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 520
    invoke-static {p0, p1, v0}, Lcom/razorpay/Lumberjack;->trackExceptionEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static reset()V
    .locals 4

    .line 345
    const-string v0, "Analytics pending event clear on reset: count="

    const/4 v1, 0x0

    sput-boolean v1, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$:Z

    const/4 v1, 0x0

    .line 346
    sput-object v1, Lcom/razorpay/AnalyticsUtil;->__l1_:Ljava/lang/String;

    .line 347
    sput-object v1, Lcom/razorpay/AnalyticsUtil;->_llI:Ljava/lang/String;

    .line 348
    sget-object v1, Lcom/razorpay/AnalyticsUtil;->_l_1l__:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_0
    sget-object v2, Lcom/razorpay/AnalyticsUtil;->I__1l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 352
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 353
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-static {}, Lcom/razorpay/MonitoringUtil;->reset()V

    .line 355
    invoke-static {}, Lcom/razorpay/Lumberjack;->destroy()V

    return-void

    :catchall_0
    move-exception v0

    .line 353
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static returnUndefinedIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 422
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const-string p0, "undefined"

    :cond_0
    return-object p0
.end method

.method static sanitizeStackTrace(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 660
    const-string v0, "\n"

    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    const-string p0, ""

    return-object p0

    .line 665
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    array-length v2, p0

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 673
    aget-object v5, p0, v4

    .line 676
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 684
    :cond_1
    const-string v6, "\\b[a-zA-Z0-9_-]{32,}\\b"

    const-string v7, "<token>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 687
    const-string v6, "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"

    const-string v7, "<email>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 690
    const-string v6, "\\b\\d{13,19}\\b"

    const-string v7, "****"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 693
    const-string v6, "\\b\\d{10,12}\\b"

    const-string v7, "<phone>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 696
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x1f4

    if-le v6, v7, :cond_2

    .line 697
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x1f1

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 700
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x1388

    if-le v5, v6, :cond_3

    .line 704
    const-string p0, "... (truncated for size)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 709
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stack trace sanitization failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static saveEventsToPreferences(Landroid/content/Context;)V
    .locals 0

    .line 732
    invoke-static {p0}, Lcom/razorpay/Lumberjack;->saveEventsToPreferences(Landroid/content/Context;)V

    return-void
.end method

.method static setAppDetails(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 363
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 365
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->returnUndefinedIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_NAME:Ljava/lang/CharSequence;

    .line 366
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->returnUndefinedIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_VERSION:Ljava/lang/CharSequence;

    .line 367
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->returnUndefinedIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_NAMESPACE:Ljava/lang/CharSequence;

    .line 368
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput v0, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_TARGET_SDK:I

    .line 369
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_BUILD:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 371
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S0"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :goto_0
    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getAppBuildType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/razorpay/AnalyticsUtil;->BUILD_TYPE:Ljava/lang/String;

    .line 379
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->getKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/razorpay/AnalyticsUtil;->KEY_TYPE:Ljava/lang/String;

    return-void
.end method

.method static setFramework(Ljava/lang/String;)V
    .locals 0

    .line 718
    sput-object p0, Lcom/razorpay/AnalyticsUtil;->FRAMEWORK:Ljava/lang/String;

    return-void
.end method

.method static setLocalOrderId(Ljava/lang/String;)V
    .locals 0

    .line 464
    sput-object p0, Lcom/razorpay/AnalyticsUtil;->_llI:Ljava/lang/String;

    return-void
.end method

.method static setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 60
    sput-object p2, Lcom/razorpay/AnalyticsUtil;->_1__:Ljava/lang/String;

    .line 61
    sput p3, Lcom/razorpay/AnalyticsUtil;->$I__I:I

    .line 62
    sput-object p4, Lcom/razorpay/AnalyticsUtil;->$l$I1I11I1:Ljava/lang/String;

    .line 63
    invoke-static {p2, p4}, Lcom/razorpay/MonitoringUtil;->setSdkInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p0, p1}, Lcom/razorpay/AnalyticsUtil;->setAppDetails(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    invoke-static {p0, p1}, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static tobase62(J)Ljava/lang/String;
    .locals 6

    .line 488
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x3e

    .line 492
    rem-long v4, p0, v2

    long-to-int v4, v4

    .line 493
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 494
    div-long/2addr p0, v2

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static trackEvent(Lcom/razorpay/AnalyticsEvent;)V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/razorpay/Lumberjack;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method static trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/razorpay/AnalyticsEvent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/razorpay/Lumberjack;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/razorpay/Lumberjack;->trackEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static trackEventWithMetric(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;J)V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/razorpay/AnalyticsUtil;->l$1_I$l$(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/razorpay/Lumberjack;->trackEventWithMetric(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method static trackPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 256
    invoke-static {p0, p1}, Lcom/razorpay/Lumberjack;->trackPage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static trackPageLoadEnd(Ljava/lang/String;J)V
    .locals 1

    .line 325
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->isCheckoutUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_PAGE_LOAD_FINISH:Lcom/razorpay/AnalyticsEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->PAGE_LOAD_FINISH:Lcom/razorpay/AnalyticsEvent;

    .line 326
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/razorpay/AnalyticsUtil;->getPageLoadEndProperties(Ljava/lang/String;J)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    return-void
.end method

.method static trackPageLoadStart(Ljava/lang/String;)V
    .locals 1

    .line 314
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->isCheckoutUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_PAGE_LOAD_START:Lcom/razorpay/AnalyticsEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->PAGE_LOAD_START:Lcom/razorpay/AnalyticsEvent;

    .line 315
    :goto_0
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->getPageLoadStartProperties(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    return-void
.end method
