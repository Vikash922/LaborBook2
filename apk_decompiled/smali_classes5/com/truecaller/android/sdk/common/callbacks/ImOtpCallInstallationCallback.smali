.class public Lcom/truecaller/android/sdk/common/callbacks/ImOtpCallInstallationCallback;
.super Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;
.source "ImOtpCallInstallationCallback.java"


# static fields
.field static final DEFAULT_IM_OTP_TTL:D = 30.0

.field static final JSON_KEY_METHOD:Ljava/lang/String; = "method"

.field static final METHOD_IM:Ljava/lang/String; = "im"


# instance fields
.field private final MILLISECONDS_MULTIPLIER:J


# direct methods
.method public constructor <init>(Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;Lcom/truecaller/android/sdk/common/VerificationCallback;Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;ZLcom/truecaller/android/sdk/common/VerificationRequestManager;Landroid/os/Handler;)V
    .locals 8

    const/16 v7, 0x9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 61
    invoke-direct/range {v0 .. v7}, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;-><init>(Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;Lcom/truecaller/android/sdk/common/VerificationCallback;Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;ZLcom/truecaller/android/sdk/common/VerificationRequestManager;Landroid/os/Handler;I)V

    const-wide/16 p1, 0x3e8

    .line 55
    iput-wide p1, p0, Lcom/truecaller/android/sdk/common/callbacks/ImOtpCallInstallationCallback;->MILLISECONDS_MULTIPLIER:J

    return-void
.end method


# virtual methods
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

    .line 66
    const-string v0, "method"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    const-string v1, "im"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "tokenTtl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 73
    const-string v3, "requestNonce"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 74
    iget-object v4, p0, Lcom/truecaller/android/sdk/common/callbacks/ImOtpCallInstallationCallback;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    iget-object v5, p0, Lcom/truecaller/android/sdk/common/callbacks/ImOtpCallInstallationCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    invoke-interface {v4, v5, v1, v2}, Lcom/truecaller/android/sdk/common/VerificationRequestManager;->registerImOtpReceiver(Lcom/truecaller/android/sdk/common/VerificationCallback;J)V

    .line 75
    new-instance v1, Lcom/truecaller/android/sdk/common/VerificationDataBundle;

    invoke-direct {v1}, Lcom/truecaller/android/sdk/common/VerificationDataBundle;-><init>()V

    .line 76
    const-string v2, "ttl"

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/truecaller/android/sdk/common/VerificationDataBundle;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v1, v3, p1}, Lcom/truecaller/android/sdk/common/VerificationDataBundle;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/ImOtpCallInstallationCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    iget v0, p0, Lcom/truecaller/android/sdk/common/callbacks/ImOtpCallInstallationCallback;->mCallbackType:I

    invoke-interface {p1, v0, v1}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestSuccess(ILcom/truecaller/android/sdk/common/VerificationDataBundle;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-super {p0, p1}, Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;->onVerificationRequired(Ljava/util/Map;)V

    :goto_0
    return-void
.end method
