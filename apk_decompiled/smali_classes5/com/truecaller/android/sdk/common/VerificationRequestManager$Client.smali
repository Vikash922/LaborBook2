.class public interface abstract Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;
.super Ljava/lang/Object;
.source "VerificationRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/android/sdk/common/VerificationRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Client"
.end annotation


# virtual methods
.method public abstract getDeviceId(Landroidx/fragment/app/FragmentActivity;)Ljava/lang/String;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getSimState()I
.end method

.method public abstract isAirplaneModeDisabled()Z
.end method

.method public abstract isDesiredPermissionEnabled()Z
.end method

.method public abstract registerImOtpReceiver(Lcom/truecaller/android/sdk/common/VerificationCallback;J)V
.end method

.method public abstract registerIncomingCallReceiver(Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;)V
.end method

.method public abstract rejectCall()V
.end method

.method public abstract unRegisterIncomingCallReceiver()V
.end method
