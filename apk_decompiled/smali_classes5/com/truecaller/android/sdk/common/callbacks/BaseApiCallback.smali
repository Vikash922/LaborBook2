.class abstract Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;
.super Ljava/lang/Object;
.source "BaseApiCallback.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

.field final mCallbackType:I

.field public mShouldRetryOnInternalError:Z


# direct methods
.method constructor <init>(Lcom/truecaller/android/sdk/common/VerificationCallback;ZI)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    .line 63
    iput-boolean p2, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mShouldRetryOnInternalError:Z

    .line 64
    iput p3, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallbackType:I

    return-void
.end method


# virtual methods
.method handleFailureWithMessage(Lcom/truecaller/android/sdk/common/ErrorResponse;)V
    .locals 4

    .line 96
    iget-boolean v0, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mShouldRetryOnInternalError:Z

    if-eqz v0, :cond_0

    const-string v0, "internal service error"

    invoke-virtual {p1}, Lcom/truecaller/android/sdk/common/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mShouldRetryOnInternalError:Z

    .line 98
    invoke-virtual {p0}, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->handleRetryAttempt()V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/android/sdk/common/ErrorResponse;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 117
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    iget v1, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallbackType:I

    new-instance v2, Lcom/truecaller/android/sdk/common/TrueException;

    const/4 v3, 0x2

    .line 118
    invoke-virtual {p1}, Lcom/truecaller/android/sdk/common/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/truecaller/android/sdk/common/TrueException;-><init>(ILjava/lang/String;)V

    .line 117
    invoke-interface {v0, v1, v2}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/common/TrueException;)V

    goto :goto_0

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    iget v1, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallbackType:I

    new-instance v2, Lcom/truecaller/android/sdk/common/TrueException;

    const/4 v3, 0x7

    .line 113
    invoke-virtual {p1}, Lcom/truecaller/android/sdk/common/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/truecaller/android/sdk/common/TrueException;-><init>(ILjava/lang/String;)V

    .line 112
    invoke-interface {v0, v1, v2}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/common/TrueException;)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    iget v1, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallbackType:I

    new-instance v2, Lcom/truecaller/android/sdk/common/TrueException;

    const/4 v3, 0x6

    .line 108
    invoke-virtual {p1}, Lcom/truecaller/android/sdk/common/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/truecaller/android/sdk/common/TrueException;-><init>(ILjava/lang/String;)V

    .line 107
    invoke-interface {v0, v1, v2}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/common/TrueException;)V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v0, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    iget v1, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallbackType:I

    new-instance v2, Lcom/truecaller/android/sdk/common/TrueException;

    const/4 v3, 0x4

    .line 103
    invoke-virtual {p1}, Lcom/truecaller/android/sdk/common/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/truecaller/android/sdk/common/TrueException;-><init>(ILjava/lang/String;)V

    .line 102
    invoke-interface {v0, v1, v2}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/common/TrueException;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xfa3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method abstract handleRetryAttempt()V
.end method

.method abstract handleSuccessfulResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 127
    iget-object p1, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    iget v0, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallbackType:I

    new-instance v1, Lcom/truecaller/android/sdk/common/TrueException;

    const/4 v2, 0x2

    .line 128
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/truecaller/android/sdk/common/TrueException;-><init>(ILjava/lang/String;)V

    .line 127
    invoke-interface {p1, v0, v1}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/common/TrueException;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 69
    const-string p1, "Unknown error"

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 71
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->handleSuccessfulResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/android/sdk/legacy/Utils;->parseError(Lokhttp3/ResponseBody;)Lcom/truecaller/android/sdk/common/ErrorResponse;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->handleFailureWithMessage(Lcom/truecaller/android/sdk/common/ErrorResponse;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p2, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    iget v1, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallbackType:I

    new-instance v2, Lcom/truecaller/android/sdk/common/TrueException;

    invoke-direct {v2, v0, p1}, Lcom/truecaller/android/sdk/common/TrueException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v1, v2}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/common/TrueException;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object p2, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallback:Lcom/truecaller/android/sdk/common/VerificationCallback;

    iget v1, p0, Lcom/truecaller/android/sdk/common/callbacks/BaseApiCallback;->mCallbackType:I

    new-instance v2, Lcom/truecaller/android/sdk/common/TrueException;

    invoke-direct {v2, v0, p1}, Lcom/truecaller/android/sdk/common/TrueException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v1, v2}, Lcom/truecaller/android/sdk/common/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/common/TrueException;)V

    :goto_0
    return-void
.end method
