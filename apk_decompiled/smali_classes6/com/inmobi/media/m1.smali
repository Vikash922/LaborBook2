.class public final Lcom/inmobi/media/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/l1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/n1;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/n1;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/m1;->a:Lcom/inmobi/media/n1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/j;)V
    .locals 5

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/inmobi/media/m1;->a:Lcom/inmobi/media/n1;

    .line 38
    iget-object v0, v0, Lcom/inmobi/media/n1;->a:Ljava/lang/ref/WeakReference;

    .line 39
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/r1;

    const-string v1, "access$getTAG$p(...)"

    const-string v2, "r1"

    if-eqz v0, :cond_1

    .line 41
    sget-object v3, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v3, p1, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 43
    sget-object v4, Lcom/inmobi/media/r1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget v3, p1, Lcom/inmobi/media/j;->d:I

    if-lez v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    .line 45
    iput v3, p1, Lcom/inmobi/media/j;->d:I

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    iput-wide v0, p1, Lcom/inmobi/media/j;->e:J

    .line 48
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/media/k1;->a(Lcom/inmobi/media/j;)V

    .line 49
    iget-object p1, p0, Lcom/inmobi/media/m1;->a:Lcom/inmobi/media/n1;

    .line 50
    invoke-virtual {p1}, Lcom/inmobi/media/n1;->a()V

    goto :goto_0

    .line 51
    :cond_0
    iget-byte v3, p1, Lcom/inmobi/media/j;->l:B

    .line 52
    invoke-virtual {v0, p1, v3}, Lcom/inmobi/media/r1;->a(Lcom/inmobi/media/j;B)V

    .line 53
    iget-object v0, p0, Lcom/inmobi/media/m1;->a:Lcom/inmobi/media/n1;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x4

    .line 56
    iput v4, v3, Landroid/os/Message;->what:I

    .line 57
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    sget-object p1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    sget-object p1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/m9;Ljava/lang/String;Lcom/inmobi/media/j;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "response"

    move-object/from16 v6, p1

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "locationOnDisk"

    move-object/from16 v5, p2

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "asset"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcom/inmobi/media/m1;->a:Lcom/inmobi/media/n1;

    .line 2
    iget-object v2, v2, Lcom/inmobi/media/n1;->a:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/r1;

    if-eqz v2, :cond_0

    .line 4
    sget-object v3, Lcom/inmobi/media/r1;->c:Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v10, "access$getTAG$p(...)"

    const-string v11, "r1"

    if-eqz v3, :cond_2

    .line 5
    sget-object v4, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v4, Lcom/inmobi/media/i;

    invoke-direct {v4}, Lcom/inmobi/media/i;-><init>()V

    .line 9
    iget-object v7, v1, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getMaxRetries()I

    move-result v8

    .line 11
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getTimeToLive()J

    move-result-wide v12

    move-object v3, v4

    move-object v4, v7

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move v7, v8

    move-wide v8, v12

    .line 12
    invoke-virtual/range {v3 .. v9}, Lcom/inmobi/media/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/m9;IJ)Lcom/inmobi/media/i;

    move-result-object v3

    .line 13
    new-instance v4, Lcom/inmobi/media/j;

    .line 14
    iget v13, v3, Lcom/inmobi/media/i;->a:I

    .line 15
    iget-object v5, v3, Lcom/inmobi/media/i;->c:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v5, ""

    :cond_1
    move-object v14, v5

    .line 16
    iget-object v15, v3, Lcom/inmobi/media/i;->d:Ljava/lang/String;

    .line 17
    iget v5, v3, Lcom/inmobi/media/i;->b:I

    .line 18
    iget-wide v6, v3, Lcom/inmobi/media/i;->e:J

    .line 19
    iget-wide v8, v3, Lcom/inmobi/media/i;->f:J

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    .line 20
    iget-wide v10, v3, Lcom/inmobi/media/i;->g:J

    move-object/from16 v27, v2

    .line 21
    iget-wide v2, v3, Lcom/inmobi/media/i;->h:J

    move-object v12, v4

    move/from16 v16, v5

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    move-wide/from16 v23, v2

    .line 22
    invoke-direct/range {v12 .. v24}, Lcom/inmobi/media/j;-><init>(ILjava/lang/String;Ljava/lang/String;IJJJJ)V

    .line 23
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/inmobi/media/k1;->a(Lcom/inmobi/media/j;)V

    .line 24
    iget-object v2, v1, Lcom/inmobi/media/j;->j:Ljava/lang/String;

    .line 25
    iput-object v2, v4, Lcom/inmobi/media/j;->j:Ljava/lang/String;

    .line 26
    iget-wide v1, v1, Lcom/inmobi/media/j;->k:J

    .line 27
    iput-wide v1, v4, Lcom/inmobi/media/j;->k:J

    const/4 v1, -0x1

    move-object/from16 v2, v27

    .line 28
    invoke-virtual {v2, v4, v1}, Lcom/inmobi/media/r1;->a(Lcom/inmobi/media/j;B)V

    .line 29
    iget-object v1, v0, Lcom/inmobi/media/m1;->a:Lcom/inmobi/media/n1;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    .line 31
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 35
    :catch_0
    sget-object v1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v10

    move-object v2, v11

    .line 36
    sget-object v3, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
