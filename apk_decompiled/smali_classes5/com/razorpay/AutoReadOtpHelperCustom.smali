.class public Lcom/razorpay/AutoReadOtpHelperCustom;
.super Landroid/content/BroadcastReceiver;
.source "AutoReadOtpHelperCustom.java"


# instance fields
.field private $sS$$__s$S$:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/razorpay/AutoReadOtpHelperCustom;->$sS$$__s$S$:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 28
    const-string p1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 30
    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/common/api/Status;

    .line 31
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_RECEIVED_SMS:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p2

    if-eqz p2, :cond_1

    const/16 p1, 0xf

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_TIMEOUT:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    goto :goto_0

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/razorpay/AutoReadOtpHelperCustom;->$sS$$__s$S$:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.razorpay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 36
    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_CONSENT_INTENT"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 40
    :try_start_0
    iget-object p2, p0, Lcom/razorpay/AutoReadOtpHelperCustom;->$sS$$__s$S$:Landroid/app/Activity;

    const/16 v0, 0x3e9

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 41
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_SHOWED_ONE_TIME_CONSENT:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    const-string p2, "S0"

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoReadOtpHelper"

    invoke-static {v1, p2, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
