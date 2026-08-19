.class public final Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;
.super Ljava/lang/Object;
.source "ImOtpReceiverClientHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImOtpReceiverClientHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImOtpReceiverClientHandler.kt\ncom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n1#2:85\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u000cJ\u0006\u0010\u0015\u001a\u00020\u000cR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "countDownTimer",
        "Landroid/os/CountDownTimer;",
        "imOtpReceiver",
        "Lcom/truecaller/android/sdk/common/imOtpVerification/TruecallerImOtpReceiver;",
        "mAppContext",
        "Ljava/lang/ref/WeakReference;",
        "registerReceiver",
        "",
        "verificationCallback",
        "Lcom/truecaller/android/sdk/common/VerificationCallback;",
        "action",
        "",
        "startCountDownTimer",
        "ttl",
        "",
        "stopCountDownTimer",
        "unregisterReceiver",
        "sdk-external_googlePlayOAuthReleasePartner"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private countDownTimer:Landroid/os/CountDownTimer;

.field private imOtpReceiver:Lcom/truecaller/android/sdk/common/imOtpVerification/TruecallerImOtpReceiver;

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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->mAppContext:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final registerReceiver(Lcom/truecaller/android/sdk/common/VerificationCallback;Ljava/lang/String;)V
    .locals 2

    const-string v0, "verificationCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->mAppContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->unregisterReceiver()V

    .line 52
    new-instance v0, Lcom/truecaller/android/sdk/common/imOtpVerification/TruecallerImOtpReceiver;

    invoke-direct {v0, p1}, Lcom/truecaller/android/sdk/common/imOtpVerification/TruecallerImOtpReceiver;-><init>(Lcom/truecaller/android/sdk/common/VerificationCallback;)V

    iput-object v0, p0, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->imOtpReceiver:Lcom/truecaller/android/sdk/common/imOtpVerification/TruecallerImOtpReceiver;

    .line 53
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->mAppContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->imOtpReceiver:Lcom/truecaller/android/sdk/common/imOtpVerification/TruecallerImOtpReceiver;

    check-cast v0, Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-static {p1, v0, v1, p2}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final startCountDownTimer(J)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->stopCountDownTimer()V

    .line 70
    new-instance v0, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler$startCountDownTimer$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler$startCountDownTimer$1;-><init>(JLcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;)V

    check-cast v0, Landroid/os/CountDownTimer;

    iput-object v0, p0, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final stopCountDownTimer()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final unregisterReceiver()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->imOtpReceiver:Lcom/truecaller/android/sdk/common/imOtpVerification/TruecallerImOtpReceiver;

    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->mAppContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->imOtpReceiver:Lcom/truecaller/android/sdk/common/imOtpVerification/TruecallerImOtpReceiver;

    return-void
.end method
