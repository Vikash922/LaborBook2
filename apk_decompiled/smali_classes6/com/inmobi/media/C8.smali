.class public final Lcom/inmobi/media/C8;
.super Lcom/inmobi/media/D7;
.source "SourceFile"


# instance fields
.field public final A:Z

.field public final B:Z

.field public final C:Z

.field public D:I

.field public E:I

.field public F:Ljava/util/HashMap;

.field public final x:Z

.field public final y:Ljava/util/ArrayList;

.field public z:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/B8;Lcom/inmobi/media/kd;ZZZZZLjava/util/ArrayList;Z)V
    .locals 8

    move-object v6, p0

    move-object v7, p4

    const-string v0, "assetId"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetName"

    move-object v2, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetStyle"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v3, "VIDEO"

    const/16 v5, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/media/D7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/E7;I)V

    move/from16 v0, p11

    .line 2
    iput-boolean v0, v6, Lcom/inmobi/media/C8;->x:Z

    .line 3
    iput-object v7, v6, Lcom/inmobi/media/D7;->e:Ljava/lang/Object;

    .line 5
    const-string v0, "<set-?>"

    const-string v1, "EXTERNAL"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iput-object v1, v6, Lcom/inmobi/media/D7;->g:Ljava/lang/String;

    move v0, p5

    .line 190
    iput-boolean v0, v6, Lcom/inmobi/media/C8;->z:Z

    move v0, p6

    .line 191
    iput-boolean v0, v6, Lcom/inmobi/media/C8;->A:Z

    move v0, p7

    .line 192
    iput-boolean v0, v6, Lcom/inmobi/media/C8;->B:Z

    move/from16 v0, p8

    .line 193
    iput-boolean v0, v6, Lcom/inmobi/media/C8;->C:Z

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/inmobi/media/C8;->y:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz v7, :cond_0

    .line 195
    move-object v1, v7

    check-cast v1, Lcom/inmobi/media/jd;

    .line 196
    iget-object v1, v1, Lcom/inmobi/media/jd;->k:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 197
    :goto_0
    iput-object v1, v6, Lcom/inmobi/media/D7;->p:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 201
    move-object v1, v7

    check-cast v1, Lcom/inmobi/media/jd;

    .line 202
    iget-object v1, v1, Lcom/inmobi/media/jd;->h:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    const-string v2, "OMID_VIEWABILITY"

    if-eqz p10, :cond_4

    .line 203
    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/media/u8;

    .line 205
    iget-object v5, v4, Lcom/inmobi/media/u8;->b:Ljava/lang/String;

    .line 206
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 207
    iget-object v0, v4, Lcom/inmobi/media/u8;->c:Ljava/util/Map;

    .line 208
    iget-object v5, v4, Lcom/inmobi/media/u8;->d:Ljava/lang/String;

    .line 209
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->isMutableList(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 213
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->isMutableList(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 214
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_6

    .line 288
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/media/u8;

    .line 290
    iget-object v5, v4, Lcom/inmobi/media/u8;->b:Ljava/lang/String;

    .line 291
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 292
    iput-object v0, v4, Lcom/inmobi/media/u8;->c:Ljava/util/Map;

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    .line 293
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 294
    const-string v0, "trackers"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    iget-object v0, v6, Lcom/inmobi/media/D7;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 530
    :cond_7
    iget-object v0, v6, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 531
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const-string v3, "placementType"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, -0x80000000

    .line 532
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lastVisibleTimestamp"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "visible"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "seekPosition"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v3, "didStartPlaying"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v3, "didPause"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v3, "didCompleteQ1"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v3, "didCompleteQ2"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v3, "didCompleteQ3"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v3, "didCompleteQ4"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v3, "didRequestFullScreen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v3, "isFullScreen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v3, "didImpressionFire"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "mapViewabilityParams"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v3, "didSignalVideoCompleted"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "shouldAutoPlay"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lastMediaVolume"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "currentMediaVolume"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v1, "didQ4Fire"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/C8;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 3
    iget-object v1, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 5
    iget-object v0, p1, Lcom/inmobi/media/C8;->F:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/inmobi/media/C8;->F:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/inmobi/media/D7;->s:Ljava/util/ArrayList;

    .line 8
    const-string v0, "trackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/inmobi/media/D7;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/inmobi/media/C8;->F:Ljava/util/HashMap;

    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/media/C8;->D:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/inmobi/media/C8;->D:I

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/C8;->x:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/inmobi/media/C8;->z:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/media/Kb;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/media/C8;->z:Z

    :goto_0
    return v0
.end method

.method public final d()Lcom/inmobi/media/kd;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/D7;->e:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lcom/inmobi/media/kd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/inmobi/media/kd;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/media/C8;->E:I

    return-void
.end method
