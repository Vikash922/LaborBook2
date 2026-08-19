.class public final Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;
.super Ljava/lang/Object;
.source "VerificationRequestManagerImpl.java"

# interfaces
.implements Lcom/truecaller/android/sdk/common/VerificationRequestManager;


# instance fields
.field private final NAME_REGEX_PATTERN:Ljava/lang/String;

.field private final isOAuthFlow:Z

.field private final mClient:Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;

.field private mCountryCode:Ljava/lang/String;

.field private mFingerPrint:Ljava/lang/String;

.field private final mOAuthCallback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

.field private final mPattern:Ljava/util/regex/Pattern;

.field private mPhoneNumber:Ljava/lang/String;

.field private final mProfileCallback:Lcom/truecaller/android/sdk/legacy/ITrueCallback;

.field private final mProfileService:Lcom/truecaller/android/sdk/common/network/ProfileService;

.field private mSecretToken:Ljava/lang/String;

.field private final mSmsRetrieverHandler:Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;

.field public mTokenReceivedAt:J

.field private final mVerificationService:Lcom/truecaller/android/sdk/common/network/VerificationService;

.field public mVerificationToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;Lcom/truecaller/android/sdk/common/network/ProfileService;Lcom/truecaller/android/sdk/common/network/VerificationService;Lcom/truecaller/android/sdk/legacy/ITrueCallback;Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, "^(?=.*?[\\w&&[\\D]&&[^_]])[\\w\\W]{1,128}$"

    iput-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->NAME_REGEX_PATTERN:Ljava/lang/String;

    .line 87
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mPattern:Ljava/util/regex/Pattern;

    .line 94
    iput-object p2, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mProfileService:Lcom/truecaller/android/sdk/common/network/ProfileService;

    .line 95
    iput-object p3, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mVerificationService:Lcom/truecaller/android/sdk/common/network/VerificationService;

    .line 96
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mClient:Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;

    .line 97
    iput-object p4, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mProfileCallback:Lcom/truecaller/android/sdk/legacy/ITrueCallback;

    .line 98
    iput-object p5, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mSmsRetrieverHandler:Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mOAuthCallback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->isOAuthFlow:Z

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;Lcom/truecaller/android/sdk/common/network/ProfileService;Lcom/truecaller/android/sdk/common/network/VerificationService;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, "^(?=.*?[\\w&&[\\D]&&[^_]])[\\w\\W]{1,128}$"

    iput-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->NAME_REGEX_PATTERN:Ljava/lang/String;

    .line 87
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mPattern:Ljava/util/regex/Pattern;

    .line 106
    iput-object p2, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mProfileService:Lcom/truecaller/android/sdk/common/network/ProfileService;

    .line 107
    iput-object p3, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mVerificationService:Lcom/truecaller/android/sdk/common/network/VerificationService;

    .line 108
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mClient:Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;

    .line 109
    iput-object p4, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mOAuthCallback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    .line 110
    iput-object p5, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mSmsRetrieverHandler:Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mProfileCallback:Lcom/truecaller/android/sdk/legacy/ITrueCallback;

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->isOAuthFlow:Z

    return-void
.end method

.method private hasValidFirstName(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 186
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 189
    :cond_1
    invoke-direct {p0, p1}, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->matchesRegexPattern(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private hasValidLastName(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 197
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 200
    :cond_1
    invoke-direct {p0, p1}, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->matchesRegexPattern(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private matchesRegexPattern(Ljava/lang/String;)Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private profileHasName(Lcom/truecaller/android/sdk/common/models/TrueProfile;)Z
    .locals 1

    .line 178
    iget-object v0, p1, Lcom/truecaller/android/sdk/common/models/TrueProfile;->firstName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->hasValidFirstName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/truecaller/android/sdk/common/models/TrueProfile;->lastName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->hasValidLastName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public enqueueCheckInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/android/sdk/common/VerificationCallback;Ljava/lang/String;)V
    .locals 12

    move-object v7, p0

    move-object v8, p2

    move-object/from16 v3, p4

    move-object/from16 v9, p8

    .line 129
    iput-object v3, v7, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mPhoneNumber:Ljava/lang/String;

    move-object v2, p3

    .line 130
    iput-object v2, v7, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mCountryCode:Ljava/lang/String;

    .line 131
    iput-object v9, v7, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mFingerPrint:Ljava/lang/String;

    .line 132
    new-instance v10, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;

    move-object v0, v10

    move-object v1, p1

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    iget-object v0, v7, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mClient:Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;

    invoke-interface {v0}, Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;->getSimState()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->setSimState(I)V

    .line 134
    iget-object v0, v7, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mClient:Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;

    invoke-interface {v0}, Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;->isAirplaneModeDisabled()Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->setAirplaneModeDisabled(Z)V

    .line 135
    iget-object v0, v7, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mClient:Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;

    invoke-interface {v0}, Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;->isDesiredPermissionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 136
    invoke-virtual {v10, v0}, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->setPhonePermission(Z)V

    .line 138
    :cond_0
    new-instance v11, Lcom/truecaller/android/sdk/common/callbacks/ImOtpCallInstallationCallback;

    iget-object v3, v7, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mSmsRetrieverHandler:Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;

    iget-object v0, v7, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mClient:Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;

    .line 140
    invoke-interface {v0}, Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, v11

    move-object v1, v10

    move-object/from16 v2, p7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/android/sdk/common/callbacks/ImOtpCallInstallationCallback;-><init>(Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;Lcom/truecaller/android/sdk/common/VerificationCallback;Lcom/truecaller/android/sdk/common/otpVerification/SmsRetrieverClientHandler;ZLcom/truecaller/android/sdk/common/VerificationRequestManager;Landroid/os/Handler;)V

    .line 141
    iget-boolean v0, v7, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->isOAuthFlow:Z

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, v7, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mVerificationService:Lcom/truecaller/android/sdk/common/network/VerificationService;

    invoke-interface {v0, p2, v9, v10}, Lcom/truecaller/android/sdk/common/network/VerificationService;->createInstallationOAuth(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0, v11}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, v7, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mVerificationService:Lcom/truecaller/android/sdk/common/network/VerificationService;

    invoke-interface {v0, p2, v9, v10}, Lcom/truecaller/android/sdk/common/network/VerificationService;->createInstallation(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0, v11}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :goto_0
    return-void
.end method

.method public enqueueCreateProfile(Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/TrueProfile;)V
    .locals 3

    .line 268
    new-instance v0, Lcom/truecaller/android/sdk/common/callbacks/CreateProfileCallback;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/truecaller/android/sdk/common/callbacks/CreateProfileCallback;-><init>(Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/TrueProfile;Lcom/truecaller/android/sdk/common/VerificationRequestManager;Z)V

    .line 269
    iget-object v1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mProfileService:Lcom/truecaller/android/sdk/common/network/ProfileService;

    const-string v2, "Bearer %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/truecaller/android/sdk/common/network/ProfileService;->createProfile(Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/TrueProfile;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public enqueueFetchProfile(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;)V
    .locals 7

    .line 257
    new-instance v6, Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;Lcom/truecaller/android/sdk/common/VerificationRequestManager;Z)V

    .line 258
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mProfileService:Lcom/truecaller/android/sdk/common/network/ProfileService;

    const-string p3, "Bearer %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/truecaller/android/sdk/common/network/ProfileService;->fetchProfile(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, v6}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public enqueueMissedCallVerification(Lcom/truecaller/android/sdk/common/models/TrueProfile;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mSecretToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->enqueueVerificationAndCreateProfile(Lcom/truecaller/android/sdk/common/models/TrueProfile;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;)V

    goto :goto_0

    .line 213
    :cond_0
    new-instance p1, Lcom/truecaller/android/sdk/common/TrueException;

    const/4 p2, 0x3

    const-string v0, "Please call createInstallation first"

    invoke-direct {p1, p2, v0}, Lcom/truecaller/android/sdk/common/TrueException;-><init>(ILjava/lang/String;)V

    const/4 p2, 0x5

    invoke-interface {p3, p2, p1}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/common/TrueException;)V

    :goto_0
    return-void
.end method

.method public enqueueVerificationAndCreateProfile(Lcom/truecaller/android/sdk/common/models/TrueProfile;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;)V
    .locals 9

    .line 157
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mPhoneNumber:Ljava/lang/String;

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mVerificationToken:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 158
    invoke-direct {p0, p1}, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->profileHasName(Lcom/truecaller/android/sdk/common/models/TrueProfile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;

    iget-object v1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mVerificationToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance p2, Lcom/truecaller/android/sdk/common/callbacks/VerifyInstallationCallback;

    const/4 v8, 0x1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, p4

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lcom/truecaller/android/sdk/common/callbacks/VerifyInstallationCallback;-><init>(Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;Lcom/truecaller/android/sdk/common/VerificationCallback;Lcom/truecaller/android/sdk/common/models/TrueProfile;Lcom/truecaller/android/sdk/common/VerificationRequestManager;Z)V

    .line 162
    iget-boolean p1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->isOAuthFlow:Z

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mVerificationService:Lcom/truecaller/android/sdk/common/network/VerificationService;

    iget-object p4, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mFingerPrint:Ljava/lang/String;

    invoke-interface {p1, p3, p4, v0}, Lcom/truecaller/android/sdk/common/network/VerificationService;->verifyInstallationOAuth(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mVerificationService:Lcom/truecaller/android/sdk/common/network/VerificationService;

    iget-object p4, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mFingerPrint:Ljava/lang/String;

    invoke-interface {p1, p3, p4, v0}, Lcom/truecaller/android/sdk/common/network/VerificationService;->verifyInstallation(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 168
    :cond_1
    new-instance p1, Lcom/truecaller/android/sdk/common/TrueException;

    const-string p2, "Please provide a valid name"

    invoke-direct {p1, v1, p2}, Lcom/truecaller/android/sdk/common/TrueException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v1, p1}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/common/TrueException;)V

    goto :goto_0

    .line 172
    :cond_2
    new-instance p1, Lcom/truecaller/android/sdk/common/TrueException;

    const/4 p2, 0x3

    const-string p3, "Please call createInstallation first"

    invoke-direct {p1, p2, p3}, Lcom/truecaller/android/sdk/common/TrueException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v1, p1}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/common/TrueException;)V

    :goto_0
    return-void
.end method

.method public notifyAuthenticationRequired()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mProfileCallback:Lcom/truecaller/android/sdk/legacy/ITrueCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, v1}, Lcom/truecaller/android/sdk/legacy/ITrueCallback;->onVerificationRequired(Lcom/truecaller/android/sdk/legacy/TrueError;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mOAuthCallback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v0, v1}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onVerificationRequired(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerImOtpReceiver(Lcom/truecaller/android/sdk/common/VerificationCallback;J)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mClient:Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;

    invoke-interface {v0, p1, p2, p3}, Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;->registerImOtpReceiver(Lcom/truecaller/android/sdk/common/VerificationCallback;J)V

    return-void
.end method

.method public registerIncomingCallListener(Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mClient:Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;

    invoke-interface {v0, p1}, Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;->registerIncomingCallReceiver(Lcom/truecaller/android/sdk/common/callbacks/MissedCallInstallationCallback;)V

    return-void
.end method

.method public rejectCall()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mClient:Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;

    invoke-interface {v0}, Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;->rejectCall()V

    return-void
.end method

.method public retryEnqueueCreateProfile(Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/TrueProfile;Lcom/truecaller/android/sdk/common/callbacks/CreateProfileCallback;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mProfileService:Lcom/truecaller/android/sdk/common/network/ProfileService;

    const-string v1, "Bearer %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/truecaller/android/sdk/common/network/ProfileService;->createProfile(Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/TrueProfile;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public retryEnqueueVerifyInstallationAndCreateProfile(Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;Lcom/truecaller/android/sdk/common/callbacks/VerifyInstallationCallback;)V
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->isOAuthFlow:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mVerificationService:Lcom/truecaller/android/sdk/common/network/VerificationService;

    iget-object v1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mFingerPrint:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/truecaller/android/sdk/common/network/VerificationService;->verifyInstallationOAuth(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mVerificationService:Lcom/truecaller/android/sdk/common/network/VerificationService;

    iget-object v1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mFingerPrint:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/truecaller/android/sdk/common/network/VerificationService;->verifyInstallation(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/models/VerifyInstallationModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :goto_0
    return-void
.end method

.method public retryFetchProfile(Ljava/lang/String;Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mProfileService:Lcom/truecaller/android/sdk/common/network/ProfileService;

    const-string v1, "Bearer %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/truecaller/android/sdk/common/network/ProfileService;->fetchProfile(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public setSecretToken(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mSecretToken:Ljava/lang/String;

    return-void
.end method

.method public setVerificationToken(Ljava/lang/String;J)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mVerificationToken:Ljava/lang/String;

    .line 151
    iput-wide p2, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mTokenReceivedAt:J

    return-void
.end method

.method public unRegisterIncomingCallListener()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/VerificationRequestManagerImpl;->mClient:Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;

    invoke-interface {v0}, Lcom/truecaller/android/sdk/common/VerificationRequestManager$Client;->unRegisterIncomingCallReceiver()V

    return-void
.end method
