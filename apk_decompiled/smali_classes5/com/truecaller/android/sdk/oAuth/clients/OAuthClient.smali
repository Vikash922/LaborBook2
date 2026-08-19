.class public Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;
.super Lcom/truecaller/android/sdk/oAuth/clients/BaseClient;
.source "OAuthClient.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final sdkOptionsEvaluator:Lcom/truecaller/android/sdk/oAuth/SdkOptionsEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;Lcom/truecaller/android/sdk/oAuth/SdkOptionsEvaluator;)V
    .locals 1

    const/4 v0, 0x1

    .line 74
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/truecaller/android/sdk/oAuth/clients/BaseClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;I)V

    .line 75
    iput-object p4, p0, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->sdkOptionsEvaluator:Lcom/truecaller/android/sdk/oAuth/SdkOptionsEvaluator;

    return-void
.end method

.method private handleActivityNotFound()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->mCallback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    sget-object v1, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;->INSTANCE:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;

    invoke-interface {v0, v1}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onFailure(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    return-void
.end method


# virtual methods
.method public getAuthorizationCode(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 92
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->getShareProfileIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->handleNullProfileIntent(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    .line 99
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    invoke-direct {p0}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->handleActivityNotFound()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAuthorizationCode(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 80
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->getShareProfileIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->handleNullProfileIntent(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    .line 84
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    invoke-direct {p0}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->handleActivityNotFound()V

    :goto_0
    return-void
.end method

.method getShareProfileIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 12

    .line 114
    invoke-static {p1}, Lcom/truecaller/android/sdk/oAuth/UtilsV2;->getApplicationSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 121
    new-instance v11, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    .line 122
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->getLocale()Ljava/util/Locale;

    move-result-object v5

    sget v0, Lcom/truecaller/android/sdk/R$string;->sdk_variant:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcom/truecaller/android/sdk/R$string;->sdk_variant_version:I

    .line 123
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->getCodeChallenge()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->getScopes()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->getState()Ljava/lang/String;

    move-result-object v10

    const-string v1, "3.1.0"

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->sdkOptionsEvaluator:Lcom/truecaller/android/sdk/oAuth/SdkOptionsEvaluator;

    invoke-static {p1, v11, v0}, Lcom/truecaller/android/sdk/oAuth/ShareProfileHelperV2;->getShareProfileIntent(Landroid/content/Context;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Lcom/truecaller/android/sdk/oAuth/SdkOptionsEvaluator;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not fetch application\'s signature"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method handleConsentFailure(Landroidx/fragment/app/FragmentActivity;Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V
    .locals 8

    .line 165
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->sdkOptionsEvaluator:Lcom/truecaller/android/sdk/oAuth/SdkOptionsEvaluator;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/SdkOptionsEvaluator;->isVerificationFeatureRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/truecaller/android/sdk/oAuth/ClientManagerV2;->getInstance()Lcom/truecaller/android/sdk/oAuth/ClientManagerV2;

    move-result-object v1

    iget-object v2, p0, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->getState()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->mCallback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/truecaller/android/sdk/oAuth/ClientManagerV2;->switchToVerificationFallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;Landroid/app/Activity;Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->mCallback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    invoke-interface {p1, p2}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onFailure(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    :goto_0
    return-void
.end method

.method handleNullProfileIntent(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 160
    sget-object v0, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerNotInstalledError;->INSTANCE:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerNotInstalledError;

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->handleConsentFailure(Landroidx/fragment/app/FragmentActivity;Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    return-void
.end method

.method public onActivityResultObtained(Landroidx/fragment/app/FragmentActivity;ILandroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 130
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 135
    :cond_0
    const-string v1, "OAUTH_SDK_RESPONSE_EXTRA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    if-nez p3, :cond_1

    .line 137
    iget-object p1, p0, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->mCallback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    sget-object p2, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$RequestCodeCollisionError;->INSTANCE:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$RequestCodeCollisionError;

    invoke-interface {p1, p2}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onFailure(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    return v0

    :cond_1
    const/4 v0, -0x1

    if-ne v0, p2, :cond_2

    .line 140
    invoke-virtual {p3}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 141
    check-cast p3, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;

    .line 142
    iget-object p1, p0, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->mCallback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    invoke-virtual {p3}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;->getTcOAuthData()Lcom/truecaller/android/sdk/oAuth/TcOAuthData;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onSuccess(Lcom/truecaller/android/sdk/oAuth/TcOAuthData;)V

    goto :goto_1

    .line 144
    :cond_2
    check-cast p3, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    .line 145
    invoke-virtual {p3}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->getTcOAuthError()Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    move-result-object p2

    .line 146
    sget-object p3, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedError;->INSTANCE:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedError;

    if-eq p2, p3, :cond_4

    sget-object p3, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedByPressingFooterError;->INSTANCE:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedByPressingFooterError;

    if-eq p2, p3, :cond_4

    sget-object p3, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedWhileLoadingError;->INSTANCE:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedWhileLoadingError;

    if-eq p2, p3, :cond_4

    sget-object p3, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$InvalidAccountStateError;->INSTANCE:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$InvalidAccountStateError;

    if-ne p2, p3, :cond_3

    goto :goto_0

    .line 152
    :cond_3
    iget-object p1, p0, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->mCallback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    invoke-interface {p1, p2}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onFailure(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    goto :goto_1

    .line 150
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->handleConsentFailure(Landroidx/fragment/app/FragmentActivity;Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    :goto_1
    const/4 p1, 0x1

    return p1

    .line 131
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/truecaller/android/sdk/oAuth/clients/OAuthClient;->mCallback:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    sget-object p2, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerClosedError;->INSTANCE:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerClosedError;

    invoke-interface {p1, p2}, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;->onFailure(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    return v0
.end method
