.class public final Lcom/inmobi/media/g6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/O9;


# instance fields
.field public a:Lcom/inmobi/commons/core/configs/CrashConfig;

.field public b:Lcom/inmobi/media/g4;

.field public final c:Lcom/inmobi/media/y5;

.field public final d:Lcom/inmobi/media/f6;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/configs/CrashConfig;)V
    .locals 1

    const-string v0, "crashConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/g6;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 6
    new-instance v0, Lcom/inmobi/media/y5;

    invoke-direct {v0, p1}, Lcom/inmobi/media/y5;-><init>(Lcom/inmobi/commons/core/configs/CrashConfig;)V

    iput-object v0, p0, Lcom/inmobi/media/g6;->c:Lcom/inmobi/media/y5;

    .line 8
    new-instance p1, Lcom/inmobi/media/f6;

    invoke-direct {p1, p0}, Lcom/inmobi/media/f6;-><init>(Lcom/inmobi/media/g6;)V

    iput-object p1, p0, Lcom/inmobi/media/g6;->d:Lcom/inmobi/media/f6;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/g6;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/inmobi/media/g4;

    invoke-static {}, Lcom/inmobi/media/Db;->c()Lcom/inmobi/media/v5;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/media/g6;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/CrashConfig;->getEventConfig()Lcom/inmobi/media/d4;

    move-result-object v2

    const/4 v3, 0x0

    .line 20
    invoke-direct {v0, v1, p0, v2, v3}, Lcom/inmobi/media/g4;-><init>(Lcom/inmobi/media/e4;Lcom/inmobi/media/O9;Lcom/inmobi/media/d4;Lcom/inmobi/media/Fa;)V

    .line 21
    iput-object v0, p0, Lcom/inmobi/media/g6;->b:Lcom/inmobi/media/g4;

    .line 22
    invoke-static {}, Lcom/inmobi/media/Db;->c()Lcom/inmobi/media/v5;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {v0}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;)I

    move-result v0

    if-lez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/inmobi/media/g6;->b()V

    :cond_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/g6;Lcom/inmobi/media/d2;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$incident"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/x5;)V

    .line 222
    invoke-virtual {p0}, Lcom/inmobi/media/g6;->b()V

    return-void
.end method

.method public static final b(Lcom/inmobi/media/g6;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/inmobi/media/g6;->b()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/inmobi/media/f4;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "crash"

    .line 223
    sget-object v2, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v2}, Lcom/inmobi/media/E3;->p()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_0

    .line 226
    iget-object v2, v0, Lcom/inmobi/media/g6;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/CrashConfig;->getMobileConfig()Lcom/inmobi/media/n9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/media/n9;->a()I

    move-result v2

    goto :goto_0

    .line 227
    :cond_0
    iget-object v2, v0, Lcom/inmobi/media/g6;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/CrashConfig;->getWifiConfig()Lcom/inmobi/media/n9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/media/n9;->a()I

    move-result v2

    goto :goto_0

    .line 228
    :cond_1
    iget-object v2, v0, Lcom/inmobi/media/g6;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/CrashConfig;->getMobileConfig()Lcom/inmobi/media/n9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/media/n9;->a()I

    move-result v2

    .line 231
    :goto_0
    invoke-static {}, Lcom/inmobi/media/Db;->c()Lcom/inmobi/media/v5;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/inmobi/media/e4;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 232
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_c

    .line 233
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/inmobi/media/x5;

    .line 235
    iget v7, v7, Lcom/inmobi/media/S1;->c:I

    .line 236
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    :cond_2
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    sget-object v7, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/inmobi/media/E3;->a(Z)Ljava/util/Map;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 238
    const-string v7, "im-accid"

    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v7, "version"

    const-string v9, "2.0.0"

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v7, "component"

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v7, "mk-version"

    invoke-static {}, Lcom/inmobi/media/Lb;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v7, Lcom/inmobi/media/c1;->e:Ljava/util/HashMap;

    .line 243
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 244
    const-string v7, "tp"

    invoke-static {}, Lcom/inmobi/media/Lb;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v7, "tpVer"

    invoke-static {}, Lcom/inmobi/media/Lb;->f()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    const-string v9, ""

    :cond_3
    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 247
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 248
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/inmobi/media/x5;

    .line 249
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 250
    const-string v11, "eventId"

    .line 251
    iget-object v12, v9, Lcom/inmobi/media/x5;->e:Ljava/lang/String;

    .line 252
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v11, "eventType"

    .line 254
    iget-object v12, v9, Lcom/inmobi/media/S1;->a:Ljava/lang/String;

    .line 255
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    invoke-virtual {v9}, Lcom/inmobi/media/S1;->a()Ljava/lang/String;

    move-result-object v11

    .line 298
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v3

    move v13, v8

    move v14, v13

    :goto_3
    if-gt v13, v12, :cond_9

    if-nez v14, :cond_4

    move v15, v13

    goto :goto_4

    :cond_4
    move v15, v12

    .line 303
    :goto_4
    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v3, 0x20

    .line 304
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-gtz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    move v3, v8

    :goto_5
    if-nez v14, :cond_7

    if-nez v3, :cond_6

    const/4 v3, 0x1

    const/4 v14, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_7
    if-nez v3, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v12, v12, -0x1

    :goto_6
    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 366
    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 367
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 369
    const-string v3, "crash_report"

    invoke-virtual {v9}, Lcom/inmobi/media/S1;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    :cond_a
    const-string v3, "ts"

    .line 372
    iget-wide v11, v9, Lcom/inmobi/media/S1;->b:J

    .line 373
    invoke-virtual {v10, v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 374
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v3, 0x1

    goto :goto_2

    .line 376
    :cond_b
    invoke-virtual {v7, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-object v1, v5

    :goto_8
    if-eqz v1, :cond_c

    .line 378
    new-instance v5, Lcom/inmobi/media/f4;

    invoke-direct {v5, v4, v1}, Lcom/inmobi/media/f4;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_c
    return-object v5
.end method

.method public final a(Lcom/inmobi/media/d2;)V
    .locals 1

    const-string v0, "incident"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/inmobi/media/g6;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCatchConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/g6;->c:Lcom/inmobi/media/y5;

    .line 31
    iget-object v0, v0, Lcom/inmobi/media/y5;->b:Lcom/inmobi/media/Fb;

    .line 32
    invoke-virtual {v0}, Lcom/inmobi/media/Fb;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 33
    :cond_1
    new-instance v0, Lcom/inmobi/media/g6$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/media/g6$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/g6;Lcom/inmobi/media/d2;)V

    sget-object p1, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    const-string p1, "runnable"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    sget-object p1, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/inmobi/media/x5;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/inmobi/media/Db;->c()Lcom/inmobi/media/v5;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/media/g6;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getEventTTL()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x3e8

    int-to-long v5, v5

    mul-long/2addr v1, v5

    sub-long/2addr v3, v1

    .line 5
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 6
    const-string v1, "ts<?"

    invoke-virtual {v0, v1, v3}, Lcom/inmobi/media/R1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 10
    const-string v0, "e4"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/inmobi/media/Db;->c()Lcom/inmobi/media/v5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {v0}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;)I

    move-result v0

    add-int/2addr v0, v2

    .line 13
    iget-object v1, p0, Lcom/inmobi/media/g6;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getMaxEventsToPersist()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 15
    invoke-static {}, Lcom/inmobi/media/Db;->c()Lcom/inmobi/media/v5;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/media/e4;->a(I)V

    .line 17
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Db;->c()Lcom/inmobi/media/v5;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/inmobi/media/R1;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/inmobi/media/g6;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getEventConfig()Lcom/inmobi/media/d4;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/inmobi/media/g6;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 235
    iput-object v1, v0, Lcom/inmobi/media/d4;->k:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/inmobi/media/g6;->b:Lcom/inmobi/media/g4;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 237
    const-string v3, "eventConfig"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iput-object v0, v1, Lcom/inmobi/media/g4;->i:Lcom/inmobi/media/d4;

    .line 293
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 294
    invoke-static {}, Lcom/inmobi/media/Db;->c()Lcom/inmobi/media/v5;

    move-result-object v1

    new-instance v3, Lcom/inmobi/media/g4;

    .line 295
    invoke-direct {v3, v1, p0, v0, v2}, Lcom/inmobi/media/g4;-><init>(Lcom/inmobi/media/e4;Lcom/inmobi/media/O9;Lcom/inmobi/media/d4;Lcom/inmobi/media/Fa;)V

    .line 296
    iput-object v3, p0, Lcom/inmobi/media/g6;->b:Lcom/inmobi/media/g4;

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/g6;->b:Lcom/inmobi/media/g4;

    if-eqz v0, :cond_3

    .line 299
    iget-object v1, v0, Lcom/inmobi/media/g4;->i:Lcom/inmobi/media/d4;

    .line 300
    iget-object v2, v0, Lcom/inmobi/media/g4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    .line 301
    :cond_2
    iget-wide v1, v1, Lcom/inmobi/media/d4;->c:J

    const/4 v3, 0x0

    .line 302
    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/media/g4;->a(JZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Lcom/inmobi/media/x5;)V
    .locals 2

    const-string v0, "incident"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/inmobi/media/Xc;->a(Lcom/inmobi/media/x5;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/g6;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    move-result-object v0

    .line 6
    instance-of v1, p1, Lcom/inmobi/media/b1;

    if-eqz v1, :cond_1

    .line 7
    sget-object v1, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v1}, Lcom/inmobi/media/E3;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getUseForReporting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/inmobi/media/g6;->c:Lcom/inmobi/media/y5;

    .line 10
    iget-object v1, v1, Lcom/inmobi/media/y5;->d:Lcom/inmobi/media/Fb;

    .line 11
    invoke-virtual {v1}, Lcom/inmobi/media/Fb;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    const-string v0, "<set-?>"

    const-string v1, "ANREvent"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object v1, p1, Lcom/inmobi/media/S1;->a:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/x5;)V

    goto :goto_0

    .line 23
    :cond_1
    instance-of v1, p1, Lcom/inmobi/media/zd;

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getWatchdog()Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->getUseForReporting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/inmobi/media/g6;->c:Lcom/inmobi/media/y5;

    .line 26
    iget-object v0, v0, Lcom/inmobi/media/y5;->c:Lcom/inmobi/media/Fb;

    .line 27
    invoke-virtual {v0}, Lcom/inmobi/media/Fb;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/x5;)V

    goto :goto_0

    .line 31
    :cond_2
    instance-of v0, p1, Lcom/inmobi/media/h3;

    if-eqz v0, :cond_4

    .line 32
    iget-object v0, p0, Lcom/inmobi/media/g6;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/inmobi/media/g6;->c:Lcom/inmobi/media/y5;

    .line 34
    iget-object v0, v0, Lcom/inmobi/media/y5;->a:Lcom/inmobi/media/Fb;

    .line 35
    invoke-virtual {v0}, Lcom/inmobi/media/Fb;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    invoke-virtual {p0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/x5;)V

    .line 44
    :cond_3
    :goto_0
    new-instance p1, Lcom/inmobi/media/g6$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/inmobi/media/g6$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/g6;)V

    .line 45
    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    new-instance v0, Lcom/inmobi/media/g6$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/inmobi/media/g6$$ExternalSyntheticLambda2;-><init>(Lcom/inmobi/media/g6;)V

    sget-object v1, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    const-string v1, "runnable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    sget-object v1, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 189
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v0

    const/16 v1, 0x96

    const/16 v2, 0x97

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x98

    .line 194
    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/inmobi/media/g6;->d:Lcom/inmobi/media/f6;

    .line 196
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/h7;->a([ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
