.class public Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;
.super Lcom/truecaller/android/sdk/common/callbacks/OtpInstallationCallback;
.source "MissedCallInstallationCallback.java"


# static fields
.field static final JSON_KEY_METHOD:Ljava/lang/String; = "method"

.field static final METHOD_CALL:Ljava/lang/String; = "call"


# instance fields
.field private final DEFAULT_MISSED_CALL_TTL:D

.field private final MILLISECONDS_MULTIPLIER:J

.field handleTtlRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private mCallingNumber:Ljava/lang/String;

.field private mPattern:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$hpeVRq68UufbnJKRzhTh8L6Yk8Q(Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->lambda$onVerificationRequired$0()V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;Lcom/truecaller/android/sdk/common/VerificationCallback;Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;ZLcom/truecaller/android/sdk/common/VerificationRequestManager;Landroid/os/Handler;I)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p5

    move-object v5, p3

    move v6, p7

    .line 69
    invoke-direct/range {v0 .. v6}, Lcom/truecaller/android/sdk/common/callbacks/OtpInstallationCallback;-><init>(Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;Lcom/truecaller/android/sdk/common/VerificationCallback;ZLcom/truecaller/android/sdk/common/VerificationRequestManager;Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;I)V

    const-wide/high16 p1, 0x4044000000000000L    # 40.0

    .line 57
    iput-wide p1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->DEFAULT_MISSED_CALL_TTL:D

    const-wide/16 p1, 0x3e8

    .line 58
    iput-wide p1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->MILLISECONDS_MULTIPLIER:J

    .line 70
    iput-object p6, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getSecretToken()Ljava/lang/String;
    .locals 7

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->mPattern:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 128
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 129
    iget-object v5, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->mCallingNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onVerificationRequired$0()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->notifyMissedCallVerifiedMaybe(Z)V

    return-void
.end method

.method private removeTtlHandlerCallback()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->handleTtlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method notifyMissedCallVerifiedMaybe(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->mPattern:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    invoke-interface {p1}, Lcom/truecaller/android/sdk/common/VerificationRequestManager;->rejectCall()V

    .line 116
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    invoke-interface {p1}, Lcom/truecaller/android/sdk/common/VerificationRequestManager;->unRegisterIncomingCallListener()V

    .line 117
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->mCallingNumber:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->mPattern:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    invoke-direct {p0}, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->getSecretToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/truecaller/android/sdk/common/VerificationRequestManager;->setSecretToken(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestSuccess(ILcom/truecaller/android/sdk/common/VerificationDataBundle;)V

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->removeTtlHandlerCallback()V

    :cond_2
    return-void
.end method

.method public onCallReceivedFrom(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->mCallingNumber:Ljava/lang/String;

    const/4 p1, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->notifyMissedCallVerifiedMaybe(Z)V

    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->removeTtlHandlerCallback()V

    .line 98
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    new-instance v0, Lcom/truecaller/android/sdk/common/TrueException;

    const-string v1, "Required permissions missing"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/truecaller/android/sdk/common/TrueException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v2, v0}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/common/TrueException;)V

    :goto_1
    return-void
.end method

.method onVerificationRequired(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 75
    const-string v0, "method"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    const-string v1, "call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    invoke-interface {v0, p0}, Lcom/truecaller/android/sdk/common/VerificationRequestManager;->registerIncomingCallListener(Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;)V

    .line 78
    const-string v0, "pattern"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->mPattern:Ljava/lang/String;

    .line 79
    const-string v0, "tokenTtl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    .line 81
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 83
    :cond_0
    new-instance v1, Lcom/truecaller/android/sdk/common/VerificationDataBundle;

    invoke-direct {v1}, Lcom/truecaller/android/sdk/common/VerificationDataBundle;-><init>()V

    .line 84
    const-string v2, "ttl"

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/truecaller/android/sdk/common/VerificationDataBundle;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v2, "requestNonce"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 86
    invoke-virtual {v1, v2, p1}, Lcom/truecaller/android/sdk/common/VerificationDataBundle;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    const/4 v2, 0x3

    invoke-interface {p1, v2, v1}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestSuccess(ILcom/truecaller/android/sdk/common/VerificationDataBundle;)V

    .line 88
    new-instance p1, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback$$ExternalSyntheticLambda0;-><init>(Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;)V

    iput-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->handleTtlRunnable:Ljava/lang/Runnable;

    .line 89
    iget-object v1, p0, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 91
    :cond_1
    invoke-super {p0, p1}, Lcom/truecaller/android/sdk/common/callbacks/OtpInstallationCallback;->onVerificationRequired(Ljava/util/Map;)V

    :goto_0
    return-void
.end method
