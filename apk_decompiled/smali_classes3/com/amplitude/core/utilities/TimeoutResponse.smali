.class public final Lcom/amplitude/core/utilities/TimeoutResponse;
.super Ljava/lang/Object;
.source "Response.kt"

# interfaces
.implements Lcom/amplitude/core/utilities/Response;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/amplitude/core/utilities/TimeoutResponse;",
        "Lcom/amplitude/core/utilities/Response;",
        "()V",
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
.field private final status:Lcom/amplitude/core/utilities/HttpStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    sget-object v0, Lcom/amplitude/core/utilities/HttpStatus;->TIMEOUT:Lcom/amplitude/core/utilities/HttpStatus;

    iput-object v0, p0, Lcom/amplitude/core/utilities/TimeoutResponse;->status:Lcom/amplitude/core/utilities/HttpStatus;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/amplitude/core/utilities/HttpStatus;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amplitude/core/utilities/TimeoutResponse;->status:Lcom/amplitude/core/utilities/HttpStatus;

    return-object v0
.end method
