.class public final Lcom/amplitude/core/utilities/TooManyRequestsResponse;
.super Ljava/lang/Object;
.source "Response.kt"

# interfaces
.implements Lcom/amplitude/core/utilities/Response;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R \u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000c\"\u0004\u0008\u0018\u0010\u000eR \u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000c\"\u0004\u0008\u001c\u0010\u000eR \u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u000c\"\u0004\u0008\u001f\u0010\u000e\u00a8\u0006$"
    }
    d2 = {
        "Lcom/amplitude/core/utilities/TooManyRequestsResponse;",
        "Lcom/amplitude/core/utilities/Response;",
        "response",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "error",
        "",
        "getError",
        "()Ljava/lang/String;",
        "exceededDailyQuotaDevices",
        "",
        "getExceededDailyQuotaDevices",
        "()Ljava/util/Set;",
        "setExceededDailyQuotaDevices",
        "(Ljava/util/Set;)V",
        "exceededDailyQuotaUsers",
        "getExceededDailyQuotaUsers",
        "setExceededDailyQuotaUsers",
        "status",
        "Lcom/amplitude/core/utilities/HttpStatus;",
        "getStatus",
        "()Lcom/amplitude/core/utilities/HttpStatus;",
        "throttledDevices",
        "getThrottledDevices",
        "setThrottledDevices",
        "throttledEvents",
        "",
        "getThrottledEvents",
        "setThrottledEvents",
        "throttledUsers",
        "getThrottledUsers",
        "setThrottledUsers",
        "isEventExceedDailyQuota",
        "",
        "event",
        "Lcom/amplitude/core/events/BaseEvent;",
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

.field private exceededDailyQuotaDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private exceededDailyQuotaUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final status:Lcom/amplitude/core/utilities/HttpStatus;

.field private throttledDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private throttledEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private throttledUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Lcom/amplitude/core/utilities/HttpStatus;->TOO_MANY_REQUESTS:Lcom/amplitude/core/utilities/HttpStatus;

    iput-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->status:Lcom/amplitude/core/utilities/HttpStatus;

    .line 103
    const-string v0, "error"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/amplitude/core/utilities/JSONUtilKt;->getStringWithDefault(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->error:Ljava/lang/String;

    .line 104
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->exceededDailyQuotaUsers:Ljava/util/Set;

    .line 105
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->exceededDailyQuotaDevices:Ljava/util/Set;

    .line 106
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->throttledEvents:Ljava/util/Set;

    .line 107
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->throttledDevices:Ljava/util/Set;

    .line 108
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->throttledUsers:Ljava/util/Set;

    .line 111
    const-string v0, "exceeded_daily_quota_users"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "response.getJSONObject(\"\u2026ly_quota_users\").keySet()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->exceededDailyQuotaUsers:Ljava/util/Set;

    .line 114
    :cond_0
    const-string v0, "exceeded_daily_quota_devices"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "response.getJSONObject(\"\u2026_quota_devices\").keySet()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->exceededDailyQuotaDevices:Ljava/util/Set;

    .line 118
    :cond_1
    const-string/jumbo v0, "throttled_events"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "response.getJSONArray(\"throttled_events\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amplitude/core/utilities/JSONUtilKt;->toIntArray(Lorg/json/JSONArray;)[I

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toSet([I)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->throttledEvents:Ljava/util/Set;

    .line 121
    :cond_2
    const-string/jumbo v0, "throttled_users"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "response.getJSONObject(\"throttled_users\").keySet()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->throttledUsers:Ljava/util/Set;

    .line 124
    :cond_3
    const-string/jumbo v0, "throttled_devices"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "response.getJSONObject(\"\u2026ottled_devices\").keySet()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->throttledDevices:Ljava/util/Set;

    :cond_4
    return-void
.end method


# virtual methods
.method public final getError()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getExceededDailyQuotaDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->exceededDailyQuotaDevices:Ljava/util/Set;

    return-object v0
.end method

.method public final getExceededDailyQuotaUsers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->exceededDailyQuotaUsers:Ljava/util/Set;

    return-object v0
.end method

.method public getStatus()Lcom/amplitude/core/utilities/HttpStatus;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->status:Lcom/amplitude/core/utilities/HttpStatus;

    return-object v0
.end method

.method public final getThrottledDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->throttledDevices:Ljava/util/Set;

    return-object v0
.end method

.method public final getThrottledEvents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->throttledEvents:Ljava/util/Set;

    return-object v0
.end method

.method public final getThrottledUsers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->throttledUsers:Ljava/util/Set;

    return-object v0
.end method

.method public final isEventExceedDailyQuota(Lcom/amplitude/core/events/BaseEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->exceededDailyQuotaUsers:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->exceededDailyQuotaDevices:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final setExceededDailyQuotaDevices(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->exceededDailyQuotaDevices:Ljava/util/Set;

    return-void
.end method

.method public final setExceededDailyQuotaUsers(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->exceededDailyQuotaUsers:Ljava/util/Set;

    return-void
.end method

.method public final setThrottledDevices(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->throttledDevices:Ljava/util/Set;

    return-void
.end method

.method public final setThrottledEvents(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->throttledEvents:Ljava/util/Set;

    return-void
.end method

.method public final setThrottledUsers(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/amplitude/core/utilities/TooManyRequestsResponse;->throttledUsers:Ljava/util/Set;

    return-void
.end method
