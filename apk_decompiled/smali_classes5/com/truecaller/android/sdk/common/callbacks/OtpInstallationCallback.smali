.class public Lcom/truecaller/android/sdk/common/callbacks/OtpInstallationCallback;
.super Lcom/truecaller/android/sdk/common/callbacks/CreateInstallationCallback;
.source "OtpInstallationCallback.java"


# instance fields
.field private final DEFAULT_OTP_TTL:D

.field private final mSmsRetrieverClientHandler:Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;


# direct methods
.method public constructor <init>(Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;Lcom/truecaller/android/sdk/common/VerificationCallback;ZLcom/truecaller/android/sdk/common/VerificationRequestManager;Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p6

    .line 56
    invoke-direct/range {v0 .. v5}, Lcom/truecaller/android/sdk/common/callbacks/CreateInstallationCallback;-><init>(Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;Lcom/truecaller/android/sdk/common/VerificationCallback;ZLcom/truecaller/android/sdk/common/VerificationRequestManager;I)V

    const-wide p1, 0x4072c00000000000L    # 300.0

    .line 50
    iput-wide p1, p0, Lcom/truecaller/android/sdk/common/callbacks/OtpInstallationCallback;->DEFAULT_OTP_TTL:D

    .line 57
    iput-object p5, p0, Lcom/truecaller/android/sdk/common/callbacks/OtpInstallationCallback;->mSmsRetrieverClientHandler:Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;

    return-void
.end method


# virtual methods
.method onVerificationRequired(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 63
    const-string v0, "tokenTtl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide v0, 0x4072c00000000000L    # 300.0

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 67
    :cond_0
    new-instance v1, Lcom/truecaller/android/sdk/common/VerificationDataBundle;

    invoke-direct {v1}, Lcom/truecaller/android/sdk/common/VerificationDataBundle;-><init>()V

    .line 68
    const-string v2, "ttl"

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/truecaller/android/sdk/common/VerificationDataBundle;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    const-string v0, "requestNonce"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 70
    invoke-virtual {v1, v0, p1}, Lcom/truecaller/android/sdk/common/VerificationDataBundle;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/OtpInstallationCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v0, v1}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestSuccess(ILcom/truecaller/android/sdk/common/VerificationDataBundle;)V

    .line 72
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/OtpInstallationCallback;->mSmsRetrieverClientHandler:Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;

    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callbacks/OtpInstallationCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    invoke-virtual {p1, v0}, Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;->startRetriever(Lcom/truecaller/android/sdk/common/VerificationCallback;)V

    return-void
.end method
