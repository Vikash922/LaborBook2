.class public final Lcom/boilerplate/network/auth/data/repository/AuthRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/boilerplate/network/auth/data/repository/AuthRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JB\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u00082\"\u0010\t\u001a\u001e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u000bj\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008`\nH\u0096@\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/boilerplate/network/auth/data/repository/AuthRepositoryImpl;",
        "Lcom/boilerplate/network/auth/data/repository/AuthRepository;",
        "<init>",
        "()V",
        "generateAccessToken",
        "Lcom/boilerplate/network/model/NetworkResult;",
        "Lcom/boilerplate/network/auth/model/FixTokenResponse;",
        "baseUrl",
        "",
        "refreshToken",
        "Lkotlin/collections/HashMap;",
        "Ljava/util/HashMap;",
        "(Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateAccessToken(Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/boilerplate/network/auth/model/FixTokenResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p1, Lcom/boilerplate/network/NetworkHandler;->Companion:Lcom/boilerplate/network/NetworkHandler$Companion;

    invoke-virtual {p1}, Lcom/boilerplate/network/NetworkHandler$Companion;->getInstance()Lcom/boilerplate/network/NetworkHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/boilerplate/network/NetworkHandler;->isDebug()Z

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

    invoke-virtual {p1}, Lcom/boilerplate/network/NetworkHandler;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    const-class v0, Lcom/boilerplate/network/auth/data/remote/AuthApi;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/boilerplate/network/auth/data/remote/AuthApi;

    new-instance v6, Lcom/boilerplate/network/NetworkResource;

    new-instance v1, Lcom/boilerplate/network/auth/data/repository/a;

    const/4 v0, 0x0

    invoke-direct {v1, p1, p2, v0}, Lcom/boilerplate/network/auth/data/repository/a;-><init>(Lcom/boilerplate/network/auth/data/remote/AuthApi;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/boilerplate/network/NetworkResource;-><init>(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v6, p3}, Lcom/boilerplate/network/NetworkResource;->queryWithoutFlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
