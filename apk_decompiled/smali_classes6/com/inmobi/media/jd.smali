.class public final Lcom/inmobi/media/jd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/kd;


# instance fields
.field public final a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/util/ArrayList;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public j:Lcom/inmobi/media/ad;

.field public k:Ljava/lang/String;

.field public l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;)V
    .locals 1

    const-string v0, "trackers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "companionAds"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastVideoConfig"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p4, p6}, Lcom/inmobi/media/jd;-><init>(Ljava/util/List;Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;)V

    .line 50
    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    .line 51
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p4, p0, Lcom/inmobi/media/jd;->i:Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_1

    .line 54
    iget-object p4, p0, Lcom/inmobi/media/jd;->e:Ljava/util/ArrayList;

    new-instance p5, Lcom/inmobi/media/bd;

    const/16 p6, 0x3e8

    .line 55
    invoke-direct {p5, p1, p6}, Lcom/inmobi/media/bd;-><init>(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_1
    iput-object p1, p0, Lcom/inmobi/media/jd;->f:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/inmobi/media/jd;->g:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/inmobi/media/jd;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;)V
    .locals 1

    const-string v0, "trackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastVideoConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/jd;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    const/high16 p2, 0x100000

    .line 25
    iput p2, p0, Lcom/inmobi/media/jd;->b:I

    const/16 p2, 0x2000

    .line 26
    iput p2, p0, Lcom/inmobi/media/jd;->c:I

    const/16 p2, 0x3c

    .line 27
    iput p2, p0, Lcom/inmobi/media/jd;->d:I

    .line 34
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/inmobi/media/jd;->h:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/jd;->e:Ljava/util/ArrayList;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/jd;->i:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/inmobi/media/jd;->l:I

    return-void
.end method

.method public static a(DDD)Z
    .locals 0

    cmpl-double p0, p4, p0

    if-lez p0, :cond_0

    cmpg-double p0, p4, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/jd;->g:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, ":"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 128
    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    .line 131
    :try_start_0
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v4, p0, Lcom/inmobi/media/jd;->d:I

    mul-int/2addr v2, v4

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int v0, v0

    add-int/2addr v2, v0

    return v2

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public final a(Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/inmobi/media/jd;->e:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/bd;

    .line 250
    new-instance v2, Lcom/inmobi/media/dd;

    .line 252
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;->getHeaderTimeout()I

    move-result v3

    .line 253
    invoke-direct {v2, v1, v3, p2}, Lcom/inmobi/media/dd;-><init>(Lcom/inmobi/media/bd;ILjava/util/concurrent/CountDownLatch;)V

    .line 258
    invoke-virtual {v2}, Lcom/inmobi/media/dd;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 20

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/inmobi/media/jd;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    const/16 v9, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3
    const-string v7, "created_ts DESC "

    invoke-static/range {v2 .. v9}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 137
    check-cast v3, Lcom/inmobi/media/j;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 144
    check-cast v3, Lcom/inmobi/media/j;

    .line 145
    iget-object v3, v3, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    goto :goto_2

    .line 150
    :cond_4
    iget-object v2, v1, Lcom/inmobi/media/jd;->e:Ljava/util/ArrayList;

    .line 346
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/media/bd;

    .line 347
    iget-object v5, v4, Lcom/inmobi/media/bd;->a:Ljava/lang/String;

    .line 348
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_6
    :goto_2
    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_7

    .line 349
    iget-object v0, v4, Lcom/inmobi/media/bd;->a:Ljava/lang/String;

    .line 350
    iput-object v0, v1, Lcom/inmobi/media/jd;->f:Ljava/lang/String;

    return-object v0

    .line 354
    :cond_7
    iget-object v0, v1, Lcom/inmobi/media/jd;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getOptimalVastVideoSize()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    iget v0, v1, Lcom/inmobi/media/jd;->b:I

    int-to-double v7, v0

    div-double/2addr v5, v7

    .line 355
    iget-object v0, v1, Lcom/inmobi/media/jd;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getVastMaxAssetSize()J

    move-result-wide v7

    long-to-double v7, v7

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v7, v15

    iget v0, v1, Lcom/inmobi/media/jd;->b:I

    int-to-double v9, v0

    div-double/2addr v7, v9

    .line 356
    iget-object v0, v1, Lcom/inmobi/media/jd;->e:Ljava/util/ArrayList;

    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v9, "event"

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/inmobi/media/bd;

    .line 534
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/jd;->a()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 536
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v0, Lcom/inmobi/media/d2;

    invoke-direct {v0, v10}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 537
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    sget-object v9, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v9, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    const/4 v0, 0x0

    .line 616
    :goto_5
    iget v9, v13, Lcom/inmobi/media/bd;->b:I

    int-to-double v9, v9

    mul-double/2addr v9, v15

    int-to-double v11, v0

    mul-double/2addr v9, v11

    .line 617
    iget v0, v1, Lcom/inmobi/media/jd;->c:I

    int-to-double v11, v0

    div-double v11, v9, v11

    .line 618
    iput-wide v11, v13, Lcom/inmobi/media/bd;->c:D

    const-wide/16 v9, 0x0

    move-wide/from16 v17, v11

    move-wide v11, v5

    move-object/from16 v19, v13

    move-wide/from16 v13, v17

    .line 619
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/jd;->a(DDD)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v4, :cond_9

    .line 620
    iget-wide v9, v4, Lcom/inmobi/media/bd;->c:D

    cmpl-double v0, v17, v9

    if-lez v0, :cond_8

    :cond_9
    move-object/from16 v4, v19

    goto :goto_4

    :cond_a
    move-wide v9, v5

    move-wide v11, v7

    move-wide/from16 v13, v17

    .line 621
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/jd;->a(DDD)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v3, :cond_b

    .line 622
    iget-wide v9, v3, Lcom/inmobi/media/bd;->c:D

    cmpg-double v0, v17, v9

    if-gez v0, :cond_8

    :cond_b
    move-object/from16 v3, v19

    goto :goto_4

    :cond_c
    if-eqz v4, :cond_d

    .line 623
    iget-object v0, v4, Lcom/inmobi/media/bd;->a:Ljava/lang/String;

    .line 624
    iput-object v0, v1, Lcom/inmobi/media/jd;->f:Ljava/lang/String;

    goto :goto_6

    :cond_d
    if-eqz v3, :cond_e

    .line 625
    iget-object v0, v3, Lcom/inmobi/media/bd;->a:Ljava/lang/String;

    .line 626
    iput-object v0, v1, Lcom/inmobi/media/jd;->f:Ljava/lang/String;

    .line 627
    :cond_e
    :goto_6
    iget-object v0, v1, Lcom/inmobi/media/jd;->f:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    .line 628
    :cond_f
    iget-object v0, v1, Lcom/inmobi/media/jd;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getBitRate()Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;

    move-result-object v0

    .line 629
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;->isBitRateMandatory()Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, v1, Lcom/inmobi/media/jd;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_f

    .line 632
    :cond_10
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    iget-object v10, v1, Lcom/inmobi/media/jd;->e:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-direct {v2, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 634
    :try_start_1
    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/jd;->a(Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;Ljava/util/concurrent/CountDownLatch;)V

    .line 639
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;->getHeaderTimeout()I

    move-result v0

    int-to-long v10, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v10, v11, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    iget-object v0, v1, Lcom/inmobi/media/jd;->e:Ljava/util/ArrayList;

    .line 787
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/bd;

    .line 788
    iget-wide v13, v2, Lcom/inmobi/media/bd;->c:D

    const-wide/16 v9, 0x0

    move-wide v11, v5

    move-wide v15, v13

    .line 789
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/jd;->a(DDD)Z

    move-result v9

    if-eqz v9, :cond_13

    if-eqz v4, :cond_12

    .line 790
    iget-wide v9, v4, Lcom/inmobi/media/bd;->c:D

    cmpl-double v9, v15, v9

    if-lez v9, :cond_11

    :cond_12
    move-object v4, v2

    goto :goto_7

    :cond_13
    move-wide v9, v5

    move-wide v11, v7

    move-wide v13, v15

    .line 791
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/jd;->a(DDD)Z

    move-result v9

    if-eqz v9, :cond_11

    if-eqz v3, :cond_14

    .line 792
    iget-wide v9, v3, Lcom/inmobi/media/bd;->c:D

    cmpg-double v9, v15, v9

    if-gez v9, :cond_11

    :cond_14
    move-object v3, v2

    goto :goto_7

    :cond_15
    if-eqz v4, :cond_16

    goto :goto_9

    :cond_16
    if-eqz v3, :cond_1d

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    .line 797
    :try_start_2
    sget-object v2, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v2, Lcom/inmobi/media/d2;

    invoke-direct {v2, v0}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 798
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 876
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, v2}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 877
    iget-object v0, v1, Lcom/inmobi/media/jd;->e:Ljava/util/ArrayList;

    .line 1018
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/bd;

    .line 1019
    iget-wide v13, v2, Lcom/inmobi/media/bd;->c:D

    const-wide/16 v9, 0x0

    move-wide v11, v5

    move-wide v15, v13

    .line 1020
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/jd;->a(DDD)Z

    move-result v9

    if-eqz v9, :cond_19

    if-eqz v4, :cond_18

    .line 1021
    iget-wide v9, v4, Lcom/inmobi/media/bd;->c:D

    cmpl-double v9, v15, v9

    if-lez v9, :cond_17

    :cond_18
    move-object v4, v2

    goto :goto_8

    :cond_19
    move-wide v9, v5

    move-wide v11, v7

    move-wide v13, v15

    .line 1022
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/jd;->a(DDD)Z

    move-result v9

    if-eqz v9, :cond_17

    if-eqz v3, :cond_1a

    .line 1023
    iget-wide v9, v3, Lcom/inmobi/media/bd;->c:D

    cmpg-double v9, v15, v9

    if-gez v9, :cond_17

    :cond_1a
    move-object v3, v2

    goto :goto_8

    :cond_1b
    if-eqz v4, :cond_1c

    .line 793
    :goto_9
    iget-object v0, v4, Lcom/inmobi/media/bd;->a:Ljava/lang/String;

    .line 794
    iput-object v0, v1, Lcom/inmobi/media/jd;->f:Ljava/lang/String;

    goto :goto_b

    :cond_1c
    if-eqz v3, :cond_1d

    .line 795
    :goto_a
    iget-object v0, v3, Lcom/inmobi/media/bd;->a:Ljava/lang/String;

    .line 796
    iput-object v0, v1, Lcom/inmobi/media/jd;->f:Ljava/lang/String;

    .line 1024
    :cond_1d
    :goto_b
    iget-object v0, v1, Lcom/inmobi/media/jd;->f:Ljava/lang/String;

    return-object v0

    .line 1025
    :goto_c
    iget-object v2, v1, Lcom/inmobi/media/jd;->e:Ljava/util/ArrayList;

    .line 1166
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lcom/inmobi/media/bd;

    .line 1167
    iget-wide v13, v15, Lcom/inmobi/media/bd;->c:D

    const-wide/16 v9, 0x0

    move-wide v11, v5

    move-wide/from16 v16, v13

    .line 1168
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/jd;->a(DDD)Z

    move-result v9

    if-eqz v9, :cond_20

    if-eqz v4, :cond_1f

    .line 1169
    iget-wide v9, v4, Lcom/inmobi/media/bd;->c:D

    cmpl-double v9, v16, v9

    if-lez v9, :cond_1e

    :cond_1f
    move-object v4, v15

    goto :goto_d

    :cond_20
    move-wide v9, v5

    move-wide v11, v7

    move-wide/from16 v13, v16

    .line 1170
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/jd;->a(DDD)Z

    move-result v9

    if-eqz v9, :cond_1e

    if-eqz v3, :cond_21

    .line 1171
    iget-wide v9, v3, Lcom/inmobi/media/bd;->c:D

    cmpg-double v9, v16, v9

    if-gez v9, :cond_1e

    :cond_21
    move-object v3, v15

    goto :goto_d

    :cond_22
    if-nez v4, :cond_23

    if-eqz v3, :cond_24

    .line 1172
    iget-object v2, v3, Lcom/inmobi/media/bd;->a:Ljava/lang/String;

    .line 1173
    iput-object v2, v1, Lcom/inmobi/media/jd;->f:Ljava/lang/String;

    goto :goto_e

    .line 1174
    :cond_23
    iget-object v2, v4, Lcom/inmobi/media/bd;->a:Ljava/lang/String;

    .line 1175
    iput-object v2, v1, Lcom/inmobi/media/jd;->f:Ljava/lang/String;

    .line 1176
    :cond_24
    :goto_e
    throw v0

    .line 1177
    :cond_25
    :goto_f
    iget-object v0, v1, Lcom/inmobi/media/jd;->f:Ljava/lang/String;

    return-object v0
.end method
