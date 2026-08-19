.class public abstract Lcom/truecaller/android/sdk/common/callbacks/CreateInstallationCallback;
.super Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;
.source "CreateInstallationCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field static final CLIENT_STATUS_NOT_VERIFIED:I = 0x0

.field static final CLIENT_STATUS_VERIFIED:I = 0x1

.field static final TOKEN_TTL:Ljava/lang/String; = "tokenTtl"


# instance fields
.field private final mInstallationModel:Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;

.field protected final mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;


# direct methods
.method constructor <init>(Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;Lcom/truecaller/android/sdk/common/VerificationCallback;ZLcom/truecaller/android/sdk/common/VerificationRequestManager;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p2, p3, p5}, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;-><init>(Lcom/truecaller/android/sdk/common/VerificationCallback;ZI)V

    .line 66
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/CreateInstallationCallback;->mInstallationModel:Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;

    .line 67
    iput-object p4, p0, Lcom/truecaller/android/sdk/common/callbacks/CreateInstallationCallback;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    return-void
.end method


# virtual methods
.method handleRetryAttempt()V
    .locals 0

    return-void
.end method

.method bridge synthetic handleSuccessfulResponse(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/truecaller/android/sdk/common/callbacks/CreateInstallationCallback;->handleSuccessfulResponse(Ljava/util/Map;)V

    return-void
.end method

.method handleSuccessfulResponse(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 72
    const-string v0, "status"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 74
    const-string v0, "verificationToken"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/truecaller/android/sdk/common/callbacks/CreateInstallationCallback;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/truecaller/android/sdk/common/VerificationRequestManager;->setVerificationToken(Ljava/lang/String;J)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/truecaller/android/sdk/common/callbacks/CreateInstallationCallback;->onVerificationRequired(Ljava/util/Map;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 78
    const-string v0, "accessToken"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    const-string v1, "requestNonce"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/truecaller/android/sdk/common/callbacks/CreateInstallationCallback;->mPresenter:Lcom/truecaller/android/sdk/common/VerificationRequestManager;

    iget-object v2, p0, Lcom/truecaller/android/sdk/common/callbacks/CreateInstallationCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    invoke-interface {v1, p1, v0, v2}, Lcom/truecaller/android/sdk/common/VerificationRequestManager;->enqueueFetchProfile(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/common/VerificationCallback;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/CreateInstallationCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    iget v0, p0, Lcom/truecaller/android/sdk/common/callbacks/CreateInstallationCallback;->mCallbackType:I

    new-instance v1, Lcom/truecaller/android/sdk/common/TrueException;

    const/4 v2, 0x1

    const-string v3, "Unknown error"

    invoke-direct {v1, v2, v3}, Lcom/truecaller/android/sdk/common/TrueException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/common/TrueException;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    return-void
.end method

.method abstract onVerificationRequired(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
