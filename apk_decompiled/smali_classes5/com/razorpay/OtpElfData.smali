.class Lcom/razorpay/OtpElfData;
.super Ljava/lang/Object;
.source "OtpElfData.java"


# static fields
.field public static versionKey:Ljava/lang/String; = "otpelf_version"


# instance fields
.field activity:Landroid/app/Activity;

.field private l$1_I$l$:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/razorpay/OtpElfData;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/razorpay/OtpElfData;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/razorpay/OtpElfData;->l$1_I$l$(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/razorpay/OtpElfData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/razorpay/OtpElfData;->l$1_I$l$:Ljava/lang/String;

    return-object p1
.end method

.method private l$1_I$l$(Ljava/lang/String;)V
    .locals 2

    .line 55
    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/GlobalUrlConfig;->getOtpelfJsUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/razorpay/OtpElfData$2;

    invoke-direct {v1, p0, p1}, Lcom/razorpay/OtpElfData$2;-><init>(Lcom/razorpay/OtpElfData;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/razorpay/Owl;->get(Ljava/lang/String;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method checkForUpdates()V
    .locals 2

    .line 26
    invoke-static {}, Lcom/razorpay/GlobalUrlConfig;->instance()Lcom/razorpay/GlobalUrlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/GlobalUrlConfig;->getOtpelfVersionUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/razorpay/OtpElfData$1;

    invoke-direct {v1, p0}, Lcom/razorpay/OtpElfData$1;-><init>(Lcom/razorpay/OtpElfData;)V

    invoke-static {v0, v1}, Lcom/razorpay/Owl;->get(Ljava/lang/String;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    return-void
.end method

.method getOtpElfJs()Ljava/lang/String;
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/razorpay/OtpElfData;->l$1_I$l$:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/razorpay/OtpElfData;->activity:Landroid/app/Activity;

    sget-object v1, Lcom/razorpay/OtpElfData;->versionKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/razorpay/BaseUtils;->getLocalVersion(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "{\n  \"hash\" : \"c4171614448e750850bd4daca2c7e8d1\",\n  \"magic_hash\": \"e1ff492228196aa72f4892db1e05624e\"\n}\n"

    sget-object v2, Lcom/razorpay/OtpElfData;->versionKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/razorpay/BaseUtils;->getVersionFromJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/razorpay/OtpElfData;->activity:Landroid/app/Activity;

    sget v1, Lcom/razorpay/R$raw;->otpelf:I

    invoke-static {v0, v1}, Lcom/razorpay/CoreConfig;->getOtpelfJsFromFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/OtpElfData;->l$1_I$l$:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/razorpay/OtpElfData;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/razorpay/CoreConfig;->getInstance()Lcom/razorpay/BaseConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/razorpay/BaseConfig;->getOTPElfJsFileName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/razorpay/OtpElfData;->versionKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/razorpay/BaseUtils;->getFileFromInternal(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/OtpElfData;->l$1_I$l$:Ljava/lang/String;

    .line 79
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/razorpay/OtpElfData;->activity:Landroid/app/Activity;

    sget v1, Lcom/razorpay/R$raw;->otpelf:I

    invoke-static {v0, v1}, Lcom/razorpay/CoreConfig;->getOtpelfJsFromFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/OtpElfData;->l$1_I$l$:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    iget-object v0, p0, Lcom/razorpay/OtpElfData;->activity:Landroid/app/Activity;

    sget v1, Lcom/razorpay/R$raw;->otpelf:I

    invoke-static {v0, v1}, Lcom/razorpay/CoreConfig;->getOtpelfJsFromFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/OtpElfData;->l$1_I$l$:Ljava/lang/String;

    .line 87
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/razorpay/OtpElfData;->l$1_I$l$:Ljava/lang/String;

    return-object v0
.end method
