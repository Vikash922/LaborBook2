.class Lcom/razorpay/SharedPreferenceUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# static fields
.field private static $I__I:Landroid/content/SharedPreferences; = null

.field private static $l$I1I11I1:Landroid/content/SharedPreferences$Editor; = null

.field private static final I__1l:Ljava/lang/String; = "iv"

.field private static final _1__:Ljava/lang/String; = "sdk_version"

.field private static final __l1_:Ljava/lang/String; = "rzp_preference_private"

.field private static final _l_1l__:Ljava/lang/String; = "data"

.field private static final _llI:Ljava/lang/String; = "rzp_preferences_storage_bridge"

.field private static final l$1_I$l$:Ljava/lang/String; = "rzp_preference_public"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPrivateEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 50
    sget-object v0, Lcom/razorpay/SharedPreferenceUtil;->$l$I1I11I1:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 51
    invoke-static {p0}, Lcom/razorpay/SharedPreferenceUtil;->getPrivatePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sput-object p0, Lcom/razorpay/SharedPreferenceUtil;->$l$I1I11I1:Landroid/content/SharedPreferences$Editor;

    .line 53
    :cond_0
    sget-object p0, Lcom/razorpay/SharedPreferenceUtil;->$l$I1I11I1:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static getPrivatePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 37
    sget-object v0, Lcom/razorpay/SharedPreferenceUtil;->$I__I:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 38
    const-string v0, "rzp_preference_private"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/razorpay/SharedPreferenceUtil;->$I__I:Landroid/content/SharedPreferences;

    .line 40
    :cond_0
    sget-object p0, Lcom/razorpay/SharedPreferenceUtil;->$I__I:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static getProtectedValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 118
    :try_start_0
    invoke-static {p0, p1}, Lcom/razorpay/SharedPreferenceUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 122
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    new-instance p0, Lcom/razorpay/CryptLib;

    invoke-direct {p0}, Lcom/razorpay/CryptLib;-><init>()V

    if-eqz p2, :cond_1

    .line 124
    const-string v1, "sdk_version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v0

    .line 127
    :cond_1
    const-string p2, "data"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "06227db410f8778f4c885fa3714cd177"

    const-string v2, "iv"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, v1, p1}, Lcom/razorpay/CryptLib;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1"

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string p1, "Unable to decrypt value"

    invoke-static {p1, p0}, Lcom/razorpay/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static getPublicEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 77
    invoke-static {p0}, Lcom/razorpay/SharedPreferenceUtil;->getPublicPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method static getPublicPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5

    .line 63
    const-string v0, "rzp_preference_public"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S0"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static getStorageBridgeEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/razorpay/SharedPreferenceUtil;->getStorageBridgePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method static getStorageBridgePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 85
    const-string v0, "rzp_preferences_storage_bridge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 165
    invoke-static {p0}, Lcom/razorpay/SharedPreferenceUtil;->getPrivatePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    .line 166
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static handleSdkUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 93
    const-string v0, "rzp_config_version"

    const-string v1, "rzp_config_json"

    const-string v2, "sdk_version"

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v2}, Lcom/razorpay/SharedPreferenceUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    invoke-static {p0, v1, v3}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p0, v0, v3}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p0, v2, p1}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    invoke-static {p0, v1, v3}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p0, v0, v3}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {p0, v2, p1}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static removeValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 176
    invoke-static {p0}, Lcom/razorpay/SharedPreferenceUtil;->getPrivateEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 177
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static setProtectedValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    .line 145
    :try_start_0
    invoke-static {p0, p1}, Lcom/razorpay/SharedPreferenceUtil;->removeValue(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_0
    invoke-static {}, Lcom/razorpay/BaseUtils;->getRandomString()Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/razorpay/CryptLib;

    invoke-direct {v1}, Lcom/razorpay/CryptLib;-><init>()V

    .line 150
    const-string v2, "06227db410f8778f4c885fa3714cd177"

    invoke-virtual {v1, p2, v2, v0}, Lcom/razorpay/CryptLib;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 151
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 152
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string p2, "iv"

    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1

    .line 155
    const-string p2, "sdk_version"

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1"

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string p1, "Unable to encrypt value"

    invoke-static {p1, p0}, Lcom/razorpay/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 170
    invoke-static {p0}, Lcom/razorpay/SharedPreferenceUtil;->getPrivateEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 171
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
