.class public final Lcom/amplitude/core/utilities/FailedResponse;
.super Ljava/lang/Object;
.source "Response.kt"

# interfaces
.implements Lcom/amplitude/core/utilities/Response;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/amplitude/core/utilities/FailedResponse;",
        "Lcom/amplitude/core/utilities/Response;",
        "response",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "error",
        "",
        "getError",
        "()Ljava/lang/String;",
        "status",
        "Lcom/amplitude/core/utilities/HttpStatus;",
        "getStatus",
        "()Lcom/amplitude/core/utilities/HttpStatus;",
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


# instance fields
.field private final error:Ljava/lang/String;

.field private final status:Lcom/amplitude/core/utilities/HttpStatus;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    sget-object v0, Lcom/amplitude/core/utilities/HttpStatus;->FAILED:Lcom/amplitude/core/utilities/HttpStatus;

    iput-object v0, p0, Lcom/amplitude/core/utilities/FailedResponse;->status:Lcom/amplitude/core/utilities/HttpStatus;

    .line 141
    const-string v0, "error"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/amplitude/core/utilities/JSONUtilKt;->getStringWithDefault(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/core/utilities/FailedResponse;->error:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getError()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amplitude/core/utilities/FailedResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/amplitude/core/utilities/HttpStatus;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amplitude/core/utilities/FailedResponse;->status:Lcom/amplitude/core/utilities/HttpStatus;

    return-object v0
.end method
