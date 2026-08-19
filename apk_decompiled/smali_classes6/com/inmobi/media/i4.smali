.class public abstract Lcom/inmobi/media/i4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/h4;->a:Lcom/inmobi/media/h4;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/inmobi/media/i4;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static a(Lcom/inmobi/media/f4;Ljava/lang/String;IIJLcom/inmobi/media/Kc;Lcom/inmobi/media/g4;Z)V
    .locals 15

    move-object v3, p0

    move/from16 v6, p2

    move/from16 v4, p3

    .line 176
    const-string v0, "i4"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    sget-boolean v2, Lcom/inmobi/media/p9;->a:Z

    const/4 v2, 0x0

    .line 178
    invoke-static {v2}, Lcom/inmobi/media/p9;->a(Z)Lcom/inmobi/media/c4;

    move-result-object v5

    if-nez v5, :cond_5

    .line 179
    invoke-static {}, Lcom/inmobi/media/Kb;->m()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 184
    :cond_0
    new-instance v1, Lcom/inmobi/media/l9;

    const/4 v13, 0x0

    const/16 v14, 0x68

    const-string v8, "POST"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    invoke-direct/range {v7 .. v14}, Lcom/inmobi/media/l9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/Kc;ZLcom/inmobi/media/f5;Ljava/lang/String;I)V

    .line 186
    const-string v0, "payload"

    .line 187
    iget-object v5, v3, Lcom/inmobi/media/f4;->b:Ljava/lang/String;

    .line 188
    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v5, 0x1

    new-array v7, v5, [Lkotlin/Pair;

    aput-object v0, v7, v2

    .line 189
    invoke-static {v7}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v7, v1, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    sub-int v0, v6, v4

    if-lez v0, :cond_2

    .line 191
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "X-im-retry-count"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    new-array v5, v5, [Lkotlin/Pair;

    aput-object v7, v5, v2

    .line 192
    invoke-static {v5}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 193
    iget-object v7, v1, Lcom/inmobi/media/l9;->i:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 194
    :cond_2
    iput-boolean v2, v1, Lcom/inmobi/media/l9;->x:Z

    .line 195
    iput-boolean v2, v1, Lcom/inmobi/media/l9;->t:Z

    .line 196
    iput-boolean v2, v1, Lcom/inmobi/media/l9;->u:Z

    if-eqz p8, :cond_3

    if-eq v4, v6, :cond_4

    int-to-double v7, v0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 197
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-long v7, v7

    mul-long v7, v7, p4

    goto :goto_0

    :cond_3
    if-eq v4, v6, :cond_4

    move-wide/from16 v11, p4

    goto :goto_1

    :cond_4
    const-wide/16 v7, 0x0

    :goto_0
    move-wide v11, v7

    .line 198
    :goto_1
    sget-object v0, Lcom/inmobi/media/i4;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getValue(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v0

    check-cast v13, Ljava/util/concurrent/ScheduledExecutorService;

    .line 199
    new-instance v14, Lcom/inmobi/media/i4$$ExternalSyntheticLambda0;

    move-object v0, v14

    move-object/from16 v2, p7

    move-object v3, p0

    move/from16 v4, p3

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/inmobi/media/i4$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/l9;Lcom/inmobi/media/g4;Lcom/inmobi/media/f4;ILjava/lang/String;IJLcom/inmobi/media/Kc;Z)V

    .line 218
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 219
    invoke-interface {v13, v14, v11, v12, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 220
    :cond_5
    :goto_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p7

    .line 221
    invoke-virtual {v0, p0, v2}, Lcom/inmobi/media/g4;->a(Lcom/inmobi/media/f4;Z)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/l9;Lcom/inmobi/media/g4;Lcom/inmobi/media/f4;ILjava/lang/String;IJLcom/inmobi/media/Kc;Z)V
    .locals 9

    move-object v0, p0

    move-object v7, p1

    move-object v1, p2

    move v2, p3

    const-string v3, "$request"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$listener"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$eventPayload"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v3, "mRequest"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->b()Lcom/inmobi/media/m9;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/m9;->b()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "TAG"

    if-eqz v3, :cond_4

    .line 4
    sget-boolean v3, Lcom/inmobi/media/p9;->a:Z

    .line 5
    iget-object v3, v0, Lcom/inmobi/media/m9;->c:Lcom/inmobi/media/i9;

    if-eqz v3, :cond_0

    .line 6
    iget-object v4, v3, Lcom/inmobi/media/i9;->a:Lcom/inmobi/media/c4;

    .line 7
    :cond_0
    sget-boolean v3, Lcom/inmobi/media/p9;->a:Z

    if-eqz v3, :cond_2

    .line 8
    sget-object v3, Lcom/inmobi/media/c4;->q:Lcom/inmobi/media/c4;

    if-eq v4, v3, :cond_1

    .line 9
    sget-object v3, Lcom/inmobi/media/c4;->p:Lcom/inmobi/media/c4;

    if-eq v4, v3, :cond_1

    .line 10
    sget-object v3, Lcom/inmobi/media/c4;->o:Lcom/inmobi/media/c4;

    if-eq v4, v3, :cond_1

    .line 11
    sget-object v3, Lcom/inmobi/media/c4;->n:Lcom/inmobi/media/c4;

    if-eq v4, v3, :cond_1

    .line 12
    sget-object v3, Lcom/inmobi/media/c4;->r:Lcom/inmobi/media/c4;

    if-ne v4, v3, :cond_2

    .line 13
    :cond_1
    invoke-virtual {p1, p2, v5}, Lcom/inmobi/media/g4;->a(Lcom/inmobi/media/f4;Z)V

    return-void

    :cond_2
    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 18
    const-string v4, "i4"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/media/m9;->a()Ljava/lang/String;

    add-int/lit8 v3, v2, -0x1

    move-object v0, p2

    move-object v1, p4

    move v2, p5

    move-wide v4, p6

    move-object/from16 v6, p8

    move-object v7, p1

    move/from16 v8, p9

    .line 19
    invoke-static/range {v0 .. v8}, Lcom/inmobi/media/i4;->a(Lcom/inmobi/media/f4;Ljava/lang/String;IIJLcom/inmobi/media/Kc;Lcom/inmobi/media/g4;Z)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p1, p2, v3}, Lcom/inmobi/media/g4;->a(Lcom/inmobi/media/f4;Z)V

    goto :goto_0

    .line 26
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    const-string v0, "eventPayload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, v7, Lcom/inmobi/media/g4;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, v7, Lcom/inmobi/media/g4;->a:Lcom/inmobi/media/e4;

    .line 163
    iget-object v2, v1, Lcom/inmobi/media/f4;->a:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v0, v2}, Lcom/inmobi/media/e4;->a(Ljava/util/ArrayList;)V

    .line 165
    iget-object v0, v7, Lcom/inmobi/media/g4;->a:Lcom/inmobi/media/e4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/e4;->a(J)V

    .line 166
    iget-object v0, v7, Lcom/inmobi/media/g4;->c:Lcom/inmobi/media/Fa;

    if-eqz v0, :cond_6

    .line 167
    iget-object v0, v1, Lcom/inmobi/media/f4;->a:Ljava/util/ArrayList;

    .line 168
    const-string v1, "eventIds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    sget-object v1, Lcom/inmobi/media/nc;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 170
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 172
    sput v0, Lcom/inmobi/media/nc;->b:I

    .line 173
    sget-object v1, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/e6;

    if-eqz v1, :cond_5

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v6, "count"

    const/4 v8, 0x0

    move-object p2, v1

    move-object p3, v6

    move p4, v0

    move p5, v8

    move p6, v2

    move-object/from16 p7, v3

    invoke-static/range {p2 .. p7}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 174
    :cond_5
    sput-object v4, Lcom/inmobi/media/nc;->c:Ljava/lang/Integer;

    .line 175
    :cond_6
    iget-object v0, v7, Lcom/inmobi/media/g4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method
