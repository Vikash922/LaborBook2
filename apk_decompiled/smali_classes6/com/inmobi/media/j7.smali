.class public final Lcom/inmobi/media/j7;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Lcom/inmobi/media/t7;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/t7;Lcom/inmobi/media/t7;)V
    .locals 1

    const-string v0, "originalContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/j7;->b:Lcom/inmobi/media/t7;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/inmobi/media/j7;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/inmobi/media/j7;->b:Lcom/inmobi/media/t7;

    invoke-virtual {v0}, Lcom/inmobi/media/t7;->f()Landroid/app/Activity;

    move-result-object v3

    const-string v15, "access$getTAG$p(...)"

    if-nez v3, :cond_0

    .line 3
    iget-object v0, v1, Lcom/inmobi/media/j7;->b:Lcom/inmobi/media/t7;

    .line 4
    iget-object v0, v0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 5
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, v1, Lcom/inmobi/media/j7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/t7;

    if-eqz v0, :cond_a

    .line 9
    iget-boolean v2, v0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v2, :cond_1

    goto/16 :goto_6

    .line 10
    :cond_1
    :try_start_0
    iget-object v7, v0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 11
    iget-object v2, v7, Lcom/inmobi/media/P7;->f:Lorg/json/JSONArray;

    if-eqz v2, :cond_8

    .line 12
    invoke-static {v2}, Lcom/inmobi/media/y2;->a(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    .line 18
    :cond_2
    iget-object v2, v1, Lcom/inmobi/media/j7;->b:Lcom/inmobi/media/t7;

    .line 19
    iget-object v2, v2, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 20
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v7}, Lcom/inmobi/media/P7;->e()Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_3

    return-void

    .line 22
    :cond_3
    iget-object v2, v1, Lcom/inmobi/media/j7;->b:Lcom/inmobi/media/t7;

    .line 23
    iget-byte v2, v2, Lcom/inmobi/media/t7;->a:B

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    move v8, v2

    .line 24
    new-instance v11, Lcom/inmobi/media/P7;

    .line 25
    iget-object v2, v1, Lcom/inmobi/media/j7;->b:Lcom/inmobi/media/t7;

    .line 26
    iget-byte v5, v2, Lcom/inmobi/media/t7;->a:B

    .line 27
    iget-object v9, v2, Lcom/inmobi/media/t7;->s:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 28
    iget-object v10, v2, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    move-object v4, v11

    .line 29
    invoke-direct/range {v4 .. v10}, Lcom/inmobi/media/P7;-><init>(ILorg/json/JSONObject;Lcom/inmobi/media/P7;ZLcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/f5;)V

    .line 37
    invoke-virtual {v11}, Lcom/inmobi/media/P7;->f()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 44
    iget-object v2, v1, Lcom/inmobi/media/j7;->b:Lcom/inmobi/media/t7;

    invoke-virtual {v2}, Lcom/inmobi/media/t7;->getImpressionId()Ljava/lang/String;

    move-result-object v6

    .line 45
    iget-object v2, v1, Lcom/inmobi/media/j7;->b:Lcom/inmobi/media/t7;

    .line 46
    iget-object v8, v2, Lcom/inmobi/media/t7;->s:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 47
    iget-wide v9, v2, Lcom/inmobi/media/t7;->e:J

    .line 48
    iget-boolean v12, v2, Lcom/inmobi/media/t7;->f:Z

    .line 49
    invoke-virtual {v2}, Lcom/inmobi/media/t7;->getCreativeId()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v1, Lcom/inmobi/media/j7;->b:Lcom/inmobi/media/t7;

    .line 50
    iget-object v14, v2, Lcom/inmobi/media/t7;->i:Lcom/inmobi/media/u6;

    .line 51
    iget-object v7, v2, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    .line 52
    const-string v2, "context"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "dataModel"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adImpressionId"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adConfig"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "creativeId"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v11}, Lcom/inmobi/media/P7;->c()Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, "VIDEO"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    if-eqz v2, :cond_5

    .line 196
    :try_start_1
    new-instance v18, Lcom/inmobi/media/A8;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v2, v18

    move-object v5, v11

    move-object/from16 v19, v7

    move-object/from16 v7, v16

    move v11, v12

    move-object v12, v13

    move-object/from16 v13, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v19

    :try_start_2
    invoke-direct/range {v2 .. v15}, Lcom/inmobi/media/A8;-><init>(Landroid/content/Context;BLcom/inmobi/media/P7;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/commons/core/configs/AdConfig;JZLjava/lang/String;Lcom/inmobi/media/Z2;Lcom/inmobi/media/u6;Lcom/inmobi/media/f5;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v20, v15

    goto :goto_3

    :cond_5
    move-object/from16 v19, v7

    move-object/from16 v20, v15

    .line 200
    new-instance v18, Lcom/inmobi/media/t7;

    move-object/from16 v2, v18

    move-object v5, v11

    move-object/from16 v7, v16

    move v11, v12

    move-object v12, v13

    move-object/from16 v13, v17

    move-object/from16 v15, v19

    invoke-direct/range {v2 .. v15}, Lcom/inmobi/media/t7;-><init>(Landroid/content/Context;BLcom/inmobi/media/P7;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/commons/core/configs/AdConfig;JZLjava/lang/String;Lcom/inmobi/media/Z2;Lcom/inmobi/media/u6;Lcom/inmobi/media/f5;)V

    :goto_1
    move-object/from16 v2, v18

    .line 201
    iget-object v3, v0, Lcom/inmobi/media/t7;->H:Lcom/inmobi/media/Ya;

    .line 202
    iput-object v3, v2, Lcom/inmobi/media/t7;->H:Lcom/inmobi/media/Ya;

    .line 203
    iput-object v0, v2, Lcom/inmobi/media/t7;->v:Lcom/inmobi/media/t7;

    .line 204
    iget-object v3, v1, Lcom/inmobi/media/j7;->b:Lcom/inmobi/media/t7;

    .line 205
    iget-object v4, v3, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v4, :cond_6

    .line 206
    iget-object v3, v3, Lcom/inmobi/media/t7;->m:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v5, v20

    .line 207
    :try_start_3
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "End-card container built successfully ..."

    check-cast v4, Lcom/inmobi/media/g5;

    invoke-virtual {v4, v3, v6}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object/from16 v5, v20

    .line 208
    :goto_2
    iput-object v2, v0, Lcom/inmobi/media/t7;->J:Lcom/inmobi/media/t7;

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_3
    move-object/from16 v5, v20

    goto :goto_5

    :cond_7
    move-object v5, v15

    .line 209
    iget-object v0, v1, Lcom/inmobi/media/j7;->b:Lcom/inmobi/media/t7;

    .line 210
    iget-object v2, v0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_a

    .line 211
    iget-object v0, v0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 212
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Invalid data model for end-card container! End card will not be shown ..."

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v0, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    :goto_4
    move-object v5, v15

    .line 13
    iget-object v0, v1, Lcom/inmobi/media/j7;->b:Lcom/inmobi/media/t7;

    .line 14
    iget-object v0, v0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 15
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v5, v15

    .line 215
    :goto_5
    iget-object v2, v1, Lcom/inmobi/media/j7;->b:Lcom/inmobi/media/t7;

    .line 216
    iget-object v3, v2, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_9

    .line 217
    iget-object v2, v2, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 218
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v4, "Encountered unexpected error in EndCardBuilder: "

    invoke-virtual {v3, v2, v4, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 219
    :cond_9
    sget-object v2, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 220
    const-string v2, "event"

    invoke-static {v0, v2}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 221
    sget-object v2, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v2, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_a
    :goto_6
    return-void
.end method
