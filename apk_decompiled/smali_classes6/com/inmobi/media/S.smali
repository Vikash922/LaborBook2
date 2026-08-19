.class public final Lcom/inmobi/media/S;
.super Lcom/inmobi/media/l9;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/util/Map;

.field public final y:Lcom/inmobi/media/Y;

.field public final z:Lcom/inmobi/media/r9;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/media/Kc;Ljava/lang/String;Lcom/inmobi/media/Y;Lcom/inmobi/media/r9;Lcom/inmobi/media/f5;Z)V
    .locals 11

    move-object v8, p0

    move-object v9, p3

    move-object v10, p4

    const-string v0, "adPlacement"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 2
    const-string v6, "application/x-www-form-urlencoded"

    const-string v1, "POST"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/media/l9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/Kc;ZLcom/inmobi/media/f5;Ljava/lang/String;Z)V

    .line 3
    iput-object v10, v8, Lcom/inmobi/media/S;->y:Lcom/inmobi/media/Y;

    move-object/from16 v0, p5

    .line 4
    iput-object v0, v8, Lcom/inmobi/media/S;->z:Lcom/inmobi/media/r9;

    .line 29
    const-string v0, "json"

    iput-object v0, v8, Lcom/inmobi/media/S;->A:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/inmobi/media/l9;->m:Ljava/lang/String;

    .line 55
    iget-object v0, v8, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 57
    invoke-static {}, Lcom/inmobi/media/N3;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 58
    sget-object v1, Lcom/inmobi/media/c1;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 59
    const-string v2, "u-appIS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    :cond_0
    invoke-virtual {p4}, Lcom/inmobi/media/Y;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client-request-id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_1

    .line 62
    const-string v1, "u-appcache"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1
    const-string v1, "sdk-flavor"

    const-string v2, "row"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "adType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "banner"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/inmobi/media/b5;->c:Lcom/inmobi/media/b5;

    invoke-virtual {p0}, Lcom/inmobi/media/b5;->a()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    const-string v0, "audio"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 4
    sget-object p0, Lcom/inmobi/media/X4;->c:Lcom/inmobi/media/X4;

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-wide v1, p0, Lcom/inmobi/media/Q1;->a:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 7
    const-string v3, "a-lastAudioPlayedTs"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    :cond_1
    iget p0, p0, Lcom/inmobi/media/Q1;->b:I

    if-lez p0, :cond_2

    .line 9
    const-string v1, "a-audioFreq"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :cond_2
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 14
    sget-object v1, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "audio_pref_file"

    invoke-static {p0, v1}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object p0

    .line 16
    const-string v1, "key"

    const-string v2, "user_mute_count"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_3

    .line 68
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "a-umc"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    return-object v0

    .line 69
    :cond_4
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final f()V
    .locals 11

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/l9;->f()V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_29

    .line 3
    invoke-static {}, Lcom/inmobi/media/Pc;->a()Lcom/inmobi/media/Qc;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/inmobi/media/Qc;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5
    const-string v3, "ufid"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    :cond_0
    iget-boolean v1, v1, Lcom/inmobi/media/Qc;->b:Z

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is-unifid-service-used"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/inmobi/media/S;->A:Ljava/lang/String;

    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/inmobi/media/S;->B:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "adtype"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    :cond_1
    sget-object v1, Lcom/inmobi/media/y6;->a:Lcom/inmobi/media/y6;

    invoke-virtual {v1}, Lcom/inmobi/media/y6;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-static {}, Lcom/inmobi/media/y6;->c()Z

    move-result v2

    const-string v3, "DENIED"

    if-eqz v2, :cond_2

    .line 17
    invoke-static {}, Lcom/inmobi/media/y6;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    const-string v3, "AUTHORISED"

    .line 24
    :cond_2
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "ENGLISH"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "loc-consent-status"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 28
    invoke-static {}, Lcom/inmobi/media/f2;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 31
    invoke-static {}, Lcom/inmobi/media/f2;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 32
    invoke-static {}, Lcom/inmobi/media/f2;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 34
    iget-object v1, p0, Lcom/inmobi/media/S;->z:Lcom/inmobi/media/r9;

    if-eqz v1, :cond_3

    .line 35
    iget-object v1, v1, Lcom/inmobi/media/r9;->a:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 37
    :cond_3
    sget-object v1, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 39
    iget-object v1, p0, Lcom/inmobi/media/l9;->m:Ljava/lang/String;

    .line 40
    const-string v2, "signals"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v1

    instance-of v4, v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    if-eqz v4, :cond_4

    check-cast v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    goto :goto_0

    :cond_4
    move-object v1, v3

    :goto_0
    const/4 v4, 0x0

    const-string v5, "toString(...)"

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    .line 45
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getPublisherConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->getEnableMCO()Z

    move-result v1

    if-ne v1, v6, :cond_5

    .line 46
    sget-object v1, Lcom/inmobi/media/aa;->a:Lcom/inmobi/media/aa;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    sget-object v7, Lcom/inmobi/media/aa;->d:Lcom/inmobi/media/v1;

    sget-object v8, Lcom/inmobi/media/aa;->b:[Lkotlin/reflect/KProperty;

    aget-object v8, v8, v4

    invoke-virtual {v7, v1, v8}, Lcom/inmobi/media/v1;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 49
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 50
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "extData"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    sget-object v7, Lcom/inmobi/media/B2;->a:Ljava/util/HashMap;

    .line 53
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 56
    iget-object v1, p0, Lcom/inmobi/media/S;->C:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v7, "p-keywords"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    :cond_6
    iget-object v1, p0, Lcom/inmobi/media/S;->y:Lcom/inmobi/media/Y;

    invoke-virtual {v1}, Lcom/inmobi/media/Y;->j()Ljava/lang/String;

    move-result-object v1

    const-string v7, "others"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 60
    const-string v1, "M10N_CONTEXT_OTHER"

    goto :goto_1

    .line 62
    :cond_7
    const-string v1, "M10N_CONTEXT_ACTIVITY"

    .line 65
    :goto_1
    const-string v7, "m10n_context"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/inmobi/media/S;->y:Lcom/inmobi/media/Y;

    invoke-virtual {v1}, Lcom/inmobi/media/Y;->f()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 71
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 73
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 78
    :cond_9
    iget-object v1, p0, Lcom/inmobi/media/S;->D:Ljava/util/Map;

    if-eqz v1, :cond_a

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 80
    :cond_a
    iget-object v1, p0, Lcom/inmobi/media/S;->y:Lcom/inmobi/media/Y;

    invoke-virtual {v1}, Lcom/inmobi/media/Y;->g()J

    move-result-wide v7

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v1, v7, v9

    if-eqz v1, :cond_b

    .line 81
    iget-object v1, p0, Lcom/inmobi/media/S;->y:Lcom/inmobi/media/Y;

    invoke-virtual {v1}, Lcom/inmobi/media/Y;->g()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v7, "im-plid"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_b
    iget-object v1, p0, Lcom/inmobi/media/S;->y:Lcom/inmobi/media/Y;

    invoke-virtual {v1}, Lcom/inmobi/media/Y;->h()Ljava/lang/String;

    move-result-object v1

    const-string v7, "int-origin"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/inmobi/media/l9;->m:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v1

    instance-of v2, v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    if-eqz v2, :cond_c

    check-cast v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    goto :goto_3

    :cond_c
    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_d

    .line 86
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getExt()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_4

    :cond_d
    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_e

    .line 87
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_e

    .line 88
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "im-ext"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_e
    sget-object v1, Lcom/inmobi/media/fa;->a:Ljava/lang/String;

    .line 94
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 95
    sget-object v2, Lcom/inmobi/media/fa;->a:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 96
    const-string v7, "u-nip"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_f
    move-object v1, v3

    :goto_5
    if-eqz v1, :cond_10

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 99
    :cond_10
    sget-object v1, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v1}, Lcom/inmobi/media/E3;->y()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 100
    invoke-static {}, Lcom/inmobi/media/N3;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 102
    const-string v7, "d-device-gesture-margins"

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_11
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/media/s3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 109
    iget-object v2, p0, Lcom/inmobi/media/l9;->m:Ljava/lang/String;

    const-string v7, "ads"

    invoke-static {v7, v2, v3}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v2

    instance-of v7, v2, Lcom/inmobi/commons/core/configs/AdConfig;

    if-eqz v7, :cond_12

    check-cast v2, Lcom/inmobi/commons/core/configs/AdConfig;

    goto :goto_6

    :cond_12
    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_13

    .line 110
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig;->isCCTEnabled()Z

    move-result v2

    if-ne v2, v6, :cond_13

    move v2, v6

    goto :goto_7

    :cond_13
    move v2, v4

    .line 111
    :goto_7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 112
    const-string v7, "cct-enabled"

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v2, Lcom/inmobi/media/e0;->c:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 114
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    .line 116
    new-instance v7, Lorg/json/JSONArray;

    .line 117
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 118
    invoke-direct {v7, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    const-string v7, "u-r-crid"

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_14
    iget-object v2, p0, Lcom/inmobi/media/S;->B:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 123
    invoke-static {v2}, Lcom/inmobi/media/S;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 124
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_15

    .line 125
    invoke-static {v2}, Lcom/inmobi/media/S;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "audioObject"

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_15
    invoke-static {}, Lcom/inmobi/media/ca;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 132
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v2

    const-string v7, ""

    if-eqz v2, :cond_18

    .line 133
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v2

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_16
    move-object v9, v3

    :goto_8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_preferences"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v2, :cond_17

    .line 135
    invoke-virtual {v2, v8, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    :cond_17
    if-eqz v3, :cond_18

    .line 136
    const-string v2, "IABGPP_HDR_GppString"

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_18

    .line 137
    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_18
    move-object v2, v7

    .line 138
    :goto_9
    invoke-static {v2}, Lcom/inmobi/media/y2;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 139
    const-string v3, "gpp"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_19
    invoke-virtual {v1}, Lcom/inmobi/media/E3;->i()Lkotlin/Pair;

    move-result-object v2

    .line 143
    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1a

    .line 242
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_1a
    invoke-virtual {v1}, Lcom/inmobi/media/E3;->k()Lkotlin/Pair;

    move-result-object v2

    .line 244
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1b

    .line 343
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_1b
    invoke-virtual {v1}, Lcom/inmobi/media/E3;->c()Lkotlin/Pair;

    move-result-object v2

    .line 345
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1c

    .line 444
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_1c
    invoke-virtual {v1}, Lcom/inmobi/media/E3;->f()Lkotlin/Pair;

    move-result-object v2

    .line 446
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1d

    .line 545
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :cond_1d
    invoke-virtual {v1}, Lcom/inmobi/media/E3;->t()Lkotlin/Pair;

    move-result-object v2

    .line 547
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1e

    .line 646
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :cond_1e
    invoke-virtual {v1}, Lcom/inmobi/media/E3;->d()Lkotlin/Pair;

    move-result-object v2

    .line 648
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1f

    .line 747
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_1f
    invoke-virtual {v1}, Lcom/inmobi/media/E3;->u()Lkotlin/Pair;

    move-result-object v2

    .line 749
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_20

    .line 848
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    :cond_20
    invoke-virtual {v1}, Lcom/inmobi/media/E3;->g()Lkotlin/Pair;

    move-result-object v2

    .line 850
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_21

    .line 949
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    :cond_21
    invoke-virtual {v1}, Lcom/inmobi/media/E3;->h()Lkotlin/Pair;

    move-result-object v2

    .line 951
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_22

    .line 1050
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    :cond_22
    invoke-virtual {v1}, Lcom/inmobi/media/E3;->b()Lkotlin/Pair;

    move-result-object v2

    .line 1052
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_23

    .line 1151
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    :cond_23
    invoke-virtual {v1}, Lcom/inmobi/media/E3;->j()Lkotlin/Pair;

    move-result-object v1

    .line 1153
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_24

    .line 1252
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    :cond_24
    sget-object v1, Lcom/inmobi/media/e1;->a:Lcom/google/android/gms/appset/AppSetIdInfo;

    const-string v1, "mutableMap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1254
    invoke-static {}, Lcom/inmobi/media/e1;->a()Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_a

    .line 1256
    :cond_25
    sget-object v1, Lcom/inmobi/media/e1;->a:Lcom/google/android/gms/appset/AppSetIdInfo;

    if-eqz v1, :cond_26

    .line 1257
    invoke-virtual {v1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "d-app-set-id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getScope()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "d-app-set-scope"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1259
    :cond_26
    :goto_a
    sget-object v1, Lcom/inmobi/media/c3;->a:Lcom/inmobi/media/c3;

    invoke-static {}, Lcom/inmobi/media/c3;->d()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1260
    const-string v1, "ik"

    .line 1261
    sget-object v2, Lcom/inmobi/media/c3;->g:Ljava/lang/String;

    .line 1262
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    invoke-static {}, Lcom/inmobi/media/c3;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "c_data"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1265
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 1267
    sget-object v3, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "c_data_store"

    invoke-static {v2, v3}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v2

    .line 1269
    const-string v3, "key"

    const-string v4, "akv"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1320
    iget-object v2, v2, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1321
    :cond_27
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aKV"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    :cond_28
    sget-object v1, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/Pb;

    invoke-virtual {v1}, Lcom/inmobi/media/Pb;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 1324
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 1325
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sData"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    return-void
.end method
