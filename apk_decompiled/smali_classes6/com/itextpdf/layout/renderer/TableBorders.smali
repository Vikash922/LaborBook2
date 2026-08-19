.class abstract Lcom/itextpdf/layout/renderer/TableBorders;
.super Ljava/lang/Object;
.source "TableBorders.java"


# instance fields
.field protected finishRow:I

.field protected horizontalBorders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;>;"
        }
    .end annotation
.end field

.field protected largeTableIndexOffset:I

.field protected leftBorderMaxWidth:F

.field protected final numberOfColumns:I

.field protected rightBorderMaxWidth:F

.field protected rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lcom/itextpdf/layout/renderer/CellRenderer;",
            ">;"
        }
    .end annotation
.end field

.field protected startRow:I

.field protected tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

.field protected verticalBorders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Lcom/itextpdf/layout/renderer/CellRenderer;",
            ">;I[",
            "Lcom/itextpdf/layout/borders/Border;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->horizontalBorders:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->verticalBorders:Ljava/util/List;

    const/4 v0, 0x4

    .line 86
    new-array v0, v0, [Lcom/itextpdf/layout/borders/Border;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->largeTableIndexOffset:I

    .line 129
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    .line 130
    iput p2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    .line 131
    invoke-virtual {p0, p3}, Lcom/itextpdf/layout/renderer/TableBorders;->setTableBoundingBorders([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Lcom/itextpdf/layout/renderer/CellRenderer;",
            ">;I[",
            "Lcom/itextpdf/layout/borders/Border;",
            "I)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/TableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V

    .line 136
    iput p4, p0, Lcom/itextpdf/layout/renderer/TableBorders;->largeTableIndexOffset:I

    return-void
.end method

.method private removeRows(II)V
    .locals 4

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 247
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->horizontalBorders:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 248
    :goto_1
    iget v3, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    if-gt v1, v3, :cond_0

    .line 249
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    iget p1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    return-void
.end method


# virtual methods
.method protected abstract applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract applyCellIndents(Lcom/itextpdf/kernel/geom/Rectangle;FFFFZ)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;II[I)V
.end method

.method protected abstract collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract collapseTableWithHeader(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract drawHorizontalBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/renderer/TableBorderDescriptor;)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract drawVerticalBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/renderer/TableBorderDescriptor;)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract fixHeaderOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method public getCellBorderIndents(IIII)[F
    .locals 8

    const/4 v0, 0x4

    .line 400
    new-array v0, v0, [F

    .line 404
    iget v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p3

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v1

    move v3, p2

    :goto_0
    add-int v4, p2, p4

    if-ge v3, v4, :cond_1

    .line 406
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    if-eqz v4, :cond_0

    .line 407
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    const/4 v6, 0x0

    aget v7, v0, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_0

    .line 408
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    aput v4, v0, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/TableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object p4

    .line 413
    iget v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p3

    add-int/2addr v1, v2

    :goto_1
    iget v3, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    add-int v5, v3, p1

    add-int/2addr v5, v2

    if-ge v1, v5, :cond_3

    .line 414
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/borders/Border;

    if-eqz v3, :cond_2

    .line 415
    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    aget v6, v0, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 416
    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    aput v3, v0, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v3, p1

    add-int/2addr v3, v2

    .line 420
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object p4

    move v1, p2

    :goto_2
    if-ge v1, v4, :cond_5

    .line 422
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/borders/Border;

    if-eqz v3, :cond_4

    .line 423
    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    const/4 v6, 0x2

    aget v7, v0, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_4

    .line 424
    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    aput v3, v0, v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 428
    :cond_5
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/TableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object p2

    .line 429
    iget p4, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    add-int/2addr p4, p1

    sub-int/2addr p4, p3

    add-int/2addr p4, v2

    :goto_3
    iget p3, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    add-int/2addr p3, p1

    add-int/2addr p3, v2

    if-ge p4, p3, :cond_7

    .line 430
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/borders/Border;

    if-eqz p3, :cond_6

    .line 431
    invoke-virtual {p3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    const/4 v3, 0x3

    aget v4, v0, v3

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    .line 432
    invoke-virtual {p3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p3

    aput p3, v0, v3

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_7
    return-object v0
.end method

.method protected abstract getCellVerticalAddition([F)F
.end method

.method public getFinishRow()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    return v0
.end method

.method public getFirstHorizontalBorder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 368
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstVerticalBorder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getHorizontalBorder(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation
.end method

.method public getLastHorizontalBorder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 372
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastVerticalBorder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLeftBorderMaxWidth()F
    .locals 1

    .line 308
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->leftBorderMaxWidth:F

    return v0
.end method

.method public getMaxBottomWidth()F
    .locals 3

    .line 326
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestHorizontalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    :cond_0
    return v1
.end method

.method public getMaxLeftWidth()F
    .locals 3

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestVerticalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    :cond_0
    return v1
.end method

.method public getMaxRightWidth()F
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestVerticalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    :cond_0
    return v1
.end method

.method public getMaxTopWidth()F
    .locals 3

    .line 317
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestHorizontalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    :cond_0
    return v1
.end method

.method public getNumberOfColumns()I
    .locals 1

    .line 384
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    return v0
.end method

.method public getRightBorderMaxWidth()F
    .locals 1

    .line 312
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rightBorderMaxWidth:F

    return v0
.end method

.method public getStartRow()I
    .locals 1

    .line 388
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    return v0
.end method

.method public getTableBoundingBorders()[Lcom/itextpdf/layout/borders/Border;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    return-object v0
.end method

.method public abstract getVerticalBorder(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation
.end method

.method public getWidestHorizontalBorder(I)Lcom/itextpdf/layout/borders/Border;
    .locals 0

    .line 360
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->getWidestBorder(Ljava/util/List;)Lcom/itextpdf/layout/borders/Border;

    move-result-object p1

    return-object p1
.end method

.method public getWidestHorizontalBorder(III)Lcom/itextpdf/layout/borders/Border;
    .locals 0

    .line 364
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->getWidestBorder(Ljava/util/List;II)Lcom/itextpdf/layout/borders/Border;

    move-result-object p1

    return-object p1
.end method

.method public getWidestVerticalBorder(I)Lcom/itextpdf/layout/borders/Border;
    .locals 0

    .line 352
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->getWidestBorder(Ljava/util/List;)Lcom/itextpdf/layout/borders/Border;

    move-result-object p1

    return-object p1
.end method

.method public getWidestVerticalBorder(III)Lcom/itextpdf/layout/borders/Border;
    .locals 0

    .line 356
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->getWidestBorder(Ljava/util/List;II)Lcom/itextpdf/layout/borders/Border;

    move-result-object p1

    return-object p1
.end method

.method protected initializeBorders()Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 5

    .line 259
    :goto_0
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-le v0, v2, :cond_1

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v2, v4, :cond_0

    .line 262
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    :goto_3
    iget v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 270
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 272
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method protected processAllBordersAndEmptyRows()Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 11

    .line 185
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    new-array v0, v0, [I

    .line 187
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 188
    iget v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    iget v2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->largeTableIndexOffset:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    iget v5, p0, Lcom/itextpdf/layout/renderer/TableBorders;->largeTableIndexOffset:I

    sub-int/2addr v4, v5

    if-gt v1, v4, :cond_9

    .line 189
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    move v5, v2

    move v6, v5

    .line 191
    :goto_1
    iget v7, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    const/4 v8, 0x1

    if-ge v5, v7, :cond_5

    .line 192
    aget-object v7, v4, v5

    if-eqz v7, :cond_3

    const/16 v6, 0x10

    .line 193
    invoke-virtual {v7, v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 194
    aget v7, v0, v5

    if-lez v7, :cond_1

    .line 195
    aget-object v7, v4, v5

    const/16 v9, 0x3c

    invoke-virtual {v7, v9}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v10, v0, v5

    sub-int/2addr v7, v10

    if-ge v7, v8, :cond_0

    .line 197
    const-class v7, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-static {v7}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v7

    .line 198
    const-string v10, "Unexpected behaviour during table row collapsing. Calculated rowspan was less then 1."

    invoke-interface {v7, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    move v7, v8

    .line 201
    :cond_0
    aget-object v10, v4, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v9, v7}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    if-eqz v3, :cond_1

    sub-int/2addr v1, v3

    .line 203
    invoke-direct {p0, v1, v3}, Lcom/itextpdf/layout/renderer/TableBorders;->removeRows(II)V

    move v3, v2

    .line 208
    :cond_1
    aget-object v7, v4, v5

    invoke-virtual {p0, v7, v1, v5, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;II[I)V

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_2

    add-int v9, v5, v7

    .line 211
    aput v2, v0, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    move v6, v8

    goto :goto_3

    .line 215
    :cond_3
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/TableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v5, :cond_4

    .line 216
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/TableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/2addr v5, v8

    goto :goto_1

    :cond_5
    if-nez v6, :cond_8

    .line 221
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v8

    if-ne v1, v4, :cond_6

    .line 222
    aget v4, v0, v2

    sub-int v5, v1, v4

    invoke-direct {p0, v5, v4}, Lcom/itextpdf/layout/renderer/TableBorders;->removeRows(II)V

    .line 224
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableBorders;->rows:Ljava/util/List;

    aget v5, v0, v2

    sub-int v5, v1, v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 225
    iget v4, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    sub-int/2addr v4, v8

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 227
    const-class v4, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 228
    const-string v5, "Last row is not completed. Table bottom border may collapse as you do not expect it"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move v4, v2

    .line 230
    :goto_4
    iget v5, p0, Lcom/itextpdf/layout/renderer/TableBorders;->numberOfColumns:I

    if-ge v4, v5, :cond_7

    .line 231
    aget v5, v0, v4

    add-int/2addr v5, v8

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 238
    :cond_9
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    iget v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    if-ge v0, v1, :cond_a

    .line 239
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    :cond_a
    return-object p0
.end method

.method protected setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    .line 301
    iput p1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    return-object p0
.end method

.method protected setRowRange(II)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    .line 290
    iput p1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    .line 291
    iput p2, p0, Lcom/itextpdf/layout/renderer/TableBorders;->finishRow:I

    return-object p0
.end method

.method protected setStartRow(I)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    .line 296
    iput p1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    return-object p0
.end method

.method protected setTableBoundingBorders([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 3

    const/4 v0, 0x4

    .line 280
    new-array v0, v0, [Lcom/itextpdf/layout/borders/Border;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 282
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method protected abstract skipFooter([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract skipHeader([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;
.end method

.method protected abstract updateBordersOnNewPage(ZZLcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;)Lcom/itextpdf/layout/renderer/TableBorders;
.end method
