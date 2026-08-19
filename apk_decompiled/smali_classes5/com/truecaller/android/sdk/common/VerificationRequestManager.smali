.class public interface abstract Lcom/truecaller/android/sdk/common/VerificationRequestManager;
.super Ljava/lang/Object;
.source "VerificationRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;
    }
.end annotation


# virtual methods
.method public abstract enqueueCheckInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/android/sdk/common/VerificationCallback;Ljava/lang/String;)V
.end method

.method public abstract enqueueCreateProfile(Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/TrueProfile;)V
.end method

.method public abstract enqueueFetchProfile(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;)V
.end method

.method public abstract enqueueMissedCallVerification(Lcom/truecaller/android/sdk/common/models/TrueProfile;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;)V
.end method

.method public abstract enqueueVerificationAndCreateProfile(Lcom/truecaller/android/sdk/common/models/TrueProfile;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;)V
.end method

.method public abstract notifyAuthenticationRequired()V
.end method

.method public abstract registerImOtpReceiver(Lcom/truecaller/android/sdk/common/VerificationCallback;J)V
.end method

.method public abstract registerIncomingCallListener(Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;)V
.end method

.method public abstract rejectCall()V
.end method

.method public abstract retryEnqueueCreateProfile(Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/TrueProfile;Lcom/truecaller/android/sdk/common/callbacks/CreateProfileCallback;)V
.end method

.method public abstract retryEnqueueVerifyInstallationAndCreateProfile(Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;Lcom/truecaller/android/sdk/common/callbacks/VerifyInstallationCallback;)V
.end method

.method public abstract retryFetchProfile(Ljava/lang/String;Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;)V
.end method

.method public abstract setSecretToken(Ljava/lang/String;)V
.end method

.method public abstract setVerificationToken(Ljava/lang/String;J)V
.end method

.method public abstract unRegisterIncomingCallListener()V
.end method
