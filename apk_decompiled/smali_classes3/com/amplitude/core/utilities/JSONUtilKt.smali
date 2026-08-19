.class public final Lcom/amplitude/core/utilities/JSONUtilKt;
.super Ljava/lang/Object;
.source "JSONUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJSONUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JSONUtil.kt\ncom/amplitude/core/utilities/JSONUtilKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,279:1\n1849#2,2:280\n1849#2,2:282\n1849#2,2:284\n*S KotlinDebug\n*F\n+ 1 JSONUtil.kt\ncom/amplitude/core/utilities/JSONUtilKt\n*L\n223#1:280,2\n233#1:282,2\n245#1:284,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0002\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0000\u001a\u0012\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008*\u00020\u0002H\u0000\u001a\u001c\u0010\n\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0000\u001a\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u0002*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u001a\u001e\u0010\r\u001a\u0004\u0018\u00010\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u001a$\u0010\u000e\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00100\u000f*\u00020\u0011H\u0000\u001a\n\u0010\u0012\u001a\u00020\u0013*\u00020\u0002\u001a\u0010\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0010*\u00020\u0011\u001a\u000c\u0010\u0015\u001a\u00020\u0016*\u00020\u0011H\u0000\u001a\u0012\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0010*\u00020\u0011H\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "addValue",
        "",
        "Lorg/json/JSONObject;",
        "key",
        "",
        "value",
        "",
        "collectIndices",
        "",
        "",
        "getStringWithDefault",
        "defaultValue",
        "optionalJSONObject",
        "optionalString",
        "split",
        "Lkotlin/Pair;",
        "",
        "Lorg/json/JSONArray;",
        "toBaseEvent",
        "Lcom/amplitude/core/events/BaseEvent;",
        "toEvents",
        "toIntArray",
        "",
        "toJSONObjectList",
        "core"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final addValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-void
.end method

.method public static final collectIndices(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 148
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string/jumbo v2, "this.keys()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string/jumbo v3, "this.getJSONArray(fieldKey)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->toIntArray(Lorg/json/JSONArray;)[I

    move-result-object v2

    .line 152
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 153
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final getStringWithDefault(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "this.getString(key)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static final optionalJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static final optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static final split(Lorg/json/JSONArray;)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 233
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 282
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v4

    .line 234
    const-string/jumbo v5, "this.getJSONObject(index)"

    if-ge v4, v0, :cond_0

    .line 235
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_1
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final toBaseEvent(Lorg/json/JSONObject;)Lcom/amplitude/core/events/BaseEvent;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/amplitude/core/events/BaseEvent;

    invoke-direct {v0}, Lcom/amplitude/core/events/BaseEvent;-><init>()V

    .line 169
    const-string v1, "event_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this.getString(\"event_type\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setEventType(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "user_id"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setUserId(Ljava/lang/String;)V

    .line 171
    const-string v1, "device_id"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setDeviceId(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setTimestamp(Ljava/lang/Long;)V

    .line 173
    const-string v1, "event_properties"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_1
    invoke-static {v1}, Lcom/amplitude/core/utilities/JSONKt;->toMapObj(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setEventProperties(Ljava/util/Map;)V

    .line 174
    const-string/jumbo v1, "user_properties"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_3
    move-object v1, v2

    goto :goto_4

    :cond_3
    invoke-static {v1}, Lcom/amplitude/core/utilities/JSONKt;->toMapObj(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setUserProperties(Ljava/util/Map;)V

    .line 175
    const-string v1, "groups"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_5

    :goto_5
    move-object v1, v2

    goto :goto_6

    :cond_5
    invoke-static {v1}, Lcom/amplitude/core/utilities/JSONKt;->toMapObj(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setGroups(Ljava/util/Map;)V

    .line 176
    const-string v1, "group_properties"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_7
    move-object v1, v2

    goto :goto_8

    :cond_7
    invoke-static {v1}, Lcom/amplitude/core/utilities/JSONKt;->toMapObj(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_8
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setGroupProperties(Ljava/util/Map;)V

    .line 177
    const-string v1, "app_version"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setAppVersion(Ljava/lang/String;)V

    .line 178
    const-string v1, "platform"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setPlatform(Ljava/lang/String;)V

    .line 179
    const-string v1, "os_name"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setOsName(Ljava/lang/String;)V

    .line 180
    const-string v1, "os_version"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setOsVersion(Ljava/lang/String;)V

    .line 181
    const-string v1, "device_brand"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setDeviceBrand(Ljava/lang/String;)V

    .line 182
    const-string v1, "device_manufacturer"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setDeviceManufacturer(Ljava/lang/String;)V

    .line 183
    const-string v1, "device_model"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setDeviceModel(Ljava/lang/String;)V

    .line 184
    const-string v1, "carrier"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setCarrier(Ljava/lang/String;)V

    .line 185
    const-string v1, "country"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setCountry(Ljava/lang/String;)V

    .line 186
    const-string v1, "region"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setRegion(Ljava/lang/String;)V

    .line 187
    const-string v1, "city"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setCity(Ljava/lang/String;)V

    .line 188
    const-string v1, "dma"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setDma(Ljava/lang/String;)V

    .line 189
    const-string v1, "language"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setLanguage(Ljava/lang/String;)V

    .line 190
    const-string v1, "price"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_9

    :cond_9
    move-object v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setPrice(Ljava/lang/Double;)V

    .line 191
    const-string v1, "quantity"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a

    :cond_a
    move-object v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setQuantity(Ljava/lang/Integer;)V

    .line 192
    const-string v1, "revenue"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_b

    :cond_b
    move-object v1, v2

    :goto_b
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setRevenue(Ljava/lang/Double;)V

    .line 193
    const-string v1, "productId"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setProductId(Ljava/lang/String;)V

    .line 194
    const-string v1, "revenueType"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setRevenueType(Ljava/lang/String;)V

    .line 195
    const-string v1, "location_lat"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_c

    :cond_c
    move-object v1, v2

    :goto_c
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setLocationLat(Ljava/lang/Double;)V

    .line 196
    const-string v1, "location_lng"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_d

    :cond_d
    move-object v1, v2

    :goto_d
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setLocationLng(Ljava/lang/Double;)V

    .line 197
    const-string v1, "ip"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setIp(Ljava/lang/String;)V

    .line 198
    const-string v1, "idfa"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setIdfa(Ljava/lang/String;)V

    .line 199
    const-string v1, "idfv"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setIdfv(Ljava/lang/String;)V

    .line 200
    const-string v1, "adid"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setAdid(Ljava/lang/String;)V

    .line 201
    const-string v1, "android_id"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setAndroidId(Ljava/lang/String;)V

    .line 202
    const-string v1, "android_app_set_id"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setAppSetId(Ljava/lang/String;)V

    .line 203
    const-string v1, "event_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_e

    :cond_e
    move-object v1, v2

    :goto_e
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setEventId(Ljava/lang/Long;)V

    .line 204
    const-string v1, "session_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_f

    :cond_f
    move-object v1, v2

    :goto_f
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setSessionId(Ljava/lang/Long;)V

    .line 205
    const-string v1, "insert_id"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setInsertId(Ljava/lang/String;)V

    .line 206
    const-string v1, "library"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_10
    move-object v1, v2

    :goto_10
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setLibrary(Ljava/lang/String;)V

    .line 207
    const-string v1, "partner_id"

    invoke-static {p0, v1, v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->optionalString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setPartnerId(Ljava/lang/String;)V

    .line 208
    const-string v1, "plan"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lcom/amplitude/core/events/Plan;->Companion:Lcom/amplitude/core/events/Plan$Companion;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v4, "this.getJSONObject(\"plan\")"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/amplitude/core/events/Plan$Companion;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amplitude/core/events/Plan;

    move-result-object v1

    goto :goto_11

    :cond_11
    move-object v1, v2

    :goto_11
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/BaseEvent;->setPlan(Lcom/amplitude/core/events/Plan;)V

    .line 210
    const-string v1, "ingestion_metadata"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 214
    sget-object v2, Lcom/amplitude/core/events/IngestionMetadata;->Companion:Lcom/amplitude/core/events/IngestionMetadata$Companion;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v1, "this.getJSONObject(\"ingestion_metadata\")"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/amplitude/core/events/IngestionMetadata$Companion;->fromJSONObject$core(Lorg/json/JSONObject;)Lcom/amplitude/core/events/IngestionMetadata;

    move-result-object v2

    goto :goto_12

    .line 216
    :cond_12
    move-object p0, v2

    check-cast p0, Lcom/amplitude/core/events/IngestionMetadata;

    .line 209
    :goto_12
    invoke-virtual {v0, v2}, Lcom/amplitude/core/events/BaseEvent;->setIngestionMetadata(Lcom/amplitude/core/events/IngestionMetadata;)V

    return-object v0
.end method

.method public static final toEvents(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/amplitude/core/events/BaseEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 223
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 280
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 224
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "this.getJSONObject(it)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/amplitude/core/utilities/JSONUtilKt;->toBaseEvent(Lorg/json/JSONObject;)Lcom/amplitude/core/events/BaseEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final toIntArray(Lorg/json/JSONArray;)[I
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 162
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    aput v4, v1, v2

    if-le v3, v0, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public static final toJSONObjectList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 284
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 246
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "this.getJSONObject(it)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
