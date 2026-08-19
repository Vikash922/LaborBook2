.class public abstract Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
.super Ljava/lang/Object;
.source "AbstractLinearGradientBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final ZERO_EPSILON:D = 1.0E-10


# instance fields
.field private spreadMethod:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

.field private final stops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->stops:Ljava/util/List;

    .line 64
    sget-object v0, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    iput-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->spreadMethod:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    return-void
.end method

.method private static adjustNormalizedStopsToCoverDomain(Ljava/util/List;[DLcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;[D",
            "Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 490
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 492
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 493
    invoke-virtual {v3}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v5

    const/4 v7, 0x0

    .line 494
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v8

    sub-double v10, v5, v8

    const-wide v12, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v12, v10, v12

    const/4 v13, 0x2

    if-gtz v12, :cond_0

    .line 498
    new-array v0, v13, [Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    new-instance v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    aget-wide v5, p1, v7

    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    aget-wide v5, p1, v4

    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 502
    :cond_0
    aget-wide v14, p1, v7

    sub-double/2addr v14, v8

    div-double/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    mul-double v16, v10, v14

    add-double v16, v8, v16

    .line 504
    sget-object v3, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->REFLECT:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    if-ne v1, v3, :cond_1

    .line 505
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    rem-double v14, v14, v18

    const-wide/16 v18, 0x0

    cmpl-double v3, v14, v18

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v7

    :goto_0
    if-eqz v3, :cond_2

    .line 507
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v4

    goto :goto_1

    :cond_2
    move v12, v7

    :goto_1
    move-wide/from16 v14, v16

    .line 510
    :goto_2
    aget-wide v18, p1, v4

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_a

    .line 511
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    if-eqz v3, :cond_3

    add-double v18, v14, v5

    .line 513
    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v20

    sub-double v18, v18, v20

    goto :goto_3

    .line 514
    :cond_3
    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v18

    add-double v18, v14, v18

    sub-double v18, v18, v8

    :goto_3
    move-wide/from16 v20, v14

    move-wide/from16 v13, v18

    .line 515
    new-instance v15, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    move-wide/from16 v18, v5

    sget-object v5, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v15, v4, v13, v14, v5}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    .line 518
    aget-wide v5, p1, v7

    cmpg-double v5, v13, v5

    if-gez v5, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 519
    invoke-interface {v2, v7, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 521
    :cond_4
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    if-eqz v3, :cond_5

    add-int/lit8 v12, v12, -0x1

    if-gez v12, :cond_8

    add-double v5, v20, v10

    move-wide/from16 v20, v5

    move v3, v7

    const/4 v12, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 533
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v12, v5, :cond_8

    add-double v5, v20, v10

    .line 535
    sget-object v3, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->REFLECT:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    if-ne v1, v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    move v3, v7

    :goto_5
    if-eqz v3, :cond_7

    .line 536
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v12

    const/16 v16, 0x2

    add-int/lit8 v12, v12, -0x2

    goto :goto_6

    :cond_7
    const/16 v16, 0x2

    move v12, v7

    :goto_6
    move-wide/from16 v20, v5

    goto :goto_8

    :cond_8
    :goto_7
    const/16 v16, 0x2

    :goto_8
    if-eqz v3, :cond_9

    .line 541
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 546
    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v22

    sub-double v5, v5, v22

    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v4

    invoke-virtual {v15, v5, v6, v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    goto :goto_9

    .line 548
    :cond_9
    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v5

    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v4

    invoke-virtual {v15, v5, v6, v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    :goto_9
    move-wide/from16 v5, v18

    const/4 v4, 0x1

    move-wide/from16 v24, v13

    move/from16 v13, v16

    move-wide/from16 v16, v24

    move-wide/from16 v14, v20

    goto/16 :goto_2

    :cond_a
    return-object v2
.end method

.method private static adjustStopsForPadIfNeeded(Ljava/util/List;[D)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;[D)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 478
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 479
    aget-wide v2, p1, v0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 480
    new-instance v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    aget-wide v3, p1, v0

    sget-object v5, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    invoke-interface {p0, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 482
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 483
    aget-wide v2, p1, v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 484
    new-instance v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    aget-wide v3, p1, v1

    sget-object p1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v2, v0, v3, v4, p1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static constructFunction(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/function/PdfFunction;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/function/PdfFunction;"
        }
    .end annotation

    .line 556
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    .line 558
    new-array v0, v0, [D

    .line 559
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 562
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 563
    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v7

    const/4 v5, 0x1

    move v9, v5

    :goto_0
    if-ge v9, v1, :cond_0

    .line 566
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    add-int/lit8 v11, v9, -0x1

    .line 567
    invoke-virtual {v10}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v12

    aput-wide v12, v0, v11

    .line 568
    invoke-static {v4, v10}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->constructSingleGradientSegmentFunction(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;)Lcom/itextpdf/kernel/pdf/function/PdfFunction;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object v4, v10

    goto :goto_0

    .line 572
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 573
    invoke-static {v4, p0}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->constructSingleGradientSegmentFunction(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;)Lcom/itextpdf/kernel/pdf/function/PdfFunction;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v9

    mul-int/2addr v1, v2

    .line 576
    new-array p0, v1, [D

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_1

    const-wide/16 v11, 0x0

    .line 578
    aput-wide v11, p0, v4

    add-int/lit8 v11, v4, 0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 579
    aput-wide v12, p0, v11

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 582
    :cond_1
    new-instance v1, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-array v2, v2, [D

    aput-wide v7, v2, v3

    aput-wide v9, v2, v5

    invoke-direct {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v7, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v8, p0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    const/4 v5, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    return-object v1
.end method

.method private static constructSingleGradientSegmentFunction(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;)Lcom/itextpdf/kernel/pdf/function/PdfFunction;
    .locals 11

    .line 588
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getRgbArray()[F

    move-result-object v0

    .line 589
    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getRgbArray()[F

    move-result-object p1

    .line 590
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_BETWEEN_COLORS:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-ne v1, v2, :cond_2

    .line 591
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v1

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double p0, v1, v5

    if-gtz p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-wide v5, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double p0, v1, v5

    if-ltz p0, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 598
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    div-double/2addr v3, v1

    .line 601
    :cond_2
    :goto_0
    new-instance p0, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type2;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v6, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v8, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v9, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v10, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    const/4 v7, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type2;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfNumber;)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static copyStopsAndNormalizeAbsoluteOffsets(Ljava/util/List;D)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;"
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 439
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 440
    invoke-virtual {v3}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v4

    .line 441
    invoke-virtual {v3}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    move-result-object v6

    .line 442
    sget-object v7, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->ABSOLUTE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    if-ne v6, v7, :cond_0

    .line 443
    sget-object v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    div-double/2addr v4, p1

    .line 447
    :cond_0
    sget-object v7, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    if-ne v6, v7, :cond_2

    cmpg-double v7, v4, v1

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v4

    :goto_1
    move-wide v4, v1

    .line 454
    :cond_2
    new-instance v7, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    .line 456
    invoke-virtual {v3}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v4

    .line 457
    invoke-virtual {v3}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v3

    .line 458
    sget-object v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->ABSOLUTE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v3, v6, :cond_3

    .line 459
    sget-object v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    div-double/2addr v4, p1

    .line 463
    :cond_3
    sget-object v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v3, v6, :cond_5

    cmpg-double v6, v4, v1

    if-gez v6, :cond_4

    goto :goto_2

    :cond_4
    move-wide v1, v4

    :goto_2
    move-wide v4, v1

    .line 470
    :cond_5
    invoke-virtual {v7, v4, v5, v3}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 471
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private static createAxialShading([Lcom/itextpdf/kernel/geom/Point;Ljava/util/List;Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/itextpdf/kernel/geom/Point;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;",
            "Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ")",
            "Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 275
    aget-object v1, p0, v0

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Point;->distance(Lcom/itextpdf/kernel/geom/Point;)D

    move-result-wide v3

    .line 277
    invoke-static {p1, v3, v4}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->normalizeStops(Ljava/util/List;D)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    .line 278
    new-array v5, v1, [D

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v5, v0

    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v3, v3, v10

    const/4 v4, 0x0

    if-ltz v3, :cond_6

    .line 280
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_0

    goto :goto_3

    .line 292
    :cond_0
    invoke-static {p0, p3}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->evaluateCoveringDomain([Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Rectangle;)[D

    move-result-object v5

    .line 293
    sget-object p3, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->REPEAT:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    if-eq p2, p3, :cond_5

    sget-object p3, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->REFLECT:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    if-ne p2, p3, :cond_1

    goto :goto_1

    .line 296
    :cond_1
    sget-object p3, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->PAD:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    if-ne p2, p3, :cond_2

    .line 297
    invoke-static {p1, v5}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->adjustStopsForPadIfNeeded(Ljava/util/List;[D)V

    goto :goto_2

    .line 300
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide p2

    .line 301
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v6

    sub-double v8, v6, p2

    cmpg-double v1, v8, v10

    if-ltz v1, :cond_4

    .line 302
    aget-wide v8, v5, v0

    cmpg-double v1, v8, p2

    if-lez v1, :cond_4

    aget-wide v8, v5, v2

    cmpl-double v1, v8, v6

    if-ltz v1, :cond_3

    goto :goto_0

    .line 307
    :cond_3
    invoke-static {v8, v9, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    aput-wide p2, v5, v2

    .line 308
    aget-wide p2, v5, v0

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    aput-wide p2, v5, v0

    goto :goto_2

    :cond_4
    :goto_0
    return-object v4

    .line 294
    :cond_5
    :goto_1
    invoke-static {p1, v5, p2}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->adjustNormalizedStopsToCoverDomain(Ljava/util/List;[DLcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;)Ljava/util/List;

    move-result-object p1

    .line 312
    :goto_2
    invoke-static {v5, p0}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->createCoordinatesForNewDomain([D[Lcom/itextpdf/kernel/geom/Point;)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object p0

    goto :goto_4

    .line 282
    :cond_6
    :goto_3
    sget-object p0, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    if-ne p2, p0, :cond_7

    return-object v4

    .line 285
    :cond_7
    new-array p0, v1, [Lcom/itextpdf/kernel/geom/Point;

    new-instance p2, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v10

    float-to-double v10, v10

    invoke-direct {p2, v3, v4, v10, v11}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    aput-object p2, p0, v2

    new-instance p2, Lcom/itextpdf/kernel/geom/Point;

    .line 286
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p3

    float-to-double v10, p3

    invoke-direct {p2, v3, v4, v10, v11}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    aput-object p2, p0, v0

    .line 288
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 289
    new-array p2, v1, [Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    new-instance p3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    sget-object v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {p3, p1, v6, v7, v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    aput-object p3, p2, v2

    new-instance p3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    sget-object v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {p3, p1, v8, v9, v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    aput-object p3, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 315
    :goto_4
    new-instance p2, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;

    new-instance p3, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    invoke-direct {p3}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;-><init>()V

    .line 317
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->createCoordsPdfArray([Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p0

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    .line 319
    invoke-static {p1}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->constructFunction(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/function/PdfFunction;

    move-result-object p1

    invoke-direct {p2, p3, p0, v0, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/function/PdfFunction;)V

    return-object p2
.end method

.method protected static createCoordinatesForNewDomain([D[Lcom/itextpdf/kernel/geom/Point;)[Lcom/itextpdf/kernel/geom/Point;
    .locals 13

    const/4 v0, 0x1

    .line 261
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    sub-double/2addr v1, v4

    .line 262
    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    aget-object v6, p1, v3

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    const/4 v6, 0x2

    .line 264
    new-array v6, v6, [Lcom/itextpdf/kernel/geom/Point;

    aget-object v7, p1, v3

    .line 265
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Point;->getLocation()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v7

    aput-object v7, v6, v3

    aget-object p1, p1, v0

    .line 266
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getLocation()Lcom/itextpdf/kernel/geom/Point;

    move-result-object p1

    aput-object p1, v6, v0

    .line 268
    aget-object p1, v6, v3

    aget-wide v7, p0, v3

    mul-double v9, v1, v7

    mul-double/2addr v7, v4

    invoke-virtual {p1, v9, v10, v7, v8}, Lcom/itextpdf/kernel/geom/Point;->translate(DD)V

    .line 269
    aget-object p1, v6, v0

    aget-wide v7, p0, v0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v11, v7, v9

    mul-double/2addr v1, v11

    sub-double/2addr v7, v9

    mul-double/2addr v4, v7

    invoke-virtual {p1, v1, v2, v4, v5}, Lcom/itextpdf/kernel/geom/Point;->translate(DD)V

    return-object v6
.end method

.method private static createCoordsPdfArray([Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 11

    .line 608
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    aget-object v4, p0, v1

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v7, p0, v6

    .line 609
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v7

    aget-object p0, p0, v6

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v9

    const/4 p0, 0x4

    new-array p0, p0, [D

    aput-wide v2, p0, v1

    aput-wide v4, p0, v6

    const/4 v1, 0x2

    aput-wide v7, p0, v1

    const/4 v1, 0x3

    aput-wide v9, p0, v1

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    return-object v0
.end method

.method protected static evaluateCoveringDomain([Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Rectangle;)[D
    .locals 32

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 221
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    return-object v0

    .line 223
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v1}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    const/4 v2, 0x0

    .line 224
    aget-object v3, p0, v2

    const/4 v4, 0x1

    aget-object v5, p0, v4

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/geom/Point;->distance(Lcom/itextpdf/kernel/geom/Point;)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v5, v7, v5

    .line 225
    aget-object v3, p0, v4

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v9

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v11

    sub-double/2addr v9, v11

    neg-double v9, v9

    mul-double/2addr v9, v5

    .line 226
    aget-object v3, p0, v4

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v11

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v13

    sub-double/2addr v11, v13

    mul-double/2addr v11, v5

    .line 227
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v3, v13, v15

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    const-wide/16 v17, 0x0

    if-gez v3, :cond_2

    cmpl-double v3, v9, v17

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move-wide v7, v13

    :goto_0
    move-wide/from16 v26, v17

    goto :goto_2

    .line 230
    :cond_2
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    cmpg-double v3, v19, v15

    if-gez v3, :cond_4

    cmpl-double v3, v11, v17

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move-wide v7, v13

    :goto_1
    move-wide/from16 v26, v7

    move-wide/from16 v7, v17

    goto :goto_2

    :cond_4
    move-wide v7, v9

    move-wide/from16 v26, v11

    .line 234
    :goto_2
    new-instance v3, Lcom/itextpdf/kernel/geom/AffineTransform;

    neg-double v9, v7

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    move-object/from16 v19, v3

    move-wide/from16 v20, v26

    move-wide/from16 v22, v7

    move-wide/from16 v24, v9

    invoke-direct/range {v19 .. v31}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 236
    invoke-virtual {v1, v5, v6, v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    .line 237
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v5

    neg-double v5, v5

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->toPointsArray()[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v3

    .line 240
    aget-object v5, v3, v2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v7

    move v5, v4

    move-wide v9, v7

    .line 242
    :goto_3
    array-length v11, v3

    if-ge v5, v11, :cond_5

    .line 243
    aget-object v11, v3, v5

    invoke-virtual {v1, v11, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v11

    .line 244
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 245
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 248
    :cond_5
    new-array v0, v0, [D

    aput-wide v7, v0, v2

    aput-wide v9, v0, v4

    return-object v0

    :array_0
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method private static normalizeAutoStops(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 367
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 368
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v1, v2, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v0

    :goto_0
    const/4 v2, 0x1

    move-wide v6, v0

    move v4, v2

    .line 370
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 371
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 372
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    move-result-object v1

    sget-object v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->AUTO:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    if-ne v1, v3, :cond_1

    .line 373
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v1

    sget-object v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v1, v3, :cond_4

    .line 374
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v0

    add-int/lit8 v10, v2, 0x1

    move-object v3, p0

    move v5, v10

    move-wide v8, v0

    .line 375
    invoke-static/range {v3 .. v9}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->normalizeAutoStops(Ljava/util/List;IIDD)V

    move-wide v6, v0

    move v4, v10

    goto :goto_3

    :cond_1
    if-ge v4, v2, :cond_2

    .line 382
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v8

    move-object v3, p0

    move v5, v2

    .line 383
    invoke-static/range {v3 .. v9}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->normalizeAutoStops(Ljava/util/List;IIDD)V

    :cond_2
    add-int/lit8 v1, v2, 0x1

    .line 386
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v3, v4, :cond_3

    .line 387
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v3

    :goto_2
    move-wide v6, v3

    move v4, v1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 392
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 393
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 394
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->normalizeAutoStops(Ljava/util/List;IIDD)V

    :cond_6
    return-void
.end method

.method private static normalizeAutoStops(Ljava/util/List;IIDD)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;IIDD)V"
        }
    .end annotation

    .line 402
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    sub-double/2addr p5, p3

    int-to-double v0, v0

    div-double/2addr p5, v0

    :goto_0
    if-ge p1, p2, :cond_0

    add-double/2addr p3, p5

    .line 407
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 411
    sget-object v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-virtual {v0, p3, p4, v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setOffset(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static normalizeFirstStopOffset(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 417
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 418
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->AUTO:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    if-eq v1, v2, :cond_0

    return-void

    .line 422
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 423
    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    if-ne v4, v5, :cond_2

    .line 424
    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v4

    goto :goto_0

    .line 426
    :cond_2
    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v4, v5, :cond_1

    .line 427
    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v4

    goto :goto_0

    :cond_3
    move-wide v4, v2

    .line 431
    :goto_0
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 432
    sget-object p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-virtual {v0, v1, v2, p0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setOffset(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    return-void
.end method

.method private static normalizeHintsOffsets(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 344
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 345
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 346
    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v4, v5, :cond_1

    .line 347
    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v4

    add-int/lit8 v6, v0, 0x1

    .line 348
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v6

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_0

    .line 350
    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v2

    sub-double/2addr v2, v4

    sub-double/2addr v6, v4

    div-double/2addr v2, v6

    .line 352
    sget-object v4, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_BETWEEN_COLORS:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    goto :goto_1

    .line 355
    :cond_0
    sget-object v4, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    sget-object v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    invoke-virtual {p0, v2, v3, v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    return-void
.end method

.method private static normalizeStops(Ljava/util/List;D)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x1

    .line 327
    new-array p2, p1, [Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    new-instance v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    const-wide/16 v1, 0x0

    sget-object p1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    const/4 p0, 0x0

    aput-object v0, p2, p0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 331
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->copyStopsAndNormalizeAbsoluteOffsets(Ljava/util/List;D)Ljava/util/List;

    move-result-object p0

    .line 333
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->normalizeFirstStopOffset(Ljava/util/List;)V

    .line 335
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->normalizeAutoStops(Ljava/util/List;)V

    .line 337
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->normalizeHintsOffsets(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public addColorStop(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;)Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->stops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public buildColor(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/colors/Color;
    .locals 8

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->getGradientVector(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    .line 133
    iget-object v1, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->stops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 139
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v1}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 144
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->getCurrentSpaceToGradientVectorSpaceTransformation(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    const/4 v2, 0x4

    .line 149
    :try_start_0
    new-array v2, v2, [Lcom/itextpdf/kernel/geom/Point;

    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    .line 151
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v6

    float-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 150
    invoke-virtual {p2, v3, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->inverseTransform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    .line 153
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v6

    float-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 152
    invoke-virtual {p2, v3, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->inverseTransform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    .line 155
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v6

    float-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 154
    invoke-virtual {p2, v3, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->inverseTransform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    .line 157
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v6

    float-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 156
    invoke-virtual {p2, v3, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->inverseTransform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 149
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 160
    :cond_2
    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p2

    const-string v2, "Unable to invert gradient transformation, ignoring it"

    invoke-interface {p2, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 166
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->stops:Ljava/util/List;

    iget-object v2, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->spreadMethod:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    invoke-static {p3, p2, v2, p1}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->createAxialShading([Lcom/itextpdf/kernel/geom/Point;Ljava/util/List;Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    .line 172
    :cond_4
    new-instance p2, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;)V

    .line 173
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x6

    .line 174
    new-array p1, p1, [D

    .line 175
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([D)V

    .line 176
    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p3, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;->setMatrix(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 178
    :cond_5
    new-instance p1, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/colors/PatternColor;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)V

    return-object p1

    :cond_6
    :goto_1
    return-object v0
.end method

.method public getColorStops()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->stops:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getCurrentSpaceToGradientVectorSpaceTransformation(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract getGradientVector(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;)[Lcom/itextpdf/kernel/geom/Point;
.end method

.method public getSpreadMethod()Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->spreadMethod:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    return-object v0
.end method

.method public setSpreadMethod(Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;)Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->spreadMethod:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    if-eqz v0, :cond_0

    .line 92
    iput-object p1, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->spreadMethod:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    goto :goto_0

    .line 94
    :cond_0
    sget-object p1, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    iput-object p1, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->spreadMethod:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    :goto_0
    return-object p0
.end method
