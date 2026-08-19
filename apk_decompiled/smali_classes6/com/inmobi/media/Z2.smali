.class public final Lcom/inmobi/media/Z2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/h;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Lcom/inmobi/media/d3;

.field public e:J

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/h;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/Z2;->a:Lcom/inmobi/media/h;

    iput-wide p2, p0, Lcom/inmobi/media/Z2;->b:J

    .line 3
    const-string p1, "Z2"

    iput-object p1, p0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    .line 5
    new-instance p1, Lcom/inmobi/media/d3;

    invoke-direct {p1}, Lcom/inmobi/media/d3;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Lcom/inmobi/media/Z2;->e:J

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/Z2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/Z2;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/inmobi/media/c3;->a:Lcom/inmobi/media/c3;

    iget-object p0, p0, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    .line 49
    const-string v1, "contextualDataModel"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    monitor-enter v0

    .line 229
    :try_start_0
    const-string v1, "c3"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 231
    sget-object v3, Lcom/inmobi/media/c3;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig;->getContextualData()Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->getExpiryTime()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v5, v3

    sub-long v5, v1, v5

    .line 232
    sget-object v3, Lcom/inmobi/media/c3;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig;->getContextualData()Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->getMaxAdRecords()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 233
    invoke-static {v5, v6, v3}, Lcom/inmobi/media/c3;->a(JI)V

    .line 234
    sget-object v3, Lcom/inmobi/media/c3;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig;->getContextualData()Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->getSkipFields()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 235
    :cond_3
    new-instance v7, Lcom/inmobi/media/Z3;

    .line 237
    invoke-static {p0, v3}, Lcom/inmobi/media/e3;->a(Lcom/inmobi/media/d3;Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p0

    .line 238
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "toString(...)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    sget-object v3, Lcom/inmobi/media/c3;->f:[B

    .line 240
    invoke-static {p0, v3}, Lcom/inmobi/media/a4;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-direct {v7, p0, v1, v2}, Lcom/inmobi/media/Z3;-><init>(Ljava/lang/String;J)V

    .line 249
    sget-object p0, Lcom/inmobi/media/c3;->b:Ljava/util/LinkedList;

    invoke-virtual {p0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object p0, Lcom/inmobi/media/c3;->b:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/LinkedList;

    .line 252
    sput-object p0, Lcom/inmobi/media/c3;->c:Ljava/util/LinkedList;

    .line 253
    sget-object p0, Lcom/inmobi/media/c3;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig;->getContextualData()Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->getMaxAdRecords()I

    move-result v4

    .line 254
    :cond_4
    const-string p0, "c3"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 255
    sget-object p0, Lcom/inmobi/media/Db;->d:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/media/Y2;

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    invoke-virtual {p0, v7}, Lcom/inmobi/media/R1;->a(Ljava/lang/Object;)V

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id NOT IN (SELECT id FROM ( SELECT id FROM c_data WHERE timestamp > "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 267
    const-string v2, " ORDER BY timestamp DESC LIMIT "

    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    const-string v2, ") foo);"

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0, v1, v2}, Lcom/inmobi/media/R1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Z2;->a:Lcom/inmobi/media/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/h;->C()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v7, Lcom/inmobi/media/c3;->a:Lcom/inmobi/media/c3;

    .line 3
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    const-string v2, "c3"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/inmobi/media/c3;->d()Z

    move-result v3

    if-eq v0, v3, :cond_0

    .line 7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    sget-object v2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "c_data_store"

    invoke-static {v1, v2}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 9
    const-string v2, "isEnabled"

    const/4 v4, 0x0

    move v3, v0

    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;ZZILjava/lang/Object;)V

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {v7}, Lcom/inmobi/media/c3;->e()V

    .line 12
    :cond_0
    sget-object v0, Lcom/inmobi/media/c3;->a:Lcom/inmobi/media/c3;

    invoke-static {}, Lcom/inmobi/media/c3;->d()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Z2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 18
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/media/Z2;->e:J

    .line 19
    iget-object v0, p0, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/inmobi/media/Z2;->a:Lcom/inmobi/media/h;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/inmobi/media/h;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/inmobi/media/Z2;->a:Lcom/inmobi/media/h;

    invoke-virtual {v0}, Lcom/inmobi/media/h;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22
    iget-object v1, p0, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const-string v2, "<set-?>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object v0, v1, Lcom/inmobi/media/d3;->a:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    .line 30
    iget-object v0, p0, Lcom/inmobi/media/Z2;->a:Lcom/inmobi/media/h;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/inmobi/media/h;->m()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 31
    iget-object v2, p0, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    .line 32
    iput-wide v0, v2, Lcom/inmobi/media/d3;->b:J

    .line 33
    iget-object v0, p0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    .line 35
    iget-object v0, p0, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    iget-wide v1, p0, Lcom/inmobi/media/Z2;->b:J

    .line 36
    iput-wide v1, v0, Lcom/inmobi/media/d3;->e:J

    .line 37
    iget-object v0, p0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    :cond_6
    iget-object v0, p0, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    .line 39
    iget-object v0, p0, Lcom/inmobi/media/Z2;->a:Lcom/inmobi/media/h;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/inmobi/media/h;->n()I

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    .line 41
    iput v0, v1, Lcom/inmobi/media/d3;->f:I

    .line 42
    iget-object v0, p0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    :cond_7
    iget-wide v0, p0, Lcom/inmobi/media/Z2;->e:J

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 44
    iget-object v2, p0, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_8

    .line 45
    iget-object v2, p0, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    .line 46
    iput-wide v0, v2, Lcom/inmobi/media/d3;->c:J

    .line 47
    iget-object v0, p0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    sget-object v0, Lcom/inmobi/media/c3;->a:Lcom/inmobi/media/c3;

    invoke-static {}, Lcom/inmobi/media/c3;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Z2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inmobi/media/Z2;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 10
    iget-object v1, p0, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    .line 12
    iput v0, v1, Lcom/inmobi/media/d3;->d:I

    .line 13
    iget-object v0, p0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lcom/inmobi/media/Z2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/inmobi/media/Z2$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/Z2;)V

    invoke-static {v0}, Lcom/inmobi/media/Kb;->a(Ljava/lang/Runnable;)V

    return-void
.end method
