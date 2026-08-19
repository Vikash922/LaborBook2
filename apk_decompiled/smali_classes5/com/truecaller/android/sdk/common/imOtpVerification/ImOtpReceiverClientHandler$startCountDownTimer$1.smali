.class public final Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler$startCountDownTimer$1;
.super Landroid/os/CountDownTimer;
.source "ImOtpReceiverClientHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->startCountDownTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler$startCountDownTimer$1",
        "Landroid/os/CountDownTimer;",
        "onFinish",
        "",
        "onTick",
        "l",
        "",
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
.field final synthetic this$0:Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;


# direct methods
.method constructor <init>(JLcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;)V
    .locals 2

    iput-object p3, p0, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler$startCountDownTimer$1;->this$0:Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;

    const-wide/16 v0, 0x3e8

    .line 70
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler$startCountDownTimer$1;->this$0:Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->unregisterReceiver()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
