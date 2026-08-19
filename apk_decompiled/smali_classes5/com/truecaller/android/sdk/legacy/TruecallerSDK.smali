.class public final Lcom/truecaller/android/sdk/legacy/TruecallerSDK;
.super Ljava/lang/Object;
.source "TruecallerSDK.java"


# static fields
.field public static final SHARE_PROFILE_REQUEST_CODE:I = 0x64

.field private static sInstance:Lcom/truecaller/android/sdk/legacy/TruecallerSDK;


# instance fields
.field private final mTcClientManager:Lcom/truecaller/android/sdk/legacy/ClientManager;


# direct methods
.method private constructor <init>(Lcom/truecaller/android/sdk/legacy/ClientManager;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->mTcClientManager:Lcom/truecaller/android/sdk/legacy/ClientManager;

    return-void
.end method

.method public static clear()V
    .locals 3

    .line 311
    sget-object v0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->sInstance:Lcom/truecaller/android/sdk/legacy/TruecallerSDK;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, v0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->mTcClientManager:Lcom/truecaller/android/sdk/legacy/ClientManager;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/ClientManager;->getClient()Lcom/truecaller/android/sdk/legacy/clients/TcClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/clients/TcClient;->getClientType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 314
    check-cast v0, Lcom/truecaller/android/sdk/legacy/clients/VerificationClient;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/clients/VerificationClient;->clear()V

    .line 316
    :cond_0
    sget-object v0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->sInstance:Lcom/truecaller/android/sdk/legacy/TruecallerSDK;

    iget-object v0, v0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->mTcClientManager:Lcom/truecaller/android/sdk/legacy/ClientManager;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/ClientManager;->clear()V

    const/4 v0, 0x0

    .line 317
    sput-object v0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->sInstance:Lcom/truecaller/android/sdk/legacy/TruecallerSDK;

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/truecaller/android/sdk/legacy/TruecallerSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->sInstance:Lcom/truecaller/android/sdk/legacy/TruecallerSDK;

    if-eqz v0, :cond_0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please call init() on TruecallerSDK first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized init(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope;)V
    .locals 2

    const-class v0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;

    monitor-enter v0

    .line 69
    :try_start_0
    new-instance v1, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;

    invoke-static {p0}, Lcom/truecaller/android/sdk/legacy/ClientManager;->createInstance(Lcom/truecaller/android/sdk/legacy/TruecallerSdkScope;)Lcom/truecaller/android/sdk/legacy/ClientManager;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;-><init>(Lcom/truecaller/android/sdk/legacy/ClientManager;)V

    sput-object v1, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->sInstance:Lcom/truecaller/android/sdk/legacy/TruecallerSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getUserProfile(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 162
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->mTcClientManager:Lcom/truecaller/android/sdk/legacy/ClientManager;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/ClientManager;->getClient()Lcom/truecaller/android/sdk/legacy/clients/TcClient;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/clients/TcClient;->getClientType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 165
    check-cast v0, Lcom/truecaller/android/sdk/legacy/clients/TrueClient;

    invoke-virtual {v0, p1}, Lcom/truecaller/android/sdk/legacy/clients/TrueClient;->getTrueCallerUserProfile(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 167
    :cond_0
    check-cast v0, Lcom/truecaller/android/sdk/legacy/clients/VerificationClient;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/truecaller/android/sdk/legacy/clients/VerificationClient;->notifyOtpAuthenticationRequired(Landroid/app/Activity;)V

    :goto_0
    return-void

    .line 170
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUserProfile(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->mTcClientManager:Lcom/truecaller/android/sdk/legacy/ClientManager;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/ClientManager;->getClient()Lcom/truecaller/android/sdk/legacy/clients/TcClient;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/clients/TcClient;->getClientType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 144
    check-cast v0, Lcom/truecaller/android/sdk/legacy/clients/TrueClient;

    invoke-virtual {v0, p1}, Lcom/truecaller/android/sdk/legacy/clients/TrueClient;->getTrueCallerUserProfile(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    .line 146
    :cond_0
    check-cast v0, Lcom/truecaller/android/sdk/legacy/clients/VerificationClient;

    invoke-virtual {v0, p1}, Lcom/truecaller/android/sdk/legacy/clients/VerificationClient;->notifyOtpAuthenticationRequired(Landroid/app/Activity;)V

    :goto_0
    return-void

    .line 149
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isUsable()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->mTcClientManager:Lcom/truecaller/android/sdk/legacy/ClientManager;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/ClientManager;->hasUsableClient()Z

    move-result v0

    return v0
.end method

.method public onActivityResultObtained(Landroidx/fragment/app/FragmentActivity;IILandroid/content/Intent;)Z
    .locals 3

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->isUsable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 190
    iget-object p2, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->mTcClientManager:Lcom/truecaller/android/sdk/legacy/ClientManager;

    invoke-virtual {p2}, Lcom/truecaller/android/sdk/legacy/ClientManager;->getClient()Lcom/truecaller/android/sdk/legacy/clients/TcClient;

    move-result-object p2

    .line 191
    invoke-virtual {p2}, Lcom/truecaller/android/sdk/legacy/clients/TcClient;->getClientType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    check-cast p2, Lcom/truecaller/android/sdk/legacy/clients/TrueClient;

    .line 192
    invoke-virtual {p2, p1, p3, p4}, Lcom/truecaller/android/sdk/legacy/clients/TrueClient;->onActivityResultObtained(Landroidx/fragment/app/FragmentActivity;ILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 194
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No compatible client available. Please change your scope"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestVerification(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 215
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->mTcClientManager:Lcom/truecaller/android/sdk/legacy/ClientManager;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/ClientManager;->getClient()Lcom/truecaller/android/sdk/legacy/clients/TcClient;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/clients/TcClient;->getClientType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 218
    check-cast v0, Lcom/truecaller/android/sdk/legacy/clients/VerificationClient;

    .line 219
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/truecaller/android/sdk/legacy/clients/VerificationClient;->checkClientInstallation(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;Landroidx/fragment/app/FragmentActivity;)V

    :cond_0
    return-void

    .line 223
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No compatible client available. Please change your scope"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->mTcClientManager:Lcom/truecaller/android/sdk/legacy/ClientManager;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/ClientManager;->getClient()Lcom/truecaller/android/sdk/legacy/clients/TcClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/truecaller/android/sdk/legacy/clients/TcClient;->setLocale(Ljava/util/Locale;)V

    return-void

    .line 290
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRequestNonce(Ljava/lang/String;)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->mTcClientManager:Lcom/truecaller/android/sdk/legacy/ClientManager;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/ClientManager;->getClient()Lcom/truecaller/android/sdk/legacy/clients/TcClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/truecaller/android/sdk/legacy/clients/TcClient;->setReqNonce(Ljava/lang/String;)V

    return-void

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTheme(I)V
    .locals 1

    .line 300
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->mTcClientManager:Lcom/truecaller/android/sdk/legacy/ClientManager;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/ClientManager;->getClient()Lcom/truecaller/android/sdk/legacy/clients/TcClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/truecaller/android/sdk/legacy/clients/TcClient;->setTheme(I)V

    return-void

    .line 303
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateCallback(Lcom/truecaller/android/sdk/legacy/ITrueCallback;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/truecaller/android/sdk/legacy/ClientManager;->getInstance()Lcom/truecaller/android/sdk/legacy/ClientManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/truecaller/android/sdk/legacy/ClientManager;->updateProfileCallback(Lcom/truecaller/android/sdk/legacy/ITrueCallback;)V

    return-void

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No compatible client available. Please change your scope"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyMissedCall(Lcom/truecaller/android/sdk/common/models/TrueProfile;Lcom/truecaller/android/sdk/common/VerificationCallback;)V
    .locals 3

    .line 270
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->mTcClientManager:Lcom/truecaller/android/sdk/legacy/ClientManager;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/ClientManager;->getClient()Lcom/truecaller/android/sdk/legacy/clients/TcClient;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/clients/TcClient;->getClientType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 273
    check-cast v0, Lcom/truecaller/android/sdk/legacy/clients/VerificationClient;

    invoke-virtual {v0, p1, p2}, Lcom/truecaller/android/sdk/legacy/clients/VerificationClient;->verifyMissedCallInstallation(Lcom/truecaller/android/sdk/common/models/TrueProfile;Lcom/truecaller/android/sdk/common/VerificationCallback;)V

    :cond_0
    return-void

    .line 276
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No compatible client available. Please change your scope"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyOtp(Lcom/truecaller/android/sdk/common/models/TrueProfile;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;)V
    .locals 3

    .line 243
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/TruecallerSDK;->mTcClientManager:Lcom/truecaller/android/sdk/legacy/ClientManager;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/ClientManager;->getClient()Lcom/truecaller/android/sdk/legacy/clients/TcClient;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/legacy/clients/TcClient;->getClientType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 246
    check-cast v0, Lcom/truecaller/android/sdk/legacy/clients/VerificationClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/truecaller/android/sdk/legacy/clients/VerificationClient;->verifyOtpInstallation(Lcom/truecaller/android/sdk/common/models/TrueProfile;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;)V

    :cond_0
    return-void

    .line 249
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No compatible client available. Please change your scope"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
