.class public final Lcom/boilerplate/network/NetworkHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boilerplate/network/NetworkHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 >2\u00020\u0001:\u0001>B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\tJ\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\tJ\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0007J\u00b6\u0001\u0010\u0017\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u001a0\u00190\u0018\"\u0004\u0008\u0000\u0010\u001a2*\u0010\u001b\u001a&\u0008\u0001\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u001a0\u001f\u0018\u00010\u001e0\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c2$\u0010 \u001a \u0008\u0001\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u0002H\u001a\u0018\u00010!0\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c2\"\u0010\"\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00010#2\u001c\u0010$\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001cH\u0086@\u00a2\u0006\u0002\u0010%JN\u0010&\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u001a0\u00190\u0018\"\u0004\u0008\u0000\u0010\u001a2*\u0010\u001b\u001a&\u0008\u0001\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u001a0\u001f\u0018\u00010\u001e0\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001cH\u0086@\u00a2\u0006\u0002\u0010\'JH\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u001a0\u0019\"\u0004\u0008\u0000\u0010\u001a2*\u0010\u001b\u001a&\u0008\u0001\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u001a0\u001f\u0018\u00010\u001e0\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001cH\u0086@\u00a2\u0006\u0002\u0010\'J\u001e\u0010)\u001a\u0002H*\"\u0006\u0008\u0000\u0010*\u0018\u00012\u0006\u0010+\u001a\u00020\tH\u0086\u0008\u00a2\u0006\u0002\u0010,J\u0016\u0010-\u001a\u0002H*\"\u0006\u0008\u0000\u0010*\u0018\u0001H\u0086\u0008\u00a2\u0006\u0002\u0010.J\u0006\u0010/\u001a\u000200J\u0008\u00101\u001a\u00020\rH\u0002J\u0006\u00102\u001a\u00020\u0005J\u0016\u00103\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u00104\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\u0006\u001a\u00020\u0007J\u000f\u00105\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0002\u00086J\u000f\u00107\u001a\u0004\u0018\u00010\tH\u0000\u00a2\u0006\u0002\u00088J/\u00109\u001a\u00020\r2\"\u0010:\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0<j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t`;\u00a2\u0006\u0002\u0010=R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"
    }
    d2 = {
        "Lcom/boilerplate/network/NetworkHandler;",
        "",
        "<init>",
        "()V",
        "headers",
        "Lcom/boilerplate/network/model/APIHeaders;",
        "isDebug",
        "",
        "refreshToken",
        "",
        "defaultAuthenticationCallback",
        "Lcom/boilerplate/network/auth/callback/DefaultAuthenticationCallback;",
        "initialize",
        "",
        "deviceId",
        "systemId",
        "appVersion",
        "setAccessToken",
        "accessToken",
        "setUserId",
        "userId",
        "enableDebugMode",
        "boolean",
        "getCachedData",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/boilerplate/network/model/NetworkResult;",
        "Output",
        "remoteFetch",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "Lretrofit2/Response;",
        "Lcom/boilerplate/network/model/DataResponse;",
        "localFetch",
        "",
        "localStore",
        "Lkotlin/Function2;",
        "localDelete",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getData",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getDataResult",
        "getApiClient",
        "ApiInterface",
        "baseUrl",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "getDefaultApiClient",
        "()Ljava/lang/Object;",
        "getOkHttpClient",
        "Lokhttp3/OkHttpClient;",
        "checkIfInitialized",
        "getHeaders",
        "addAuthentication",
        "setRefreshToken",
        "getDefaultAuthCallback",
        "getDefaultAuthCallback$network_release",
        "getRefreshToken",
        "getRefreshToken$network_release",
        "setAdditionalHeaders",
        "additionHeaders",
        "Lkotlin/collections/HashMap;",
        "Ljava/util/HashMap;",
        "(Ljava/util/HashMap;)V",
        "Companion",
        "network_release"
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
.field public static final Companion:Lcom/boilerplate/network/NetworkHandler$Companion;

.field private static networkHandler:Lcom/boilerplate/network/NetworkHandler;


# instance fields
.field private defaultAuthenticationCallback:Lcom/boilerplate/network/auth/callback/DefaultAuthenticationCallback;

.field private headers:Lcom/boilerplate/network/model/APIHeaders;

.field private isDebug:Z

.field private refreshToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/boilerplate/network/NetworkHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/boilerplate/network/NetworkHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/boilerplate/network/NetworkHandler;->Companion:Lcom/boilerplate/network/NetworkHandler$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHeaders$p(Lcom/boilerplate/network/NetworkHandler;)Lcom/boilerplate/network/model/APIHeaders;
    .locals 0

    iget-object p0, p0, Lcom/boilerplate/network/NetworkHandler;->headers:Lcom/boilerplate/network/model/APIHeaders;

    return-object p0
.end method

.method public static final synthetic access$getNetworkHandler$cp()Lcom/boilerplate/network/NetworkHandler;
    .locals 1

    sget-object v0, Lcom/boilerplate/network/NetworkHandler;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    return-object v0
.end method

.method public static final synthetic access$setNetworkHandler$cp(Lcom/boilerplate/network/NetworkHandler;)V
    .locals 0

    sput-object p0, Lcom/boilerplate/network/NetworkHandler;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    return-void
.end method

.method private final checkIfInitialized()V
    .locals 2

    sget-object v0, Lcom/boilerplate/network/NetworkHandler;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/boilerplate/network/utils/NetworkHandlerException;

    const-string v1, "Network Handler not initialized"

    invoke-direct {v0, v1}, Lcom/boilerplate/network/utils/NetworkHandlerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addAuthentication(Ljava/lang/String;Lcom/boilerplate/network/auth/callback/DefaultAuthenticationCallback;)V
    .locals 1

    const-string v0, "refreshToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultAuthenticationCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/boilerplate/network/NetworkHandler;->refreshToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/boilerplate/network/NetworkHandler;->defaultAuthenticationCallback:Lcom/boilerplate/network/auth/callback/DefaultAuthenticationCallback;

    return-void
.end method

.method public final enableDebugMode(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/boilerplate/network/NetworkHandler;->checkIfInitialized()V

    iput-boolean p1, p0, Lcom/boilerplate/network/NetworkHandler;->isDebug:Z

    return-void
.end method

.method public final synthetic getApiClient(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ApiInterface:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TApiInterface;"
        }
    .end annotation

    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/boilerplate/network/NetworkHandler;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    check-cast v0, Lretrofit2/Converter$Factory;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    const/4 v0, 0x4

    const-string v1, "ApiInterface"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getCachedData(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Output:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "TOutput;>;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TOutput;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TOutput;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "+TOutput;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/boilerplate/network/NetworkHandler;->checkIfInitialized()V

    new-instance v8, Lcom/boilerplate/network/NetworkResource;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/boilerplate/network/NetworkResource;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {v8, p3, p5, p1, p2}, Lcom/boilerplate/network/NetworkResource;->query$default(Lcom/boilerplate/network/NetworkResource;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getData(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Output:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "TOutput;>;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "+TOutput;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/boilerplate/network/NetworkHandler;->checkIfInitialized()V

    new-instance v0, Lcom/boilerplate/network/NetworkResource;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/boilerplate/network/NetworkResource;-><init>(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/boilerplate/network/NetworkResource;->query(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getDataResult(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Output:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "TOutput;>;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "+TOutput;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/boilerplate/network/NetworkHandler;->checkIfInitialized()V

    new-instance v0, Lcom/boilerplate/network/NetworkResource;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/boilerplate/network/NetworkResource;-><init>(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p2}, Lcom/boilerplate/network/NetworkResource;->queryWithoutFlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getDefaultApiClient()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ApiInterface:",
            "Ljava/lang/Object;",
            ">()TApiInterface;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/boilerplate/network/NetworkHandler;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://api-sbox.a4b.io/"

    goto :goto_0

    :cond_0
    const-string v0, "https://api.a4b.io/"

    :goto_0
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/boilerplate/network/NetworkHandler;->getOkHttpClient()Lokhttp3/OkHttpClient;

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

    const/4 v1, 0x4

    const-string v2, "ApiInterface"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultAuthCallback$network_release()Lcom/boilerplate/network/auth/callback/DefaultAuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/network/NetworkHandler;->defaultAuthenticationCallback:Lcom/boilerplate/network/auth/callback/DefaultAuthenticationCallback;

    return-object v0
.end method

.method public final getHeaders()Lcom/boilerplate/network/model/APIHeaders;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/network/NetworkHandler;->headers:Lcom/boilerplate/network/model/APIHeaders;

    if-nez v0, :cond_0

    const-string v0, "headers"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 4

    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-boolean v1, p0, Lcom/boilerplate/network/NetworkHandler;->isDebug:Z

    if-eqz v1, :cond_0

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_0

    :cond_0
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    :goto_0
    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v2, Lcom/boilerplate/network/NetworkHandler$getOkHttpClient$$inlined$-addInterceptor$1;

    invoke-direct {v2, p0}, Lcom/boilerplate/network/NetworkHandler$getOkHttpClient$$inlined$-addInterceptor$1;-><init>(Lcom/boilerplate/network/NetworkHandler;)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/boilerplate/network/NetworkHandler;->isDebug:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/boilerplate/network/utils/CurlLoggerInterceptor;

    const-string v2, "CURL"

    invoke-direct {v1, v2}, Lcom/boilerplate/network/utils/CurlLoggerInterceptor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final getRefreshToken$network_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/boilerplate/network/NetworkHandler;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appVersion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/boilerplate/network/NetworkHandler;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/boilerplate/network/model/APIHeaders;

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/boilerplate/network/model/APIHeaders;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/boilerplate/network/NetworkHandler;->headers:Lcom/boilerplate/network/model/APIHeaders;

    return-void

    :cond_0
    new-instance p1, Lcom/boilerplate/network/utils/NetworkHandlerException;

    const-string p2, "Already Initialized"

    invoke-direct {p1, p2}, Lcom/boilerplate/network/utils/NetworkHandlerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/boilerplate/network/NetworkHandler;->isDebug:Z

    return v0
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/boilerplate/network/NetworkHandler;->checkIfInitialized()V

    iget-object v0, p0, Lcom/boilerplate/network/NetworkHandler;->headers:Lcom/boilerplate/network/model/APIHeaders;

    if-nez v0, :cond_0

    const-string v0, "headers"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/boilerplate/network/model/APIHeaders;->setAccessToken(Ljava/lang/String;)V

    return-void
.end method

.method public final setAdditionalHeaders(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "additionHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/boilerplate/network/NetworkHandler;->headers:Lcom/boilerplate/network/model/APIHeaders;

    if-nez v0, :cond_0

    const-string v0, "headers"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/boilerplate/network/model/APIHeaders;->setAdditionalHeaders(Ljava/util/HashMap;)V

    return-void
.end method

.method public final setRefreshToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "refreshToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/boilerplate/network/NetworkHandler;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/boilerplate/network/NetworkHandler;->checkIfInitialized()V

    iget-object v0, p0, Lcom/boilerplate/network/NetworkHandler;->headers:Lcom/boilerplate/network/model/APIHeaders;

    if-nez v0, :cond_0

    const-string v0, "headers"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/boilerplate/network/model/APIHeaders;->setUserId(Ljava/lang/String;)V

    return-void
.end method
