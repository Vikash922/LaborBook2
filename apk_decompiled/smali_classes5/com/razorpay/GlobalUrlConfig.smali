.class public final Lcom/razorpay/GlobalUrlConfig;
.super Ljava/lang/Object;
.source "GlobalUrlConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/razorpay/GlobalUrlConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0010\u001a\u00020\u0006J\u0006\u0010\u0011\u001a\u00020\u0006J\u0006\u0010\u0012\u001a\u00020\u0006J\u0006\u0010\u0013\u001a\u00020\u0006J\u0006\u0010\u0014\u001a\u00020\u0006J\u0006\u0010\u0015\u001a\u00020\u0006R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008R\u0011\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/razorpay/GlobalUrlConfig;",
        "",
        "urlConfig",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "baseCdn",
        "",
        "getBaseCdn",
        "()Ljava/lang/String;",
        "baseUrl",
        "getBaseUrl",
        "cdnUrl",
        "getCdnUrl",
        "staticCdn",
        "getStaticCdn",
        "trackUrl",
        "getButlerUrl",
        "getCheckoutUrl",
        "getOtpelfJsUrl",
        "getOtpelfVersionUrl",
        "getPaymentsEndpoint",
        "getTrackUrl",
        "Companion",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/razorpay/GlobalUrlConfig$Companion;

.field private static _1__:Lcom/razorpay/GlobalUrlConfig;


# instance fields
.field private final I__1l:Ljava/lang/String;

.field private final __l1_:Ljava/lang/String;

.field private final _l_1l__:Ljava/lang/String;

.field private final _llI:Ljava/lang/String;

.field private final l$1_I$l$:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/razorpay/GlobalUrlConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/razorpay/GlobalUrlConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/razorpay/GlobalUrlConfig;->Companion:Lcom/razorpay/GlobalUrlConfig$Companion;

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "frame"

    const-string v1, "https://api.razorpay.com"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "urlConfig.optString(\"fra\u2026\", BaseConstants.RZP_URL)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->l$1_I$l$:Ljava/lang/String;

    .line 33
    const-string v0, "baseCdn"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "urlConfig.optString(\"baseCdn\", \"\")"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->__l1_:Ljava/lang/String;

    .line 34
    const-string v0, "staticCdn"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "urlConfig.optString(\"staticCdn\", \"\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->_llI:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/BaseConfig;->getLumberjackEndpoint()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "https://lumberjack.razorpay.com/v1/track"

    .line 35
    :cond_0
    const-string v1, "trackUrl"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "urlConfig.optString(\n   \u2026LUMBERJACK_ENDPOINT\n    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->_l_1l__:Ljava/lang/String;

    .line 39
    const-string v0, "cdnUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "urlConfig.optString(\"cdnUrl\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/razorpay/GlobalUrlConfig;->I__1l:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONObject;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/razorpay/GlobalUrlConfig;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final synthetic access$getGlobalUrlConfig$cp()Lcom/razorpay/GlobalUrlConfig;
    .locals 1

    .line 5
    sget-object v0, Lcom/razorpay/GlobalUrlConfig;->_1__:Lcom/razorpay/GlobalUrlConfig;

    return-object v0
.end method

.method public static final synthetic access$setGlobalUrlConfig$cp(Lcom/razorpay/GlobalUrlConfig;)V
    .locals 0

    .line 5
    sput-object p0, Lcom/razorpay/GlobalUrlConfig;->_1__:Lcom/razorpay/GlobalUrlConfig;

    return-void
.end method

.method public static final initiate(Lorg/json/JSONObject;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/razorpay/GlobalUrlConfig;->Companion:Lcom/razorpay/GlobalUrlConfig$Companion;

    invoke-virtual {v0, p0}, Lcom/razorpay/GlobalUrlConfig$Companion;->initiate(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final instance()Lcom/razorpay/GlobalUrlConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/razorpay/GlobalUrlConfig;->Companion:Lcom/razorpay/GlobalUrlConfig$Companion;

    invoke-virtual {v0}, Lcom/razorpay/GlobalUrlConfig$Companion;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getBaseCdn()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->__l1_:Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->l$1_I$l$:Ljava/lang/String;

    return-object v0
.end method

.method public final getButlerUrl()Ljava/lang/String;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->l$1_I$l$:Ljava/lang/String;

    const-string v1, "https://api.razorpay.com"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/BaseConfig;->getConfigEndpoint()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInstance().configEndpoint"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/razorpay/GlobalUrlConfig;->l$1_I$l$:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/butler/v1/settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCdnUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->I__1l:Ljava/lang/String;

    return-object v0
.end method

.method public final getCheckoutUrl()Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->l$1_I$l$:Ljava/lang/String;

    const-string v1, "https://api.razorpay.com"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/razorpay/GlobalUrlConfig;->l$1_I$l$:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v1/checkout/public"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/razorpay/GlobalUrlConfig;->l$1_I$l$:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?baseCdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/razorpay/GlobalUrlConfig;->__l1_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&staticCdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/razorpay/GlobalUrlConfig;->_llI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&trackUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/razorpay/GlobalUrlConfig;->_l_1l__:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&cdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/razorpay/GlobalUrlConfig;->I__1l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getOtpelfJsUrl()Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->I__1l:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/BaseConfig;->getOtpElfJsUrl()Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v1, "{\n            CoreConfig\u2026e().otpElfJsUrl\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/razorpay/GlobalUrlConfig;->I__1l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "static/otpelf2/otpelf.js"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getOtpelfVersionUrl()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->I__1l:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/BaseConfig;->getOtpElfVersionUrl()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "{\n            CoreConfig\u2026tpElfVersionUrl\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/razorpay/GlobalUrlConfig;->I__1l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "static/otpelf2/version.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getPaymentsEndpoint()Ljava/lang/String;
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->l$1_I$l$:Ljava/lang/String;

    const-string v1, "https://api.razorpay.com"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "https://api.razorpay.com/v1/payments/"

    return-object v0

    .line 88
    :cond_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/razorpay/GlobalUrlConfig;->l$1_I$l$:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v1/payments/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStaticCdn()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->_llI:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackUrl()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->_l_1l__:Ljava/lang/String;

    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/razorpay/BaseConfig;->getLumberjackEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/razorpay/GlobalUrlConfig;->_l_1l__:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/razorpay/GlobalUrlConfig;->_l_1l__:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "v1/track"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
