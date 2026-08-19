.class public Lcom/laborbook/auth/network/AuthNetworkModule;
.super Ljava/lang/Object;
.source "AuthNetworkModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0014J$\u0010\u0015\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0014J$\u0010\u0016\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0014J$\u0010\u0018\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00100\u000f2\u0006\u0010\u0019\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010\u001bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/laborbook/auth/network/AuthNetworkModule;",
        "",
        "<init>",
        "()V",
        "baseUrl",
        "",
        "networkHandler",
        "Lcom/boilerplate/network/NetworkHandler;",
        "getNetworkHandler",
        "()Lcom/boilerplate/network/NetworkHandler;",
        "setNetworkHandler",
        "(Lcom/boilerplate/network/NetworkHandler;)V",
        "api",
        "Lcom/laborbook/auth/network/AuthApi;",
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
.field private final api:Lcom/laborbook/auth/network/AuthApi;

.field private final baseUrl:Ljava/lang/String;

.field private networkHandler:Lcom/boilerplate/network/NetworkHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "https://api.laborbook.app/"

    iput-object v0, p0, Lcom/laborbook/auth/network/AuthNetworkModule;->baseUrl:Ljava/lang/String;

    .line 14
    sget-object v1, Lcom/boilerplate/network/NetworkHandler;->Companion:Lcom/boilerplate/network/NetworkHandler$Companion;

    invoke-virtual {v1}, Lcom/boilerplate/network/NetworkHandler$Companion;->getInstance()Lcom/boilerplate/network/NetworkHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/laborbook/auth/network/AuthNetworkModule;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    .line 15
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/boilerplate/network/NetworkHandler;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/laborbook/auth/network/AuthApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/network/AuthApi;

    iput-object v0, p0, Lcom/laborbook/auth/network/AuthNetworkModule;->api:Lcom/laborbook/auth/network/AuthApi;

    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/laborbook/auth/network/AuthNetworkModule;)Lcom/laborbook/auth/network/AuthApi;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/laborbook/auth/network/AuthNetworkModule;->api:Lcom/laborbook/auth/network/AuthApi;

    return-object p0
.end method


# virtual methods
.method public final generateOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 19
    iget-object v0, p0, Lcom/laborbook/auth/network/AuthNetworkModule;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    new-instance v1, Lcom/laborbook/auth/network/AuthNetworkModule$generateOtp$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/laborbook/auth/network/AuthNetworkModule$generateOtp$2;-><init>(Lcom/laborbook/auth/network/AuthNetworkModule;Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, p2}, Lcom/boilerplate/network/NetworkHandler;->getData(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getNetworkHandler()Lcom/boilerplate/network/NetworkHandler;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/laborbook/auth/network/AuthNetworkModule;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    return-object v0
.end method

.method public final resendOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 25
    iget-object v0, p0, Lcom/laborbook/auth/network/AuthNetworkModule;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    new-instance v1, Lcom/laborbook/auth/network/AuthNetworkModule$resendOtp$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/laborbook/auth/network/AuthNetworkModule$resendOtp$2;-><init>(Lcom/laborbook/auth/network/AuthNetworkModule;Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, p2}, Lcom/boilerplate/network/NetworkHandler;->getData(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setNetworkHandler(Lcom/boilerplate/network/NetworkHandler;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/laborbook/auth/network/AuthNetworkModule;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    return-void
.end method

.method public final truecallerLogin(Lcom/laborbook/auth/model/request/TruecallerRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 37
    iget-object v0, p0, Lcom/laborbook/auth/network/AuthNetworkModule;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    new-instance v1, Lcom/laborbook/auth/network/AuthNetworkModule$truecallerLogin$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/laborbook/auth/network/AuthNetworkModule$truecallerLogin$2;-><init>(Lcom/laborbook/auth/network/AuthNetworkModule;Lcom/laborbook/auth/model/request/TruecallerRequestBody;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, p2}, Lcom/boilerplate/network/NetworkHandler;->getData(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final verifyOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 31
    iget-object v0, p0, Lcom/laborbook/auth/network/AuthNetworkModule;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    new-instance v1, Lcom/laborbook/auth/network/AuthNetworkModule$verifyOtp$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/laborbook/auth/network/AuthNetworkModule$verifyOtp$2;-><init>(Lcom/laborbook/auth/network/AuthNetworkModule;Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, p2}, Lcom/boilerplate/network/NetworkHandler;->getData(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
