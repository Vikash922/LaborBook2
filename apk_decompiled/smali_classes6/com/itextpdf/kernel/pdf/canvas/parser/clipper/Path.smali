.class public Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
.super Ljava/util/ArrayList;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 298
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;",
            ">;)V"
        }
    .end annotation

    .line 302
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>([Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V
    .locals 3

    .line 291
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>()V

    .line 292
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 293
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static excludeOp(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 276
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 277
    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    const/4 p0, 0x0

    .line 278
    iput p0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->idx:I

    return-object v0
.end method


# virtual methods
.method public TranslatePath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    .locals 9

    .line 439
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(I)V

    const/4 v1, 0x0

    .line 440
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 441
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public area()D
    .locals 13

    .line 306
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 v1, v0, -0x1

    const/4 v4, 0x0

    move-wide v11, v2

    move v2, v1

    move v1, v4

    move-wide v3, v11

    :goto_0
    if-ge v1, v0, :cond_1

    .line 312
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    long-to-double v7, v7

    add-double/2addr v5, v7

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    long-to-double v7, v7

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    long-to-double v9, v9

    sub-double/2addr v7, v9

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    add-int/lit8 v2, v1, 0x1

    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_0

    :cond_1
    neg-double v0, v3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public cleanPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    .locals 2

    const-wide v0, 0x3ff6a3d70a3d70a4L    # 1.415

    .line 319
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->cleanPolygon(D)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v0

    return-object v0
.end method

.method public cleanPolygon(D)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    .locals 7

    .line 327
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 330
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>()V

    return-object p1

    .line 333
    :cond_0
    new-array v1, v0, [Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 335
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;-><init>()V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    .line 339
    aget-object v4, v1, v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iput-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 340
    aget-object v4, v1, v3

    add-int/lit8 v5, v3, 0x1

    rem-int v6, v5, v0

    aget-object v6, v1, v6

    iput-object v6, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 341
    aget-object v4, v1, v3

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    aget-object v6, v1, v3

    iput-object v6, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 342
    aget-object v3, v1, v3

    iput v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->idx:I

    move v3, v5

    goto :goto_1

    :cond_2
    mul-double/2addr p1, p1

    .line 346
    aget-object v1, v1, v2

    .line 347
    :goto_2
    iget v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->idx:I

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eq v3, v4, :cond_6

    .line 348
    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-static {v3, v4, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->arePointsClose(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;D)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 349
    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->excludeOp(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v1

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 352
    :cond_3
    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-static {v3, v4, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->arePointsClose(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;D)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 353
    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-static {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->excludeOp(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 354
    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->excludeOp(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v1

    add-int/lit8 v0, v0, -0x2

    goto :goto_2

    .line 357
    :cond_4
    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v5, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-static {v3, v4, v5, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->slopesNearCollinear(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;D)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 358
    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->excludeOp(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v1

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    .line 362
    iput v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->idx:I

    .line 363
    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_2

    :cond_6
    const/4 p1, 0x3

    if-ge v0, p1, :cond_7

    move v0, v2

    .line 370
    :cond_7
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(I)V

    :goto_4
    if-ge v2, v0, :cond_8

    .line 372
    iget-object p2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    return-object p1
.end method

.method public isPointInPolygon(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)I
    .locals 20

    move-object/from16 v0, p0

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    .line 388
    :cond_0
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move v6, v3

    const/4 v5, 0x1

    :goto_0
    if-gt v5, v1, :cond_11

    if-ne v5, v1, :cond_1

    .line 390
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    :goto_1
    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 391
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    cmp-long v8, v8, v10

    const/4 v9, -0x1

    if-nez v8, :cond_5

    .line 392
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-nez v8, :cond_5

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-lez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_2
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    move v10, v3

    :goto_3
    if-ne v8, v10, :cond_5

    :cond_4
    return v9

    .line 396
    :cond_5
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-gez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    move v8, v3

    :goto_4
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    move v10, v3

    :goto_5
    if-eq v8, v10, :cond_10

    .line 397
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v8, v10, v12

    const-wide/16 v10, 0x0

    if-ltz v8, :cond_c

    .line 398
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v14

    cmp-long v8, v12, v14

    if-lez v8, :cond_8

    :goto_6
    rsub-int/lit8 v6, v6, 0x1

    goto/16 :goto_b

    .line 402
    :cond_8
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-double v12, v12

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-double v14, v14

    mul-double/2addr v12, v14

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-double v14, v14

    .line 403
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v18

    sub-long v3, v16, v18

    long-to-double v3, v3

    mul-double/2addr v14, v3

    sub-double/2addr v12, v14

    cmpl-double v3, v12, v10

    if-nez v3, :cond_9

    return v9

    :cond_9
    if-lez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    .line 407
    :goto_7
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v11

    cmp-long v2, v9, v11

    if-lez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    if-ne v3, v2, :cond_10

    rsub-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_b

    .line 413
    :cond_c
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v3, v3, v12

    if-lez v3, :cond_10

    .line 414
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    sub-long/2addr v3, v12

    long-to-double v3, v3

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-double v12, v12

    mul-double/2addr v3, v12

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-double v12, v12

    .line 415
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-double v14, v14

    mul-double/2addr v12, v14

    sub-double/2addr v3, v12

    cmpl-double v3, v3, v10

    if-nez v3, :cond_d

    return v9

    :cond_d
    if-lez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    .line 419
    :goto_9
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v11

    cmp-long v2, v9, v11

    if-lez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    :goto_a
    if-ne v3, v2, :cond_10

    goto/16 :goto_6

    :cond_10
    :goto_b
    add-int/lit8 v5, v5, 0x1

    move-object v2, v7

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_11
    return v6
.end method

.method public orientation()Z
    .locals 4

    .line 431
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->area()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reverse()V
    .locals 0

    .line 435
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method
