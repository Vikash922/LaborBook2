.class public Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
.super Ljava/lang/Object;
.source "TcSdkOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buttonColor:I

.field private buttonTextColor:I

.field private final callback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

.field private final clientId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private ctaTextOption:I

.field private headingOption:I

.field private loginTextPrefixOption:I

.field private sdkFlag:I

.field private titleOption:I


# direct methods
.method static bridge synthetic -$$Nest$fgetbuttonColor(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->buttonColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbuttonTextColor(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->buttonTextColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcallback(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;
    .locals 0

    iget-object p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->callback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclientId(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetctaTextOption(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->ctaTextOption:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetheadingOption(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->headingOption:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetloginTextPrefixOption(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->loginTextPrefixOption:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsdkFlag(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettitleOption(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->titleOption:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->context:Landroid/content/Context;

    .line 223
    iput-object p2, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->callback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    .line 224
    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/UtilsV2;->getAppInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/UtilsV2;->getClientId(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->clientId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;

    invoke-direct {v0, p0}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;-><init>(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)V

    return-object v0

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Add client id in your manifest"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buttonColor(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 0

    .line 249
    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->buttonColor:I

    return-object p0
.end method

.method public buttonShapeOptions(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 1

    .line 259
    iget v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    and-int/lit16 v0, v0, -0x181

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    return-object p0
.end method

.method public buttonTextColor(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 0

    .line 254
    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->buttonTextColor:I

    return-object p0
.end method

.method public consentHeadingOption(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 0

    .line 244
    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->headingOption:I

    return-object p0
.end method

.method public consentTitleOption(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 0

    .line 239
    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->titleOption:I

    return-object p0
.end method

.method public ctaText(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 0

    .line 269
    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->ctaTextOption:I

    return-object p0
.end method

.method public dismissOptions(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 1

    .line 274
    iget v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    and-int/lit16 v0, v0, -0x601

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    return-object p0
.end method

.method public footerType(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 1

    .line 228
    iget v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    and-int/lit8 v0, v0, -0x20

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    return-object p0
.end method

.method public loginTextPrefix(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 0

    .line 264
    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->loginTextPrefixOption:I

    return-object p0
.end method

.method public sdkOptions(I)Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;
    .locals 1

    .line 234
    iget v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    and-int/lit8 v0, v0, -0x61

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->sdkFlag:I

    return-object p0
.end method
