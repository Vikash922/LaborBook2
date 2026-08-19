.class public Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;
.super Ljava/lang/Object;
.source "TruecallerSdkScope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buttonColor:I

.field private buttonTextColor:I

.field private final callback:Lcom/truecaller/android/sdk/legacy/ITrueCallback;

.field private final context:Landroid/content/Context;

.field private ctaTextPrefixOption:I

.field private loginTextPrefixOption:I

.field private loginTextSuffixOption:I

.field private final partnerKey:Ljava/lang/String;

.field private privacyPolicyUrl:Ljava/lang/String;

.field private sdkFlag:I

.field private termsOfServiceUrl:Ljava/lang/String;

.field private titleOption:I


# direct methods
.method static bridge synthetic -$$Nest$fgetbuttonColor(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)I
    .locals 0

    iget p0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->buttonColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbuttonTextColor(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)I
    .locals 0

    iget p0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->buttonTextColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcallback(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)Lcom/truecaller/android/sdk/legacy/ITrueCallback;
    .locals 0

    iget-object p0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->callback:Lcom/truecaller/android/sdk/legacy/ITrueCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetctaTextPrefixOption(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)I
    .locals 0

    iget p0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->ctaTextPrefixOption:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetloginTextPrefixOption(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)I
    .locals 0

    iget p0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->loginTextPrefixOption:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetloginTextSuffixOption(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)I
    .locals 0

    iget p0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->loginTextSuffixOption:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpartnerKey(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->partnerKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprivacyPolicyUrl(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->privacyPolicyUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsdkFlag(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)I
    .locals 0

    iget p0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->sdkFlag:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettermsOfServiceUrl(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->termsOfServiceUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitleOption(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)I
    .locals 0

    iget p0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->titleOption:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/android/sdk/legacy/ITrueCallback;)V
    .locals 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->context:Landroid/content/Context;

    .line 229
    iput-object p2, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->callback:Lcom/truecaller/android/sdk/legacy/ITrueCallback;

    .line 230
    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/Utils;->getAppInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/Utils;->getPartnerKey(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->partnerKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->partnerKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope;

    invoke-direct {v0, p0}, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope;-><init>(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)V

    return-object v0

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Add partner key in your manifest"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buttonColor(I)Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;
    .locals 0

    .line 255
    iput p1, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->buttonColor:I

    return-object p0
.end method

.method public buttonShapeOptions(I)Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;
    .locals 1

    .line 275
    iget v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->sdkFlag:I

    and-int/lit16 v0, v0, -0xc01

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->sdkFlag:I

    return-object p0
.end method

.method public buttonTextColor(I)Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;
    .locals 0

    .line 260
    iput p1, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->buttonTextColor:I

    return-object p0
.end method

.method public consentMode(I)Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;
    .locals 1

    .line 240
    iget v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->sdkFlag:I

    and-int/lit16 v0, v0, -0x8d

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->sdkFlag:I

    return-object p0
.end method

.method public consentTitleOption(I)Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;
    .locals 0

    .line 250
    iput p1, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->titleOption:I

    return-object p0
.end method

.method public ctaTextPrefix(I)Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;
    .locals 0

    .line 290
    iput p1, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->ctaTextPrefixOption:I

    return-object p0
.end method

.method public footerType(I)Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;
    .locals 1

    .line 234
    iget v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->sdkFlag:I

    and-int/lit16 v0, v0, -0x1344

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->sdkFlag:I

    return-object p0
.end method

.method public loginTextPrefix(I)Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;
    .locals 0

    .line 280
    iput p1, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->loginTextPrefixOption:I

    return-object p0
.end method

.method public loginTextSuffix(I)Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;
    .locals 0

    .line 285
    iput p1, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->loginTextSuffixOption:I

    return-object p0
.end method

.method public privacyPolicyUrl(Ljava/lang/String;)Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->privacyPolicyUrl:Ljava/lang/String;

    return-object p0
.end method

.method public sdkOptions(I)Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;
    .locals 1

    .line 245
    iget v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->sdkFlag:I

    and-int/lit8 v0, v0, -0x31

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->sdkFlag:I

    return-object p0
.end method

.method public termsOfServiceUrl(Ljava/lang/String;)Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->termsOfServiceUrl:Ljava/lang/String;

    return-object p0
.end method
