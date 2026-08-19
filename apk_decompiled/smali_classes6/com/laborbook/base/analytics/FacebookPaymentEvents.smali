.class public final Lcom/laborbook/base/analytics/FacebookPaymentEvents;
.super Ljava/lang/Object;
.source "FacebookPaymentEvents.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFacebookPaymentEvents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FacebookPaymentEvents.kt\ncom/laborbook/base/analytics/FacebookPaymentEvents\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,265:1\n1#2:266\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0005J\u0018\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0005J2\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J6\u0010 \u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00052\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0005J4\u0010!\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00052\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0005J\u0012\u0010\"\u001a\u00020\u00052\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0002J(\u0010#\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0005J\u001a\u0010&\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0005J\"\u0010(\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010)\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0005J\"\u0010*\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010+\u001a\u00020,2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0005J\u0018\u0010-\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0005J*\u0010.\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u001d2\u0008\u0008\u0002\u00100\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/laborbook/base/analytics/FacebookPaymentEvents;",
        "",
        "<init>",
        "()V",
        "EVENT_VIEW_CONTENT",
        "",
        "EVENT_FIRST_TIME_HOME_SCREEN",
        "EVENT_INITIATE_CHECKOUT",
        "EVENT_ADD_PAYMENT_INFO",
        "EVENT_START_TRIAL",
        "EVENT_SUBSCRIBE",
        "PARAM_CONTENT_TYPE",
        "PARAM_CONTENT_NAME",
        "PARAM_CONTENT_ID",
        "PARAM_VALUE",
        "PARAM_CURRENCY",
        "PARAM_INSTALL_SOURCE",
        "CONTENT_TYPE_PRODUCT",
        "DEFAULT_CURRENCY",
        "logFirstTimeHomeScreen",
        "",
        "context",
        "Landroid/content/Context;",
        "installSource",
        "logViewContent",
        "contentName",
        "logInitiateCheckout",
        "planId",
        "value",
        "",
        "currency",
        "logAddPaymentInfo",
        "logStartTrial",
        "logSubscribe",
        "normalizeCurrency",
        "logPurchase",
        "amount",
        "currencyCode",
        "logSubscriptionCancelled",
        "planName",
        "logCompletedRegistration",
        "method",
        "logFirstStaffAdded",
        "staffCount",
        "",
        "logFirstAttendanceMarked",
        "logSalarySet",
        "salaryAmount",
        "salaryType",
        "base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CONTENT_TYPE_PRODUCT:Ljava/lang/String; = "product"

.field private static final DEFAULT_CURRENCY:Ljava/lang/String; = "INR"

.field private static final EVENT_ADD_PAYMENT_INFO:Ljava/lang/String;

.field private static final EVENT_FIRST_TIME_HOME_SCREEN:Ljava/lang/String; = "FirstTimeHomeScreen"

.field private static final EVENT_INITIATE_CHECKOUT:Ljava/lang/String;

.field private static final EVENT_START_TRIAL:Ljava/lang/String;

.field private static final EVENT_SUBSCRIBE:Ljava/lang/String;

.field private static final EVENT_VIEW_CONTENT:Ljava/lang/String;

.field public static final INSTANCE:Lcom/laborbook/base/analytics/FacebookPaymentEvents;

.field private static final PARAM_CONTENT_ID:Ljava/lang/String; = "content_id"

.field private static final PARAM_CONTENT_NAME:Ljava/lang/String; = "content_name"

.field private static final PARAM_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field private static final PARAM_CURRENCY:Ljava/lang/String; = "currency"

.field private static final PARAM_INSTALL_SOURCE:Ljava/lang/String; = "install_source"

.field private static final PARAM_VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/laborbook/base/analytics/FacebookPaymentEvents;

    invoke-direct {v0}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;-><init>()V

    sput-object v0, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->INSTANCE:Lcom/laborbook/base/analytics/FacebookPaymentEvents;

    .line 16
    const-string v0, "fb_mobile_content_view"

    sput-object v0, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->EVENT_VIEW_CONTENT:Ljava/lang/String;

    .line 19
    const-string v0, "fb_mobile_initiated_checkout"

    sput-object v0, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->EVENT_INITIATE_CHECKOUT:Ljava/lang/String;

    .line 20
    const-string v0, "fb_mobile_add_payment_info"

    sput-object v0, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->EVENT_ADD_PAYMENT_INFO:Ljava/lang/String;

    .line 21
    const-string v0, "StartTrial"

    sput-object v0, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->EVENT_START_TRIAL:Ljava/lang/String;

    .line 22
    const-string v0, "Subscribe"

    sput-object v0, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->EVENT_SUBSCRIBE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic logCompletedRegistration$default(Lcom/laborbook/base/analytics/FacebookPaymentEvents;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 204
    const-string p2, "otp"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, "organic"

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logCompletedRegistration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logFirstAttendanceMarked$default(Lcom/laborbook/base/analytics/FacebookPaymentEvents;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 236
    const-string p2, "organic"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logFirstAttendanceMarked(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logFirstStaffAdded$default(Lcom/laborbook/base/analytics/FacebookPaymentEvents;Landroid/content/Context;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 220
    const-string p3, "organic"

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logFirstStaffAdded(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic logFirstTimeHomeScreen$default(Lcom/laborbook/base/analytics/FacebookPaymentEvents;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 38
    const-string p2, "organic"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logFirstTimeHomeScreen(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logInitiateCheckout$default(Lcom/laborbook/base/analytics/FacebookPaymentEvents;Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    .line 74
    const-string p6, "organic"

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 69
    invoke-virtual/range {v0 .. v6}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logInitiateCheckout(Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logPurchase$default(Lcom/laborbook/base/analytics/FacebookPaymentEvents;Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 166
    const-string p5, "organic"

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logPurchase(Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logSalarySet$default(Lcom/laborbook/base/analytics/FacebookPaymentEvents;Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 253
    const-string p4, "daily"

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    const-string p5, "organic"

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logSalarySet(Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logStartTrial$default(Lcom/laborbook/base/analytics/FacebookPaymentEvents;Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_2

    .line 113
    const-string p6, "organic"

    :cond_2
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    .line 108
    invoke-virtual/range {v0 .. v6}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logStartTrial(Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logSubscribe$default(Lcom/laborbook/base/analytics/FacebookPaymentEvents;Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x10

    if-eqz p5, :cond_1

    .line 139
    const-string p6, "organic"

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 134
    invoke-virtual/range {v0 .. v6}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logSubscribe(Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logSubscriptionCancelled$default(Lcom/laborbook/base/analytics/FacebookPaymentEvents;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 187
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logSubscriptionCancelled(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logViewContent$default(Lcom/laborbook/base/analytics/FacebookPaymentEvents;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 54
    const-string p2, "Laborbook Pro"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logViewContent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final normalizeCurrency(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 157
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toUpperCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 158
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    return-object p1

    .line 159
    :cond_2
    :goto_1
    const-string p1, "INR"

    return-object p1
.end method


# virtual methods
.method public final logAddPaymentInfo(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    const-string v1, "content_type"

    const-string v2, "product"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-virtual {v1, p1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->EVENT_ADD_PAYMENT_INFO:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final logCompletedRegistration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    const-string v1, "fb_registration_method"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string p2, "fb_currency"

    const-string v1, "INR"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string p2, "install_source"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object p2, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-virtual {p2, p1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    const-string p2, "fb_mobile_complete_registration"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final logFirstAttendanceMarked(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 239
    const-string v1, "content_type"

    const-string v2, "attendance"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "fb_currency"

    const-string v2, "INR"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "install_source"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object p2, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-virtual {p2, p1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    const-string p2, "fb_mobile_rate"

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final logFirstStaffAdded(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    const-string v1, "fb_level"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string p2, "fb_currency"

    const-string v1, "INR"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string p2, "install_source"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object p2, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-virtual {p2, p1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    const-string p2, "fb_mobile_level_achieved"

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final logFirstTimeHomeScreen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    const-string v1, "content_type"

    const-string v2, "screen"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "content_name"

    const-string v2, "Home"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "install_source"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object p2, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-virtual {p2, p1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    const-string p2, "FirstTimeHomeScreen"

    invoke-virtual {p1, p2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final logInitiateCheckout(Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installSource"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-direct {p0, p5}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->normalizeCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    .line 79
    const-string v1, "fb_content_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    const-string p2, "value"

    const-wide/16 v1, 0x0

    invoke-static {p3, p4, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide v3

    invoke-virtual {v0, p2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 81
    const-string p2, "fb_currency"

    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string p2, "fb_content_type"

    const-string p5, "product"

    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string p2, "install_source"

    invoke-virtual {v0, p2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object p2, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-virtual {p2, p1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    sget-object p2, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->EVENT_INITIATE_CHECKOUT:Ljava/lang/String;

    invoke-static {p3, p4, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final logPurchase(Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installSource"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    :try_start_0
    invoke-direct {p0, p4}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->normalizeCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :try_start_1
    invoke-static {p4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    :try_start_2
    const-string p4, "INR"

    invoke-static {p4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p4

    .line 174
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    const-string v1, "install_source"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object p5, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-virtual {p5, p1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 178
    invoke-static {p2, p3, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2, p4, v0}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method public final logSalarySet(Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "salaryType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installSource"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 256
    const-string v1, "fb_currency"

    const-string v2, "INR"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "value"

    const-wide/16 v2, 0x0

    invoke-static {p2, p3, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 258
    const-string v1, "content_type"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string p4, "install_source"

    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object p4, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-virtual {p4, p1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    const-string p4, "fb_mobile_spent_credits"

    invoke-static {p2, p3, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide p2

    invoke-virtual {p1, p4, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final logStartTrial(Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installSource"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    :try_start_0
    invoke-direct {p0, p4}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->normalizeCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    const-string v1, "value"

    const-wide/16 v2, 0x0

    invoke-static {p2, p3, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 119
    const-string v1, "fb_currency"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 120
    const-string p4, "fb_content_id"

    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    const-string p4, "fb_content_type"

    const-string p5, "product"

    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string p4, "install_source"

    invoke-virtual {v0, p4, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object p4, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-virtual {p4, p1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    sget-object p4, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->EVENT_START_TRIAL:Ljava/lang/String;

    invoke-static {p2, p3, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide p2

    invoke-virtual {p1, p4, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final logSubscribe(Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installSource"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    :try_start_0
    invoke-direct {p0, p4}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->normalizeCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    const-string v1, "fb_currency"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string p4, "value"

    const-wide/16 v1, 0x0

    invoke-static {p2, p3, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide v3

    invoke-virtual {v0, p4, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    if-eqz p5, :cond_0

    .line 146
    const-string p4, "fb_content_id"

    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    const-string p4, "fb_content_type"

    const-string p5, "product"

    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string p4, "install_source"

    invoke-virtual {v0, p4, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object p4, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-virtual {p4, p1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    sget-object p4, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->EVENT_SUBSCRIBE:Ljava/lang/String;

    invoke-static {p2, p3, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide p2

    invoke-virtual {p1, p4, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final logSubscriptionCancelled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    .line 190
    const-string v1, "content_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    sget-object p2, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-virtual {p2, p1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    const-string p2, "SubscriptionCancelled"

    invoke-virtual {p1, p2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final logViewContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v1, "content_type"

    const-string v2, "product"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "content_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object p2, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    invoke-virtual {p2, p1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    sget-object p2, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->EVENT_VIEW_CONTENT:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
