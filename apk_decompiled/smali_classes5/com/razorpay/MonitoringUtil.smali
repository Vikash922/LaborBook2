.class Lcom/razorpay/MonitoringUtil;
.super Ljava/lang/Object;
.source "MonitoringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/razorpay/MonitoringUtil$AndroidProcessExitProvider;,
        Lcom/razorpay/MonitoringUtil$ProcessExitProvider;,
        Lcom/razorpay/MonitoringUtil$ProcessExitRecord;
    }
.end annotation


# static fields
.field private static volatile $I__I:Ljava/lang/String; = ""

.field private static volatile $l$I1I11I1:Ljava/lang/String; = null

.field static final DEPENDENCY_MERCHANT_CALLBACK_HANDOVER:Ljava/lang/String; = "merchant_callback_handover"

.field static final DEPENDENCY_NATIVE_INTENT_HANDOFF:Ljava/lang/String; = "native_intent_handoff"

.field static final DEPENDENCY_TLS:Ljava/lang/String; = "tls"

.field static final DEPENDENCY_WEBVIEW_CREATION:Ljava/lang/String; = "webview_creation"

.field static final DEPENDENCY_WEBVIEW_RENDER:Ljava/lang/String; = "webview_render"

.field static final DEPENDENCY_WEBVIEW_RENDERER_PROCESS:Ljava/lang/String; = "webview_renderer_process"

.field static final FAILURE_CLASS_CRITICAL_DEPENDENCY_FAILED:Ljava/lang/String; = "critical_dependency_failed"

.field static final FAILURE_CLASS_SDK_CRASH:Ljava/lang/String; = "sdk_crash"

.field static final FAILURE_CLASS_SDK_PROCESS_EXIT:Ljava/lang/String; = "sdk_process_exit"

.field static final FEATURE_CUSTOM_UI:Ljava/lang/String; = "custom_ui"

.field static final FEATURE_STANDARD_CHECKOUT:Ljava/lang/String; = "standard_checkout"

.field private static volatile IIII$1$_I:Ljava/lang/String; = ""

.field private static volatile I__1l:Ljava/lang/String; = ""

.field static final STAGE_CHECKOUT_OPEN:Ljava/lang/String; = "checkout_open"

.field static final STAGE_CHECKOUT_RENDER:Ljava/lang/String; = "checkout_render"

.field static final STAGE_MERCHANT_CALLBACK_HANDOVER:Ljava/lang/String; = "merchant_callback_handover"

.field static final STAGE_PAYMENT_HANDOVER:Ljava/lang/String; = "payment_handover"

.field static final STAGE_PAYMENT_RESULT_PROCESS:Ljava/lang/String; = "payment_result_process"

.field static final STAGE_PAYMENT_RESULT_RECEIVE:Ljava/lang/String; = "payment_result_receive"

.field static final STAGE_PAYMENT_SUBMIT:Ljava/lang/String; = "payment_submit"

.field private static volatile _$_l_$1l$:Ljava/lang/String; = ""

.field private static volatile _1__:Ljava/lang/String; = ""

.field private static final __l1_:Ljava/lang/String; = "monitoring_checkout_context"

.field private static volatile _l_1l__:Ljava/lang/String; = "standalone"

.field private static final _llI:Ljava/lang/String; = "monitoring_last_process_exit_key"

.field private static final l$1_I$l$:Ljava/lang/String; = "monitoring_checkout_active"

.field private static volatile lI_l1Il_:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static __l1_(I)Ljava/lang/String;
    .locals 3

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const-string v2, "unknown_process_exit"

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    return-object v2

    .line 322
    :cond_1
    const-string p0, "excessive_resource_usage"

    return-object p0

    .line 324
    :cond_2
    const-string p0, "initialization_failure"

    return-object p0

    .line 314
    :cond_3
    const-string p0, "anr"

    return-object p0

    .line 318
    :cond_4
    const-string p0, "native_crash"

    return-object p0

    .line 316
    :cond_5
    const-string p0, "java_crash"

    return-object p0

    .line 320
    :cond_6
    const-string p0, "low_memory_kill"

    return-object p0
.end method

.method private static __l1_(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 365
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 366
    invoke-static {p0}, Lcom/razorpay/MonitoringUtil;->l$1_I$l$(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 369
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    .line 371
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 377
    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private static _llI(I)Ljava/lang/String;
    .locals 3

    .line 331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const-string v2, "Process exited while checkout was active"

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    return-object v2

    .line 344
    :cond_1
    const-string p0, "Excessive resource usage while checkout was active"

    return-object p0

    .line 346
    :cond_2
    const-string p0, "App initialization failure while checkout was active"

    return-object p0

    .line 336
    :cond_3
    const-string p0, "ANR while checkout was active"

    return-object p0

    .line 340
    :cond_4
    const-string p0, "Native crash while checkout was active"

    return-object p0

    .line 338
    :cond_5
    const-string p0, "Java crash while checkout was active"

    return-object p0

    .line 342
    :cond_6
    const-string p0, "Low-memory kill while checkout was active"

    return-object p0
.end method

.method static capturePreviousProcessExit(Landroid/content/Context;)V
    .locals 1

    .line 198
    new-instance v0, Lcom/razorpay/MonitoringUtil$AndroidProcessExitProvider;

    invoke-direct {v0, p0}, Lcom/razorpay/MonitoringUtil$AndroidProcessExitProvider;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/razorpay/MonitoringUtil;->capturePreviousProcessExit(Landroid/content/Context;Lcom/razorpay/MonitoringUtil$ProcessExitProvider;)V

    return-void
.end method

.method static capturePreviousProcessExit(Landroid/content/Context;Lcom/razorpay/MonitoringUtil$ProcessExitProvider;)V
    .locals 4

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    invoke-static {p0}, Lcom/razorpay/MonitoringUtil;->wasCheckoutActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 208
    :cond_1
    invoke-interface {p1}, Lcom/razorpay/MonitoringUtil$ProcessExitProvider;->getHistoricalProcessExitReasons()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 209
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 212
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;

    if-eqz v0, :cond_3

    .line 213
    iget v1, v0, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->reason:I

    invoke-static {v1}, Lcom/razorpay/MonitoringUtil;->l$1_I$l$(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 216
    :cond_4
    invoke-virtual {v0}, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->dedupeKey()Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v2, "monitoring_last_process_exit_key"

    invoke-static {p0, v2}, Lcom/razorpay/SharedPreferenceUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 220
    :cond_5
    invoke-static {p0, v2, v1}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {p0, v0}, Lcom/razorpay/MonitoringUtil;->l$1_I$l$(Landroid/content/Context;Lcom/razorpay/MonitoringUtil$ProcessExitRecord;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static clearCheckout(Landroid/content/Context;)V
    .locals 1

    .line 80
    :try_start_0
    const-string v0, "monitoring_checkout_active"

    invoke-static {p0, v0}, Lcom/razorpay/SharedPreferenceUtil;->removeValue(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    const-string v0, "monitoring_checkout_context"

    invoke-static {p0, v0}, Lcom/razorpay/SharedPreferenceUtil;->removeValue(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    const-string p0, ""

    sput-object p0, Lcom/razorpay/MonitoringUtil;->_1__:Ljava/lang/String;

    .line 85
    sput-object p0, Lcom/razorpay/MonitoringUtil;->$I__I:Ljava/lang/String;

    .line 86
    sput-object p0, Lcom/razorpay/MonitoringUtil;->lI_l1Il_:Ljava/lang/String;

    .line 87
    sput-object p0, Lcom/razorpay/MonitoringUtil;->_$_l_$1l$:Ljava/lang/String;

    .line 88
    sput-object p0, Lcom/razorpay/MonitoringUtil;->IIII$1$_I:Ljava/lang/String;

    const/4 p0, 0x0

    .line 89
    sput-object p0, Lcom/razorpay/MonitoringUtil;->$l$I1I11I1:Ljava/lang/String;

    return-void
.end method

.method static commonProperties(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    const-string v1, "sdk_type"

    sget-object v2, Lcom/razorpay/MonitoringUtil;->_l_1l__:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "sdk_version"

    sget-object v2, Lcom/razorpay/MonitoringUtil;->I__1l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "feature"

    sget-object v2, Lcom/razorpay/MonitoringUtil;->_1__:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "checkout_stage"

    sget-object v2, Lcom/razorpay/MonitoringUtil;->$I__I:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "payment_attempt_id"

    invoke-static {}, Lcom/razorpay/MonitoringUtil;->getPaymentAttemptId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "method"

    sget-object v2, Lcom/razorpay/MonitoringUtil;->lI_l1Il_:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "payment_id"

    sget-object v2, Lcom/razorpay/MonitoringUtil;->_$_l_$1l$:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "checkout_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "local_order_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "local_payment_id"

    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalPaymentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "merchant_key"

    sget-object v2, Lcom/razorpay/MonitoringUtil;->IIII$1$_I:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "device_manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "device_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 140
    const-string v1, "merchant_package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static getPaymentAttemptId()Ljava/lang/String;
    .locals 1

    .line 353
    sget-object v0, Lcom/razorpay/MonitoringUtil;->$l$I1I11I1:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 354
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/razorpay/MonitoringUtil;->$l$I1I11I1:Ljava/lang/String;

    .line 356
    :cond_0
    sget-object v0, Lcom/razorpay/MonitoringUtil;->$l$I1I11I1:Ljava/lang/String;

    return-object v0
.end method

.method private static l$1_I$l$(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 360
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static l$1_I$l$(Landroid/content/Context;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-static {p0}, Lcom/razorpay/MonitoringUtil;->commonProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 250
    const-string v1, "sdk_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 251
    const-string v3, "sdk_version"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 253
    :try_start_0
    const-string v5, "monitoring_checkout_context"

    invoke-static {p0, v5}, Lcom/razorpay/SharedPreferenceUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 254
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 259
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 260
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 261
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 263
    const-string p0, "standalone"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 264
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v4, :cond_3

    .line 266
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 267
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static l$1_I$l$(Landroid/content/Context;Lcom/razorpay/MonitoringUtil$ProcessExitRecord;)V
    .locals 2

    .line 227
    invoke-static {p0}, Lcom/razorpay/MonitoringUtil;->l$1_I$l$(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 228
    const-string v0, "failure_class"

    const-string v1, "sdk_process_exit"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v0, "severity"

    const-string v1, "S0"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget v0, p1, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->reason:I

    invoke-static {v0}, Lcom/razorpay/MonitoringUtil;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit_reason"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget v0, p1, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "exit_reason_code"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-wide v0, p1, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "exit_timestamp"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p1, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->description:Ljava/lang/String;

    invoke-static {v0}, Lcom/razorpay/MonitoringUtil;->l$1_I$l$(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit_description"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget v0, p1, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->importance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "exit_importance"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget v0, p1, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "exit_status"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-wide v0, p1, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->pss:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "pss_kb"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-wide v0, p1, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->rss:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "rss_kb"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-boolean v0, p1, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->traceAvailable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "trace_available"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget v0, p1, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->reason:I

    invoke-static {v0}, Lcom/razorpay/MonitoringUtil;->__l1_(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "native_issue_type"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget v0, p1, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->reason:I

    invoke-static {v0}, Lcom/razorpay/MonitoringUtil;->_llI(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "process_exit_summary"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 241
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_blocking"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 242
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "can_recover"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget v0, p1, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->reason:I

    invoke-static {v0}, Lcom/razorpay/MonitoringUtil;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reason_code"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget p1, p1, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->reason:I

    invoke-static {p1}, Lcom/razorpay/MonitoringUtil;->_llI(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "reason_message"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->SDK_PROCESS_EXIT_LOGGED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static l$1_I$l$(I)Z
    .locals 3

    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method static persistActiveCheckout(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 113
    :cond_0
    :try_start_0
    const-string v0, "monitoring_checkout_active"

    const-string v1, "true"

    invoke-static {p0, v0, v1}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "monitoring_checkout_context"

    invoke-static {p0}, Lcom/razorpay/MonitoringUtil;->commonProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static reasonToString(I)Ljava/lang/String;
    .locals 2

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 288
    const-string p0, "REASON_UNKNOWN"

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REASON_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 300
    :cond_1
    const-string p0, "REASON_EXCESSIVE_RESOURCE_USAGE"

    return-object p0

    .line 302
    :cond_2
    const-string p0, "REASON_INITIALIZATION_FAILURE"

    return-object p0

    .line 292
    :cond_3
    const-string p0, "REASON_ANR"

    return-object p0

    .line 296
    :cond_4
    const-string p0, "REASON_CRASH_NATIVE"

    return-object p0

    .line 294
    :cond_5
    const-string p0, "REASON_CRASH"

    return-object p0

    .line 298
    :cond_6
    const-string p0, "REASON_LOW_MEMORY"

    return-object p0
.end method

.method static refreshPaymentAttempt()V
    .locals 1

    .line 105
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/razorpay/MonitoringUtil;->$l$I1I11I1:Ljava/lang/String;

    return-void
.end method

.method static reset()V
    .locals 2

    .line 60
    const-string v0, "standalone"

    sput-object v0, Lcom/razorpay/MonitoringUtil;->_l_1l__:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/razorpay/MonitoringUtil;->I__1l:Ljava/lang/String;

    .line 62
    sput-object v0, Lcom/razorpay/MonitoringUtil;->_1__:Ljava/lang/String;

    .line 63
    sput-object v0, Lcom/razorpay/MonitoringUtil;->$I__I:Ljava/lang/String;

    const/4 v1, 0x0

    .line 64
    sput-object v1, Lcom/razorpay/MonitoringUtil;->$l$I1I11I1:Ljava/lang/String;

    .line 65
    sput-object v0, Lcom/razorpay/MonitoringUtil;->lI_l1Il_:Ljava/lang/String;

    .line 66
    sput-object v0, Lcom/razorpay/MonitoringUtil;->_$_l_$1l$:Ljava/lang/String;

    .line 67
    sput-object v0, Lcom/razorpay/MonitoringUtil;->IIII$1$_I:Ljava/lang/String;

    return-void
.end method

.method static setCheckoutStage(Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    .line 93
    const-string p0, ""

    :cond_0
    sput-object p0, Lcom/razorpay/MonitoringUtil;->$I__I:Ljava/lang/String;

    return-void
.end method

.method static setPaymentId(Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    .line 101
    const-string p0, ""

    :cond_0
    sput-object p0, Lcom/razorpay/MonitoringUtil;->_$_l_$1l$:Ljava/lang/String;

    return-void
.end method

.method static setPaymentMethod(Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    .line 97
    const-string p0, ""

    :cond_0
    sput-object p0, Lcom/razorpay/MonitoringUtil;->lI_l1Il_:Ljava/lang/String;

    return-void
.end method

.method static setSdkInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    .line 55
    const-string p0, "standalone"

    :cond_0
    sput-object p0, Lcom/razorpay/MonitoringUtil;->_l_1l__:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 56
    const-string p1, ""

    :cond_1
    sput-object p1, Lcom/razorpay/MonitoringUtil;->I__1l:Ljava/lang/String;

    return-void
.end method

.method static startCheckout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    sput-object p1, Lcom/razorpay/MonitoringUtil;->_1__:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    .line 72
    :cond_1
    sput-object p2, Lcom/razorpay/MonitoringUtil;->IIII$1$_I:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/razorpay/MonitoringUtil;->$l$I1I11I1:Ljava/lang/String;

    .line 74
    const-string p1, "checkout_open"

    invoke-static {p1}, Lcom/razorpay/MonitoringUtil;->setCheckoutStage(Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Lcom/razorpay/MonitoringUtil;->persistActiveCheckout(Landroid/content/Context;)V

    return-void
.end method

.method static trackBlockingCaughtException(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 3

    .line 182
    invoke-static {p0}, Lcom/razorpay/MonitoringUtil;->commonProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 183
    const-string v0, "failure_class"

    const-string v1, "sdk_crash"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "severity"

    const-string v1, "S0"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "unknown"

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "exception_class"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    goto :goto_1

    .line 186
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string p2, "thread_name"

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string p2, "is_fatal"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string p2, "is_swallowed"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string p2, "is_blocking"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string p2, "can_recover"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string p2, "stacktrace_hash"

    invoke-static {p3}, Lcom/razorpay/MonitoringUtil;->__l1_(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string p2, "reason_code"

    const-string p3, "caught_runtime_exception"

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 193
    const-string p1, ""

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/razorpay/MonitoringUtil;->l$1_I$l$(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string p2, "reason_message"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->SDK_CRASH_LOGGED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    return-void
.end method

.method static trackCriticalDependencyFailure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 2

    .line 155
    invoke-static {p0}, Lcom/razorpay/MonitoringUtil;->commonProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 156
    const-string v0, "failure_class"

    const-string v1, "critical_dependency_failed"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    .line 157
    const-string v0, "S0"

    goto :goto_0

    :cond_0
    const-string v0, "S1"

    :goto_0
    const-string v1, "severity"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "dependency_name"

    invoke-static {p1}, Lcom/razorpay/MonitoringUtil;->l$1_I$l$(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string p1, "dependency_operation"

    invoke-static {p2}, Lcom/razorpay/MonitoringUtil;->l$1_I$l$(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string p1, "reason_code"

    invoke-static {p3}, Lcom/razorpay/MonitoringUtil;->l$1_I$l$(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string p1, "reason_message"

    invoke-static {p4}, Lcom/razorpay/MonitoringUtil;->l$1_I$l$(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string p1, "is_blocking"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string p1, "can_recover"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string p1, "fallback_used"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string p1, "fallback_outcome"

    invoke-static {p7}, Lcom/razorpay/MonitoringUtil;->l$1_I$l$(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CRITICAL_DEPENDENCY_FAILED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    return-void
.end method

.method static trackSdkCrash(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 3

    .line 170
    invoke-static {p0}, Lcom/razorpay/MonitoringUtil;->commonProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 171
    const-string v0, "failure_class"

    const-string v1, "sdk_crash"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "severity"

    const-string v1, "S0"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "unknown"

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "exception_class"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string p2, "thread_name"

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 175
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "is_fatal"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string p2, "stacktrace_hash"

    invoke-static {p3}, Lcom/razorpay/MonitoringUtil;->__l1_(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 177
    const-string p1, ""

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/razorpay/MonitoringUtil;->l$1_I$l$(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string p2, "reason_message"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->SDK_CRASH_LOGGED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V

    return-void
.end method

.method static wasCheckoutActive(Landroid/content/Context;)Z
    .locals 1

    .line 120
    const-string v0, "monitoring_checkout_active"

    invoke-static {p0, v0}, Lcom/razorpay/SharedPreferenceUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
