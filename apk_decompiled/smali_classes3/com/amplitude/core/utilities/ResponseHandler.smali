.class public interface abstract Lcom/amplitude/core/utilities/ResponseHandler;
.super Ljava/lang/Object;
.source "Response.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J \u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0008H&J \u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0008H&J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0008H&J \u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0008H&J \u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0008H&J \u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0008H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u001b\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/amplitude/core/utilities/ResponseHandler;",
        "",
        "handle",
        "",
        "response",
        "Lcom/amplitude/core/utilities/Response;",
        "events",
        "eventsString",
        "",
        "handleBadRequestResponse",
        "badRequestResponse",
        "Lcom/amplitude/core/utilities/BadRequestResponse;",
        "handleFailedResponse",
        "failedResponse",
        "Lcom/amplitude/core/utilities/FailedResponse;",
        "handlePayloadTooLargeResponse",
        "payloadTooLargeResponse",
        "Lcom/amplitude/core/utilities/PayloadTooLargeResponse;",
        "handleSuccessResponse",
        "successResponse",
        "Lcom/amplitude/core/utilities/SuccessResponse;",
        "handleTimeoutResponse",
        "timeoutResponse",
        "Lcom/amplitude/core/utilities/TimeoutResponse;",
        "handleTooManyRequestsResponse",
        "tooManyRequestsResponse",
        "Lcom/amplitude/core/utilities/TooManyRequestsResponse;",
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


# virtual methods
.method public handle(Lcom/amplitude/core/utilities/Response;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    instance-of v0, p1, Lcom/amplitude/core/utilities/SuccessResponse;

    if-eqz v0, :cond_0

    .line 148
    check-cast p1, Lcom/amplitude/core/utilities/SuccessResponse;

    invoke-interface {p0, p1, p2, p3}, Lcom/amplitude/core/utilities/ResponseHandler;->handleSuccessResponse(Lcom/amplitude/core/utilities/SuccessResponse;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    instance-of v0, p1, Lcom/amplitude/core/utilities/BadRequestResponse;

    if-eqz v0, :cond_1

    .line 151
    check-cast p1, Lcom/amplitude/core/utilities/BadRequestResponse;

    invoke-interface {p0, p1, p2, p3}, Lcom/amplitude/core/utilities/ResponseHandler;->handleBadRequestResponse(Lcom/amplitude/core/utilities/BadRequestResponse;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    instance-of v0, p1, Lcom/amplitude/core/utilities/PayloadTooLargeResponse;

    if-eqz v0, :cond_2

    .line 154
    check-cast p1, Lcom/amplitude/core/utilities/PayloadTooLargeResponse;

    invoke-interface {p0, p1, p2, p3}, Lcom/amplitude/core/utilities/ResponseHandler;->handlePayloadTooLargeResponse(Lcom/amplitude/core/utilities/PayloadTooLargeResponse;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    instance-of v0, p1, Lcom/amplitude/core/utilities/TooManyRequestsResponse;

    if-eqz v0, :cond_3

    .line 157
    check-cast p1, Lcom/amplitude/core/utilities/TooManyRequestsResponse;

    invoke-interface {p0, p1, p2, p3}, Lcom/amplitude/core/utilities/ResponseHandler;->handleTooManyRequestsResponse(Lcom/amplitude/core/utilities/TooManyRequestsResponse;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_3
    instance-of v0, p1, Lcom/amplitude/core/utilities/TimeoutResponse;

    if-eqz v0, :cond_4

    .line 160
    check-cast p1, Lcom/amplitude/core/utilities/TimeoutResponse;

    invoke-interface {p0, p1, p2, p3}, Lcom/amplitude/core/utilities/ResponseHandler;->handleTimeoutResponse(Lcom/amplitude/core/utilities/TimeoutResponse;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_4
    check-cast p1, Lcom/amplitude/core/utilities/FailedResponse;

    invoke-interface {p0, p1, p2, p3}, Lcom/amplitude/core/utilities/ResponseHandler;->handleFailedResponse(Lcom/amplitude/core/utilities/FailedResponse;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public abstract handleBadRequestResponse(Lcom/amplitude/core/utilities/BadRequestResponse;Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract handleFailedResponse(Lcom/amplitude/core/utilities/FailedResponse;Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract handlePayloadTooLargeResponse(Lcom/amplitude/core/utilities/PayloadTooLargeResponse;Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract handleSuccessResponse(Lcom/amplitude/core/utilities/SuccessResponse;Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract handleTimeoutResponse(Lcom/amplitude/core/utilities/TimeoutResponse;Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract handleTooManyRequestsResponse(Lcom/amplitude/core/utilities/TooManyRequestsResponse;Ljava/lang/Object;Ljava/lang/String;)V
.end method
