.class Lcom/razorpay/$sS$$__s$S$;
.super Lcom/razorpay/BaseConfig;
.source "Config.java"


# static fields
.field static CONFIG_AUTH_KEY:Ljava/lang/String; = "EPl0bxz9OvsD5IylM1M28Mv2n3v9XBsr"

.field static CONFIG_VERSION:Ljava/lang/String; = "3.0.7"

.field private static final DEFAULT_APAY_DOMAINS:Lorg/json/JSONArray;

.field private static final INIT_LOCK:Ljava/lang/Object;

.field static IS_MAGIC_ENABLED:Z = true

.field static SDK_TYPE:Ljava/lang/String; = "custom"

.field static SDK_VERSION:Ljava/lang/String; = "3.10.13"

.field static SDK_VERSION_CODE:I = 0x7925

.field private static sConfig:Lcom/razorpay/$sS$$__s$S$; = null

.field private static sInitialized:Z = false

.field private static useDynamicConfigUrl:Z


# instance fields
.field private $S$S$s$__Ss:Ljava/lang/String;

.field private $S$_ss_:Lorg/json/JSONObject;

.field private $SSs_$S_$$s:Ljava/lang/String;

.field private $sS$$__s$S$:Z

.field private $s_$$s$_ss:Ljava/lang/String;

.field private $ss_$S_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private $sss$$s:Ljava/lang/String;

.field private SSsS$sss__s:Ljava/lang/String;

.field private S_SS$s:Ljava/lang/String;

.field private Ss$$S__:Ljava/lang/String;

.field private _SS$$$$s:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _Ssss$:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _SsssS:Ljava/lang/String;

.field private __$$__s_$:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private __S_s:Lorg/json/JSONObject;

.field private _sS$S_$$sss:Z

.field private s$SSss:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s$S_SsS$SS:Lorg/json/JSONObject;

.field private sS$$$ss_:Lorg/json/JSONObject;

.field private s_SSsSss:Lorg/json/JSONObject;

.field private ss__Ss$S$:Z


# direct methods
.method private $sS$$__s$S$(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "feature_flags.verbose_logging.enabled"

    invoke-static {v1, p1, v0}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/razorpay/$sS$$__s$S$;->ss__Ss$S$:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/razorpay/$sS$$__s$S$;->INIT_LOCK:Ljava/lang/Object;

    .line 141
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/razorpay/$sS$$__s$S$;->DEFAULT_APAY_DOMAINS:Lorg/json/JSONArray;

    .line 143
    const-string v1, "amazonpay.amazon.in"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 144
    const-string v1, "amazon.in"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/razorpay/BaseConfig;-><init>()V

    return-void
.end method

.method private _Ssss$(Lorg/json/JSONObject;)V
    .locals 3

    .line 149
    :try_start_0
    const-string v0, "apay_domains"

    sget-object v1, Lcom/razorpay/$sS$$__s$S$;->DEFAULT_APAY_DOMAINS:Lorg/json/JSONArray;

    invoke-static {v0, p1, v1}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->$ss_$S_:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 151
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/razorpay/$sS$$__s$S$;->$ss_$S_:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S2"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private __$$__s_$(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "static_rules.identify_network"

    invoke-static {v1, p1, v0}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->sS$$$ss_:Lorg/json/JSONObject;

    .line 209
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "static_rules.network_card_length"

    invoke-static {v1, p1, v0}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->s$S_SsS$SS:Lorg/json/JSONObject;

    .line 211
    const-string v0, "static_rules.logos.bank.base_url"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->_SsssS:Ljava/lang/String;

    .line 212
    const-string v0, "static_rules.logos.bank.extension"

    invoke-static {v0, p1, v1}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->S_SS$s:Ljava/lang/String;

    .line 214
    const-string v0, "static_rules.logos.upi.base_url"

    invoke-static {v0, p1, v1}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->$sss$$s:Ljava/lang/String;

    .line 215
    const-string v0, "static_rules.logos.upi.extension"

    invoke-static {v0, p1, v1}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->$SSs_$S_$$s:Ljava/lang/String;

    .line 217
    const-string v0, "static_rules.logos.wallet.base_url"

    invoke-static {v0, p1, v1}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->$s_$$s$_ss:Ljava/lang/String;

    .line 218
    const-string v0, "static_rules.logos.wallet.extension"

    invoke-static {v0, p1, v1}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->$S$S$s$__Ss:Ljava/lang/String;

    .line 220
    const-string v0, "static_rules.logos.wallet_sq.base_url"

    invoke-static {v0, p1, v1}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->SSsS$sss__s:Ljava/lang/String;

    .line 221
    const-string v0, "static_rules.logos.wallet_sq.extension"

    invoke-static {v0, p1, v1}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/razorpay/$sS$$__s$S$;->Ss$$S__:Ljava/lang/String;

    return-void
.end method

.method private __S_s(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 161
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 160
    const-string v1, "upi.isWhiteListingEnabled"

    invoke-static {v1, p1, v0}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/razorpay/$sS$$__s$S$;->$sS$$__s$S$:Z

    .line 163
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "upi.shortcodes"

    invoke-static {v1, p1, v0}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->__S_s:Lorg/json/JSONObject;

    .line 165
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "upi.intentAppCodes"

    invoke-static {v1, p1, v0}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->$S$_ss_:Lorg/json/JSONObject;

    .line 167
    iget-boolean v0, p0, Lcom/razorpay/$sS$$__s$S$;->$sS$$__s$S$:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 168
    const-string v0, "upi.whiteListedApps"

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 171
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/razorpay/$sS$$__s$S$;->_Ssss$:Ljava/util/HashSet;

    move v2, v1

    .line 172
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/razorpay/$sS$$__s$S$;->_Ssss$:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->s$SSss:Ljava/util/HashSet;

    goto :goto_2

    .line 179
    :cond_1
    const-string v0, "upi.blackListedApps"

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 182
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/razorpay/$sS$$__s$S$;->s$SSss:Ljava/util/HashSet;

    move v2, v1

    .line 183
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/razorpay/$sS$$__s$S$;->s$SSss:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 187
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->_Ssss$:Ljava/util/HashSet;

    .line 190
    :goto_2
    const-string v0, "upi.upiAppsPreferredOrder"

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 193
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcom/razorpay/$sS$$__s$S$;->_SS$$$$s:Ljava/util/LinkedHashSet;

    move v2, v1

    .line 194
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 195
    iget-object v3, p0, Lcom/razorpay/$sS$$__s$S$;->_SS$$$$s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 198
    :cond_3
    const-string v0, "upi.recurringAutoPaySupportedApps"

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    .line 201
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->__$$__s_$:Ljava/util/HashSet;

    .line 202
    :goto_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->__$$__s_$:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private static buildConfigUrl(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 283
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 284
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    const-string v0, "3.10.13"

    .line 288
    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 289
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "tenant"

    const-string v2, "android_customui"

    .line 290
    invoke-virtual {p0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "sdk_version"

    sget-object v2, Lcom/razorpay/$sS$$__s$S$;->SDK_VERSION:Ljava/lang/String;

    .line 291
    invoke-virtual {p0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "sdk_type"

    sget-object v2, Lcom/razorpay/$sS$$__s$S$;->SDK_TYPE:Ljava/lang/String;

    .line 292
    invoke-virtual {p0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    sget-boolean v1, Lcom/razorpay/$sS$$__s$S$;->IS_MAGIC_ENABLED:Z

    .line 293
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "magic_enabled"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    sget v1, Lcom/razorpay/$sS$$__s$S$;->SDK_VERSION_CODE:I

    .line 294
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version_code"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "app_version"

    .line 295
    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 296
    invoke-static {p1}, Lcom/razorpay/$sS$$__s$S$;->getCurrentConfigVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/$sS$$__s$S$;->getCurrentConfigVersionTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 297
    invoke-static {p0, p1, p2}, Lcom/razorpay/BaseConfig;->getFetchConfigBuilder(Landroid/net/Uri$Builder;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 298
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static ensureInitialized(Landroid/content/Context;)V
    .locals 2

    .line 91
    sget-boolean v0, Lcom/razorpay/$sS$$__s$S$;->sInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/razorpay/$sS$$__s$S$;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-boolean v1, Lcom/razorpay/$sS$$__s$S$;->sInitialized:Z

    if-eqz v1, :cond_1

    .line 96
    monitor-exit v0

    return-void

    .line 98
    :cond_1
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/razorpay/$sS$$__s$S$;->init(Landroid/content/Context;)V

    .line 99
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static fetchConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 256
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/$sS$$__s$S$;->isConfigEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    const-string v1, "AuthKey"

    sget-object v2, Lcom/razorpay/$sS$$__s$S$;->CONFIG_AUTH_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "Content-type"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "CurrentSettingVersion"

    invoke-static {p0}, Lcom/razorpay/$sS$$__s$S$;->getCurrentConfigVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {}, Lcom/razorpay/$sS$$__s$S$;->getInstance()Lcom/razorpay/$sS$$__s$S$;

    move-result-object v1

    iget-object v1, v1, Lcom/razorpay/$sS$$__s$S$;->s_SSsSss:Lorg/json/JSONObject;

    const/4 v2, 0x0

    .line 268
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 265
    const-string v3, "use_dynamic_config_url"

    invoke-static {v3, v1, v2}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/razorpay/$sS$$__s$S$;->useDynamicConfigUrl:Z

    if-eqz v1, :cond_1

    .line 271
    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/razorpay/GlobalUrlConfig;->getButlerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/razorpay/$sS$$__s$S$;->buildConfigUrl(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {p1, p1, v0, p0}, Lcom/razorpay/BaseConfig;->fetchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    goto :goto_0

    .line 274
    :cond_1
    const-string v1, "https://api.razorpay.com/v2/settings/sdk"

    invoke-static {v1, p0, p1}, Lcom/razorpay/$sS$$__s$S$;->buildConfigUrl(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    const-string v2, "https://butler.razorpay.com/v1/settings"

    invoke-static {v2, p0, p1}, Lcom/razorpay/$sS$$__s$S$;->buildConfigUrl(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-static {v1, p1, v0, p0}, Lcom/razorpay/BaseConfig;->fetchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private static getConfigJson(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1

    .line 249
    sget v0, Lcom/razorpay/customui/lib/R$raw;->rzp_config_customui:I

    invoke-static {p0, v0}, Lcom/razorpay/BaseConfig;->getConfig(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static getCurrentConfigVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 302
    invoke-static {p0}, Lcom/razorpay/BaseConfig;->getBaseCurrentConfigVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 304
    sget-object p0, Lcom/razorpay/$sS$$__s$S$;->CONFIG_VERSION:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static getInstance()Lcom/razorpay/$sS$$__s$S$;
    .locals 1

    .line 73
    sget-object v0, Lcom/razorpay/$sS$$__s$S$;->sConfig:Lcom/razorpay/$sS$$__s$S$;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/razorpay/$sS$$__s$S$;

    invoke-direct {v0}, Lcom/razorpay/$sS$$__s$S$;-><init>()V

    sput-object v0, Lcom/razorpay/$sS$$__s$S$;->sConfig:Lcom/razorpay/$sS$$__s$S$;

    .line 75
    invoke-static {v0}, Lcom/razorpay/CoreConfig;->setInstance(Lcom/razorpay/BaseConfig;)V

    .line 77
    :cond_0
    sget-object v0, Lcom/razorpay/$sS$$__s$S$;->sConfig:Lcom/razorpay/$sS$$__s$S$;

    return-object v0
.end method

.method private s$SSss(Lorg/json/JSONObject;)V
    .locals 3

    .line 133
    :try_start_0
    const-string v0, "one_time_otp.enabled"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/razorpay/$sS$$__s$S$;->_sS$S_$$sss:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S2"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method getAmazonDomainUrlList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->$ss_$S_:Ljava/util/ArrayList;

    return-object v0
.end method

.method getAppLogoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 343
    :try_start_0
    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/GlobalUrlConfig;->getCdnUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "."

    if-eqz v0, :cond_0

    .line 344
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/razorpay/$sS$$__s$S$;->$sss$$s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/razorpay/$sS$$__s$S$;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/razorpay/$sS$$__s$S$;->$SSs_$S_$$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/GlobalUrlConfig;->getCdnUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/app/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/razorpay/$sS$$__s$S$;->__S_s:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/razorpay/$sS$$__s$S$;->$SSs_$S_$$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 350
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App logo not found;"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "S2"

    invoke-static {v0, v1, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string p1, ""

    return-object p1
.end method

.method getBankLogoBaseUrl()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->_SsssS:Ljava/lang/String;

    return-object v0
.end method

.method getBankLogoExtension()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->S_SS$s:Ljava/lang/String;

    return-object v0
.end method

.method getCardNetworkTypeRegexJson()Lorg/json/JSONObject;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->sS$$$ss_:Lorg/json/JSONObject;

    return-object v0
.end method

.method getIntentAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->$S$_ss_:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 359
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Intent App name not found;"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "S2"

    invoke-static {v0, v1, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string p1, ""

    return-object p1
.end method

.method getIsOtpReadEnabled()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/razorpay/$sS$$__s$S$;->_sS$S_$$sss:Z

    return v0
.end method

.method getNetworkCardLengthJson()Lorg/json/JSONObject;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->s$S_SsS$SS:Lorg/json/JSONObject;

    return-object v0
.end method

.method getUpiAppsPreferredOrder()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->_SS$$$$s:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method getUpiAutoPaySupportedApps()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->__$$__s_$:Ljava/util/HashSet;

    return-object v0
.end method

.method getUpiBlackListedApps()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->s$SSss:Ljava/util/HashSet;

    return-object v0
.end method

.method getUpiShortcodes()Lorg/json/JSONObject;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->__S_s:Lorg/json/JSONObject;

    return-object v0
.end method

.method getUpiWhiteListedApps()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->_Ssss$:Ljava/util/HashSet;

    return-object v0
.end method

.method getWalletLogoBaseUrl()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->$s_$$s$_ss:Ljava/lang/String;

    return-object v0
.end method

.method getWalletLogoExtension()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->$S$S$s$__Ss:Ljava/lang/String;

    return-object v0
.end method

.method getWalletSqLogoBaseUrl()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->SSsS$sss__s:Ljava/lang/String;

    return-object v0
.end method

.method getWalletSqLogoExtension()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/razorpay/$sS$$__s$S$;->Ss$$S__:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 85
    invoke-static {p1}, Lcom/razorpay/$sS$$__s$S$;->getConfigJson(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/razorpay/$sS$$__s$S$;->setConfig(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 87
    sput-boolean p1, Lcom/razorpay/$sS$$__s$S$;->sInitialized:Z

    return-void
.end method

.method isUpiWhiteListingEnabled()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/razorpay/$sS$$__s$S$;->$sS$$__s$S$:Z

    return v0
.end method

.method public isVerboseLoggingEnabled()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/razorpay/$sS$$__s$S$;->ss__Ss$S$:Z

    return v0
.end method

.method public setConfig(Lorg/json/JSONObject;)V
    .locals 4

    .line 110
    :try_start_0
    invoke-direct {p0, p1}, Lcom/razorpay/$sS$$__s$S$;->__S_s(Lorg/json/JSONObject;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/razorpay/$sS$$__s$S$;->__$$__s_$(Lorg/json/JSONObject;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/razorpay/$sS$$__s$S$;->s$SSss(Lorg/json/JSONObject;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/razorpay/$sS$$__s$S$;->_Ssss$(Lorg/json/JSONObject;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/razorpay/$sS$$__s$S$;->$sS$$__s$S$(Lorg/json/JSONObject;)V

    .line 115
    iput-object p1, p0, Lcom/razorpay/$sS$$__s$S$;->s_SSsSss:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S0"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :goto_0
    invoke-super {p0, p1}, Lcom/razorpay/BaseConfig;->setConfig(Lorg/json/JSONObject;)V

    return-void
.end method
