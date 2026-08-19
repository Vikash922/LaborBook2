.class public final Lcom/inmobi/media/m7;
.super Lcom/inmobi/media/E1;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/inmobi/media/t7;

.field public final synthetic e:Lcom/inmobi/media/t7;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/t7;Lcom/inmobi/media/t7;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/m7;->d:Lcom/inmobi/media/t7;

    iput-object p2, p0, Lcom/inmobi/media/m7;->e:Lcom/inmobi/media/t7;

    .line 1
    invoke-direct {p0, p1}, Lcom/inmobi/media/E1;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/inmobi/media/m7;->d:Lcom/inmobi/media/t7;

    .line 2
    iget-object v2, v1, Lcom/inmobi/media/t7;->C:Lcom/inmobi/media/t7;

    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 3
    iget-object v2, v1, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_0

    .line 4
    iget-object v4, v1, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    const-string v5, "TAG"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v5, "prepareFullscreenContainer"

    invoke-virtual {v2, v4, v5}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v2, v1, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 6
    iget-object v4, v2, Lcom/inmobi/media/P7;->f:Lorg/json/JSONArray;

    if-eqz v4, :cond_5

    .line 7
    invoke-static {v4}, Lcom/inmobi/media/y2;->a(Lorg/json/JSONArray;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 8
    :cond_1
    invoke-virtual {v2}, Lcom/inmobi/media/P7;->e()Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_2

    goto/16 :goto_2

    .line 9
    :cond_2
    iget-byte v4, v1, Lcom/inmobi/media/t7;->a:B

    if-nez v4, :cond_3

    move v10, v3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    move v10, v4

    .line 10
    :goto_0
    new-instance v14, Lcom/inmobi/media/P7;

    .line 11
    iget-byte v7, v1, Lcom/inmobi/media/t7;->a:B

    .line 12
    iget-object v11, v1, Lcom/inmobi/media/t7;->s:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 13
    iget-object v12, v1, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    move-object v6, v14

    move-object v9, v2

    .line 14
    invoke-direct/range {v6 .. v12}, Lcom/inmobi/media/P7;-><init>(ILorg/json/JSONObject;Lcom/inmobi/media/P7;ZLcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/f5;)V

    .line 15
    iget-boolean v2, v2, Lcom/inmobi/media/P7;->q:Z

    .line 16
    iput-boolean v2, v14, Lcom/inmobi/media/P7;->q:Z

    .line 17
    iget-object v2, v1, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/content/Context;

    .line 18
    invoke-virtual {v14}, Lcom/inmobi/media/P7;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v12, :cond_5

    .line 21
    invoke-virtual {v1}, Lcom/inmobi/media/t7;->getImpressionId()Ljava/lang/String;

    move-result-object v15

    iget-object v2, v1, Lcom/inmobi/media/t7;->d:Ljava/util/Set;

    .line 22
    iget-object v4, v1, Lcom/inmobi/media/t7;->s:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 23
    iget-wide v5, v1, Lcom/inmobi/media/t7;->e:J

    iget-boolean v7, v1, Lcom/inmobi/media/t7;->f:Z

    invoke-virtual {v1}, Lcom/inmobi/media/t7;->getCreativeId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/inmobi/media/t7;->i:Lcom/inmobi/media/u6;

    iget-object v10, v1, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    .line 24
    const-string v11, "context"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "dataModel"

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "adImpressionId"

    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "adConfig"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "creativeId"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v14}, Lcom/inmobi/media/P7;->c()Ljava/util/ArrayList;

    move-result-object v11

    const-string v13, "VIDEO"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x0

    const/16 v22, 0x0

    if-eqz v11, :cond_4

    .line 168
    new-instance v25, Lcom/inmobi/media/A8;

    move-object/from16 v11, v25

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-wide/from16 v18, v5

    move/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    invoke-direct/range {v11 .. v24}, Lcom/inmobi/media/A8;-><init>(Landroid/content/Context;BLcom/inmobi/media/P7;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/commons/core/configs/AdConfig;JZLjava/lang/String;Lcom/inmobi/media/Z2;Lcom/inmobi/media/u6;Lcom/inmobi/media/f5;)V

    goto :goto_1

    .line 172
    :cond_4
    new-instance v25, Lcom/inmobi/media/t7;

    move-object/from16 v11, v25

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-wide/from16 v18, v5

    move/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    invoke-direct/range {v11 .. v24}, Lcom/inmobi/media/t7;-><init>(Landroid/content/Context;BLcom/inmobi/media/P7;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/commons/core/configs/AdConfig;JZLjava/lang/String;Lcom/inmobi/media/Z2;Lcom/inmobi/media/u6;Lcom/inmobi/media/f5;)V

    :goto_1
    move-object/from16 v2, v25

    .line 173
    iput-object v2, v1, Lcom/inmobi/media/t7;->C:Lcom/inmobi/media/t7;

    .line 174
    iput-object v1, v2, Lcom/inmobi/media/t7;->v:Lcom/inmobi/media/t7;

    .line 175
    iget-object v1, v1, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz v1, :cond_5

    .line 176
    iput-object v1, v2, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    .line 177
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/inmobi/media/m7;->d:Lcom/inmobi/media/t7;

    .line 178
    iget-object v1, v1, Lcom/inmobi/media/t7;->C:Lcom/inmobi/media/t7;

    if-eqz v1, :cond_7

    .line 179
    sget-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 180
    const-string v2, "container"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 302
    sget-object v4, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 303
    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    new-instance v1, Landroid/content/Intent;

    iget-object v4, v0, Lcom/inmobi/media/m7;->d:Lcom/inmobi/media/t7;

    .line 305
    iget-object v4, v4, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    .line 306
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const-class v5, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    const-string v4, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v4, 0x66

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE"

    const/16 v3, 0xc9

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    iget-object v2, v0, Lcom/inmobi/media/m7;->d:Lcom/inmobi/media/t7;

    .line 314
    iget-object v2, v2, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    .line 315
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 316
    iget-object v3, v0, Lcom/inmobi/media/m7;->d:Lcom/inmobi/media/t7;

    .line 317
    iget-boolean v4, v3, Lcom/inmobi/media/t7;->D:Z

    if-eqz v4, :cond_6

    .line 318
    iput-object v1, v3, Lcom/inmobi/media/t7;->G:Landroid/content/Intent;

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    .line 319
    sget-object v3, Lcom/inmobi/media/Kb;->a:Lcom/inmobi/media/Kb;

    invoke-virtual {v3, v2, v1}, Lcom/inmobi/media/Kb;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/E1;->c()V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/m7;->e:Lcom/inmobi/media/t7;

    .line 3
    iget-object v0, v0, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/inmobi/media/O0;->c()V

    :cond_0
    return-void
.end method
