.class public Lcom/truecaller/android/sdk/common/otpVerification/TruecallerOtpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TruecallerOtpReceiver.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final OTP_PATTERN_TRUECALLER:Ljava/lang/String; = "\\b\\d{6,}\\b"


# instance fields
.field final mVerificationCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/truecaller/android/sdk/common/VerificationCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/android/sdk/common/VerificationCallback;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/truecaller/android/sdk/common/otpVerification/TruecallerOtpReceiver;->mVerificationCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 63
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    const-string p1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 67
    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/common/api/Status;

    .line 69
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p2

    if-nez p2, :cond_1

    .line 70
    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 72
    const-string p2, "\\b\\d{6,}\\b"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 73
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 74
    new-instance p2, Lcom/truecaller/android/sdk/common/VerificationDataBundle;

    invoke-direct {p2}, Lcom/truecaller/android/sdk/common/VerificationDataBundle;-><init>()V

    .line 75
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "otp"

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/truecaller/android/sdk/common/VerificationDataBundle;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/otpVerification/TruecallerOtpReceiver;->mVerificationCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/otpVerification/TruecallerOtpReceiver;->mVerificationCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/android/sdk/common/VerificationCallback;

    const/4 v0, 0x2

    invoke-interface {p1, v0, p2}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestSuccess(ILcom/truecaller/android/sdk/common/VerificationDataBundle;)V

    :cond_1
    return-void
.end method
