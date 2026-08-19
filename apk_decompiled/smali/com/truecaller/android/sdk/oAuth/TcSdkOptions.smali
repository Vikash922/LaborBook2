.class public Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;
.super Ljava/lang/Object;
.source "TcSdkOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;,
        Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$DismissOptions;,
        Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$CTATextOptions;,
        Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$LoginTextPrefixOptions;,
        Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$ConsentHeadingOptions;,
        Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$ConsentTitleOptions;,
        Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$SdkOptions;,
        Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$FooterType;
    }
.end annotation


# static fields
.field public static final BUTTON_SHAPE_RECTANGLE:I = 0x100

.field public static final BUTTON_SHAPE_ROUNDED:I = 0x80

.field public static final CTA_TEXT_ACCEPT:I = 0x2

.field public static final CTA_TEXT_CONFIRM:I = 0x3

.field public static final CTA_TEXT_CONTINUE:I = 0x1

.field public static final CTA_TEXT_CONTINUE_WITH:I = 0x5

.field public static final CTA_TEXT_PROCEED:I = 0x0

.field public static final CTA_TEXT_PROCEED_WITH:I = 0x6

.field public static final CTA_TEXT_USE:I = 0x4

.field public static final DISMISS_OPTION_CROSS_BUTTON:I = 0x400

.field public static final DISMISS_OPTION_SECONDARY_CTA_BORDER:I = 0x200

.field public static final FOOTER_TYPE_ANOTHER_METHOD:I = 0x4

.field public static final FOOTER_TYPE_ANOTHER_MOBILE_NO:I = 0x2

.field public static final FOOTER_TYPE_LATER:I = 0x10

.field public static final FOOTER_TYPE_MANUALLY:I = 0x8

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

.field public static final OPTION_VERIFY_ALL_USERS:I = 0x40

.field public static final OPTION_VERIFY_ONLY_TC_USERS:I = 0x20

.field public static final SDK_CONSENT_HEADING_CHECKOUT_WITH:I = 0x10

.field public static final SDK_CONSENT_HEADING_COMPLETE_BOOKING_WITH:I = 0xf

.field public static final SDK_CONSENT_HEADING_COMPLETE_ORDER_WITH:I = 0xd

.field public static final SDK_CONSENT_HEADING_CONTINUE_READING_ON:I = 0x16

.field public static final SDK_CONSENT_HEADING_CONTINUE_WITH:I = 0xc

.field public static final SDK_CONSENT_HEADING_GET_NEW_UPDATES_FROM:I = 0x17

.field public static final SDK_CONSENT_HEADING_GET_STARTED_WITH:I = 0x5

.field public static final SDK_CONSENT_HEADING_GET_UPDATES_FROM:I = 0x15

.field public static final SDK_CONSENT_HEADING_LOGIN_SIGNUP_WITH:I = 0x18

.field public static final SDK_CONSENT_HEADING_LOGIN_TO_WITH_ONE_TAP:I = 0x13

.field public static final SDK_CONSENT_HEADING_LOG_IN_TO:I = 0x0

.field public static final SDK_CONSENT_HEADING_MANAGE_DETAILS_WITH:I = 0x11

.field public static final SDK_CONSENT_HEADING_MANAGE_YOUR_DETAILS_WITH:I = 0x12

.field public static final SDK_CONSENT_HEADING_PLACE_ORDER_WITH:I = 0xe

.field public static final SDK_CONSENT_HEADING_PROCEED_WITH:I = 0x6

.field public static final SDK_CONSENT_HEADING_REGISTER_WITH:I = 0x4

.field public static final SDK_CONSENT_HEADING_SIGN_IN_TO:I = 0x2

.field public static final SDK_CONSENT_HEADING_SIGN_UP_WITH:I = 0x1

.field public static final SDK_CONSENT_HEADING_SUBSCRIBE_TO:I = 0x14

.field public static final SDK_CONSENT_HEADING_VERIFY_NUMBER_WITH:I = 0x3

.field public static final SDK_CONSENT_HEADING_VERIFY_PHONE_NO_WITH:I = 0xa

.field public static final SDK_CONSENT_HEADING_VERIFY_PROFILE_WITH:I = 0x8

.field public static final SDK_CONSENT_HEADING_VERIFY_WITH:I = 0x7

.field public static final SDK_CONSENT_HEADING_VERIFY_YOUR_NO_WITH:I = 0xb

.field public static final SDK_CONSENT_HEADING_VERIFY_YOUR_PROFILE_WITH:I = 0x9


# instance fields
.field protected final callback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

.field protected final clientId:Ljava/lang/String;

.field protected final context:Landroid/content/Context;

.field protected final sdkFlag:I

.field final sdkOptionsDataBundle:Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;


# direct methods
.method public constructor <init>(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)V
    .locals 8

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->-$$Nest$fgetcontext(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->context:Landroid/content/Context;

    .line 183
    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->-$$Nest$fgetclientId(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->clientId:Ljava/lang/String;

    .line 184
    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->-$$Nest$fgetsdkFlag(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->sdkFlag:I

    .line 185
    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->-$$Nest$fgetcallback(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->callback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    .line 186
    new-instance v0, Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->-$$Nest$fgetbuttonColor(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I

    move-result v2

    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->-$$Nest$fgetbuttonTextColor(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I

    move-result v3

    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->-$$Nest$fgettitleOption(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I

    move-result v4

    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->-$$Nest$fgetheadingOption(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I

    move-result v5

    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->-$$Nest$fgetctaTextOption(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I

    move-result v6

    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->-$$Nest$fgetloginTextPrefixOption(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;)I

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;->sdkOptionsDataBundle:Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    return-void
.end method
