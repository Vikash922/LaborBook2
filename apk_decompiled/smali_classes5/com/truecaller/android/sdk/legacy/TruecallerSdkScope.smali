.class public Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope;
.super Ljava/lang/Object;
.source "TruecallerSdkScope.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;,
        Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$CTATextPrefixOptions;,
        Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$LoginTextSuffixOptions;,
        Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$LoginTextPrefixOptions;,
        Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$ConsentTitleOptions;
    }
.end annotation


# static fields
.field public static final BUTTON_SHAPE_RECTANGLE:I = 0x800

.field public static final BUTTON_SHAPE_ROUNDED:I = 0x400

.field public static final CONSENT_MODE_BOTTOMSHEET:I = 0x80
    .annotation runtime Lcom/truecaller/android/sdk/common/annotations/SinceTruecaller;
        value = 10.68
    .end annotation
.end field

.field public static final CONSENT_MODE_FULLSCREEN:I = 0x8

.field public static final CONSENT_MODE_POPUP:I = 0x4

.field public static final CTA_TEXT_PREFIX_CONTINUE_WITH:I = 0x1

.field public static final CTA_TEXT_PREFIX_PROCEED_WITH:I = 0x2

.field public static final CTA_TEXT_PREFIX_USE:I = 0x0

.field public static final FOOTER_TYPE_ANOTHER_METHOD:I = 0x100

.field public static final FOOTER_TYPE_CONTINUE:I = 0x2

.field public static final FOOTER_TYPE_LATER:I = 0x1000

.field public static final FOOTER_TYPE_MANUALLY:I = 0x200

.field public static final FOOTER_TYPE_NONE:I = 0x40
    .annotation runtime Lcom/truecaller/android/sdk/common/annotations/SinceTruecaller;
        value = 10.38
    .end annotation
.end field

.field public static final FOOTER_TYPE_SKIP:I = 0x1

.field public static final LOGIN_TEXT_PREFIX_FOR_NEW_UPDATES:I = 0xc

.field public static final LOGIN_TEXT_PREFIX_TO_CHECKOUT:I = 0x4

.field public static final LOGIN_TEXT_PREFIX_TO_COMPLETE_YOUR_BOOKING:I = 0x5

.field public static final LOGIN_TEXT_PREFIX_TO_COMPLETE_YOUR_PURCHASE:I = 0x3

.field public static final LOGIN_TEXT_PREFIX_TO_CONTINUE:I = 0x1

.field public static final LOGIN_TEXT_PREFIX_TO_CONTINUE_READING:I = 0xa

.field public static final LOGIN_TEXT_PREFIX_TO_CONTINUE_WITH_YOUR_BOOKING:I = 0x7

.field public static final LOGIN_TEXT_PREFIX_TO_GET_DETAILS:I = 0x8

.field public static final LOGIN_TEXT_PREFIX_TO_GET_STARTED:I = 0x0

.field public static final LOGIN_TEXT_PREFIX_TO_GET_UPDATES:I = 0xd

.field public static final LOGIN_TEXT_PREFIX_TO_PLACE_ORDER:I = 0x2

.field public static final LOGIN_TEXT_PREFIX_TO_PROCEED:I = 0xb

.field public static final LOGIN_TEXT_PREFIX_TO_PROCEED_WITH_YOUR_BOOKING:I = 0x6

.field public static final LOGIN_TEXT_PREFIX_TO_SUBSCRIBE:I = 0xe

.field public static final LOGIN_TEXT_PREFIX_TO_SUBSCRIBE_AND_GET_UPDATES:I = 0xf

.field public static final LOGIN_TEXT_PREFIX_TO_VIEW_MORE:I = 0x9

.field public static final LOGIN_TEXT_SUFFIX_PLEASE_LOGIN:I = 0x1

.field public static final LOGIN_TEXT_SUFFIX_PLEASE_LOGIN_SIGNUP:I = 0x3

.field public static final LOGIN_TEXT_SUFFIX_PLEASE_REGISTER:I = 0x4

.field public static final LOGIN_TEXT_SUFFIX_PLEASE_SIGNUP:I = 0x2

.field public static final LOGIN_TEXT_SUFFIX_PLEASE_SIGN_IN:I = 0x5

.field public static final LOGIN_TEXT_SUFFIX_PLEASE_VERIFY_MOBILE_NO:I = 0x0

.field public static final SDK_CONSENT_TITLE_GET_STARTED:I = 0x5

.field public static final SDK_CONSENT_TITLE_LOG_IN:I = 0x0

.field public static final SDK_CONSENT_TITLE_REGISTER:I = 0x4

.field public static final SDK_CONSENT_TITLE_SIGN_IN:I = 0x2

.field public static final SDK_CONSENT_TITLE_SIGN_UP:I = 0x1

.field public static final SDK_CONSENT_TITLE_VERIFY:I = 0x3

.field public static final SDK_OPTION_WITHOUT_OTP:I = 0x10

.field public static final SDK_OPTION_WITH_OTP:I = 0x20


# instance fields
.field final callback:Lcom/truecaller/android/sdk/legacy/ITrueCallback;

.field final consentTitleOption:I

.field final context:Landroid/content/Context;

.field final customDataBundle:Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;

.field final partnerKey:Ljava/lang/String;

.field final sdkFlag:I


# direct methods
.method public constructor <init>(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)V
    .locals 9

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->-$$Nest$fgetcontext(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope;->context:Landroid/content/Context;

    .line 186
    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->-$$Nest$fgetpartnerKey(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope;->partnerKey:Ljava/lang/String;

    .line 187
    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->-$$Nest$fgetsdkFlag(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope;->sdkFlag:I

    .line 188
    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->-$$Nest$fgetcallback(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)Lcom/truecaller/android/sdk/legacy/ITrueCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope;->callback:Lcom/truecaller/android/sdk/legacy/ITrueCallback;

    .line 189
    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->-$$Nest$fgettitleOption(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope;->consentTitleOption:I

    .line 190
    new-instance v0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;

    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->-$$Nest$fgetbuttonColor(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)I

    move-result v2

    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->-$$Nest$fgetbuttonTextColor(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)I

    move-result v3

    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->-$$Nest$fgetprivacyPolicyUrl(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->-$$Nest$fgettermsOfServiceUrl(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->-$$Nest$fgetctaTextPrefixOption(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)I

    move-result v6

    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->-$$Nest$fgetloginTextPrefixOption(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)I

    move-result v7

    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;->-$$Nest$fgetloginTextSuffixOption(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope$Builder;)I

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;-><init>(IILjava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope;->customDataBundle:Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;

    return-void
.end method
