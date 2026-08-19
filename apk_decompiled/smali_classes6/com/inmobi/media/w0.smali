.class public final Lcom/inmobi/media/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/inmobi/media/U5;
    .locals 5

    .line 1
    new-instance v0, Lcom/inmobi/media/U5;

    invoke-direct {v0}, Lcom/inmobi/media/U5;-><init>()V

    .line 2
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "ads"

    const-class v3, Lcom/inmobi/media/x0;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 3
    new-instance v2, Lcom/inmobi/media/v6;

    new-instance v3, Lcom/inmobi/media/r0;

    invoke-direct {v3}, Lcom/inmobi/media/r0;-><init>()V

    const-class v4, Lcom/inmobi/media/h;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "trackingInfo"

    const-class v3, Lcom/inmobi/media/h;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    new-instance v2, Lcom/inmobi/media/v6;

    new-instance v3, Lcom/inmobi/media/s0;

    invoke-direct {v3}, Lcom/inmobi/media/s0;-><init>()V

    const-class v4, Lcom/inmobi/ads/core/TrackingInfo;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "trackers"

    const-class v3, Lcom/inmobi/ads/core/TrackingInfo;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 23
    new-instance v2, Lcom/inmobi/media/v6;

    new-instance v3, Lcom/inmobi/media/t0;

    invoke-direct {v3}, Lcom/inmobi/media/t0;-><init>()V

    const-class v4, Lcom/inmobi/ads/core/Trackers;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "url"

    const-class v3, Lcom/inmobi/ads/core/Trackers;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 33
    new-instance v2, Lcom/inmobi/media/v6;

    new-instance v3, Lcom/inmobi/media/u0;

    invoke-direct {v3}, Lcom/inmobi/media/u0;-><init>()V

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/inmobi/media/ub;

    const-string v2, "imExts"

    const-class v3, Lcom/inmobi/ads/core/Trackers;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/ub;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 43
    new-instance v2, Lcom/inmobi/media/v6;

    new-instance v3, Lcom/inmobi/media/v0;

    invoke-direct {v3}, Lcom/inmobi/media/v0;-><init>()V

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/v6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/U5;->a(Lcom/inmobi/media/ub;Lcom/inmobi/media/tb;)Lcom/inmobi/media/U5;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Lcom/inmobi/media/f5;)Lcom/inmobi/media/x0;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const-string v6, "access$getTAG$cp(...)"

    const-string v2, "adContent"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 45
    :try_start_0
    const-string v2, "expiry"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-gtz v2, :cond_0

    :goto_0
    move-wide v8, v3

    goto :goto_1

    .line 46
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    goto :goto_0

    .line 47
    :goto_1
    const-string v2, "ads"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 48
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    if-eqz p5, :cond_1

    .line 49
    invoke-static {}, Lcom/inmobi/media/x0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "no ads"

    move-object/from16 v2, p5

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v7

    .line 52
    :cond_2
    invoke-static {}, Lcom/inmobi/media/w0;->a()Lcom/inmobi/media/U5;

    move-result-object v2

    const-class v3, Lcom/inmobi/media/x0;

    invoke-virtual {v2, v0, v3}, Lcom/inmobi/media/U5;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/inmobi/media/x0;

    if-eqz p5, :cond_3

    .line 53
    invoke-static {}, Lcom/inmobi/media/x0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adSet parsing success"

    move-object/from16 v3, p5

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v0, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v11, :cond_d

    .line 54
    invoke-virtual {v11}, Lcom/inmobi/media/x0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    move-wide/from16 v2, p1

    .line 56
    invoke-static {v11, v2, v3}, Lcom/inmobi/media/x0;->a(Lcom/inmobi/media/x0;J)V

    .line 57
    invoke-static {v11, v1}, Lcom/inmobi/media/x0;->b(Lcom/inmobi/media/x0;Ljava/lang/String;)V

    move-object/from16 v12, p3

    .line 58
    invoke-static {v11, v12}, Lcom/inmobi/media/x0;->a(Lcom/inmobi/media/x0;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v14, 0x0

    move v15, v14

    :goto_2
    if-ge v15, v13, :cond_b

    .line 61
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    invoke-virtual {v11}, Lcom/inmobi/media/x0;->f()Ljava/util/LinkedList;

    move-result-object v1

    .line 232
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v14

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    move-object/from16 v16, v3

    check-cast v16, Lcom/inmobi/media/h;

    .line 233
    const-string v3, "impressionId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/inmobi/media/h;->s()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_7

    if-eqz p5, :cond_5

    .line 235
    :try_start_1
    invoke-static {}, Lcom/inmobi/media/x0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflating ad at index - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p5

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_5
    sget-object v0, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    .line 238
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v0, "getJSONObject(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v2, p3

    move-wide v3, v8

    move-object/from16 v5, p5

    .line 239
    invoke-static/range {v0 .. v5}, Lcom/inmobi/media/J;->a(Lcom/inmobi/media/h;Lorg/json/JSONObject;Ljava/lang/String;JLcom/inmobi/media/f5;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    if-eqz p5, :cond_6

    .line 248
    :try_start_2
    invoke-static {}, Lcom/inmobi/media/x0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Error inflating ad"

    move-object/from16 v3, p5

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v1, v2, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 249
    :cond_6
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v1, Lcom/inmobi/media/d2;

    invoke-direct {v1, v0}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 250
    const-string v0, "event"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    move-object/from16 v0, v16

    goto :goto_5

    :cond_7
    move v2, v4

    goto/16 :goto_3

    :cond_8
    :goto_4
    move-object v0, v7

    :goto_5
    if-eqz v0, :cond_a

    if-eqz p5, :cond_9

    .line 329
    invoke-static {}, Lcom/inmobi/media/x0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removing invalid ad  at index - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/inmobi/media/x0;->f()Ljava/util/LinkedList;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p5

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_9
    invoke-virtual {v11}, Lcom/inmobi/media/x0;->f()Ljava/util/LinkedList;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 333
    :cond_b
    invoke-virtual {v11}, Lcom/inmobi/media/x0;->f()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    move-object v7, v11

    goto :goto_6

    :catch_1
    move-exception v0

    if-eqz p5, :cond_d

    .line 338
    invoke-static {}, Lcom/inmobi/media/x0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p5

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v3, "Exception while inflating AdSet"

    invoke-virtual {v2, v1, v3, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_d
    :goto_6
    return-object v7
.end method
