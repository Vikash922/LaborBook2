.class public final Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;
.super Lcom/truecaller/android/sdk/oAuth/clients/BaseClient;
.source "VerificationClientV2.java"

# interfaces
.implements Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;


# instance fields
.field private handler:Landroid/os/Handler;

.field private final hasTruecaller:Z

.field private imOtpReceiverClientHandler:Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;

.field private incomingCallListener:Lcom/truecaller/android/sdk/common/callVerification/IncomingCallListener;

.field private final mCallRejector:Lcom/truecaller/android/sdk/common/callVerification/CallRejector;

.field private final mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;Z)V
    .locals 7

    const/4 v0, 0x2

    .line 92
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/truecaller/android/sdk/oAuth/clients/BaseClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;I)V

    .line 93
    iput-boolean p4, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->hasTruecaller:Z

    .line 95
    sget p2, Lcom/truecaller/android/sdk/R$string;->sdk_variant:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 96
    sget p4, Lcom/truecaller/android/sdk/R$string;->sdk_variant_version:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 97
    new-instance v6, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;

    const-string v0, "https://outline.truecaller.com/v1/"

    const-class v1, Lcom/truecaller/android/sdk/common/network/ProfileService;

    .line 98
    const-string v2, "3.1.0"

    invoke-static {v0, v1, v2, p2, p4}, Lcom/truecaller/android/sdk/common/network/RestAdapter;->createService(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/truecaller/android/sdk/common/network/ProfileService;

    const-string v0, "https://sdk-otp-verification-noneu.truecaller.com/v2/otp/client/installation/"

    const-class v1, Lcom/truecaller/android/sdk/common/network/VerificationService;

    .line 99
    invoke-static {v0, v1, v2, p2, p4}, Lcom/truecaller/android/sdk/common/network/RestAdapter;->createService(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/android/sdk/common/network/VerificationService;

    new-instance v5, Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;

    iget-object p4, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, p4}, Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;-><init>(Landroid/content/Context;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, v3

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;-><init>(Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;Lcom/truecaller/android/sdk/common/network/ProfileService;Lcom/truecaller/android/sdk/common/network/VerificationService;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;)V

    iput-object v6, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    .line 102
    invoke-static {p1}, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorCompat;->getCallRejectorInstance(Landroid/content/Context;)Lcom/truecaller/android/sdk/common/callVerification/CallRejector;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->mCallRejector:Lcom/truecaller/android/sdk/common/callVerification/CallRejector;

    .line 103
    new-instance p1, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;

    iget-object p2, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->imOtpReceiverClientHandler:Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;

    return-void
.end method

.method private clearImOtpReceiverClientHandler()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->imOtpReceiverClientHandler:Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->unregisterReceiver()V

    .line 229
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->imOtpReceiverClientHandler:Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->stopCountDownTimer()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->imOtpReceiverClientHandler:Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;

    :cond_0
    return-void
.end method

.method public static createInstanceForFallback(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;Landroid/app/Activity;Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;
    .locals 2

    .line 112
    new-instance v0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;Z)V

    .line 113
    invoke-static {p3}, Lcom/truecaller/android/sdk/SdkUtils;->showDisclaimer(Landroid/app/Activity;)V

    .line 114
    invoke-interface {p2, p4}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onVerificationRequired(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    return-object v0
.end method

.method private isAnswerCallPermissionEnabled()Z
    .locals 2

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 152
    const-string v0, "android.permission.CALL_PHONE"

    invoke-direct {p0, v0}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->isPermissionEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 154
    :cond_0
    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    invoke-direct {p0, v0}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->isPermissionEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPermissionEnabled(Ljava/lang/String;)Z
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->mAppContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPhoneStatePermissionEnabled()Z
    .locals 1

    .line 138
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->isPermissionEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkClientInstallation(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;Landroidx/fragment/app/FragmentActivity;)V
    .locals 10

    .line 121
    invoke-static {p4}, Lcom/truecaller/android/sdk/SdkUtils;->dismissDisclaimerMaybe(Landroid/app/Activity;)V

    .line 122
    invoke-static {p2}, Lcom/truecaller/android/sdk/SdkUtils;->isValidNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p4}, Lcom/truecaller/android/sdk/oAuth/UtilsV2;->getApplicationSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 126
    iget-object v1, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p4}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->getDeviceId(Landroidx/fragment/app/FragmentActivity;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->hasTruecaller:Z

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    invoke-interface/range {v1 .. v9}, Lcom/truecaller/android/sdk/common/VerificationRequestManager;->enqueueCheckInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/android/sdk/common/VerificationCallback;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid phone number"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 235
    invoke-direct {p0}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->clearImOtpReceiverClientHandler()V

    .line 236
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->incomingCallListener:Lcom/truecaller/android/sdk/common/callVerification/IncomingCallListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->unRegisterIncomingCallReceiver()V

    .line 238
    iput-object v1, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->incomingCallListener:Lcom/truecaller/android/sdk/common/callVerification/IncomingCallListener;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 242
    iput-object v1, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->handler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public getDeviceId(Landroidx/fragment/app/FragmentActivity;)Ljava/lang/String;
    .locals 0

    .line 134
    invoke-static {p1}, Lcom/truecaller/android/sdk/SdkUtils;->getDeviceId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->handler:Landroid/os/Handler;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSimState()I
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->mAppContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 186
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public isAirplaneModeDisabled()Z
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->mAppContext:Landroid/content/Context;

    .line 192
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isDesiredPermissionEnabled()Z
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->isPhoneStatePermissionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_CALL_LOG"

    .line 145
    invoke-direct {p0, v0}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->isPermissionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->isAnswerCallPermissionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyOtpAuthenticationRequired(Landroid/app/Activity;)V
    .locals 0

    .line 202
    invoke-static {p1}, Lcom/truecaller/android/sdk/SdkUtils;->showDisclaimer(Landroid/app/Activity;)V

    .line 203
    iget-object p1, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    invoke-interface {p1}, Lcom/truecaller/android/sdk/common/VerificationRequestManager;->notifyAuthenticationRequired()V

    return-void
.end method

.method public registerImOtpReceiver(Lcom/truecaller/android/sdk/common/VerificationCallback;J)V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->imOtpReceiverClientHandler:Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/truecaller/android/sdk/SdkUtils;->getAction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->registerReceiver(Lcom/truecaller/android/sdk/common/VerificationCallback;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->imOtpReceiverClientHandler:Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;

    invoke-virtual {p1, p2, p3}, Lcom/truecaller/android/sdk/common/imOtpVerification/ImOtpReceiverClientHandler;->startCountDownTimer(J)V

    :cond_0
    return-void
.end method

.method public registerIncomingCallReceiver(Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->mAppContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 165
    new-instance v1, Lcom/truecaller/android/sdk/common/callVerification/IncomingCallListener;

    invoke-direct {v1, p1}, Lcom/truecaller/android/sdk/common/callVerification/IncomingCallListener;-><init>(Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;)V

    iput-object v1, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->incomingCallListener:Lcom/truecaller/android/sdk/common/callVerification/IncomingCallListener;

    const/16 p1, 0x20

    .line 166
    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public rejectCall()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->mCallRejector:Lcom/truecaller/android/sdk/common/callVerification/CallRejector;

    invoke-interface {v0}, Lcom/truecaller/android/sdk/common/callVerification/CallRejector;->reject()Z

    return-void
.end method

.method public unRegisterIncomingCallReceiver()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->mAppContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 177
    iget-object v1, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->incomingCallListener:Lcom/truecaller/android/sdk/common/callVerification/IncomingCallListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public verifyMissedCallInstallation(Lcom/truecaller/android/sdk/common/models/TrueProfile;Lcom/truecaller/android/sdk/common/VerificationCallback;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/truecaller/android/sdk/common/VerificationRequestManager;->enqueueMissedCallVerification(Lcom/truecaller/android/sdk/common/models/TrueProfile;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;)V

    return-void
.end method

.method public verifyOtpInstallation(Lcom/truecaller/android/sdk/common/models/TrueProfile;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/clients/VerificationClientV2;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/truecaller/android/sdk/common/VerificationRequestManager;->enqueueVerificationAndCreateProfile(Lcom/truecaller/android/sdk/common/models/TrueProfile;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;)V

    return-void
.end method
