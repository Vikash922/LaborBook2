.class public final Lcom/inmobi/media/Rc;
.super Lcom/inmobi/media/rb;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/media/Kc;Ljava/lang/String;III)V
    .locals 2

    const-string v0, "POST"

    const-string v1, "requestType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/inmobi/media/rb;-><init>(Ljava/lang/String;Lcom/inmobi/media/Kc;Ljava/lang/String;II)V

    .line 2
    iput p6, p0, Lcom/inmobi/media/l9;->p:I

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "signature"

    const-string v2, "src"

    .line 1
    invoke-super/range {p0 .. p0}, Lcom/inmobi/media/l9;->f()V

    .line 2
    sget-object v3, Lcom/inmobi/media/y4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;

    .line 3
    sget-object v3, Lcom/inmobi/media/y4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/inmobi/media/ca;->a()Ljava/util/HashMap;

    move-result-object v3

    .line 5
    iget-object v4, v0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 6
    invoke-static {}, Lcom/inmobi/media/Lb;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mk-version"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v5, Lcom/inmobi/media/c1;->a:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 8
    const-string v6, "bundle-id"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Kb;->k()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ua"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ts"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    iget-object v4, v0, Lcom/inmobi/media/l9;->m:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v5, v0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    const-string v6, "account_id"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 14
    :cond_2
    sget-object v4, Lcom/inmobi/media/Jc;->a:Lcom/inmobi/media/Jc;

    invoke-virtual {v4}, Lcom/inmobi/media/Jc;->c()Ljava/lang/Boolean;

    move-result-object v4

    .line 15
    iget-object v5, v0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz v5, :cond_5

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_3
    const-string v4, "true"

    :cond_4
    const-string v6, "lat"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 17
    :cond_5
    const-string v4, "u-age"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v4, v0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz v4, :cond_6

    const-string v5, "age"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 18
    :cond_6
    sget-object v3, Lcom/inmobi/media/y4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataModel;->getEmailId()Lcom/inmobi/unifiedId/InMobiUserDataTypes;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_0

    .line 19
    :cond_8
    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataTypes;->getMd5()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataTypes;->getSha1()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataTypes;->getSha256()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    :goto_0
    const/4 v3, 0x0

    :cond_9
    if-eqz v3, :cond_a

    .line 20
    iget-object v5, v0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz v5, :cond_a

    new-instance v6, Lcom/inmobi/media/U5;

    invoke-direct {v6}, Lcom/inmobi/media/U5;-><init>()V

    invoke-virtual {v6, v3}, Lcom/inmobi/media/U5;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "email"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21
    :cond_a
    sget-object v3, Lcom/inmobi/media/y4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;

    if-nez v3, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataModel;->getPhoneNumber()Lcom/inmobi/unifiedId/InMobiUserDataTypes;

    move-result-object v3

    if-nez v3, :cond_c

    goto :goto_1

    .line 22
    :cond_c
    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataTypes;->getMd5()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataTypes;->getSha1()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    invoke-virtual {v3}, Lcom/inmobi/unifiedId/InMobiUserDataTypes;->getSha256()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    :goto_1
    const/4 v3, 0x0

    :cond_d
    if-eqz v3, :cond_e

    .line 23
    iget-object v5, v0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz v5, :cond_e

    new-instance v6, Lcom/inmobi/media/U5;

    invoke-direct {v6}, Lcom/inmobi/media/U5;-><init>()V

    invoke-virtual {v6, v3}, Lcom/inmobi/media/U5;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "phone"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 24
    :cond_e
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 25
    invoke-static {}, Lcom/inmobi/media/u5;->b()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "ufids"

    if-eqz v5, :cond_13

    .line 27
    :try_start_0
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    .line 28
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 29
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_2
    if-ge v11, v9, :cond_13

    .line 30
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 31
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_f
    const/4 v12, 0x0

    .line 32
    :goto_3
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 33
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_10
    const/4 v13, 0x0

    .line 34
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 35
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v8, "expiry"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v4, v14, v16

    if-lez v4, :cond_11

    const/4 v4, 0x1

    goto :goto_5

    :cond_11
    move v4, v10

    :goto_5
    if-eqz v12, :cond_12

    if-eqz v13, :cond_12

    .line 37
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 38
    invoke-virtual {v8, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {v8, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v12, "expired"

    invoke-virtual {v8, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_12
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto :goto_2

    .line 47
    :catch_0
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    :cond_13
    iget-object v1, v0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz v1, :cond_14

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    :cond_14
    sget-object v1, Lcom/inmobi/media/y4;->a:Lcom/inmobi/unifiedId/InMobiUserDataModel;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/inmobi/unifiedId/InMobiUserDataModel;->getExtras()Ljava/util/HashMap;

    move-result-object v4

    goto :goto_6

    :cond_15
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_16

    .line 50
    iget-object v1, v0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz v1, :cond_16

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_16
    return-void
.end method
