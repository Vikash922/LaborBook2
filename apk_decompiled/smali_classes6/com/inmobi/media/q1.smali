.class public final Lcom/inmobi/media/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/l1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/j;)V
    .locals 8

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    const-string v1, "r1"

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v3, p1, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 37
    sget-object v4, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    .line 38
    sget-object v5, Lcom/inmobi/media/r1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget v3, p1, Lcom/inmobi/media/j;->d:I

    const/4 v5, 0x0

    if-gtz v3, :cond_0

    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-byte v3, p1, Lcom/inmobi/media/j;->l:B

    .line 42
    invoke-virtual {v4, p1, v3}, Lcom/inmobi/media/r1;->a(Lcom/inmobi/media/j;B)V

    .line 43
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget p1, p1, Lcom/inmobi/media/j;->a:I

    .line 46
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v5

    .line 47
    const-string p1, "id = ?"

    invoke-virtual {v3, p1, v0}, Lcom/inmobi/media/R1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 51
    iput-wide v6, p1, Lcom/inmobi/media/j;->e:J

    .line 52
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/media/k1;->a(Lcom/inmobi/media/j;)V

    .line 55
    sget-boolean v0, Lcom/inmobi/media/p9;->a:Z

    .line 56
    invoke-static {v5}, Lcom/inmobi/media/p9;->a(Z)Lcom/inmobi/media/c4;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    iget-byte v0, p1, Lcom/inmobi/media/j;->l:B

    .line 58
    invoke-virtual {v4, p1, v0}, Lcom/inmobi/media/r1;->a(Lcom/inmobi/media/j;B)V

    .line 59
    :cond_1
    :goto_0
    :try_start_0
    sget-object p1, Lcom/inmobi/media/r1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    .line 60
    invoke-virtual {v4}, Lcom/inmobi/media/r1;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 61
    sget-object v0, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 63
    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 64
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lcom/inmobi/media/m9;Ljava/lang/String;Lcom/inmobi/media/j;)V
    .locals 25

    move-object/from16 v0, p3

    const-string v1, "response"

    move-object/from16 v5, p1

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "locationOnDisk"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "asset"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    const-string v1, "r1"

    const-string v9, "access$getTAG$p(...)"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/inmobi/media/r1;->c:Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    if-eqz v2, :cond_1

    .line 3
    new-instance v3, Lcom/inmobi/media/i;

    invoke-direct {v3}, Lcom/inmobi/media/i;-><init>()V

    .line 4
    iget-object v6, v0, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getMaxRetries()I

    move-result v7

    .line 6
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getTimeToLive()J

    move-result-wide v10

    move-object v2, v3

    move-object v3, v6

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move v6, v7

    move-wide v7, v10

    .line 7
    invoke-virtual/range {v2 .. v8}, Lcom/inmobi/media/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/m9;IJ)Lcom/inmobi/media/i;

    move-result-object v2

    .line 8
    new-instance v3, Lcom/inmobi/media/j;

    .line 9
    iget v11, v2, Lcom/inmobi/media/i;->a:I

    .line 10
    iget-object v4, v2, Lcom/inmobi/media/i;->c:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    move-object v12, v4

    .line 11
    iget-object v13, v2, Lcom/inmobi/media/i;->d:Ljava/lang/String;

    .line 12
    iget v14, v2, Lcom/inmobi/media/i;->b:I

    .line 13
    iget-wide v4, v2, Lcom/inmobi/media/i;->e:J

    .line 14
    iget-wide v6, v2, Lcom/inmobi/media/i;->f:J

    move-object/from16 v23, v9

    .line 15
    iget-wide v8, v2, Lcom/inmobi/media/i;->g:J

    move-object/from16 v24, v1

    .line 16
    iget-wide v1, v2, Lcom/inmobi/media/i;->h:J

    move-object v10, v3

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v1

    .line 17
    invoke-direct/range {v10 .. v22}, Lcom/inmobi/media/j;-><init>(ILjava/lang/String;Ljava/lang/String;IJJJJ)V

    .line 18
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/inmobi/media/k1;->a(Lcom/inmobi/media/j;)V

    .line 19
    iget-object v1, v0, Lcom/inmobi/media/j;->j:Ljava/lang/String;

    .line 20
    iput-object v1, v3, Lcom/inmobi/media/j;->j:Ljava/lang/String;

    .line 21
    iget-wide v0, v0, Lcom/inmobi/media/j;->k:J

    .line 22
    iput-wide v0, v3, Lcom/inmobi/media/j;->k:J

    .line 23
    sget-object v0, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    const/4 v1, -0x1

    .line 24
    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/r1;->a(Lcom/inmobi/media/j;B)V

    goto :goto_0

    :cond_1
    move-object/from16 v24, v1

    move-object/from16 v23, v9

    .line 25
    :goto_0
    :try_start_0
    sget-object v0, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    .line 26
    sget-object v1, Lcom/inmobi/media/r1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 27
    invoke-virtual {v0}, Lcom/inmobi/media/r1;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 28
    sget-object v1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    move-object/from16 v2, v23

    move-object/from16 v1, v24

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 30
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_2
    :goto_1
    return-void
.end method
