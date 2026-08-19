.class public interface abstract Lcom/laborbook/auth/network/AuthApi;
.super Ljava/lang/Object;
.source "AuthApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/auth/network/AuthApi$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010J$\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\u0008J$\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\u0008J$\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\u0008J$\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00040\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u000eH\u00a7@\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/laborbook/auth/network/AuthApi;",
        "",
        "generateOtp",
        "Lretrofit2/Response;",
        "Lcom/boilerplate/network/model/DataResponse;",
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
        "Companion",
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


# static fields
.field public static final API_VERSION:Ljava/lang/String; = "api/v1"

.field public static final Companion:Lcom/laborbook/auth/network/AuthApi$Companion;

.field public static final GENERATE_OTP:Ljava/lang/String; = "/create-otp"

.field public static final RESENT_OTP:Ljava/lang/String; = "/resend-otp"

.field public static final TRUECALLER_LOGIN:Ljava/lang/String; = "/login/truecaller"

.field public static final VERIFY_OTP:Ljava/lang/String; = "/verify-otp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/laborbook/auth/network/AuthApi$Companion;->$$INSTANCE:Lcom/laborbook/auth/network/AuthApi$Companion;

    sput-object v0, Lcom/laborbook/auth/network/AuthApi;->Companion:Lcom/laborbook/auth/network/AuthApi$Companion;

    return-void
.end method


# virtual methods
.method public abstract generateOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/laborbook/auth/model/request/AuthRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/model/request/AuthRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lkotlin/Unit;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/create-otp"
    .end annotation
.end method

.method public abstract resendOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/laborbook/auth/model/request/AuthRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/model/request/AuthRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lkotlin/Unit;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/resend-otp"
    .end annotation
.end method

.method public abstract truecallerLogin(Lcom/laborbook/auth/model/request/TruecallerRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/laborbook/auth/model/request/TruecallerRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/model/request/TruecallerRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/auth/model/request/AuthResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/login/truecaller"
    .end annotation
.end method

.method public abstract verifyOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/laborbook/auth/model/request/AuthRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/model/request/AuthRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/auth/model/request/AuthResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/verify-otp"
    .end annotation
.end method
