.class public final Lcom/inmobi/media/W2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Lcom/inmobi/media/m9;

.field public final b:Ljava/util/TreeMap;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Lcom/inmobi/media/N2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/media/Q2;Lcom/inmobi/media/m9;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "networkRequest"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "mNetworkResponse"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v2, v1, Lcom/inmobi/media/W2;->a:Lcom/inmobi/media/m9;

    .line 7
    new-instance v3, Ljava/util/TreeMap;

    .line 8
    iget-object v0, v0, Lcom/inmobi/media/Q2;->y:Ljava/util/Map;

    .line 9
    invoke-direct {v3, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v3, v1, Lcom/inmobi/media/W2;->b:Ljava/util/TreeMap;

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v1, Lcom/inmobi/media/W2;->c:Ljava/util/LinkedHashMap;

    .line 11
    iget-object v0, v2, Lcom/inmobi/media/m9;->c:Lcom/inmobi/media/i9;

    const-string v2, "InvalidConfig"

    const/4 v5, 0x4

    const-string v6, "networkType"

    const-string v7, "errorCode"

    const/4 v8, 0x0

    const-string v9, "lts"

    const-string v10, "name"

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 13
    new-instance v15, Lcom/inmobi/media/S2;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const-string v11, "<get-value>(...)"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/inmobi/commons/core/configs/Config;

    invoke-direct {v15, v8, v4}, Lcom/inmobi/media/S2;-><init>(Lorg/json/JSONObject;Lcom/inmobi/commons/core/configs/Config;)V

    .line 14
    new-instance v4, Lcom/inmobi/media/N2;

    const-string v11, "Network error in fetching config."

    invoke-direct {v4, v13, v11}, Lcom/inmobi/media/N2;-><init>(BLjava/lang/String;)V

    .line 15
    iput-object v4, v15, Lcom/inmobi/media/S2;->c:Lcom/inmobi/media/N2;

    .line 16
    iget-object v4, v1, Lcom/inmobi/media/W2;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    const-string v14, "<get-key>(...)"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v3, Lcom/inmobi/media/N2;

    .line 21
    iget-object v4, v0, Lcom/inmobi/media/i9;->b:Ljava/lang/String;

    .line 22
    invoke-direct {v3, v13, v4}, Lcom/inmobi/media/N2;-><init>(BLjava/lang/String;)V

    .line 23
    iput-object v3, v1, Lcom/inmobi/media/W2;->d:Lcom/inmobi/media/N2;

    .line 24
    const-string v4, "W2"

    const-string v8, "TAG"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-byte v4, v3, Lcom/inmobi/media/N2;->a:B

    .line 28
    iget-object v3, v3, Lcom/inmobi/media/N2;->b:Ljava/lang/String;

    .line 29
    iget-object v3, v1, Lcom/inmobi/media/W2;->b:Ljava/util/TreeMap;

    invoke-static {v3}, Lcom/inmobi/media/R2;->a(Ljava/util/TreeMap;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 33
    iget-object v0, v0, Lcom/inmobi/media/i9;->a:Lcom/inmobi/media/c4;

    .line 34
    iget v0, v0, Lcom/inmobi/media/c4;->a:I

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 36
    invoke-static {v10, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 37
    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 38
    invoke-static {}, Lcom/inmobi/media/E3;->q()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-array v11, v5, [Lkotlin/Pair;

    aput-object v0, v11, v13

    aput-object v4, v11, v12

    const/4 v4, 0x2

    aput-object v3, v11, v4

    const/4 v3, 0x3

    aput-object v8, v11, v3

    .line 39
    invoke-static {v11}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 45
    sget-object v3, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 46
    sget-object v3, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 47
    invoke-static {v2, v0, v3}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    .line 48
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    if-nez v8, :cond_5

    .line 82
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/inmobi/media/W2;->a:Lcom/inmobi/media/m9;

    invoke-virtual {v3}, Lcom/inmobi/media/m9;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 85
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 89
    iget-object v11, v1, Lcom/inmobi/media/W2;->b:Ljava/util/TreeMap;

    invoke-virtual {v11, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/inmobi/commons/core/configs/Config;

    if-eqz v11, :cond_2

    .line 90
    new-instance v14, Lcom/inmobi/media/S2;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v14, v8, v11}, Lcom/inmobi/media/S2;-><init>(Lorg/json/JSONObject;Lcom/inmobi/commons/core/configs/Config;)V

    .line 91
    iget-object v8, v1, Lcom/inmobi/media/W2;->c:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 95
    :cond_3
    iget-object v0, v1, Lcom/inmobi/media/W2;->b:Ljava/util/TreeMap;

    invoke-static {v0}, Lcom/inmobi/media/R2;->a(Ljava/util/TreeMap;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 97
    invoke-static {v10, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 98
    invoke-static {v9, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v4, 0x2

    new-array v8, v4, [Lkotlin/Pair;

    aput-object v3, v8, v13

    aput-object v0, v8, v12

    .line 99
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 103
    const-string v3, "ConfigFetched"

    sget-object v4, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 104
    sget-object v4, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 105
    invoke-static {v3, v0, v4}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 106
    new-instance v3, Lcom/inmobi/media/N2;

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "Exception while parsing config"

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_2
    const/4 v4, 0x2

    .line 109
    invoke-direct {v3, v4, v0}, Lcom/inmobi/media/N2;-><init>(BLjava/lang/String;)V

    .line 110
    iput-object v3, v1, Lcom/inmobi/media/W2;->d:Lcom/inmobi/media/N2;

    .line 112
    iget-object v0, v3, Lcom/inmobi/media/N2;->b:Ljava/lang/String;

    .line 113
    iget-object v0, v1, Lcom/inmobi/media/W2;->b:Ljava/util/TreeMap;

    invoke-static {v0}, Lcom/inmobi/media/R2;->a(Ljava/util/TreeMap;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 115
    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-static {v7, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 116
    invoke-static {v10, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 117
    invoke-static {v9, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 118
    invoke-static {}, Lcom/inmobi/media/E3;->q()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    new-array v5, v5, [Lkotlin/Pair;

    aput-object v4, v5, v13

    aput-object v3, v5, v12

    const/4 v3, 0x2

    aput-object v0, v5, v3

    const/4 v3, 0x3

    aput-object v6, v5, v3

    .line 119
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 125
    sget-object v3, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 126
    sget-object v3, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 127
    invoke-static {v2, v0, v3}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/W2;->a:Lcom/inmobi/media/m9;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/m9;->c:Lcom/inmobi/media/i9;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/inmobi/media/i9;->a:Lcom/inmobi/media/c4;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    sget-object v2, Lcom/inmobi/media/c4;->i:Lcom/inmobi/media/c4;

    if-eq v1, v2, :cond_4

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/i9;->a:Lcom/inmobi/media/c4;

    if-nez v0, :cond_2

    .line 6
    :cond_1
    sget-object v0, Lcom/inmobi/media/c4;->e:Lcom/inmobi/media/c4;

    .line 7
    :cond_2
    iget v0, v0, Lcom/inmobi/media/c4;->a:I

    const/16 v1, 0x1f4

    if-gt v1, v0, :cond_3

    const/16 v1, 0x258

    if-ge v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method
