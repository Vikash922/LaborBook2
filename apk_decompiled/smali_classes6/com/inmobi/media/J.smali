.class public abstract Lcom/inmobi/media/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/inmobi/media/h;

    const-string v0, "h"

    sput-object v0, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/h;Lcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/f5;)Lcom/inmobi/media/h;
    .locals 20

    move-object/from16 v2, p0

    move-object/from16 v1, p2

    const-string v3, "getJSONObject(...)"

    const-string v4, "pages"

    const-string v0, "ad"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    move-object/from16 v5, p1

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/h;->u()Ljava/lang/String;

    move-result-object v0

    const-string v6, "inmobiJson"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    .line 665
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/h;->x()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 666
    const-string v7, "rootContainer"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 667
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/inmobi/media/J;->c(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Ljava/lang/String;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    :goto_0
    const/16 v13, 0x20

    if-gt v11, v8, :cond_6

    if-nez v12, :cond_1

    move v14, v11

    goto :goto_1

    :cond_1
    move v14, v8

    .line 960
    :goto_1
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 961
    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gtz v14, :cond_2

    move v14, v9

    goto :goto_2

    :cond_2
    move v14, v10

    :goto_2
    if-nez v12, :cond_4

    if-nez v14, :cond_3

    move v12, v9

    goto :goto_0

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    if-nez v14, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v8, v9

    .line 1268
    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1269
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1270
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const-string v11, "Missing VAST video XML in the ad markup"

    const-string v12, "TAG"

    if-nez v8, :cond_8

    if-eqz v1, :cond_7

    .line 1271
    sget-object v0, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v0, v11}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v2

    .line 1275
    :cond_8
    new-instance v8, Lcom/inmobi/media/ed;

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getVastVideo()Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    move-result-object v14

    invoke-direct {v8, v14, v1}, Lcom/inmobi/media/ed;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;Lcom/inmobi/media/f5;)V

    invoke-virtual {v8, v0}, Lcom/inmobi/media/ed;->a(Ljava/lang/String;)Lcom/inmobi/media/jd;

    move-result-object v8

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/h;->k()Lorg/json/JSONArray;

    move-result-object v14

    .line 1277
    iget v0, v8, Lcom/inmobi/media/jd;->l:I

    if-eqz v0, :cond_a

    if-eqz v1, :cond_9

    .line 1278
    sget-object v0, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v2, "Processing VAST XML to build a video descriptor failed"

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    :cond_9
    new-instance v0, Lcom/inmobi/ads/exceptions/VastException;

    .line 1280
    iget v1, v8, Lcom/inmobi/media/jd;->l:I

    .line 1281
    invoke-direct {v0, v1}, Lcom/inmobi/ads/exceptions/VastException;-><init>(I)V

    throw v0

    .line 1284
    :cond_a
    invoke-virtual {v8}, Lcom/inmobi/media/jd;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1285
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_b

    goto/16 :goto_13

    :cond_b
    if-eqz v14, :cond_c

    .line 1291
    invoke-static {v14, v0, v10}, Lcom/inmobi/media/J;->a(Lorg/json/JSONArray;Ljava/lang/String;B)V

    .line 1293
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getVastVideo()Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    move-result-object v0

    .line 1294
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1296
    :try_start_0
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 1297
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v10, :cond_17

    .line 1298
    invoke-virtual {v15, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 1300
    invoke-virtual {v15, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1301
    invoke-static {v9, v1}, Lcom/inmobi/media/J;->c(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Ljava/lang/String;

    move-result-object v9

    .line 1529
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v16, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 p1, v10

    move/from16 v2, v17

    const/4 v10, 0x0

    const/16 v17, 0x0

    :goto_5
    if-gt v10, v2, :cond_12

    move-object/from16 v18, v15

    if-nez v17, :cond_d

    move v15, v10

    goto :goto_6

    :cond_d
    move v15, v2

    .line 1534
    :goto_6
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v19, v8

    const/16 v8, 0x20

    .line 1535
    :try_start_1
    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v15

    if-gtz v15, :cond_e

    const/4 v15, 0x1

    goto :goto_7

    :cond_e
    const/4 v15, 0x0

    :goto_7
    if-nez v17, :cond_10

    if-nez v15, :cond_f

    move-object/from16 v15, v18

    move-object/from16 v8, v19

    const/16 v17, 0x1

    goto :goto_5

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_10
    if-nez v15, :cond_11

    goto :goto_9

    :cond_11
    add-int/lit8 v2, v2, -0x1

    :goto_8
    move-object/from16 v15, v18

    move-object/from16 v8, v19

    goto :goto_5

    :cond_12
    move-object/from16 v19, v8

    move-object/from16 v18, v15

    const/16 v8, 0x20

    :goto_9
    add-int/lit8 v2, v2, 0x1

    .line 1780
    invoke-virtual {v9, v10, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1781
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1782
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_13

    if-eqz v1, :cond_16

    .line 1783
    sget-object v2, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    check-cast v9, Lcom/inmobi/media/g5;

    invoke-virtual {v9, v2, v11}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1785
    :cond_13
    new-instance v2, Lcom/inmobi/media/ed;

    invoke-direct {v2, v0, v1}, Lcom/inmobi/media/ed;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;Lcom/inmobi/media/f5;)V

    .line 1786
    invoke-virtual {v2, v9}, Lcom/inmobi/media/ed;->a(Ljava/lang/String;)Lcom/inmobi/media/jd;

    move-result-object v2

    .line 1787
    iget v9, v2, Lcom/inmobi/media/jd;->l:I

    if-eqz v9, :cond_14

    if-eqz v1, :cond_16

    .line 1788
    sget-object v2, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1789
    const-string v9, "No video present of error for video descriptor in pages array"

    .line 1790
    move-object v10, v1

    check-cast v10, Lcom/inmobi/media/g5;

    invoke-virtual {v10, v2, v9}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1795
    :cond_14
    invoke-virtual {v2}, Lcom/inmobi/media/jd;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1796
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_16

    .line 1797
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_b

    :cond_15
    move-object/from16 v19, v8

    move/from16 p1, v10

    move-object/from16 v18, v15

    const/16 v8, 0x20

    :cond_16
    :goto_a
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move/from16 v10, p1

    move-object/from16 v15, v18

    move-object/from16 v8, v19

    goto/16 :goto_4

    :cond_17
    move-object/from16 v19, v8

    goto :goto_c

    :catch_1
    move-exception v0

    move-object/from16 v19, v8

    :goto_b
    if-eqz v1, :cond_18

    .line 1804
    sget-object v2, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Lcom/inmobi/media/g5;

    const-string v9, "JSONException in getPagesVideo"

    invoke-virtual {v8, v2, v9, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_18
    :goto_c
    if-eqz v1, :cond_19

    .line 1805
    sget-object v0, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    .line 1806
    const-string v2, "Media size for pages "

    invoke-static {v0, v12, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1927
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v1

    check-cast v8, Lcom/inmobi/media/g5;

    invoke-virtual {v8, v0, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    :cond_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v14, :cond_1a

    const/4 v5, 0x0

    .line 2214
    invoke-static {v14, v2, v5}, Lcom/inmobi/media/J;->a(Lorg/json/JSONArray;Ljava/lang/String;B)V

    goto :goto_d

    :cond_1b
    const/4 v5, 0x0

    .line 2215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2217
    :try_start_2
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2218
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    move v9, v5

    :goto_e
    if-ge v9, v8, :cond_1d

    .line 2219
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1c

    .line 2222
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 2223
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2224
    invoke-static {v10, v1}, Lcom/inmobi/media/J;->b(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Ljava/util/ArrayList;

    move-result-object v10

    .line 2225
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :catch_2
    move-exception v0

    if-eqz v1, :cond_1d

    .line 2234
    sget-object v8, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    check-cast v9, Lcom/inmobi/media/g5;

    const-string v10, "JSONException in getPagesImage"

    invoke-virtual {v9, v8, v10, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2235
    :cond_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v14, :cond_1e

    const/4 v8, 0x2

    .line 2236
    invoke-static {v14, v2, v8}, Lcom/inmobi/media/J;->a(Lorg/json/JSONArray;Ljava/lang/String;B)V

    goto :goto_f

    .line 2237
    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2239
    :try_start_3
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2240
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v10, v5

    :goto_10
    if-ge v10, v4, :cond_21

    .line 2241
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 2244
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2245
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2246
    invoke-static {v5, v1}, Lcom/inmobi/media/J;->a(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2247
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_20
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :catch_3
    move-exception v0

    if-eqz v1, :cond_21

    .line 2256
    sget-object v3, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v4, "JSONException in getPagesGif"

    invoke-virtual {v1, v3, v4, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2257
    :cond_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v14, :cond_22

    const/4 v2, 0x1

    .line 2258
    invoke-static {v14, v1, v2}, Lcom/inmobi/media/J;->a(Lorg/json/JSONArray;Ljava/lang/String;B)V

    goto :goto_11

    .line 2262
    :cond_23
    invoke-virtual/range {v19 .. v19}, Lcom/inmobi/media/jd;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, v19

    .line 2263
    iget-object v5, v1, Lcom/inmobi/media/jd;->g:Ljava/lang/String;

    if-eqz v4, :cond_24

    if-eqz v5, :cond_24

    .line 2264
    new-instance v0, Lcom/inmobi/media/w8;

    .line 2265
    iget-object v6, v1, Lcom/inmobi/media/jd;->k:Ljava/lang/String;

    .line 2266
    iget-object v7, v1, Lcom/inmobi/media/jd;->h:Ljava/util/ArrayList;

    .line 2267
    iget-object v8, v1, Lcom/inmobi/media/jd;->i:Ljava/util/ArrayList;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v14

    .line 2268
    invoke-direct/range {v1 .. v8}, Lcom/inmobi/media/w8;-><init>(Lcom/inmobi/media/h;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_12

    :cond_24
    const/4 v0, 0x0

    :goto_12
    return-object v0

    :cond_25
    :goto_13
    if-eqz v1, :cond_26

    .line 2269
    sget-object v0, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v2, "No Media URL to download.Returning.."

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    :cond_26
    new-instance v0, Lcom/inmobi/ads/exceptions/VastException;

    const/16 v1, 0x191

    invoke-direct {v0, v1}, Lcom/inmobi/ads/exceptions/VastException;-><init>(I)V

    throw v0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Ljava/util/ArrayList;
    .locals 5

    .line 2285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2287
    :try_start_0
    const-string v1, "assetValue"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2288
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/inmobi/media/y2;->a(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 2291
    :cond_0
    const-string v2, "assetType"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2293
    const-string v2, "gif"

    const/4 v3, 0x1

    invoke-static {v2, p0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 2294
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2296
    :cond_1
    const-string v2, "container"

    invoke-static {v2, p0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2297
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    :goto_0
    if-ge v4, p0, :cond_2

    .line 2298
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2299
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, p1}, Lcom/inmobi/media/J;->a(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    if-eqz p1, :cond_2

    .line 2306
    sget-object v1, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    .line 2307
    const-string v2, "TAG"

    const-string v3, "Error getting getGifAssetUrls ("

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2308
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, p0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static a(Lcom/inmobi/media/h;Lorg/json/JSONObject;Ljava/lang/String;JLcom/inmobi/media/f5;)V
    .locals 4

    const-string v0, "rootContainer"

    const-string v1, "TAG"

    const-string v2, "ad"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adJson"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/h;->a()V

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p3, p4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p3

    .line 3
    const-string v2, "expiry"

    invoke-virtual {p1, v2, p3, p4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p3

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_0

    const-wide/16 p3, -0x1

    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    .line 9
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/media/h;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 10
    invoke-virtual {p0}, Lcom/inmobi/media/h;->u()Ljava/lang/String;

    move-result-object p2

    const-string p3, "inmobiJson"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 11
    :try_start_0
    const-string p2, "pubContent"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p5, :cond_1

    .line 12
    sget-object p2, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "toString(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p4, p5

    check-cast p4, Lcom/inmobi/media/g5;

    invoke-virtual {p4, p2, p3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p5, :cond_5

    .line 15
    sget-object p0, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-string p1, "Missing key (rootContainer) in the ad markup"

    .line 17
    check-cast p5, Lcom/inmobi/media/g5;

    invoke-virtual {p5, p0, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 22
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 23
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p5}, Lcom/inmobi/media/J;->b(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Ljava/util/ArrayList;

    move-result-object p3

    .line 337
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const/4 v0, 0x2

    .line 338
    invoke-static {p2, p4, v0}, Lcom/inmobi/media/J;->a(Lorg/json/JSONArray;Ljava/lang/String;B)V

    goto :goto_1

    .line 342
    :cond_3
    invoke-static {p1, p5}, Lcom/inmobi/media/J;->a(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Ljava/util/ArrayList;

    move-result-object p3

    .line 649
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const/4 v0, 0x1

    .line 650
    invoke-static {p2, p4, v0}, Lcom/inmobi/media/J;->a(Lorg/json/JSONArray;Ljava/lang/String;B)V

    goto :goto_2

    .line 653
    :cond_4
    invoke-static {p1, p5}, Lcom/inmobi/media/J;->d(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Z

    move-result p1

    .line 654
    invoke-virtual {p0, p2}, Lcom/inmobi/media/h;->a(Lorg/json/JSONArray;)V

    .line 655
    invoke-virtual {p0, p1}, Lcom/inmobi/media/h;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 658
    sget-object p1, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    sget-object p1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 660
    const-string p1, "event"

    invoke-static {p0, p1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p0

    .line 661
    sget-object p1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static a(Lorg/json/JSONArray;Ljava/lang/String;B)V
    .locals 2

    .line 2280
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2281
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2282
    const-string p2, "url"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2284
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method public static b(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Ljava/util/ArrayList;
    .locals 7

    const-string v0, "preload"

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    const-string v2, "assetValue"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/inmobi/media/y2;->a(Lorg/json/JSONArray;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    .line 7
    :cond_0
    const-string v3, "assetType"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    const-string v4, "image"

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 11
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 13
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_1
    const-string p0, "container"

    invoke-static {p0, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 18
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    :goto_0
    if-ge v6, p0, :cond_2

    .line 19
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/inmobi/media/J;->b(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    if-eqz p1, :cond_2

    .line 27
    sget-object v0, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    .line 28
    const-string v2, "TAG"

    const-string v3, "Error getting getImageAssetUrls ("

    invoke-static {v0, v2, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, p0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static c(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Ljava/lang/String;
    .locals 11

    const-string v0, ""

    .line 1
    :try_start_0
    const-string v1, "assetValue"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/inmobi/media/y2;->a(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 5
    :cond_0
    const-string v2, "assetType"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    const-string v2, "video"

    const/4 v3, 0x1

    invoke-static {v2, p0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    .line 10
    :cond_1
    const-string v2, "container"

    invoke-static {v2, p0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 12
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    move-object v5, v0

    move v2, v4

    :goto_0
    if-ge v2, p0, :cond_a

    .line 13
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 14
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5, p1}, Lcom/inmobi/media/J;->c(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    move v7, v4

    move v8, v7

    :goto_1
    if-gt v7, v6, :cond_7

    if-nez v8, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    move v9, v6

    .line 187
    :goto_2
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    .line 188
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gtz v9, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v4

    :goto_3
    if-nez v8, :cond_5

    if-nez v9, :cond_4

    move v8, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    if-nez v9, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 375
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 376
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 377
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    move-object p0, v0

    :goto_5
    move-object v5, p0

    .line 385
    :cond_a
    :goto_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    goto :goto_7

    :catch_0
    move-exception p0

    if-eqz p1, :cond_b

    .line 397
    sget-object v1, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    .line 398
    const-string v2, "TAG"

    const-string v3, "Error getting VAST video XML ("

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 399
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_b
    sget-object p1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance p1, Lcom/inmobi/media/d2;

    invoke-direct {p1, p0}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 401
    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    sget-object p0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :goto_7
    return-object v0
.end method

.method public static d(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Z
    .locals 6

    const-string v0, "preload"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    const-string v2, "assetValue"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/inmobi/media/y2;->a(Lorg/json/JSONArray;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 5
    :cond_0
    const-string v3, "assetType"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    const-string v4, "webview"

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v1, v5

    goto :goto_2

    .line 10
    :cond_1
    const-string p0, "container"

    invoke-static {p0, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 12
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    move v0, v1

    move v3, v0

    :goto_0
    if-ge v0, p0, :cond_3

    .line 13
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 14
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lcom/inmobi/media/J;->d(Lorg/json/JSONObject;Lcom/inmobi/media/f5;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v1, v3

    goto :goto_2

    :catch_0
    move-exception p0

    if-eqz p1, :cond_4

    .line 26
    sget-object v0, Lcom/inmobi/media/J;->a:Ljava/lang/String;

    .line 27
    const-string v2, "TAG"

    const-string v3, "Error getting preload webview flag ("

    invoke-static {v0, v2, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 28
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_4
    sget-object p1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance p1, Lcom/inmobi/media/d2;

    invoke-direct {p1, p0}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 30
    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object p0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_5
    :goto_2
    return v1
.end method
