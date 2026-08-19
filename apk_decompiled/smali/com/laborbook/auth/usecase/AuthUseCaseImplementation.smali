.class public final Lcom/laborbook/auth/usecase/AuthUseCaseImplementation;
.super Ljava/lang/Object;
.source "AuthUseCaseImplementation.kt"

# interfaces
.implements Lcom/laborbook/auth/usecase/AuthUseCase;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J$\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n0\t2\u0006\u0010\u000c\u001a\u00020\rH\u0096@\u00a2\u0006\u0002\u0010\u000eJ$\u0010\u000f\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n0\t2\u0006\u0010\u000c\u001a\u00020\rH\u0096@\u00a2\u0006\u0002\u0010\u000eJ$\u0010\u0010\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\n0\t2\u0006\u0010\u000c\u001a\u00020\rH\u0096@\u00a2\u0006\u0002\u0010\u000eJ$\u0010\u0012\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\n0\t2\u0006\u0010\u0013\u001a\u00020\u0014H\u0096@\u00a2\u0006\u0002\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/laborbook/auth/usecase/AuthUseCaseImplementation;",
        "Lcom/laborbook/auth/usecase/AuthUseCase;",
        "authRepository",
        "Lcom/laborbook/auth/repository/AuthRepository;",
        "<init>",
        "(Lcom/laborbook/auth/repository/AuthRepository;)V",
        "getAuthRepository",
        "()Lcom/laborbook/auth/repository/AuthRepository;",
        "generateOtp",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/boilerplate/network/model/NetworkResult;",
        "",
        "authRequestBody",
        "Lcom/laborbook/auth/model/request/AuthRequestBody;",
        "(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "resendOtp",
        "verifyOtp",
        "Lcom/laborbook/auth/model/request/AuthResponse;",
        "truecallerLogin",
        "truecallerRequestBody",
        "Lcom/laborbook/auth/model/request/TruecallerRequestBody;",
        "(Lcom/laborbook/auth/model/request/TruecallerRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final authRepository:Lcom/laborbook/auth/repository/AuthRepository;


# direct methods
.method public constructor <init>(Lcom/laborbook/auth/repository/AuthRepository;)V
    .locals 1

    const-string v0, "authRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/auth/usecase/AuthUseCaseImplementation;->authRepository:Lcom/laborbook/auth/repository/AuthRepository;

    return-void
.end method


# virtual methods
.method public generateOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/model/request/AuthRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lkotlin/Unit;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/laborbook/auth/usecase/AuthUseCaseImplementation;->authRepository:Lcom/laborbook/auth/repository/AuthRepository;

    invoke-interface {v0, p1, p2}, Lcom/laborbook/auth/repository/AuthRepository;->generateOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getAuthRepository()Lcom/laborbook/auth/repository/AuthRepository;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/laborbook/auth/usecase/AuthUseCaseImplementation;->authRepository:Lcom/laborbook/auth/repository/AuthRepository;

    return-object v0
.end method

.method public resendOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/model/request/AuthRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lkotlin/Unit;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/laborbook/auth/usecase/AuthUseCaseImplementation;->authRepository:Lcom/laborbook/auth/repository/AuthRepository;

    invoke-interface {v0, p1, p2}, Lcom/laborbook/auth/repository/AuthRepository;->generateOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public truecallerLogin(Lcom/laborbook/auth/model/request/TruecallerRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/model/request/TruecallerRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/auth/model/request/AuthResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/laborbook/auth/usecase/AuthUseCaseImplementation;->authRepository:Lcom/laborbook/auth/repository/AuthRepository;

    invoke-interface {v0, p1, p2}, Lcom/laborbook/auth/repository/AuthRepository;->truecallerLogin(Lcom/laborbook/auth/model/request/TruecallerRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public verifyOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/model/request/AuthRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/auth/model/request/AuthResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/laborbook/auth/usecase/AuthUseCaseImplementation;->authRepository:Lcom/laborbook/auth/repository/AuthRepository;

    invoke-interface {v0, p1, p2}, Lcom/laborbook/auth/repository/AuthRepository;->verifyOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
