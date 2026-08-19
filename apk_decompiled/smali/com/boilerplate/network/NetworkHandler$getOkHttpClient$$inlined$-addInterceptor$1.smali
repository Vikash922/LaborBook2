.class public final Lcom/boilerplate/network/NetworkHandler$getOkHttpClient$$inlined$-addInterceptor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boilerplate/network/NetworkHandler;->getOkHttpClient()Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "intercept",
        "okhttp3/OkHttpClient$Builder$addInterceptor$2"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boilerplate/network/NetworkHandler;


# direct methods
.method public constructor <init>(Lcom/boilerplate/network/NetworkHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/boilerplate/network/NetworkHandler$getOkHttpClient$$inlined$-addInterceptor$1;->this$0:Lcom/boilerplate/network/NetworkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bearer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/boilerplate/network/NetworkHandler$getOkHttpClient$$inlined$-addInterceptor$1;->this$0:Lcom/boilerplate/network/NetworkHandler;

    invoke-static {v3}, Lcom/boilerplate/network/NetworkHandler;->access$getHeaders$p(Lcom/boilerplate/network/NetworkHandler;)Lcom/boilerplate/network/model/APIHeaders;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "headers"

    if-nez v3, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_0
    invoke-virtual {v3}, Lcom/boilerplate/network/model/APIHeaders;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authorization"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/boilerplate/network/NetworkHandler$getOkHttpClient$$inlined$-addInterceptor$1;->this$0:Lcom/boilerplate/network/NetworkHandler;

    invoke-static {v2}, Lcom/boilerplate/network/NetworkHandler;->access$getHeaders$p(Lcom/boilerplate/network/NetworkHandler;)Lcom/boilerplate/network/model/APIHeaders;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_1
    invoke-virtual {v2}, Lcom/boilerplate/network/model/APIHeaders;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Device-ID"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/boilerplate/network/NetworkHandler$getOkHttpClient$$inlined$-addInterceptor$1;->this$0:Lcom/boilerplate/network/NetworkHandler;

    invoke-static {v2}, Lcom/boilerplate/network/NetworkHandler;->access$getHeaders$p(Lcom/boilerplate/network/NetworkHandler;)Lcom/boilerplate/network/model/APIHeaders;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_2
    invoke-virtual {v2}, Lcom/boilerplate/network/model/APIHeaders;->getSystemId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "System-ID"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/boilerplate/network/NetworkHandler$getOkHttpClient$$inlined$-addInterceptor$1;->this$0:Lcom/boilerplate/network/NetworkHandler;

    invoke-static {v2}, Lcom/boilerplate/network/NetworkHandler;->access$getHeaders$p(Lcom/boilerplate/network/NetworkHandler;)Lcom/boilerplate/network/model/APIHeaders;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_3
    invoke-virtual {v2}, Lcom/boilerplate/network/model/APIHeaders;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "App-Version"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "App-Type"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/boilerplate/network/NetworkHandler$getOkHttpClient$$inlined$-addInterceptor$1;->this$0:Lcom/boilerplate/network/NetworkHandler;

    invoke-static {v2}, Lcom/boilerplate/network/NetworkHandler;->access$getHeaders$p(Lcom/boilerplate/network/NetworkHandler;)Lcom/boilerplate/network/model/APIHeaders;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_4
    invoke-virtual {v2}, Lcom/boilerplate/network/model/APIHeaders;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-ID"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/boilerplate/network/NetworkHandler$getOkHttpClient$$inlined$-addInterceptor$1;->this$0:Lcom/boilerplate/network/NetworkHandler;

    invoke-static {v1}, Lcom/boilerplate/network/NetworkHandler;->access$getHeaders$p(Lcom/boilerplate/network/NetworkHandler;)Lcom/boilerplate/network/model/APIHeaders;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_5
    invoke-virtual {v1}, Lcom/boilerplate/network/model/APIHeaders;->getAdditionalHeaders()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "next(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/boilerplate/network/NetworkHandler$getOkHttpClient$$inlined$-addInterceptor$1;->this$0:Lcom/boilerplate/network/NetworkHandler;

    invoke-static {v3}, Lcom/boilerplate/network/NetworkHandler;->access$getHeaders$p(Lcom/boilerplate/network/NetworkHandler;)Lcom/boilerplate/network/model/APIHeaders;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_6
    invoke-virtual {v3}, Lcom/boilerplate/network/model/APIHeaders;->getAdditionalHeaders()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_7

    const-string v3, ""

    :cond_7
    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
