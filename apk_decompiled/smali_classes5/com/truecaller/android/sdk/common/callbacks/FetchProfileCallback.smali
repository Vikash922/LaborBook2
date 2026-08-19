.class public Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;
.super Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;
.source "FetchProfileCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback<",
        "Lcom/truecaller/android/sdk/common/models/TrueProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

.field private mRequestNonce:Ljava/lang/String;

.field public mShouldRetryOnInternalError:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;Lcom/truecaller/android/sdk/common/VerificationRequestManager;Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x6

    .line 60
    invoke-direct {p0, p3, v0, v1}, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;-><init>(Lcom/truecaller/android/sdk/common/VerificationCallback;ZI)V

    .line 61
    iput-object p2, p0, Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;->mAccessToken:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    .line 63
    iput-boolean p5, p0, Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;->mShouldRetryOnInternalError:Z

    .line 64
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;->mRequestNonce:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method handleRetryAttempt()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    iget-object v1, p0, Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;->mAccessToken:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/truecaller/android/sdk/common/VerificationRequestManager;->retryFetchProfile(Ljava/lang/String;Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;)V

    return-void
.end method

.method handleSuccessfulResponse(Lcom/truecaller/android/sdk/common/models/TrueProfile;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;->mAccessToken:Ljava/lang/String;

    iput-object v0, p1, Lcom/truecaller/android/sdk/common/models/TrueProfile;->accessToken:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;->mRequestNonce:Ljava/lang/String;

    iput-object v0, p1, Lcom/truecaller/android/sdk/common/models/TrueProfile;->requestNonce:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/truecaller/android/sdk/common/VerificationDataBundle;

    invoke-direct {v0}, Lcom/truecaller/android/sdk/common/VerificationDataBundle;-><init>()V

    .line 77
    const-string v1, "profile"

    invoke-virtual {v0, v1, p1}, Lcom/truecaller/android/sdk/common/VerificationDataBundle;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    iget v1, p0, Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;->mCallbackType:I

    invoke-interface {p1, v1, v0}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestSuccess(ILcom/truecaller/android/sdk/common/VerificationDataBundle;)V

    return-void
.end method

.method bridge synthetic handleSuccessfulResponse(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lcom/truecaller/android/sdk/common/models/TrueProfile;

    invoke-virtual {p0, p1}, Lcom/truecaller/android/sdk/common/callbacks/FetchProfileCallback;->handleSuccessfulResponse(Lcom/truecaller/android/sdk/common/models/TrueProfile;)V

    return-void
.end method

.method public bridge synthetic onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    return-void
.end method
