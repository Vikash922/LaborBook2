.class public final Lcom/inmobi/media/g4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/e4;

.field public final b:Lcom/inmobi/media/O9;

.field public final c:Lcom/inmobi/media/Fa;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/LinkedList;

.field public h:Ljava/util/concurrent/ScheduledExecutorService;

.field public i:Lcom/inmobi/media/d4;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/e4;Lcom/inmobi/media/O9;Lcom/inmobi/media/d4;Lcom/inmobi/media/Fa;)V
    .locals 1

    const-string v0, "mEventDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mPayloadProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/g4;->a:Lcom/inmobi/media/e4;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/g4;->b:Lcom/inmobi/media/O9;

    .line 5
    iput-object p4, p0, Lcom/inmobi/media/g4;->c:Lcom/inmobi/media/Fa;

    .line 8
    const-string p1, "g4"

    iput-object p1, p0, Lcom/inmobi/media/g4;->d:Ljava/lang/String;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/inmobi/media/g4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/inmobi/media/g4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/g4;->g:Ljava/util/LinkedList;

    .line 17
    iput-object p3, p0, Lcom/inmobi/media/g4;->i:Lcom/inmobi/media/d4;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/g4;Lcom/inmobi/media/Kc;Z)V
    .locals 16

    move-object/from16 v7, p0

    const-string v0, "this$0"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, v7, Lcom/inmobi/media/g4;->i:Lcom/inmobi/media/d4;

    .line 97
    iget-object v1, v7, Lcom/inmobi/media/g4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v7, Lcom/inmobi/media/g4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_a

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 100
    :cond_0
    iget-object v1, v7, Lcom/inmobi/media/g4;->d:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v1, v7, Lcom/inmobi/media/g4;->a:Lcom/inmobi/media/e4;

    .line 102
    iget-wide v3, v0, Lcom/inmobi/media/d4;->b:J

    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v8, 0x3e8

    int-to-long v8, v8

    mul-long/2addr v3, v8

    sub-long/2addr v5, v3

    .line 107
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 108
    const-string v3, "ts<?"

    invoke-virtual {v1, v3, v5}, Lcom/inmobi/media/R1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    const-string v1, "e4"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v3, v7, Lcom/inmobi/media/g4;->a:Lcom/inmobi/media/e4;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    invoke-static {v3}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;)I

    move-result v3

    .line 115
    sget-object v5, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v5}, Lcom/inmobi/media/E3;->p()I

    move-result v5

    .line 116
    iget-object v8, v7, Lcom/inmobi/media/g4;->i:Lcom/inmobi/media/d4;

    if-nez v8, :cond_1

    move v9, v6

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_3

    if-eq v5, v4, :cond_2

    .line 117
    iget v9, v8, Lcom/inmobi/media/d4;->g:I

    goto :goto_0

    .line 118
    :cond_2
    iget v9, v8, Lcom/inmobi/media/d4;->e:I

    goto :goto_0

    .line 119
    :cond_3
    iget v9, v8, Lcom/inmobi/media/d4;->g:I

    :goto_0
    if-nez v8, :cond_4

    const-wide/16 v10, 0x0

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_6

    if-eq v5, v4, :cond_5

    .line 120
    iget-wide v10, v8, Lcom/inmobi/media/d4;->j:J

    goto :goto_1

    .line 121
    :cond_5
    iget-wide v10, v8, Lcom/inmobi/media/d4;->i:J

    goto :goto_1

    .line 122
    :cond_6
    iget-wide v10, v8, Lcom/inmobi/media/d4;->j:J

    .line 123
    :goto_1
    iget-object v5, v7, Lcom/inmobi/media/g4;->a:Lcom/inmobi/media/e4;

    .line 124
    iget-wide v12, v0, Lcom/inmobi/media/d4;->d:J

    .line 125
    invoke-virtual {v5, v4}, Lcom/inmobi/media/e4;->b(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 127
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 128
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/inmobi/media/S1;

    .line 130
    iget-wide v4, v5, Lcom/inmobi/media/S1;->b:J

    sub-long/2addr v14, v4

    .line 131
    invoke-virtual {v8, v14, v15}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    cmp-long v4, v4, v12

    if-lez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    move v4, v6

    .line 132
    :goto_2
    iget-object v5, v7, Lcom/inmobi/media/g4;->a:Lcom/inmobi/media/e4;

    .line 133
    iget-wide v12, v0, Lcom/inmobi/media/d4;->c:J

    .line 134
    iget-wide v14, v0, Lcom/inmobi/media/d4;->d:J

    .line 135
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    add-long/2addr v6, v12

    const/4 v8, 0x1

    .line 141
    invoke-virtual {v5, v8}, Lcom/inmobi/media/e4;->b(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 143
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    const/4 v2, 0x0

    if-nez v8, :cond_8

    .line 144
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/inmobi/media/S1;

    .line 145
    iget-wide v12, v5, Lcom/inmobi/media/S1;->b:J

    .line 146
    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v12

    sub-long/2addr v6, v12

    cmp-long v1, v6, v14

    if-ltz v1, :cond_8

    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    move v6, v2

    :goto_3
    if-le v9, v3, :cond_9

    if-nez v4, :cond_9

    if-eqz v6, :cond_a

    :cond_9
    move-object/from16 v7, p0

    .line 147
    iget-object v1, v7, Lcom/inmobi/media/g4;->b:Lcom/inmobi/media/O9;

    invoke-interface {v1}, Lcom/inmobi/media/O9;->a()Lcom/inmobi/media/f4;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 149
    iget-object v2, v7, Lcom/inmobi/media/g4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    sget-object v2, Lcom/inmobi/media/i4;->a:Lkotlin/Lazy;

    .line 151
    iget-object v2, v0, Lcom/inmobi/media/d4;->k:Ljava/lang/String;

    .line 152
    iget v0, v0, Lcom/inmobi/media/d4;->a:I

    add-int/2addr v3, v0

    .line 153
    const-string v0, "payload"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-wide v4, v10

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 154
    invoke-static/range {v0 .. v8}, Lcom/inmobi/media/i4;->a(Lcom/inmobi/media/f4;Ljava/lang/String;IIJLcom/inmobi/media/Kc;Lcom/inmobi/media/g4;Z)V

    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method public final a(JZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/g4;->g:Ljava/util/LinkedList;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/g4;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/g4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v1, "TAG"

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/inmobi/media/p5;

    iget-object v2, p0, Lcom/inmobi/media/g4;->d:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/inmobi/media/p5;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/media/g4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/g4;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/inmobi/media/g4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_4

    new-instance v3, Lcom/inmobi/media/g4$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0, p3}, Lcom/inmobi/media/g4$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/g4;Lcom/inmobi/media/Kc;Z)V

    .line 8
    iget-object p3, p0, Lcom/inmobi/media/g4;->i:Lcom/inmobi/media/d4;

    .line 9
    iget-object v0, p0, Lcom/inmobi/media/g4;->a:Lcom/inmobi/media/e4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v4, -0x1

    if-nez v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    sget-object v6, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "batch_processing_info"

    invoke-static {v1, v6}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    .line 12
    iget-object v0, v0, Lcom/inmobi/media/R1;->a:Ljava/lang/String;

    .line 13
    const-string v6, "_last_batch_process"

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    const-string v6, "key"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v1, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    :goto_0
    long-to-int v0, v4

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 89
    iget-object v0, p0, Lcom/inmobi/media/g4;->a:Lcom/inmobi/media/e4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/inmobi/media/e4;->a(J)V

    .line 91
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    if-eqz p3, :cond_3

    .line 92
    iget-wide v8, p3, Lcom/inmobi/media/d4;->c:J

    goto :goto_1

    :cond_3
    move-wide v8, v6

    :goto_1
    add-long/2addr v4, v8

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sub-long/2addr v4, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 94
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v6, p1

    .line 95
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_4
    return-void
.end method

.method public final a(Lcom/inmobi/media/f4;Z)V
    .locals 2

    const-string p2, "eventPayload"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lcom/inmobi/media/g4;->d:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    iget-object p2, p0, Lcom/inmobi/media/g4;->a:Lcom/inmobi/media/e4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/inmobi/media/e4;->a(J)V

    .line 158
    iget-object p2, p0, Lcom/inmobi/media/g4;->c:Lcom/inmobi/media/Fa;

    if-eqz p2, :cond_0

    .line 159
    iget-object p1, p1, Lcom/inmobi/media/f4;->a:Ljava/util/ArrayList;

    .line 160
    const-string p2, "eventIds"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object p2, Lcom/inmobi/media/nc;->c:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 162
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 163
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 164
    sput-object p1, Lcom/inmobi/media/nc;->c:Ljava/lang/Integer;

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/g4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
