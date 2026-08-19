.class public Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;
.super Ljava/lang/Object;
.source "SmsRetrieverClientHandler.java"


# instance fields
.field private final mAppContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;->mAppContext:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public startRetriever(Lcom/truecaller/android/sdk/common/VerificationCallback;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;->mAppContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;->mAppContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsRetriever()Lcom/google/android/gms/tasks/Task;

    .line 56
    new-instance v0, Lcom/truecaller/android/sdk/common/otpVerification/TruecallerOtpReceiver;

    invoke-direct {v0, p1}, Lcom/truecaller/android/sdk/common/otpVerification/TruecallerOtpReceiver;-><init>(Lcom/truecaller/android/sdk/common/VerificationCallback;)V

    .line 58
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;->mAppContext:Ljava/lang/ref/WeakReference;

    .line 59
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 58
    invoke-static {p1, v0, v1, v2}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method
