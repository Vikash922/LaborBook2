.class public final Lcom/amplitude/core/utilities/HttpResponse;
.super Ljava/lang/Object;
.source "Response.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/amplitude/core/utilities/HttpResponse;",
        "",
        "()V",
        "createHttpResponse",
        "Lcom/amplitude/core/utilities/Response;",
        "code",
        "",
        "responseBody",
        "",
        "parseResponseBodyOrGetDefault",
        "Lorg/json/JSONObject;",
        "core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amplitude/core/utilities/HttpResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amplitude/core/utilities/HttpResponse;

    invoke-direct {v0}, Lcom/amplitude/core/utilities/HttpResponse;-><init>()V

    sput-object v0, Lcom/amplitude/core/utilities/HttpResponse;->INSTANCE:Lcom/amplitude/core/utilities/HttpResponse;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final parseResponseBodyOrGetDefault(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 40
    :catch_0
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final createHttpResponse(ILjava/lang/String;)Lcom/amplitude/core/utilities/Response;
    .locals 1

    .line 10
    sget-object v0, Lcom/amplitude/core/utilities/HttpStatus;->SUCCESS:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {v0}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 11
    new-instance p1, Lcom/amplitude/core/utilities/SuccessResponse;

    invoke-direct {p1}, Lcom/amplitude/core/utilities/SuccessResponse;-><init>()V

    check-cast p1, Lcom/amplitude/core/utilities/Response;

    return-object p1

    .line 13
    :cond_0
    sget-object v0, Lcom/amplitude/core/utilities/HttpStatus;->BAD_REQUEST:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {v0}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 14
    new-instance p1, Lcom/amplitude/core/utilities/BadRequestResponse;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/amplitude/core/utilities/BadRequestResponse;-><init>(Lorg/json/JSONObject;)V

    check-cast p1, Lcom/amplitude/core/utilities/Response;

    return-object p1

    .line 16
    :cond_1
    sget-object v0, Lcom/amplitude/core/utilities/HttpStatus;->PAYLOAD_TOO_LARGE:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {v0}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 17
    new-instance p1, Lcom/amplitude/core/utilities/PayloadTooLargeResponse;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/amplitude/core/utilities/PayloadTooLargeResponse;-><init>(Lorg/json/JSONObject;)V

    check-cast p1, Lcom/amplitude/core/utilities/Response;

    return-object p1

    .line 19
    :cond_2
    sget-object v0, Lcom/amplitude/core/utilities/HttpStatus;->TOO_MANY_REQUESTS:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {v0}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 20
    new-instance p1, Lcom/amplitude/core/utilities/TooManyRequestsResponse;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/amplitude/core/utilities/TooManyRequestsResponse;-><init>(Lorg/json/JSONObject;)V

    check-cast p1, Lcom/amplitude/core/utilities/Response;

    return-object p1

    .line 22
    :cond_3
    sget-object v0, Lcom/amplitude/core/utilities/HttpStatus;->TIMEOUT:Lcom/amplitude/core/utilities/HttpStatus;

    invoke-virtual {v0}, Lcom/amplitude/core/utilities/HttpStatus;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 23
    new-instance p1, Lcom/amplitude/core/utilities/TimeoutResponse;

    invoke-direct {p1}, Lcom/amplitude/core/utilities/TimeoutResponse;-><init>()V

    check-cast p1, Lcom/amplitude/core/utilities/Response;

    return-object p1

    .line 26
    :cond_4
    new-instance p1, Lcom/amplitude/core/utilities/FailedResponse;

    invoke-direct {p0, p2}, Lcom/amplitude/core/utilities/HttpResponse;->parseResponseBodyOrGetDefault(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amplitude/core/utilities/FailedResponse;-><init>(Lorg/json/JSONObject;)V

    check-cast p1, Lcom/amplitude/core/utilities/Response;

    return-object p1
.end method
