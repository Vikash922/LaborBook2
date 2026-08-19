.class public final Lcom/razorpay/RzpAssist;
.super Ljava/lang/Object;
.source "RzpAssist.java"

# interfaces
.implements Lcom/razorpay/SmsAgentInterface;


# instance fields
.field private $$_$I1l1_:Ljava/lang/String;

.field private $I__I:Z

.field private $l$I1I11I1:Landroid/app/Activity;

.field private $l_I$1:Z

.field private $lll$_lIl:Lorg/json/JSONObject;

.field private I1lII:Z

.field private IIII$1$_I:Lcom/razorpay/OtpElfData;

.field private I__1l:J

.field private _$_l_$1l$:Lcom/razorpay/SmsAgent;

.field private _1__:Z

.field private __II$$:Lorg/json/JSONObject;

.field private __Il11I1l:Ljava/lang/String;

.field private ___Il$:Ljava/lang/String;

.field private __l1_:Z

.field private _l_1l__:Ljava/lang/String;

.field private _llI:Ljava/lang/String;

.field private l$$$11Il1:I

.field private l$1_I$l$:Landroid/webkit/WebView;

.field private lI_l1Il_:Ljava/lang/String;

.field lastSms:Ljava/lang/String;

.field private llIl:Z

.field message:Ljava/lang/String;

.field sender:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/razorpay/RzpAssist;->__l1_:Z

    .line 46
    const-string v1, ""

    iput-object v1, p0, Lcom/razorpay/RzpAssist;->_llI:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/razorpay/RzpAssist;->_l_1l__:Ljava/lang/String;

    .line 49
    iput-boolean v0, p0, Lcom/razorpay/RzpAssist;->_1__:Z

    .line 50
    iput-boolean v0, p0, Lcom/razorpay/RzpAssist;->$I__I:Z

    .line 55
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/razorpay/RzpAssist;->$lll$_lIl:Lorg/json/JSONObject;

    .line 56
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/razorpay/RzpAssist;->__II$$:Lorg/json/JSONObject;

    .line 58
    iput-boolean v0, p0, Lcom/razorpay/RzpAssist;->$l_I$1:Z

    .line 60
    iput-boolean v0, p0, Lcom/razorpay/RzpAssist;->I1lII:Z

    .line 62
    const-string v1, "standalone"

    iput-object v1, p0, Lcom/razorpay/RzpAssist;->$$_$I1l1_:Ljava/lang/String;

    .line 70
    iput-boolean v0, p0, Lcom/razorpay/RzpAssist;->llIl:Z

    .line 74
    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/BaseConfig;->isOTPElfEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    iput-object p4, p0, Lcom/razorpay/RzpAssist;->$$_$I1l1_:Ljava/lang/String;

    .line 83
    iput p5, p0, Lcom/razorpay/RzpAssist;->l$$$11Il1:I

    .line 84
    iput-object p6, p0, Lcom/razorpay/RzpAssist;->___Il$:Ljava/lang/String;

    .line 86
    const-string v0, "OTPElf Constructor"

    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "standard"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "custom"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    :cond_1
    invoke-static {p2, p1, p4, p5, p6}, Lcom/razorpay/AnalyticsUtil;->setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    :cond_2
    iput-object p3, p0, Lcom/razorpay/RzpAssist;->l$1_I$l$:Landroid/webkit/WebView;

    .line 91
    iput-object p1, p0, Lcom/razorpay/RzpAssist;->lI_l1Il_:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/razorpay/RzpAssist;->$l$I1I11I1:Landroid/app/Activity;

    .line 93
    new-instance p1, Lcom/razorpay/OtpElfData;

    invoke-direct {p1, p2}, Lcom/razorpay/OtpElfData;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/razorpay/RzpAssist;->IIII$1$_I:Lcom/razorpay/OtpElfData;

    .line 94
    invoke-virtual {p1}, Lcom/razorpay/OtpElfData;->checkForUpdates()V

    .line 95
    invoke-direct {p0}, Lcom/razorpay/RzpAssist;->l$1_I$l$()V

    .line 96
    new-instance p1, Lcom/razorpay/AnalyticsProperty;

    sget-object p3, Lcom/razorpay/OtpElfData;->versionKey:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/razorpay/BaseUtils;->getLocalVersion(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {p1, p2, p3}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    const-string p2, "OTPElf Version"

    invoke-static {p2, p1}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    return-void

    .line 79
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "merchantKey cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private __l1_()V
    .locals 11

    .line 140
    const-string v0, "sdk"

    const-string v1, "framework"

    const-string v2, "android"

    const-string v3, "platform"

    const-string v4, "type"

    .line 0
    const-string v5, "window.__rzp_options = "

    .line 140
    :try_start_0
    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/razorpay/BaseConfig;->getOTPElfSettings()Lorg/json/JSONObject;

    move-result-object v6

    .line 141
    const-string v7, "merchant_key"

    iget-object v8, p0, Lcom/razorpay/RzpAssist;->lI_l1Il_:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v7, "otp_permission"

    iget-boolean v8, p0, Lcom/razorpay/RzpAssist;->__l1_:Z

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 143
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 144
    iget-object v8, p0, Lcom/razorpay/RzpAssist;->$$_$I1l1_:Ljava/lang/String;

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v8, "version"

    iget-object v9, p0, Lcom/razorpay/RzpAssist;->___Il$:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v8, "native"

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v8, "name"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/razorpay/RzpAssist;->$$_$I1l1_:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_android_native"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 152
    iget-boolean v9, p0, Lcom/razorpay/RzpAssist;->_1__:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "version_code"

    if-nez v9, :cond_0

    .line 153
    :try_start_1
    const-string v9, "not magic"

    invoke-static {v9}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 154
    const-string v9, "rzpassist"

    invoke-virtual {v8, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-static {}, Lcom/razorpay/ResourceUtils;->getRzpAssistVersionCode()I

    move-result v4

    invoke-virtual {v8, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 158
    :cond_0
    const-string v9, "This is Magic"

    invoke-static {v9}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 159
    const-string v9, "magic"

    invoke-virtual {v8, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-static {}, Lcom/razorpay/ResourceUtils;->getMagicVersionCode()I

    move-result v4

    invoke-virtual {v8, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    :goto_0
    const-string v4, "plugin"

    invoke-virtual {v6, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v4, "payment_data"

    iget-object v8, p0, Lcom/razorpay/RzpAssist;->__II$$:Lorg/json/JSONObject;

    invoke-virtual {v6, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v4, "preferences"

    iget-object v8, p0, Lcom/razorpay/RzpAssist;->$lll$_lIl:Lorg/json/JSONObject;

    invoke-virtual {v6, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 167
    const-string v8, "package_name"

    iget-object v9, p0, Lcom/razorpay/RzpAssist;->$l$I1I11I1:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    iget-object v8, p0, Lcom/razorpay/RzpAssist;->$l$I1I11I1:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 169
    iget-object v9, p0, Lcom/razorpay/RzpAssist;->$l$I1I11I1:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 170
    const-string v10, "app_name"

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Lcom/razorpay/AnalyticsUtil;->returnUndefinedIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v8, "mobile_sdk"

    invoke-virtual {v4, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v3, "os"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v2, "os_version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v2, "data_network_type"

    iget-object v3, p0, Lcom/razorpay/RzpAssist;->$l$I1I11I1:Landroid/app/Activity;

    invoke-static {v3}, Lcom/razorpay/BaseUtils;->getDataNetworkType(Landroid/content/Context;)Lcom/razorpay/NetworkType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/razorpay/NetworkType;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getFramework()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v1, "library"

    const-string v2, "standard"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v0, "metadata"

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/razorpay/RzpAssist;->l$1_I$l$(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 182
    const-string v1, "Unable to load otpelf settings"

    invoke-static {v1, v0}, Lcom/razorpay/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->IIII$1$_I:Lcom/razorpay/OtpElfData;

    invoke-virtual {v0}, Lcom/razorpay/OtpElfData;->getOtpElfJs()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/razorpay/RzpAssist;->l$1_I$l$(Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->OTPELF_INJECTED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 190
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->lastSms:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 191
    iget-object v1, p0, Lcom/razorpay/RzpAssist;->sender:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "OTPElf.showOTP(\'%s\',\'%s\')"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/razorpay/RzpAssist;->l$1_I$l$(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/razorpay/RzpAssist;->lastSms:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private _llI()V
    .locals 6

    const-string v0, "https://api.razorpay.com/v1/payments/"

    const-string v1, "Basic "

    .line 265
    :try_start_0
    iget-object v2, p0, Lcom/razorpay/RzpAssist;->lI_l1Il_:Ljava/lang/String;

    invoke-static {v2}, Lcom/razorpay/BaseUtils;->constructBasicAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 267
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v1, p0, Lcom/razorpay/RzpAssist;->__Il11I1l:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    .line 274
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/razorpay/RzpAssist;->__Il11I1l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/metadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    const-string v1, "Sending Stats Request"

    invoke-static {v1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 277
    iget-boolean v1, p0, Lcom/razorpay/RzpAssist;->I1lII:Z

    invoke-static {v1}, Lcom/razorpay/AutoOtpUtils;->createStatsPayload(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 278
    const-string v2, "PAYLOAD"

    invoke-static {v2}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 280
    invoke-static {v0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/razorpay/RzpAssist$1;

    invoke-direct {v2, p0}, Lcom/razorpay/RzpAssist$1;-><init>(Lcom/razorpay/RzpAssist;)V

    invoke-static {v0, v1, v3, v2}, Lcom/razorpay/Owl;->post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 289
    const-string v1, "S0"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RzpAssist"

    invoke-static {v2, v1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/razorpay/RzpAssist;)Landroid/webkit/WebView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/razorpay/RzpAssist;->l$1_I$l$:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/razorpay/RzpAssist;)Landroid/app/Activity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/razorpay/RzpAssist;->$l$I1I11I1:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$202(Lcom/razorpay/RzpAssist;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/razorpay/RzpAssist;->$I__I:Z

    return p1
.end method

.method static synthetic access$302(Lcom/razorpay/RzpAssist;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/razorpay/RzpAssist;->I1lII:Z

    return p1
.end method

.method private l$1_I$l$()V
    .locals 2

    .line 100
    invoke-static {}, Lcom/razorpay/SmsAgent;->getSmsAgentInstance()Lcom/razorpay/SmsAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/RzpAssist;->_$_l_$1l$:Lcom/razorpay/SmsAgent;

    .line 101
    invoke-virtual {v0, p0}, Lcom/razorpay/SmsAgent;->registerForCallbacks(Lcom/razorpay/SmsAgentInterface;)V

    .line 102
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->_$_l_$1l$:Lcom/razorpay/SmsAgent;

    iget-object v1, p0, Lcom/razorpay/RzpAssist;->$l$I1I11I1:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/razorpay/SmsAgent;->takeActionsIfPermissionsAreGranted(Landroid/app/Activity;)Z

    .line 103
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->l$1_I$l$:Landroid/webkit/WebView;

    const-string v1, "OTPElfBridge"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->l$1_I$l$:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method

.method private l$1_I$l$(Ljava/lang/String;)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->l$1_I$l$:Landroid/webkit/WebView;

    const-string v1, "javascript: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copyToClipboard(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->$l$I1I11I1:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 418
    const-string v1, "rzp_clip_data"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 419
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method enableMagic()V
    .locals 1

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/razorpay/RzpAssist;->_1__:Z

    return-void
.end method

.method getCurrentLoadingUrl()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->_l_1l__:Ljava/lang/String;

    return-object v0
.end method

.method getLastLoadedUrl()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->_llI:Ljava/lang/String;

    return-object v0
.end method

.method isRazorpayOtpReceived()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/razorpay/RzpAssist;->$I__I:Z

    return v0
.end method

.method public onOtpParsed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->$l$I1I11I1:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/RzpAssist$5;

    invoke-direct {v1, p0, p1}, Lcom/razorpay/RzpAssist$5;-><init>(Lcom/razorpay/RzpAssist;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 123
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/razorpay/RzpAssist;->I__1l:J

    sub-long/2addr v0, v2

    .line 124
    invoke-static {p2, v0, v1}, Lcom/razorpay/AnalyticsUtil;->trackPageLoadEnd(Ljava/lang/String;J)V

    .line 125
    iput-object p2, p0, Lcom/razorpay/RzpAssist;->_llI:Ljava/lang/String;

    .line 126
    const-string p1, ""

    iput-object p1, p0, Lcom/razorpay/RzpAssist;->_l_1l__:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/BaseConfig;->isOTPElfEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 132
    :cond_0
    iget-boolean p1, p0, Lcom/razorpay/RzpAssist;->llIl:Z

    if-nez p1, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/razorpay/RzpAssist;->__l1_()V

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/razorpay/RzpAssist;->llIl:Z

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "RzpAssist onPageStarted: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V

    .line 219
    invoke-static {p2}, Lcom/razorpay/AnalyticsUtil;->trackPageLoadStart(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/razorpay/RzpAssist;->I__1l:J

    .line 221
    iput-object p2, p0, Lcom/razorpay/RzpAssist;->_l_1l__:Ljava/lang/String;

    const/4 p1, 0x0

    .line 222
    iput-boolean p1, p0, Lcom/razorpay/RzpAssist;->llIl:Z

    return-void
.end method

.method public onProgressChanged(I)V
    .locals 0

    .line 208
    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/BaseConfig;->isOTPElfEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    return-void
.end method

.method onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->_$_l_$1l$:Lcom/razorpay/SmsAgent;

    iget-object v1, p0, Lcom/razorpay/RzpAssist;->$l$I1I11I1:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/razorpay/SmsAgent;->handleRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public final openKeyboard()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->$l$I1I11I1:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/RzpAssist$3;

    invoke-direct {v1, p0}, Lcom/razorpay/RzpAssist$3;-><init>(Lcom/razorpay/RzpAssist;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public paymentFlowEnd()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->$$_$I1l1_:Ljava/lang/String;

    const-string v1, "standalone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->postData()V

    .line 229
    :cond_0
    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/BaseConfig;->isOTPElfEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->_$_l_$1l$:Lcom/razorpay/SmsAgent;

    iget-object v1, p0, Lcom/razorpay/RzpAssist;->$l$I1I11I1:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/razorpay/SmsAgent;->removeSMSBroadcastReceiver(Landroid/app/Activity;)V

    .line 233
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->_$_l_$1l$:Lcom/razorpay/SmsAgent;

    invoke-virtual {v0, p0}, Lcom/razorpay/SmsAgent;->deregisterForCallbacks(Lcom/razorpay/SmsAgentInterface;)V

    return-void
.end method

.method public postSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 238
    iget-boolean v0, p0, Lcom/razorpay/RzpAssist;->$l_I$1:Z

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 243
    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    iput-object p1, p0, Lcom/razorpay/RzpAssist;->sender:Ljava/lang/String;

    .line 246
    iput-object p2, p0, Lcom/razorpay/RzpAssist;->message:Ljava/lang/String;

    .line 247
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/RzpAssist;->lastSms:Ljava/lang/String;

    .line 248
    const-string v0, "OTPElf.showOTP(\'%s\',\'%s\')"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/razorpay/RzpAssist;->l$1_I$l$(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 250
    const-string p2, "Exception"

    invoke-static {p2, p1}, Lcom/razorpay/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 311
    invoke-direct {p0}, Lcom/razorpay/RzpAssist;->_llI()V

    .line 312
    const-string v0, ""

    iput-object v0, p0, Lcom/razorpay/RzpAssist;->_llI:Ljava/lang/String;

    .line 313
    iput-object v0, p0, Lcom/razorpay/RzpAssist;->_l_1l__:Ljava/lang/String;

    const/4 v0, 0x0

    .line 314
    iput-boolean v0, p0, Lcom/razorpay/RzpAssist;->I1lII:Z

    return-void
.end method

.method setOTPEnabled(Z)V
    .locals 2

    .line 322
    iput-boolean p1, p0, Lcom/razorpay/RzpAssist;->__l1_:Z

    .line 323
    new-instance v0, Lcom/razorpay/AnalyticsProperty;

    sget-object v1, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v0, p1, v1}, Lcom/razorpay/AnalyticsProperty;-><init>(ZLcom/razorpay/AnalyticsProperty$Scope;)V

    const-string p1, "otp_autoreading_access"

    invoke-static {p1, v0}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    return-void
.end method

.method public setOtpElfPreferences(Lorg/json/JSONObject;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/razorpay/RzpAssist;->$lll$_lIl:Lorg/json/JSONObject;

    return-void
.end method

.method setPaymentData(Lorg/json/JSONObject;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/razorpay/RzpAssist;->__II$$:Lorg/json/JSONObject;

    return-void
.end method

.method setPaymentId(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/razorpay/RzpAssist;->__Il11I1l:Ljava/lang/String;

    return-void
.end method

.method setRzpAssistEnabled(Z)V
    .locals 0

    .line 327
    iput-boolean p1, p0, Lcom/razorpay/RzpAssist;->$l_I$1:Z

    return-void
.end method

.method public setSmsPermission(Z)V
    .locals 0

    .line 256
    invoke-virtual {p0, p1}, Lcom/razorpay/RzpAssist;->setOTPEnabled(Z)V

    return-void
.end method

.method public final setUseWideViewPort(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->$l$I1I11I1:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/RzpAssist$2;

    invoke-direct {v1, p0, p1}, Lcom/razorpay/RzpAssist$2;-><init>(Lcom/razorpay/RzpAssist;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toast(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/razorpay/RzpAssist;->$l$I1I11I1:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/RzpAssist$4;

    invoke-direct {v1, p0, p1}, Lcom/razorpay/RzpAssist$4;-><init>(Lcom/razorpay/RzpAssist;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final trackEvent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 377
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->JS_EVENT:Lcom/razorpay/AnalyticsEvent;

    .line 378
    invoke-virtual {v0, p1}, Lcom/razorpay/AnalyticsEvent;->setEventName(Ljava/lang/String;)V

    .line 379
    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 366
    :try_start_0
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->JS_EVENT:Lcom/razorpay/AnalyticsEvent;

    .line 367
    invoke-virtual {v0, p1}, Lcom/razorpay/AnalyticsEvent;->setEventName(Ljava/lang/String;)V

    .line 368
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-static {v0, p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 371
    const-string p2, "Error in tracking JS Event"

    invoke-static {p2, p1}, Lcom/razorpay/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
