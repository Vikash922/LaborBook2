.class public Lcom/itextpdf/layout/renderer/TableRenderer;
.super Lcom/itextpdf/layout/renderer/AbstractRenderer;
.source "TableRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;,
        Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;
    }
.end annotation


# instance fields
.field bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

.field protected captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

.field private columnWidths:[F

.field private countedColumnWidth:[F

.field protected footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

.field protected headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

.field private heights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected isOriginalNonSplitRenderer:Z

.field protected rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

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

.field private topBorderMaxWidth:F

.field private totalWidthForColumns:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->columnWidths:[F

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    .line 99
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/element/Table;)V
    .locals 3

    .line 124
    new-instance v0, Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Table;->getNumberOfRows()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;-><init>(Lcom/itextpdf/layout/element/Table;Lcom/itextpdf/layout/element/Table$RowRange;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/element/Table;Lcom/itextpdf/layout/element/Table$RowRange;)V
    .locals 1

    .line 114
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->columnWidths:[F

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    .line 99
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    .line 115
    invoke-direct {p0, p2}, Lcom/itextpdf/layout/renderer/TableRenderer;->setRowRange(Lcom/itextpdf/layout/element/Table$RowRange;)V

    return-void
.end method

.method private adjustCaptionAndFixOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;F)V
    .locals 4

    .line 1584
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    if-eqz v0, :cond_1

    .line 1585
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/DivRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 1586
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1587
    sget-object v1, Lcom/itextpdf/layout/properties/CaptionSide;->BOTTOM:Lcom/itextpdf/layout/properties/CaptionSide;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    const/16 v3, 0x77

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/DivRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/properties/CaptionSide;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    add-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;->move(FF)V

    goto :goto_0

    .line 1590
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_1
    :goto_0
    return-void
.end method

.method private adjustFooterAndFixOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;F)V
    .locals 2

    .line 1570
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    .line 1571
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    add-float/2addr p1, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->move(FF)V

    .line 1572
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    sub-float/2addr p1, p2

    .line 1573
    iget-object p2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_0
    return-void
.end method

.method private applyFixedXOrYPosition(ZLcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 1

    .line 1550
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1551
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x22

    .line 1553
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1554
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_0

    :cond_0
    const/16 p1, 0xe

    .line 1556
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1557
    iget-object p2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->move(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applySingleSpacing(Lcom/itextpdf/kernel/geom/Rectangle;FZZ)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 7

    .line 203
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_0

    div-float v5, p2, v0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    move v3, v5

    move v6, p4

    .line 205
    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1

    :cond_0
    div-float v3, p2, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v1, v3

    move v5, p4

    .line 207
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private applySpacing(Lcom/itextpdf/kernel/geom/Rectangle;FFZ)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 7

    .line 184
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v4, p3, v0

    div-float v5, p2, v0

    move-object v1, p1

    move v2, v4

    move v3, v5

    move v6, p4

    .line 185
    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private calculateColumnWidths(F)V
    .locals 7

    .line 1858
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->totalWidthForColumns:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1859
    :cond_0
    new-instance v0, Lcom/itextpdf/layout/renderer/TableWidths;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget v5, v1, Lcom/itextpdf/layout/renderer/TableBorders;->rightBorderMaxWidth:F

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget v6, v1, Lcom/itextpdf/layout/renderer/TableBorders;->leftBorderMaxWidth:F

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/layout/renderer/TableWidths;-><init>(Lcom/itextpdf/layout/renderer/TableRenderer;FZFF)V

    .line 1860
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableWidths;->layout()[F

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    :cond_1
    return-void
.end method

.method private correctLayoutedCellsOccupiedAreas([Lcom/itextpdf/layout/layout/LayoutResult;I[ILjava/lang/Float;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;ZZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            "I[I",
            "Ljava/lang/Float;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;ZZZ)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 1601
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getFinishRow()I

    move-result v0

    .line 1602
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1605
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestHorizontalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    .line 1606
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v0, 0x2

    if-eqz p9, :cond_0

    .line 1609
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v2, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v3

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 1610
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v3, v2, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/TableBorders;->skipFooter([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1612
    :cond_0
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v2, v2, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 1613
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 1615
    :goto_1
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v4, v2, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v4, :cond_3

    .line 1616
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxBottomWidth()F

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 1618
    :goto_2
    iget-object v4, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    if-eqz v4, :cond_a

    .line 1619
    iget-object v4, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget-object v11, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sub-float v1, v2, v1

    div-float/2addr v1, v5

    add-float/2addr v11, v1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v4, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1621
    iget-object v4, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1622
    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    if-eqz p8, :cond_a

    .line 1625
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    iget-object v4, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    move v4, v6

    .line 1626
    :goto_3
    array-length v7, v1

    if-ge v4, v7, :cond_a

    .line 1627
    aget-object v7, p1, v4

    if-nez v7, :cond_4

    aget-object v7, v1, v4

    goto :goto_4

    :cond_4
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/renderer/CellRenderer;

    :goto_4
    if-nez v7, :cond_5

    goto/16 :goto_6

    :cond_5
    const/16 v11, 0x3c

    .line 1632
    invoke-virtual {v7, v11}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0x10

    .line 1633
    invoke-virtual {v7, v12}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1634
    iget-object v13, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v0

    const/4 v14, 0x0

    :goto_5
    aget v15, p3, v4

    sub-int v3, v15, v11

    if-le v13, v3, :cond_6

    if-ltz v13, :cond_6

    .line 1635
    iget-object v3, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v14, v3

    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 1638
    :cond_6
    iget-object v3, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v13, v3, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v13, :cond_7

    move/from16 v15, p2

    :cond_7
    invoke-virtual {v3, v15, v4, v11, v12}, Lcom/itextpdf/layout/renderer/TableBorders;->getCellBorderIndents(IIII)[F

    move-result-object v3

    .line 1640
    invoke-virtual {v7}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    sub-float/2addr v7, v14

    aget v11, v3, v6

    div-float/2addr v11, v5

    add-float/2addr v7, v11

    aget v3, v3, v0

    div-float/2addr v3, v5

    add-float/2addr v7, v3

    .line 1642
    iget-object v3, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_9

    .line 1643
    iget-object v3, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v3, v3, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v3, :cond_8

    .line 1644
    iget-object v3, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v3, v7, v3

    .line 1645
    iget-object v11, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1646
    iget-object v11, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1648
    :cond_8
    iget-object v3, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v3, v11, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_a
    if-eqz p7, :cond_12

    if-eqz p4, :cond_c

    .line 1657
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 1658
    invoke-virtual/range {p5 .. p5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    sub-float/2addr v1, v3

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v6

    move v2, v1

    .line 1659
    :goto_7
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_d

    .line 1660
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v2, v2, 0x1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    move v2, v6

    const/4 v0, 0x0

    :cond_d
    if-nez v2, :cond_e

    .line 1665
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_8

    :cond_e
    move v1, v2

    :goto_8
    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v6

    .line 1666
    :goto_9
    iget-object v3, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_11

    if-eqz v2, :cond_f

    .line 1667
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1668
    :cond_f
    iget-object v3, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_11
    move v11, v0

    move v12, v2

    goto :goto_a

    :cond_12
    move v12, v6

    const/4 v11, 0x0

    :goto_a
    move v14, v6

    const/4 v13, 0x0

    .line 1674
    :goto_b
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v14

    move-object/from16 v5, p6

    move v6, v13

    move v7, v11

    .line 1675
    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->correctRowCellsOccupiedAreas([Lcom/itextpdf/layout/layout/LayoutResult;I[IILjava/util/List;FF)V

    if-eqz p7, :cond_14

    if-eqz v12, :cond_13

    .line 1677
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    add-float/2addr v13, v11

    :cond_14
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 1683
    :cond_15
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1684
    invoke-virtual {v9, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method

.method private correctRowCellsOccupiedAreas([Lcom/itextpdf/layout/layout/LayoutResult;I[IILjava/util/List;FF)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            "I[II",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;FF)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    .line 1689
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/itextpdf/layout/renderer/CellRenderer;

    const/4 v4, 0x0

    move v5, v4

    .line 1690
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_a

    if-lt v2, v1, :cond_1

    .line 1691
    aget-object v6, p1, v5

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/renderer/CellRenderer;

    goto :goto_2

    :cond_1
    :goto_1
    aget-object v6, v3, v5

    :goto_2
    if-nez v6, :cond_2

    move-object/from16 v14, p5

    goto/16 :goto_9

    :cond_2
    const/16 v7, 0x10

    .line 1696
    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x3c

    .line 1697
    invoke-virtual {v6, v8}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v2, v1, :cond_3

    move v9, v2

    goto :goto_3

    .line 1700
    :cond_3
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_3
    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    :goto_4
    if-ge v2, v1, :cond_4

    move v13, v2

    goto :goto_5

    :cond_4
    aget v13, p3, v5

    :goto_5
    sub-int/2addr v13, v8

    if-le v9, v13, :cond_6

    if-ltz v9, :cond_6

    .line 1701
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    add-float/2addr v11, v13

    .line 1702
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v14, p5

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    add-float v12, v12, p7

    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_6
    move-object/from16 v14, p5

    .line 1706
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    if-ge v2, v1, :cond_7

    move v13, v2

    goto :goto_6

    :cond_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    :goto_6
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v11, v9

    .line 1707
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    if-lt v2, v1, :cond_9

    instance-of v13, v9, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v13, :cond_8

    goto :goto_7

    :cond_8
    aget v13, p3, v5

    goto :goto_8

    :cond_9
    :goto_7
    move v13, v2

    :goto_8
    invoke-virtual {v9, v13, v5, v8, v7}, Lcom/itextpdf/layout/renderer/TableBorders;->getCellBorderIndents(IIII)[F

    move-result-object v7

    .line 1710
    aget v8, v7, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/4 v13, 0x2

    aget v7, v7, v13

    div-float/2addr v7, v9

    add-float/2addr v8, v7

    sub-float/2addr v11, v8

    .line 1713
    invoke-virtual {v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    sub-float v7, v11, v7

    .line 1714
    invoke-virtual {v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    .line 1715
    invoke-virtual {v8, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    sub-float v7, p6, v12

    neg-float v7, v7

    .line 1717
    :try_start_0
    invoke-virtual {v6, v10, v7}, Lcom/itextpdf/layout/renderer/CellRenderer;->move(FF)V

    .line 1718
    invoke-virtual {v8, v11}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1719
    invoke-virtual {v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->applyVerticalAlignment()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 1723
    :catch_0
    const-class v6, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-static {v6}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v6

    .line 1724
    const-string v7, "Some of the cell\'s content might not end up placed correctly."

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Occupied area has not been initialized. {0}"

    invoke-static {v8, v7}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private correctRowRange()V
    .locals 4

    .line 1395
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1396
    new-instance v0, Lcom/itextpdf/layout/element/Table$RowRange;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    :cond_0
    return-void
.end method

.method private drawBorders(Lcom/itextpdf/layout/renderer/DrawContext;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1414
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    .line 1415
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v2, :cond_0

    .line 1416
    iget-object v2, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1418
    :cond_0
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v2, :cond_1

    .line 1419
    iget-object v2, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    :cond_1
    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    return-void

    .line 1425
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    iget-object v2, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getLeftBorderMaxWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    add-float/2addr v2, v4

    .line 1427
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v4, :cond_3

    .line 1428
    iget-object v4, v4, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    sub-float/2addr v2, v4

    .line 1429
    iget v4, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->topBorderMaxWidth:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    goto :goto_0

    .line 1431
    :cond_3
    iget v4, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->topBorderMaxWidth:F

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    :goto_0
    const/16 v4, 0x2e

    .line 1433
    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/TableRenderer;->hasProperty(I)Z

    move-result v5

    const-string v6, "Property {0} in percents is not supported"

    const-class v7, Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 v8, 0x0

    const/16 v9, 0x2c

    if-eqz v5, :cond_6

    .line 1434
    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1435
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1436
    invoke-static {v7}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 1438
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    .line 1437
    invoke-static {v6, v10}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_4
    if-nez v4, :cond_5

    move v4, v8

    goto :goto_1

    .line 1440
    :cond_5
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    :goto_1
    sub-float/2addr v2, v4

    .line 1442
    :cond_6
    invoke-virtual {v0, v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->hasProperty(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1443
    invoke-virtual {v0, v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1444
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1445
    invoke-static {v7}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 1447
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 1446
    invoke-static {v6, v7}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_7
    if-nez v4, :cond_8

    move v4, v8

    goto :goto_2

    .line 1449
    :cond_8
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    :goto_2
    add-float/2addr v1, v4

    .line 1454
    :cond_9
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_c

    .line 1455
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v4, v4, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    .line 1456
    aget-object v6, v4, v5

    const/4 v7, 0x2

    if-eqz v6, :cond_a

    .line 1457
    aget-object v6, v4, v7

    if-eqz v6, :cond_b

    .line 1458
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_b

    .line 1459
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    aget-object v9, v4, v5

    invoke-virtual {v9}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v9

    div-float/2addr v9, v3

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 1462
    :cond_a
    aget-object v4, v4, v7

    if-eqz v4, :cond_b

    .line 1463
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    .line 1465
    :cond_b
    :goto_3
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_c

    .line 1466
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1472
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;-><init>()V

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1476
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isTopTablePart()Z

    move-result v4

    .line 1477
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isBottomTablePart()Z

    move-result v6

    .line 1478
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v7

    .line 1479
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRendererOfLargeTable()Z

    move-result v8

    .line 1481
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v10}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v10

    iget-object v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v11}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v11

    iget-object v12, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/layout/renderer/TableBorders;->setRowRange(II)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1483
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v10, v9, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v10, :cond_f

    if-eqz p3, :cond_e

    .line 1485
    check-cast v9, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v10, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1486
    invoke-virtual {v10}, Lcom/itextpdf/layout/renderer/TableBorders;->getFirstHorizontalBorder()Ljava/util/List;

    move-result-object v10

    iget-object v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v11, v11, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    check-cast v11, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    .line 1488
    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBordersCrossingTopHorizontalBorder()Ljava/util/List;

    move-result-object v11

    .line 1485
    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setBottomBorderCollapseWith(Ljava/util/List;Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    goto :goto_4

    :cond_e
    if-eqz v6, :cond_f

    .line 1490
    check-cast v9, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setBottomBorderCollapseWith(Ljava/util/List;Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    .line 1496
    :cond_f
    :goto_4
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [F

    move v10, v5

    .line 1497
    :goto_5
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_10

    .line 1498
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_10
    move v11, v1

    move v10, v5

    .line 1503
    :goto_6
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v13}, Lcom/itextpdf/layout/renderer/TableBorders;->getNumberOfColumns()I

    move-result v13

    if-gt v10, v13, :cond_12

    .line 1504
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v14

    new-instance v15, Lcom/itextpdf/layout/renderer/TableBorderDescriptor;

    invoke-direct {v15, v10, v2, v11, v9}, Lcom/itextpdf/layout/renderer/TableBorderDescriptor;-><init>(IFF[F)V

    invoke-virtual {v13, v14, v15}, Lcom/itextpdf/layout/renderer/TableBorders;->drawVerticalBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/renderer/TableBorderDescriptor;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1506
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    array-length v14, v13

    if-ge v10, v14, :cond_11

    .line 1507
    aget v13, v13, v10

    add-float/2addr v11, v13

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_12
    if-nez v8, :cond_14

    if-eqz v4, :cond_13

    goto :goto_7

    :cond_13
    move v4, v5

    goto :goto_8

    :cond_14
    :goto_7
    move v4, v12

    .line 1516
    :goto_8
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_15

    if-nez v4, :cond_15

    .line 1517
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v2, v5

    :cond_15
    xor-int/2addr v4, v12

    .line 1519
    :goto_9
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_16

    .line 1520
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v8

    new-instance v9, Lcom/itextpdf/layout/renderer/TableBorderDescriptor;

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    invoke-direct {v9, v4, v1, v2, v10}, Lcom/itextpdf/layout/renderer/TableBorderDescriptor;-><init>(IFF[F)V

    invoke-virtual {v5, v8, v9}, Lcom/itextpdf/layout/renderer/TableBorders;->drawHorizontalBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/renderer/TableBorderDescriptor;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1522
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_16
    if-nez v6, :cond_17

    if-nez v7, :cond_18

    :cond_17
    if-eqz v6, :cond_19

    if-nez v7, :cond_18

    .line 1534
    iget-boolean v4, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->isLastRendererForModelElement:Z

    if-nez v4, :cond_19

    .line 1535
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isEmptyTableRenderer()Z

    move-result v4

    if-nez v4, :cond_19

    .line 1536
    :cond_18
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    new-instance v6, Lcom/itextpdf/layout/renderer/TableBorderDescriptor;

    iget-object v7, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    .line 1537
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    invoke-direct {v6, v7, v1, v2, v8}, Lcom/itextpdf/layout/renderer/TableBorderDescriptor;-><init>(IFF[F)V

    .line 1536
    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/layout/renderer/TableBorders;->drawHorizontalBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/renderer/TableBorderDescriptor;)Lcom/itextpdf/layout/renderer/TableBorders;

    :cond_19
    if-eqz v3, :cond_1a

    .line 1541
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_1a
    return-void
.end method

.method private enlargeCell(III[Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;[I[Lcom/itextpdf/layout/renderer/TableRenderer;)V
    .locals 12

    move-object v8, p0

    move v9, p1

    move-object/from16 v10, p5

    .line 1952
    aget-object v0, p4, v9

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v11

    const/4 v0, 0x1

    move v5, p3

    if-ne v0, v5, :cond_0

    .line 1958
    aget-object v1, p4, v9

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Cell;->clone(Z)Lcom/itextpdf/layout/element/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1959
    invoke-virtual {v0, p0}, Lcom/itextpdf/layout/renderer/CellRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v1, 0x1b

    .line 1960
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->deleteProperty(I)V

    const/16 v1, 0x55

    .line 1961
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->deleteProperty(I)V

    const/16 v1, 0x54

    .line 1962
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->deleteProperty(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1963
    invoke-virtual {v10, v1, p1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1964
    aget v3, p6, v9

    sub-int/2addr v3, p2

    invoke-virtual {v10, v3, p1, v0}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1965
    iget-object v3, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    aget-object v4, p4, v9

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1966
    aget-object v3, p4, v9

    .line 1967
    aput-object v2, p4, v9

    .line 1968
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    aget v4, p6, v9

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object v3, v2, v9

    .line 1969
    iput-boolean v1, v3, Lcom/itextpdf/layout/renderer/CellRenderer;->isLastRendererForModelElement:Z

    const/16 v1, 0x6d

    .line 1970
    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move v3, p2

    move v4, p1

    move v5, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p6

    .line 1972
    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->enlargeCellWithBigRowspan([Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;III[Lcom/itextpdf/layout/renderer/TableRenderer;[I)V

    .line 1974
    :goto_0
    aget v0, p6, v9

    sub-int/2addr v0, p2

    invoke-virtual {v10, v0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->getCell(II)Lcom/itextpdf/layout/renderer/CellRenderer;

    move-result-object v0

    iput-object v11, v0, Lcom/itextpdf/layout/renderer/CellRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    return-void
.end method

.method private enlargeCellWithBigRowspan([Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;III[Lcom/itextpdf/layout/renderer/TableRenderer;[I)V
    .locals 6

    .line 1927
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    aget-object p1, p1, p4

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, p3

    :goto_0
    add-int v0, p3, p5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 v3, p1, 0x1

    .line 1930
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    aget-object v4, p6, v2

    iget-object v4, v4, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    sub-int v5, v3, p3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v4, v4, p4

    if-eqz v4, :cond_0

    sub-int v0, p1, p3

    .line 1931
    aget-object v2, p6, v2

    iget-object v2, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v2, v2, p4

    invoke-virtual {p2, v0, p4, v2}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1932
    invoke-virtual {p2, v5, p4, v1}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1933
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v0, v0, p4

    aput-object v0, p1, p4

    .line 1934
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object v1, p1, p4

    move p1, v3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v2

    if-eq p1, v0, :cond_1

    .line 1938
    iget-object p5, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object p5, p5, p4

    if-eqz p5, :cond_1

    .line 1939
    iget-object p5, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object p5, p5, p4

    invoke-virtual {p5}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p5

    check-cast p5, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {p5}, Lcom/itextpdf/layout/element/Cell;->getRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p5

    invoke-interface {p5, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p5

    check-cast p5, Lcom/itextpdf/layout/renderer/CellRenderer;

    sub-int p6, p1, p3

    .line 1940
    invoke-virtual {p2, p6, p4, v1}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1941
    aget p6, p7, p4

    sub-int/2addr p6, p3

    invoke-virtual {p2, p6, p4, p5}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1942
    iget-object p2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object p2, p2, p4

    .line 1943
    iget-object p3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object v1, p1, p4

    .line 1944
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    aget p3, p7, p4

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object p2, p1, p4

    const/4 p1, 0x0

    .line 1945
    iput-boolean p1, p2, Lcom/itextpdf/layout/renderer/CellRenderer;->isLastRendererForModelElement:Z

    const/16 p1, 0x6d

    .line 1946
    invoke-virtual {p2, p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private ensureFooterOrHeaderHasTheSamePropertiesAsParentTableRenderer(Lcom/itextpdf/layout/renderer/TableRenderer;)V
    .locals 2

    const/16 v0, 0x72

    .line 1810
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1811
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_0

    const/16 v0, 0x73

    .line 1812
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v0, 0x74

    .line 1813
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v0, 0x9

    .line 1814
    sget-object v1, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v0, 0xb

    .line 1815
    sget-object v1, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v0, 0xd

    .line 1816
    sget-object v1, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v0, 0xc

    .line 1817
    sget-object v1, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v0, 0xa

    .line 1818
    sget-object v1, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getTableWidth()F
    .locals 6

    .line 1866
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v5, v0, v3

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v1, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v1, :cond_2

    .line 1870
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getRightBorderMaxWidth()F

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getLeftBorderMaxWidth()F

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr v4, v0

    const/16 v0, 0x73

    .line 1871
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1872
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1
    add-float/2addr v4, v2

    goto :goto_2

    .line 1874
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getRightBorderMaxWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getLeftBorderMaxWidth()F

    move-result v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    add-float/2addr v4, v0

    :goto_2
    return v4
.end method

.method private initFooterOrHeaderRenderer(Z[Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableRenderer;
    .locals 9

    .line 1756
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    .line 1757
    sget-object v1, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;

    const/16 v2, 0x72

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz p1, :cond_0

    .line 1758
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getFooter()Lcom/itextpdf/layout/element/Table;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getHeader()Lcom/itextpdf/layout/element/Table;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 1761
    :goto_2
    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1762
    invoke-direct {p0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->ensureFooterOrHeaderHasTheSamePropertiesAsParentTableRenderer(Lcom/itextpdf/layout/renderer/TableRenderer;)V

    const/4 v6, 0x1

    if-nez p1, :cond_3

    .line 1763
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v7}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v7

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v7, :cond_3

    move v4, v6

    :cond_3
    const/16 v7, 0x6c

    .line 1764
    invoke-virtual {p0, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-eqz v7, :cond_4

    .line 1766
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, p0, v8}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V

    .line 1767
    invoke-static {v7, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addTreeHints(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/renderer/IRenderer;)V

    if-nez p1, :cond_4

    if-nez v4, :cond_4

    .line 1771
    invoke-virtual {v7, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 1775
    :cond_4
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v7, v4, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    const/4 v8, 0x3

    if-eqz v7, :cond_8

    .line 1776
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_5

    .line 1778
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez p1, :cond_6

    .line 1779
    :cond_5
    aget-object p1, p2, v5

    invoke-virtual {v2, p1, v5}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1781
    :cond_6
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object p1, p1, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    sget-object v0, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    aput-object v0, p1, v5

    .line 1783
    :cond_7
    aget-object p1, p2, v6

    invoke-virtual {v2, p1, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1784
    aget-object p1, p2, v8

    invoke-virtual {v2, p1, v8}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1785
    aget-object p1, p2, v3

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1786
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object p1, p1, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    sget-object p2, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    aput-object p2, p1, v3

    goto :goto_3

    .line 1787
    :cond_8
    instance-of p1, v4, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz p1, :cond_a

    .line 1788
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object p1

    .line 1789
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1790
    aget-object v0, p1, v5

    aget-object v4, p2, v5

    invoke-static {v0, v4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedBorder(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1791
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    sget-object v4, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    aput-object v4, v0, v5

    .line 1793
    :cond_9
    aget-object v0, p1, v6

    aget-object v4, p2, v6

    invoke-static {v0, v4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedBorder(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    invoke-virtual {v2, v0, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1794
    aget-object v0, p1, v8

    aget-object v4, p2, v8

    invoke-static {v0, v4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedBorder(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    invoke-virtual {v2, v0, v8}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1795
    aget-object p1, p1, v3

    aget-object p2, p2, v3

    invoke-static {p1, p2}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedBorder(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/borders/Border;

    move-result-object p1

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1796
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object p1, p1, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    sget-object p2, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    aput-object p2, p1, v3

    :cond_a
    :goto_3
    if-eqz v1, :cond_b

    .line 1799
    new-instance p1, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    iget-object p2, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 1800
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v0

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V

    goto :goto_4

    :cond_b
    new-instance p1, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    iget-object p2, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 1801
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v0

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V

    :goto_4
    iput-object p1, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1802
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableBorders;->initializeBorders()Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1803
    iget-object p1, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object p2, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {p2}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result p2

    iget-object v0, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->setRowRange(II)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1804
    iget-object p1, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableBorders;->processAllBordersAndEmptyRows()Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1805
    invoke-direct {v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->correctRowRange()V

    return-object v2
.end method

.method private initializeCaptionRenderer(Lcom/itextpdf/layout/element/Div;)V
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Div;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/renderer/DivRenderer;

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    .line 243
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/DivRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 p1, 0x6c

    .line 244
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-eqz p1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V

    .line 247
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    invoke-static {p1, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addTreeHints(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/renderer/IRenderer;)V

    :cond_0
    return-void
.end method

.method private initializeHeaderAndFooter(Z)V
    .locals 7

    .line 220
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    .line 221
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    .line 223
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getHeader()Lcom/itextpdf/layout/element/Table;

    move-result-object v2

    .line 224
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 225
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isSkipFirstHeader()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez v3, :cond_3

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v3, 0x61

    .line 226
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    move p1, v5

    :goto_1
    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 228
    invoke-direct {p0, v5, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->initFooterOrHeaderRenderer(Z[Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 231
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getFooter()Lcom/itextpdf/layout/element/Table;

    move-result-object p1

    .line 233
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getLastRowBottomBorder()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isSkipLastFooter()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x60

    .line 234
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v5, v4

    :cond_6
    if-eqz p1, :cond_7

    if-eqz v5, :cond_7

    .line 236
    invoke-direct {p0, v4, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->initFooterOrHeaderRenderer(Z[Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    :cond_7
    return-void
.end method

.method private initializeTableLayoutBorders()V
    .locals 7

    .line 1382
    sget-object v0, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;

    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    new-instance v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 1384
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 1385
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1386
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->initializeBorders()Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1387
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->setTableBoundingBorders([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1388
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->setRowRange(II)Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v0, 0x1

    .line 1389
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->initializeHeaderAndFooter(Z)V

    .line 1390
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-boolean v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    move v3, v0

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    move-object v4, p0

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/layout/renderer/TableBorders;->updateBordersOnNewPage(ZZLcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1391
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->correctRowRange()V

    return-void
.end method

.method private isBottomTablePart()Z
    .locals 1

    .line 1850
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_1

    .line 1851
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEmptyTableRenderer()Z
    .locals 4

    .line 1546
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private isFooterRenderer()Z
    .locals 1

    .line 1837
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFooterRendererOfLargeTable()Z
    .locals 1

    .line 1841
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getLastRowBottomBorder()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isHeaderRenderer()Z
    .locals 1

    .line 1833
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOriginalRenderer()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTopTablePart()Z
    .locals 1

    .line 1845
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_1

    .line 1846
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private prepareFooterOrHeaderRendererForLayout(Lcom/itextpdf/layout/renderer/TableRenderer;F)Lcom/itextpdf/layout/renderer/TableRenderer;
    .locals 2

    .line 1823
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    iput-object v0, p1, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    .line 1824
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getLeftBorderMaxWidth()F

    move-result v1

    iput v1, v0, Lcom/itextpdf/layout/renderer/TableBorders;->leftBorderMaxWidth:F

    .line 1825
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getRightBorderMaxWidth()F

    move-result v1

    iput v1, v0, Lcom/itextpdf/layout/renderer/TableBorders;->rightBorderMaxWidth:F

    const/16 v0, 0x4d

    .line 1826
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1827
    invoke-static {p2}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method private setRowRange(Lcom/itextpdf/layout/element/Table$RowRange;)V
    .locals 3

    .line 1749
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    .line 1750
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1751
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v2, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v2

    new-array v2, v2, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 4

    .line 132
    instance-of v0, p1, Lcom/itextpdf/layout/renderer/CellRenderer;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Cell;

    .line 136
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getRow()I

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getCol()I

    move-result v0

    check-cast p1, Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object p1, v1, v0

    goto :goto_0

    .line 138
    :cond_0
    const-class p1, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 139
    const-string v0, "Only CellRenderer could be added"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected allowLastYLineRecursiveExtraction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_0

    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_0
    return-object p1
.end method

.method applyMarginsAndPaddingsAndCalculateColumnWidths(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 8

    .line 1978
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getMargins()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    const/4 v1, 0x1

    .line 1979
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v2

    const-string v3, "Property {0} in percents is not supported"

    const-class v4, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v2, :cond_0

    .line 1980
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    const/16 v5, 0x2d

    .line 1982
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 1981
    invoke-static {v3, v5}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x3

    .line 1984
    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1985
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    const/16 v6, 0x2c

    .line 1987
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 1986
    invoke-static {v3, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1989
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPaddings()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v5

    .line 1990
    aget-object v6, v5, v1

    invoke-virtual {v6}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1991
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v6

    const/16 v7, 0x31

    .line 1993
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 1992
    invoke-static {v3, v7}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1995
    :cond_2
    aget-object v6, v5, v2

    invoke-virtual {v6}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1996
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    const/16 v6, 0x30

    .line 1998
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 1997
    invoke-static {v3, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 2000
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    aget-object v3, v0, v1

    .line 2001
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v3

    sub-float/2addr p1, v3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    sub-float/2addr p1, v0

    aget-object v0, v5, v1

    .line 2002
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    sub-float/2addr p1, v0

    aget-object v0, v5, v2

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    sub-float/2addr p1, v0

    .line 2000
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->calculateColumnWidths(F)V

    return-void
.end method

.method public applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_0

    .line 166
    invoke-super {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_0
    return-object p1
.end method

.method protected applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_0

    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_0
    return-object p1
.end method

.method protected createOverflowRenderer(Lcom/itextpdf/layout/element/Table$RowRange;)Lcom/itextpdf/layout/renderer/TableRenderer;
    .locals 1

    .line 1316
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1317
    invoke-direct {v0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setRowRange(Lcom/itextpdf/layout/element/Table$RowRange;)V

    .line 1318
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1319
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 1320
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->addAllProperties(Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 1321
    iput-boolean p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    .line 1322
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    iput-object p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    return-object v0
.end method

.method protected createSplitRenderer(Lcom/itextpdf/layout/element/Table$RowRange;)Lcom/itextpdf/layout/renderer/TableRenderer;
    .locals 1

    .line 1299
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1300
    iput-object p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    .line 1301
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1302
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 1303
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    iput-object p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    .line 1304
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 1305
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iput-object p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1306
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iput-object p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 p1, 0x0

    .line 1307
    iput-boolean p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->isLastRendererForModelElement:Z

    .line 1308
    iget p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->topBorderMaxWidth:F

    iput p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->topBorderMaxWidth:F

    .line 1309
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    iput-object p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    .line 1310
    iget-boolean p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    iput-boolean p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    return-object v0
.end method

.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 14

    .line 1121
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/16 v3, 0x6c

    .line 1124
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1128
    :cond_0
    invoke-virtual {v3, p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->useAutoTaggingPointerAndRememberItsPosition(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v4

    .line 1129
    invoke-virtual {v3, p0, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1130
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v5

    invoke-static {p0, v4}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->getLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 1135
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/TableRenderer;->beginTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 1137
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyDestinationsAndAnnotation(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1139
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isRelativePosition()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1141
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyRelativePositioningTranslation(Z)V

    .line 1144
    :cond_3
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1145
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/DivRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    goto :goto_1

    :cond_4
    move v1, v5

    .line 1146
    :goto_1
    sget-object v6, Lcom/itextpdf/layout/properties/CaptionSide;->BOTTOM:Lcom/itextpdf/layout/properties/CaptionSide;

    cmpl-float v7, v5, v1

    if-eqz v7, :cond_5

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    const/16 v8, 0x77

    invoke-virtual {v2, v8}, Lcom/itextpdf/layout/renderer/DivRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    :cond_5
    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/properties/CaptionSide;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v7, :cond_8

    .line 1148
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    if-eqz v2, :cond_6

    move v9, v5

    goto :goto_2

    :cond_6
    move v9, v1

    :goto_2
    if-eqz v2, :cond_7

    move v11, v1

    goto :goto_3

    :cond_7
    move v11, v5

    :goto_3
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1150
    :cond_8
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1151
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v6, v6, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v6, :cond_9

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1152
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1154
    :cond_9
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1155
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawPositionedChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V

    if-eqz v7, :cond_c

    .line 1157
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    if-eqz v2, :cond_a

    move v8, v5

    goto :goto_4

    :cond_a
    move v8, v1

    :goto_4
    if-eqz v2, :cond_b

    move v10, v1

    goto :goto_5

    :cond_b
    move v10, v5

    :goto_5
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1159
    :cond_c
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawCaption(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1160
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    const/4 v1, 0x1

    if-eqz v4, :cond_d

    .line 1163
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyRelativePositioningTranslation(Z)V

    .line 1166
    :cond_d
    iput-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->flushed:Z

    .line 1168
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->endTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    if-eqz v0, :cond_f

    .line 1171
    iget-boolean p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isLastRendererForModelElement:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1172
    invoke-virtual {v3, p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishTaggingHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 1174
    :cond_e
    invoke-virtual {v3, p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->restoreAutoTaggingPointerPosition(Lcom/itextpdf/layout/renderer/IRenderer;)V

    :cond_f
    return-void
.end method

.method public drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 1

    .line 1229
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawBackgrounds(Lcom/itextpdf/layout/renderer/DrawContext;)V

    :cond_0
    return-void
.end method

.method protected drawBackgrounds(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 9

    .line 1201
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    .line 1203
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxTopWidth()F

    move-result v2

    div-float v4, v2, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getRightBorderMaxWidth()F

    move-result v2

    div-float v5, v2, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1204
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxBottomWidth()F

    move-result v2

    div-float v6, v2, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getLeftBorderMaxWidth()F

    move-result v2

    div-float v7, v2, v1

    const/4 v8, 0x0

    .line 1203
    invoke-virtual/range {v3 .. v8}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1206
    :cond_2
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V

    if-eqz v0, :cond_3

    .line 1208
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxTopWidth()F

    move-result v0

    div-float v3, v0, v1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getRightBorderMaxWidth()F

    move-result v0

    div-float v4, v0, v1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1209
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxBottomWidth()F

    move-result v0

    div-float v5, v0, v1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getLeftBorderMaxWidth()F

    move-result v0

    div-float v6, v0, v1

    const/4 v7, 0x1

    .line 1208
    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1211
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_4

    .line 1212
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawBackgrounds(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1214
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_5

    .line 1215
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawBackgrounds(Lcom/itextpdf/layout/renderer/DrawContext;)V

    :cond_5
    return-void
.end method

.method public drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 1

    .line 1402
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_0

    .line 1403
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V

    :cond_0
    return-void
.end method

.method protected drawBorders(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 4

    .line 1410
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawBorders(Lcom/itextpdf/layout/renderer/DrawContext;ZZ)V

    return-void
.end method

.method protected drawCaption(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    :cond_0
    return-void
.end method

.method public drawChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 2

    .line 1183
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1188
    invoke-interface {v1, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    goto :goto_0

    .line 1191
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v0, :cond_2

    .line 1192
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->drawBorders(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_3

    .line 1196
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    :cond_3
    return-void
.end method

.method protected extendLastRow([Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1731
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1732
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1733
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1734
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 1736
    iget-object v2, v2, Lcom/itextpdf/layout/renderer/CellRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1739
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_2
    return-void
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 10

    .line 1348
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v0, :cond_0

    .line 1349
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->initializeTableLayoutBorders()V

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getRightBorderMaxWidth()F

    move-result v0

    .line 1352
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getLeftBorderMaxWidth()F

    move-result v7

    .line 1353
    new-instance v8, Lcom/itextpdf/layout/renderer/TableWidths;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v3

    const/4 v4, 0x1

    move-object v1, v8

    move-object v2, p0

    move v5, v0

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/layout/renderer/TableWidths;-><init>(Lcom/itextpdf/layout/renderer/TableRenderer;FZFF)V

    .line 1355
    iget-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v1, :cond_1

    invoke-virtual {v8}, Lcom/itextpdf/layout/renderer/TableWidths;->layout()[F

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    .line 1356
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget v5, v1, v4

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1359
    :cond_2
    iget-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v1, :cond_3

    invoke-virtual {v8}, Lcom/itextpdf/layout/renderer/TableWidths;->getMinWidth()F

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    const/16 v2, 0x2d

    .line 1360
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v4

    .line 1361
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v5

    const-string v6, "Property {0} in percents is not supported"

    const-class v8, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v5, :cond_4

    .line 1362
    invoke-static {v8}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 1364
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1363
    invoke-static {v6, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_4
    const/16 v2, 0x2c

    .line 1366
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v5

    .line 1367
    invoke-virtual {v5}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1368
    invoke-static {v8}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v8

    .line 1370
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1369
    invoke-static {v6, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1372
    :cond_5
    invoke-virtual {v5}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v2, v0

    div-float/2addr v7, v4

    add-float/2addr v2, v7

    .line 1373
    new-instance v0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-direct {v0, v1, v3, v2}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(FFF)V

    return-object v0
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 1247
    const-class v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->logWarningIfGetNextRendererNotOverridden(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 1248
    new-instance v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-direct {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;-><init>()V

    .line 1249
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method getTable()Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 78

    move-object/from16 v10, p0

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object v11

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v6

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v12

    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result v13

    .line 267
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/itextpdf/layout/element/Table;

    .line 270
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v0

    const/16 v8, 0x2b

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 271
    invoke-static {v7}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 273
    :cond_0
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v0

    const/16 v15, 0x2e

    if-eqz v0, :cond_1

    .line 274
    invoke-static {v7}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 279
    :cond_1
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v5

    .line 292
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->getLastRowBottomBorder()Ljava/util/List;

    move-result-object v21

    .line 293
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    move/from16 v22, v4

    goto :goto_0

    :cond_2
    const/16 v22, 0x0

    .line 294
    :goto_0
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v10, v4}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFirstOnRootArea(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v4

    .line 296
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v0

    if-nez v0, :cond_8

    .line 297
    iget-boolean v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v0, :cond_8

    .line 298
    sget-object v0, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;

    const/16 v1, 0x72

    invoke-virtual {v10, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 299
    new-instance v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v3

    if-nez v22, :cond_5

    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v4}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v4

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-direct {v0, v1, v5, v3, v4}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;I)V

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v3

    if-nez v22, :cond_7

    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v4}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v4

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    invoke-direct {v0, v1, v5, v3, v4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;I)V

    :goto_5
    iput-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 302
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->initializeBorders()Lcom/itextpdf/layout/renderer/TableBorders;

    .line 305
    :cond_8
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v1

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/layout/renderer/TableBorders;->setRowRange(II)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 306
    invoke-direct {v10, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->initializeHeaderAndFooter(Z)V

    .line 309
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-boolean v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isFooterRenderer()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isHeaderRenderer()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v3, 0x1

    :goto_7
    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v15, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    move/from16 v23, v2

    move v2, v3

    const/4 v8, 0x0

    move-object/from16 v3, p0

    const/4 v7, 0x1

    move/from16 v25, v5

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TableBorders;->updateBordersOnNewPage(ZZLcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 310
    iget-boolean v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    if-eqz v0, :cond_b

    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->correctRowRange()V

    .line 313
    :cond_b
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_c

    const/16 v0, 0x73

    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 314
    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v5, v0

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    .line 316
    :goto_8
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v0, :cond_d

    const/16 v0, 0x74

    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 317
    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v4, v0

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    :goto_9
    if-nez v22, :cond_e

    if-nez v23, :cond_e

    .line 320
    invoke-virtual {v9, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 322
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalRenderer()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 323
    invoke-virtual {v10, v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyMarginsAndPaddingsAndCalculateColumnWidths(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 325
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getTableWidth()F

    move-result v0

    .line 328
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x59

    invoke-virtual {v10, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 330
    new-instance v1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getMarginsCollapseInfo()Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v15

    invoke-direct {v1, v10, v15}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;-><init>(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    .line 333
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v15

    .line 334
    invoke-static {v10, v15, v9}, Lcom/itextpdf/layout/renderer/FloatingHelper;->calculateClearHeightCorrection(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)F

    move-result v2

    const/16 v7, 0x63

    .line 335
    invoke-virtual {v10, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/properties/FloatPropertyValue;

    .line 336
    invoke-static {v10, v7}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/FloatPropertyValue;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 337
    invoke-virtual {v9, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 338
    invoke-static {v10, v9, v0, v15, v7}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustFloatedTableLayoutBox(Lcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/kernel/geom/Rectangle;FLjava/util/List;Lcom/itextpdf/layout/properties/FloatPropertyValue;)V

    goto :goto_b

    .line 340
    :cond_11
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v15, v9, v7, v2, v1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustLayoutBoxAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;FLcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;)F

    move-result v2

    :goto_b
    move v7, v2

    if-eqz v3, :cond_12

    .line 344
    invoke-virtual {v1, v9}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 346
    :cond_12
    invoke-virtual {v10, v9, v8}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x1

    .line 347
    invoke-direct {v10, v2, v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyFixedXOrYPosition(ZLcom/itextpdf/kernel/geom/Rectangle;)V

    .line 348
    invoke-virtual {v10, v9, v8}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    const/16 v2, 0x1a

    if-eqz v6, :cond_13

    .line 350
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v16

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v17

    cmpg-float v16, v16, v17

    if-gtz v16, :cond_13

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v29, v1

    .line 351
    invoke-virtual {v10, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 352
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v1, v8

    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v1, v6}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    const/16 v30, 0x1

    goto :goto_c

    :cond_13
    move-object/from16 v29, v1

    :cond_14
    const/16 v30, 0x0

    .line 356
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table;->getCaption()Lcom/itextpdf/layout/element/Div;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->initializeCaptionRenderer(Lcom/itextpdf/layout/element/Div;)V

    .line 357
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    if-eqz v1, :cond_19

    .line 358
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/DivRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v1

    .line 359
    iget-object v6, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    new-instance v8, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v2, Lcom/itextpdf/layout/layout/LayoutArea;

    move/from16 v32, v3

    .line 360
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    move/from16 v33, v7

    new-instance v7, Lcom/itextpdf/kernel/geom/Rectangle;

    move-object/from16 v16, v14

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v14

    move-object/from16 v17, v15

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v15

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move-object/from16 v34, v11

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v11

    invoke-direct {v7, v14, v15, v1, v11}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v2, v3, v7}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    if-nez v30, :cond_16

    if-eqz v13, :cond_15

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v1, 0x1

    :goto_e
    invoke-direct {v8, v2, v1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    .line 359
    invoke-virtual {v6, v8}, Lcom/itextpdf/layout/renderer/DivRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v1

    .line 361
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_17

    .line 362
    new-instance v6, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object v0, v6

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v6

    .line 364
    :cond_17
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    .line 365
    sget-object v2, Lcom/itextpdf/layout/properties/CaptionSide;->BOTTOM:Lcom/itextpdf/layout/properties/CaptionSide;

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->getCaption()Lcom/itextpdf/layout/element/Div;

    move-result-object v3

    const/16 v6, 0x77

    invoke-virtual {v3, v6}, Lcom/itextpdf/layout/element/Div;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/properties/CaptionSide;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 366
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->captionRenderer:Lcom/itextpdf/layout/renderer/DivRenderer;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    sub-float/2addr v3, v1

    neg-float v3, v3

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Lcom/itextpdf/layout/renderer/DivRenderer;->move(FF)V

    .line 367
    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 368
    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_f

    .line 370
    :cond_18
    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_f

    :cond_19
    move/from16 v32, v3

    move/from16 v33, v7

    move-object/from16 v34, v11

    move-object/from16 v16, v14

    move-object/from16 v17, v15

    .line 374
    :goto_f
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v2

    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v6

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v7

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-direct {v3, v6, v7, v0, v8}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 376
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 378
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v11, 0xa

    if-eqz v0, :cond_21

    .line 380
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-direct {v10, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->prepareFooterOrHeaderRendererForLayout(Lcom/itextpdf/layout/renderer/TableRenderer;F)Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 383
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1b

    if-nez v22, :cond_1a

    goto :goto_10

    .line 385
    :cond_1a
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_1c

    .line 386
    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_11

    :cond_1b
    :goto_10
    const/4 v2, 0x0

    .line 384
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 389
    :cond_1c
    :goto_11
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v2, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    invoke-direct {v2, v3, v9}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    if-nez v30, :cond_1e

    if-eqz v13, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v3, 0x0

    goto :goto_13

    :cond_1e
    :goto_12
    const/4 v3, 0x1

    :goto_13
    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    .line 392
    invoke-virtual {v10, v11}, Lcom/itextpdf/layout/renderer/TableRenderer;->deleteOwnProperty(I)V

    .line 393
    new-instance v6, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object v0, v6

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v6

    .line 395
    :cond_1f
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 396
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    sub-float/2addr v2, v0

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->move(FF)V

    .line 397
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 400
    invoke-virtual {v9, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 401
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 402
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxTopWidth()F

    move-result v0

    .line 403
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 404
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 408
    :cond_20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x1a

    invoke-virtual {v10, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 409
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 413
    :cond_21
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v8, 0xd

    if-eqz v0, :cond_27

    .line 414
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-direct {v10, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->prepareFooterOrHeaderRendererForLayout(Lcom/itextpdf/layout/renderer/TableRenderer;F)Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 415
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_22

    .line 416
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithHeader(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_14

    :cond_22
    const/4 v3, 0x1

    .line 417
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_23

    .line 418
    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithHeader(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 422
    :cond_23
    :goto_14
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxTopWidth()F

    move-result v0

    iput v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->topBorderMaxWidth:F

    .line 423
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v2, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    invoke-direct {v2, v3, v9}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    if-nez v30, :cond_25

    if-eqz v13, :cond_24

    goto :goto_15

    :cond_24
    const/4 v3, 0x0

    goto :goto_16

    :cond_25
    :goto_15
    const/4 v3, 0x1

    :goto_16
    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_26

    .line 426
    invoke-virtual {v10, v8}, Lcom/itextpdf/layout/renderer/TableRenderer;->deleteOwnProperty(I)V

    .line 427
    new-instance v6, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object v0, v6

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v6

    .line 429
    :cond_26
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 430
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 431
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 432
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/itextpdf/layout/renderer/TableBorders;->fixHeaderOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 435
    invoke-virtual {v9, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 436
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_27
    const/4 v0, 0x0

    .line 440
    invoke-direct {v10, v9, v5, v4, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySpacing(Lcom/itextpdf/kernel/geom/Rectangle;FFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 441
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v10, v1, v5, v2, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySingleSpacing(Lcom/itextpdf/kernel/geom/Rectangle;FZZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 442
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const/high16 v35, 0x40000000    # 2.0f

    div-float v7, v4, v35

    invoke-virtual {v1, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 444
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxTopWidth()F

    move-result v1

    iput v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->topBorderMaxWidth:F

    .line 445
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1, v9, v0}, Lcom/itextpdf/layout/renderer/TableBorders;->applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 447
    iget-object v14, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    .line 448
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_28

    goto :goto_17

    :cond_28
    const/4 v0, 0x0

    goto :goto_18

    :cond_29
    :goto_17
    const/4 v0, 0x1

    :goto_18
    const/16 v19, 0x0

    move-object/from16 v6, v16

    move-object/from16 v3, v17

    const/16 v2, 0x2e

    move-object/from16 v16, v9

    move/from16 v17, v0

    move/from16 v18, v22

    .line 447
    invoke-virtual/range {v14 .. v19}, Lcom/itextpdf/layout/renderer/TableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 449
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v1, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v1, :cond_2a

    .line 450
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxBottomWidth()F

    move-result v0

    .line 452
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 453
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_2a
    move/from16 v15, v25

    .line 456
    new-array v14, v15, [Lcom/itextpdf/layout/layout/LayoutResult;

    .line 459
    new-array v1, v15, [I

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 463
    :goto_19
    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const-class v36, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-ge v11, v8, :cond_a9

    .line 464
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    if-ne v11, v2, :cond_2c

    .line 467
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v37, v3

    move/from16 v38, v4

    const/16 v3, 0x1a

    invoke-virtual {v10, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 468
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 469
    invoke-virtual {v10, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->deleteOwnProperty(I)V

    goto :goto_1a

    :cond_2b
    const/4 v2, 0x0

    .line 471
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_1a

    :cond_2c
    move-object/from16 v37, v3

    move/from16 v38, v4

    .line 475
    :cond_2d
    :goto_1a
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 484
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 486
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    move-object/from16 v40, v0

    move/from16 v39, v15

    const/4 v15, 0x0

    .line 487
    :goto_1b
    array-length v0, v4

    if-ge v15, v0, :cond_2f

    .line 488
    aget-object v0, v4, v15

    if-eqz v0, :cond_2e

    .line 489
    new-instance v0, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;

    move-object/from16 v41, v3

    aget-object v3, v4, v15

    invoke-direct {v0, v3, v15, v11}, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;-><init>(Lcom/itextpdf/layout/renderer/CellRenderer;II)V

    invoke-interface {v2, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_2e
    move-object/from16 v41, v3

    :goto_1c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v41

    goto :goto_1b

    :cond_2f
    move-object/from16 v41, v3

    .line 498
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v3

    add-int/2addr v3, v11

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 499
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    .line 500
    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v3

    add-int/2addr v3, v11

    const/4 v15, 0x1

    add-int/2addr v3, v15

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v0

    .line 501
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->getWidestBorder(Ljava/util/List;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v3

    if-nez v3, :cond_30

    const/4 v3, 0x0

    goto :goto_1d

    .line 502
    :cond_30
    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    .line 503
    :goto_1d
    iget-object v15, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    move/from16 v42, v3

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    move/from16 v46, v7

    move/from16 v3, v42

    const/4 v7, 0x0

    const/4 v15, 0x1

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    .line 506
    :goto_1e
    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v47

    move/from16 v48, v5

    if-lez v47, :cond_5c

    .line 507
    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v47

    move-object/from16 v5, v47

    check-cast v5, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;

    move-object/from16 v47, v2

    .line 508
    iget v2, v5, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->column:I

    move-object/from16 v49, v12

    .line 509
    iget-object v12, v5, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->cellRenderer:Lcom/itextpdf/layout/renderer/CellRenderer;

    move-object/from16 v50, v6

    const/16 v6, 0x10

    .line 510
    invoke-virtual {v12, v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v51, v4

    const/16 v4, 0x3c

    .line 511
    invoke-virtual {v12, v4}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v52, v14

    const/4 v14, 0x1

    if-eq v14, v4, :cond_31

    const/16 v44, 0x1

    .line 515
    :cond_31
    iget v14, v5, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->finishRowInd:I

    aput v14, v1, v2

    .line 517
    iget v14, v5, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->finishRowInd:I

    move-object/from16 v53, v1

    if-eq v11, v14, :cond_32

    const/4 v14, 0x1

    goto :goto_1f

    :cond_32
    const/4 v14, 0x0

    :goto_1f
    const/16 v1, 0x1b

    .line 518
    invoke-virtual {v12, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->hasOwnOrModelProperty(I)Z

    move-result v1

    if-eqz v1, :cond_33

    const/16 v42, 0x1

    :cond_33
    move-object/from16 v54, v7

    move-object/from16 v55, v8

    const/4 v1, 0x0

    move v7, v2

    :goto_20
    add-int v8, v2, v6

    if-ge v7, v8, :cond_34

    .line 523
    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    aget v8, v8, v7

    add-float/2addr v1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_34
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_21
    if-ge v7, v2, :cond_35

    move/from16 v56, v13

    .line 526
    iget-object v13, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    aget v13, v13, v7

    add-float/2addr v8, v13

    add-int/lit8 v7, v7, 0x1

    move/from16 v13, v56

    goto :goto_21

    :cond_35
    move/from16 v56, v13

    add-int/lit8 v7, v11, -0x1

    move v13, v7

    move/from16 v57, v11

    const/4 v7, 0x0

    .line 529
    :goto_22
    iget v11, v5, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->finishRowInd:I

    sub-int/2addr v11, v4

    if-le v13, v11, :cond_36

    if-ltz v13, :cond_36

    .line 530
    iget-object v11, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    add-float/2addr v7, v11

    add-int/lit8 v13, v13, -0x1

    goto :goto_22

    :cond_36
    if-eqz v14, :cond_38

    if-eqz v15, :cond_37

    goto :goto_23

    :cond_37
    const/4 v11, 0x0

    goto :goto_24

    .line 532
    :cond_38
    :goto_23
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v11

    :goto_24
    add-float/2addr v11, v7

    .line 533
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v13

    if-eqz v14, :cond_3a

    if-eqz v15, :cond_39

    goto :goto_25

    :cond_39
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v58

    goto :goto_26

    :cond_3a
    :goto_25
    const/16 v58, 0x0

    :goto_26
    add-float v13, v13, v58

    move/from16 v58, v15

    .line 534
    new-instance v15, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v59

    add-float v8, v59, v8

    invoke-direct {v15, v8, v13, v1, v11}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 535
    new-instance v8, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v11

    invoke-direct {v8, v11, v15}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    const/16 v11, 0x4b

    .line 536
    invoke-virtual {v12, v11}, Lcom/itextpdf/layout/renderer/CellRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/layout/properties/VerticalAlignment;

    const/4 v15, 0x0

    .line 537
    invoke-virtual {v12, v11, v15}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v15, 0x4d

    .line 538
    invoke-virtual {v12, v15}, Lcom/itextpdf/layout/renderer/CellRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v59

    move-object/from16 v11, v59

    check-cast v11, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz v11, :cond_3b

    .line 539
    invoke-virtual {v11}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result v59

    if-eqz v59, :cond_3b

    .line 540
    invoke-static {v1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    invoke-virtual {v12, v15, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 543
    :cond_3b
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget v15, v5, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->finishRowInd:I

    invoke-virtual {v1, v15, v2, v4, v6}, Lcom/itextpdf/layout/renderer/TableBorders;->getCellBorderIndents(IIII)[F

    move-result-object v1

    .line 545
    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v4, v4, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-nez v4, :cond_3d

    .line 576
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3c

    const/4 v6, 0x0

    goto :goto_27

    .line 578
    :cond_3c
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    .line 579
    :goto_27
    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v61

    const/4 v15, 0x0

    aget v62, v1, v15

    const/4 v15, 0x1

    aget v63, v1, v15

    add-float v64, v6, v3

    const/4 v6, 0x3

    aget v65, v1, v6

    const/16 v66, 0x0

    move-object/from16 v60, v4

    invoke-virtual/range {v60 .. v66}, Lcom/itextpdf/layout/renderer/TableBorders;->applyCellIndents(Lcom/itextpdf/kernel/geom/Rectangle;FFFFZ)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 583
    :cond_3d
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    const/16 v6, 0x6c

    .line 586
    invoke-virtual {v10, v6}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-eqz v15, :cond_3e

    .line 588
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v15, v10, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V

    .line 589
    invoke-static {v15, v12}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addTreeHints(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 592
    :cond_3e
    invoke-virtual {v12, v10}, Lcom/itextpdf/layout/renderer/CellRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v6

    move-object/from16 v60, v0

    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    if-nez v30, :cond_40

    if-eqz v56, :cond_3f

    goto :goto_28

    :cond_3f
    move-object/from16 v62, v1

    move/from16 v61, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_29

    :cond_40
    :goto_28
    move-object/from16 v62, v1

    move/from16 v61, v3

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_29
    move-object/from16 v77, v55

    move/from16 v55, v7

    move-object/from16 v7, v77

    invoke-direct {v0, v8, v1, v7, v3}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Ljava/util/List;Z)V

    invoke-interface {v6, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    if-eqz v11, :cond_41

    .line 593
    invoke-virtual {v11}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result v1

    if-eqz v1, :cond_41

    const/16 v1, 0x4d

    .line 594
    invoke-virtual {v12, v1, v11}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 595
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 596
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    invoke-interface {v3, v1, v11}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_41
    const/16 v1, 0x4b

    .line 599
    invoke-virtual {v12, v1, v13}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 601
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_42

    .line 602
    invoke-virtual {v12}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_2a

    :cond_42
    if-nez v54, :cond_43

    .line 604
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    goto :goto_2b

    :cond_43
    :goto_2a
    move-object/from16 v1, v54

    :goto_2b
    if-eqz v14, :cond_46

    .line 609
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_44

    .line 610
    aput-object v0, v52, v2

    .line 611
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_44

    .line 613
    aget-object v3, v52, v2

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/layout/properties/VerticalAlignment;->TOP:Lcom/itextpdf/layout/properties/VerticalAlignment;

    const/16 v6, 0x4b

    invoke-interface {v3, v6, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 616
    :cond_44
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_45

    .line 617
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object v3, v51, v2

    move-object/from16 v8, v47

    move/from16 v5, v48

    move-object/from16 v6, v50

    move-object/from16 v4, v51

    const/4 v11, 0x3

    move-object/from16 v50, v1

    goto/16 :goto_38

    .line 619
    :cond_45
    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    iget v4, v5, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->finishRowInd:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/itextpdf/layout/renderer/CellRenderer;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 620
    aput-object v12, v51, v2

    .line 621
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v5, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;->finishRowInd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v6, v50

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_37

    :cond_46
    move-object/from16 v6, v50

    .line 625
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5a

    if-nez v43, :cond_57

    .line 632
    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v3, :cond_53

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isSkipLastFooter()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_53

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v4, 0x1a

    .line 633
    invoke-virtual {v10, v4}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 635
    new-instance v3, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v4

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    .line 636
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    move/from16 v5, v48

    const/4 v8, 0x1

    invoke-direct {v10, v4, v5, v8, v8}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySingleSpacing(Lcom/itextpdf/kernel/geom/Rectangle;FZZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 638
    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v8}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v8

    add-int v8, v8, v57

    invoke-virtual {v4, v8}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestHorizontalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v4

    .line 639
    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v8, v8, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v8, :cond_47

    if-eqz v4, :cond_47

    .line 640
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    div-float v4, v4, v35

    invoke-virtual {v8, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 642
    :cond_47
    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v4, :cond_48

    .line 643
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v8}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxTopWidth()F

    move-result v8

    invoke-virtual {v4, v8}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 645
    :cond_48
    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    const/4 v11, 0x1

    invoke-virtual {v4, v8, v11}, Lcom/itextpdf/layout/renderer/TableBorders;->applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 646
    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    .line 647
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    sub-float v11, v4, v46

    invoke-virtual {v8, v11}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 649
    new-instance v8, Lcom/itextpdf/layout/element/Table$RowRange;

    iget-object v11, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v11}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v11

    add-int v11, v11, v57

    iget-object v14, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v14}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v14

    invoke-direct {v8, v11, v14}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-virtual {v10, v8}, Lcom/itextpdf/layout/renderer/TableRenderer;->createOverflowRenderer(Lcom/itextpdf/layout/element/Table$RowRange;)Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object v8

    .line 650
    iget-object v11, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v48, v7

    move/from16 v7, v57

    invoke-interface {v11, v7, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    iput-object v11, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    const/16 v11, 0x61

    move-object/from16 v50, v1

    const/4 v14, 0x1

    .line 651
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v8, v11, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v1, 0x60

    .line 652
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v1, v11}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    const/4 v11, 0x0

    .line 653
    invoke-static {v11}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    const/16 v14, 0x2e

    invoke-virtual {v8, v14, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 654
    invoke-static {v11}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    const/16 v14, 0x2b

    invoke-virtual {v8, v14, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v1, 0x2c

    .line 655
    invoke-static {v11}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v14

    invoke-virtual {v8, v1, v14}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v1, 0x2d

    .line 656
    invoke-static {v11}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v14

    invoke-virtual {v8, v1, v14}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 658
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v1, :cond_49

    .line 659
    sget-object v1, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    const/16 v14, 0xd

    invoke-virtual {v8, v14, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 661
    :cond_49
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iput-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 663
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v8}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/itextpdf/layout/renderer/TableBorders;->skipFooter([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 664
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v1, :cond_4a

    .line 665
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v8}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/itextpdf/layout/renderer/TableBorders;->skipHeader([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 667
    :cond_4a
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget v1, v1, Lcom/itextpdf/layout/renderer/TableBorders;->startRow:I

    .line 668
    iget-object v14, v8, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v14, v7}, Lcom/itextpdf/layout/renderer/TableBorders;->setStartRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 669
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v14

    invoke-direct {v10, v8, v14}, Lcom/itextpdf/layout/renderer/TableRenderer;->prepareFooterOrHeaderRendererForLayout(Lcom/itextpdf/layout/renderer/TableRenderer;F)Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 670
    new-instance v14, Lcom/itextpdf/layout/layout/LayoutContext;

    if-nez v30, :cond_4c

    if-eqz v56, :cond_4b

    goto :goto_2c

    :cond_4b
    const/4 v11, 0x0

    goto :goto_2d

    :cond_4c
    :goto_2c
    const/4 v11, 0x1

    :goto_2d
    invoke-direct {v14, v3, v11}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    invoke-virtual {v8, v14}, Lcom/itextpdf/layout/renderer/TableRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v3

    .line 671
    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v8, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->setStartRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 672
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v3, 0x1

    if-ne v3, v1, :cond_51

    if-eqz v15, :cond_4d

    .line 675
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    :cond_4d
    const/4 v0, 0x0

    .line 677
    iput-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 679
    invoke-virtual {v9, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    const/16 v0, 0xa

    .line 680
    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->deleteOwnProperty(I)V

    .line 682
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 683
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v1

    add-int/2addr v1, v7

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getWidestHorizontalBorder(I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    .line 684
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    if-nez v0, :cond_4e

    const/4 v3, 0x0

    goto :goto_2e

    .line 685
    :cond_4e
    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    move v3, v0

    .line 687
    :goto_2e
    invoke-interface/range {v47 .. v47}, Ljava/util/Deque;->clear()V

    .line 688
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->clear()V

    move-object/from16 v4, v51

    const/4 v0, 0x0

    .line 689
    :goto_2f
    array-length v1, v4

    if-ge v0, v1, :cond_50

    .line 690
    aget-object v1, v4, v0

    if-eqz v1, :cond_4f

    .line 691
    new-instance v1, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;

    aget-object v2, v4, v0

    invoke-direct {v1, v2, v0, v7}, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;-><init>(Lcom/itextpdf/layout/renderer/CellRenderer;II)V

    move-object/from16 v8, v47

    invoke-interface {v8, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_30

    :cond_4f
    move-object/from16 v8, v47

    :goto_30
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v47, v8

    goto :goto_2f

    :cond_50
    move v11, v7

    move-object/from16 v2, v47

    move-object/from16 v8, v48

    move-object/from16 v12, v49

    move-object/from16 v7, v50

    move-object/from16 v14, v52

    move-object/from16 v1, v53

    move/from16 v13, v56

    move/from16 v15, v58

    move-object/from16 v0, v60

    goto/16 :goto_1e

    :cond_51
    move-object/from16 v8, v47

    move-object/from16 v4, v51

    .line 696
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v1, :cond_52

    .line 697
    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v11, 0x0

    invoke-virtual {v3, v1, v11}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithHeader(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_31

    :cond_52
    const/4 v11, 0x0

    .line 699
    :goto_31
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v3, v3, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1, v3, v11}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 700
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    sget-object v3, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    const/4 v14, 0x2

    aput-object v3, v1, v14

    goto :goto_32

    :cond_53
    move-object/from16 v50, v1

    move-object/from16 v8, v47

    move/from16 v5, v48

    move-object/from16 v4, v51

    const/4 v11, 0x0

    move-object/from16 v48, v7

    move/from16 v7, v57

    :goto_32
    move v3, v11

    .line 707
    :goto_33
    array-length v1, v4

    if-ge v3, v1, :cond_58

    .line 708
    aget-object v1, v4, v3

    if-nez v1, :cond_55

    add-int/lit8 v1, v7, 0x1

    .line 710
    :goto_34
    iget-object v14, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v1, v14, :cond_55

    .line 711
    iget-object v14, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v14, v14, v3

    if-eqz v14, :cond_54

    .line 712
    iget-object v14, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v14, v14, v3

    const/16 v15, 0x3c

    .line 713
    invoke-virtual {v14, v15}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int v28, v7, v28

    const/16 v27, 0x1

    add-int/lit8 v11, v28, -0x1

    if-lt v11, v1, :cond_56

    .line 714
    new-instance v11, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;

    invoke-direct {v11, v14, v3, v1}, Lcom/itextpdf/layout/renderer/TableRenderer$CellRendererInfo;-><init>(Lcom/itextpdf/layout/renderer/CellRenderer;II)V

    invoke-interface {v8, v11}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_35

    :cond_54
    const/16 v15, 0x3c

    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x0

    goto :goto_34

    :cond_55
    const/16 v15, 0x3c

    :cond_56
    :goto_35
    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x0

    goto :goto_33

    :cond_57
    move-object/from16 v50, v1

    move-object/from16 v8, v47

    move/from16 v5, v48

    move-object/from16 v4, v51

    move-object/from16 v48, v7

    move/from16 v7, v57

    .line 723
    :cond_58
    aput-object v0, v52, v2

    .line 724
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v11, 0x3

    if-ne v1, v11, :cond_59

    .line 726
    aget-object v1, v52, v2

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    const/16 v2, 0x4b

    invoke-interface {v1, v2, v13}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    move-object/from16 v3, v41

    const/4 v15, 0x0

    goto :goto_36

    :cond_59
    move-object/from16 v3, v41

    move/from16 v15, v58

    :goto_36
    const/16 v43, 0x1

    goto :goto_39

    :cond_5a
    :goto_37
    move-object/from16 v50, v1

    move-object/from16 v8, v47

    move/from16 v5, v48

    move-object/from16 v4, v51

    const/4 v11, 0x3

    :goto_38
    move-object/from16 v48, v7

    move/from16 v7, v57

    move-object/from16 v3, v41

    move/from16 v15, v58

    .line 730
    :goto_39
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    if-eq v1, v11, :cond_5b

    .line 732
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    move-object/from16 v2, v62

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->getCellVerticalAddition([F)F

    move-result v1

    add-float/2addr v0, v1

    sub-float v0, v0, v55

    move/from16 v1, v45

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move/from16 v45, v0

    goto :goto_3a

    :cond_5b
    move/from16 v1, v45

    :goto_3a
    move-object/from16 v41, v3

    move v11, v7

    move-object v2, v8

    move-object/from16 v8, v48

    move-object/from16 v12, v49

    move-object/from16 v7, v50

    move-object/from16 v14, v52

    move-object/from16 v1, v53

    move/from16 v13, v56

    move-object/from16 v0, v60

    move/from16 v3, v61

    goto/16 :goto_1e

    :cond_5c
    move-object/from16 v53, v1

    move-object/from16 v54, v7

    move v7, v11

    move-object/from16 v49, v12

    move/from16 v56, v13

    move-object/from16 v52, v14

    move/from16 v58, v15

    move-object/from16 v3, v41

    move/from16 v1, v45

    move/from16 v5, v48

    const/4 v11, 0x3

    const/4 v14, 0x2

    if-eqz v58, :cond_5d

    .line 736
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v2, v40

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 739
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 740
    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_3b

    :cond_5d
    move-object/from16 v2, v40

    :goto_3b
    if-nez v43, :cond_5f

    .line 743
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v7, v0, :cond_5e

    goto :goto_3c

    :cond_5e
    move-object/from16 v27, v2

    move-object/from16 v69, v3

    move-object/from16 v71, v4

    move/from16 v72, v5

    move v12, v7

    move-object/from16 v76, v9

    move-object/from16 v11, v29

    move/from16 v67, v32

    move/from16 v74, v33

    move-object/from16 v68, v37

    move/from16 v70, v38

    move/from16 v33, v44

    move/from16 v73, v46

    move-object/from16 v28, v53

    move-object/from16 v75, v54

    const/4 v13, 0x1

    const/16 v15, 0x56

    const/16 v24, 0x2b

    const/16 v31, 0x2e

    move-object/from16 v32, v6

    goto/16 :goto_41

    .line 744
    :cond_5f
    :goto_3c
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getStartRow()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    if-nez v58, :cond_60

    .line 745
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getFinishRow()I

    move-result v0

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TableBorders;->getStartRow()I

    move-result v1

    if-eq v0, v1, :cond_60

    .line 746
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getFinishRow()I

    move-result v1

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableBorders;->setFinishRow(I)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_3d

    :cond_60
    const/4 v8, 0x1

    .line 749
    :goto_3d
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_64

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isSkipLastFooter()Z

    move-result v0

    if-eqz v0, :cond_64

    if-nez v43, :cond_64

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v12, 0x1a

    .line 750
    invoke-virtual {v10, v12}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const/16 v13, 0x6c

    .line 751
    invoke-virtual {v10, v13}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-eqz v0, :cond_61

    .line 754
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    :cond_61
    const/4 v15, 0x0

    .line 756
    iput-object v15, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 757
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    const/16 v1, 0xd

    if-eqz v0, :cond_62

    .line 758
    invoke-virtual {v10, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->deleteOwnProperty(I)V

    :cond_62
    move/from16 v16, v8

    goto :goto_3f

    :cond_63
    const/16 v1, 0xd

    goto :goto_3e

    :cond_64
    const/16 v1, 0xd

    const/16 v12, 0x1a

    :goto_3e
    const/16 v13, 0x6c

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_3f
    xor-int/lit8 v19, v43, 0x1

    move/from16 v0, v44

    if-nez v58, :cond_65

    if-eqz v0, :cond_65

    move-object/from16 v27, v2

    move/from16 v26, v8

    goto :goto_40

    :cond_65
    move-object/from16 v27, v2

    const/16 v26, 0x0

    :goto_40
    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v11, v29

    move-object/from16 v28, v53

    move/from16 v29, v1

    move-object/from16 v1, v52

    move v13, v2

    move-object v12, v15

    const/16 v15, 0x56

    const/16 v31, 0x2e

    move v2, v7

    move-object/from16 v69, v3

    move/from16 v67, v32

    move-object/from16 v68, v37

    move-object/from16 v3, v28

    move-object/from16 v71, v4

    move/from16 v70, v38

    move-object/from16 v4, v34

    move/from16 v72, v5

    move-object v5, v9

    move-object/from16 v32, v6

    move-object/from16 v6, v27

    move v12, v7

    move/from16 v74, v33

    move/from16 v73, v46

    move/from16 v33, v13

    move v13, v8

    move-object/from16 v8, v54

    move/from16 v7, v19

    move-object/from16 v75, v8

    const/16 v24, 0x2b

    move/from16 v8, v26

    move-object/from16 v76, v9

    move/from16 v9, v16

    .line 763
    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->correctLayoutedCellsOccupiedAreas([Lcom/itextpdf/layout/layout/LayoutResult;I[ILjava/lang/Float;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;ZZZ)V

    :goto_41
    if-nez v43, :cond_66

    .line 766
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    if-ne v12, v0, :cond_6e

    :cond_66
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_6e

    if-nez v58, :cond_67

    .line 768
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_67

    .line 769
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    move-object/from16 v8, v76

    invoke-virtual {v0, v1, v8, v13}, Lcom/itextpdf/layout/renderer/TableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    move v9, v14

    move v5, v15

    move/from16 v7, v39

    move-object/from16 v2, v52

    move/from16 v6, v58

    goto :goto_42

    :cond_67
    move-object/from16 v8, v76

    .line 771
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    move v9, v14

    move-object/from16 v2, v52

    move-object v14, v0

    move v5, v15

    move/from16 v7, v39

    move/from16 v6, v58

    move-object v15, v1

    move-object/from16 v16, v8

    invoke-virtual/range {v14 .. v19}, Lcom/itextpdf/layout/renderer/TableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 773
    :goto_42
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-nez v0, :cond_6f

    .line 774
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {v8, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 776
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0, v8, v13}, Lcom/itextpdf/layout/renderer/TableBorders;->applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 777
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-direct {v10, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->prepareFooterOrHeaderRendererForLayout(Lcom/itextpdf/layout/renderer/TableRenderer;F)Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 783
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v1, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v1, :cond_68

    .line 784
    check-cast v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setBottomBorderCollapseWith(Ljava/util/List;Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    .line 786
    :cond_68
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    if-nez v6, :cond_6a

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_69

    goto :goto_43

    :cond_69
    const/4 v4, 0x0

    goto :goto_44

    :cond_6a
    :goto_43
    move v4, v13

    :goto_44
    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 788
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz v0, :cond_6b

    .line 789
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-static {v1, v3}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedBorder(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 791
    :cond_6b
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v3, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v4

    invoke-direct {v3, v4, v8}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    if-nez v30, :cond_6d

    if-eqz v56, :cond_6c

    goto :goto_45

    :cond_6c
    const/4 v4, 0x0

    goto :goto_46

    :cond_6d
    :goto_45
    move v4, v13

    :goto_46
    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    .line 792
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v15, 0x0

    invoke-virtual {v0, v8, v15}, Lcom/itextpdf/layout/renderer/TableBorders;->applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 793
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 794
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    sub-float/2addr v3, v0

    neg-float v0, v3

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->move(FF)V

    .line 795
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    invoke-virtual {v8, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v1

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_47

    :cond_6e
    move v9, v14

    move v5, v15

    move/from16 v7, v39

    move-object/from16 v2, v52

    move/from16 v6, v58

    move-object/from16 v8, v76

    :cond_6f
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_47
    if-nez v43, :cond_70

    .line 799
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    move-object/from16 v4, v69

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 800
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_48

    :cond_70
    move-object/from16 v4, v69

    :goto_48
    if-eqz v43, :cond_71

    .line 802
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_71

    const/16 v0, 0x6c

    .line 803
    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-eqz v0, :cond_71

    .line 805
    iget-object v1, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    :cond_71
    if-eqz v43, :cond_a8

    move/from16 v3, v67

    if-eqz v3, :cond_72

    .line 810
    invoke-virtual {v11, v8}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_72
    move/from16 v0, v33

    .line 812
    invoke-virtual {v10, v12, v6, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->split(IZZ)[Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object v11

    .line 813
    new-instance v1, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;

    aget-object v5, v11, v13

    invoke-direct {v1, v5}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;-><init>(Lcom/itextpdf/layout/renderer/TableRenderer;)V

    .line 815
    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v5, :cond_73

    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v9, :cond_77

    :cond_73
    if-nez v5, :cond_74

    .line 816
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_75

    .line 817
    :cond_74
    aget-object v5, v11, v13

    const/16 v9, 0xd

    invoke-virtual {v5, v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->deleteOwnProperty(I)V

    .line 819
    :cond_75
    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v5, :cond_76

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_77

    .line 820
    :cond_76
    aget-object v5, v11, v13

    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->deleteOwnProperty(I)V

    :cond_77
    if-eqz v43, :cond_87

    move-object/from16 v9, v71

    .line 824
    array-length v5, v9

    new-array v14, v5, [I

    .line 825
    array-length v15, v9

    new-array v15, v15, [Z

    move/from16 v67, v3

    const/4 v13, 0x0

    .line 826
    :goto_49
    array-length v3, v9

    if-ge v13, v3, :cond_82

    .line 827
    aget-object v3, v2, v13

    if-eqz v3, :cond_7d

    .line 828
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/CellRenderer;

    if-eqz v3, :cond_78

    .line 830
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v18

    check-cast v18, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v18

    aput v18, v14, v13

    .line 832
    :cond_78
    aget-object v18, v2, v13

    move-object/from16 v69, v4

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    move-object/from16 v76, v8

    const/4 v8, 0x3

    if-eq v4, v8, :cond_7a

    if-nez v6, :cond_79

    if-eqz v0, :cond_7a

    .line 833
    :cond_79
    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    :cond_7a
    aget-object v3, v9, v13

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    if-nez v6, :cond_7c

    if-nez v0, :cond_7c

    .line 836
    aget-object v4, v2, v13

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    if-ne v4, v8, :cond_7b

    goto :goto_4a

    .line 844
    :cond_7b
    aget v4, v28, v13

    sub-int/2addr v4, v12

    aget-object v8, v9, v13

    move/from16 v33, v0

    const/16 v18, 0x1

    aget-object v0, v11, v18

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {v1, v4, v13, v0}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    move-object/from16 v52, v2

    goto :goto_4b

    :cond_7c
    :goto_4a
    move/from16 v33, v0

    .line 837
    aget-object v0, v2, v13

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 838
    aget-object v4, v9, v13

    const/4 v8, 0x0

    .line 839
    aput-object v8, v9, v13

    .line 840
    iget-object v8, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    move-object/from16 v52, v2

    aget v2, v28, v13

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object v4, v2, v13

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 841
    invoke-virtual {v1, v4, v13, v2}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 842
    aget v2, v28, v13

    sub-int/2addr v2, v12

    const/4 v4, 0x1

    aget-object v8, v11, v4

    invoke-virtual {v0, v8}, Lcom/itextpdf/layout/renderer/CellRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {v1, v2, v13, v0}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 846
    :goto_4b
    aget v0, v28, v13

    sub-int/2addr v0, v12

    invoke-virtual {v1, v0, v13}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->getCell(II)Lcom/itextpdf/layout/renderer/CellRenderer;

    move-result-object v0

    iput-object v3, v0, Lcom/itextpdf/layout/renderer/CellRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    goto :goto_4d

    :cond_7d
    move/from16 v33, v0

    move-object/from16 v52, v2

    move-object/from16 v69, v4

    move-object/from16 v76, v8

    .line 847
    aget-object v0, v9, v13

    if-eqz v0, :cond_81

    if-eqz v6, :cond_7e

    .line 849
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v0

    aput v0, v14, v13

    .line 851
    :cond_7e
    aget-object v0, v9, v13

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_7f

    move v4, v2

    goto :goto_4c

    :cond_7f
    const/4 v4, 0x0

    :goto_4c
    if-nez v6, :cond_80

    if-eqz v4, :cond_81

    .line 853
    :cond_80
    aput-boolean v2, v15, v13

    :cond_81
    :goto_4d
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v33

    move-object/from16 v2, v52

    move-object/from16 v4, v69

    move-object/from16 v8, v76

    goto/16 :goto_49

    :cond_82
    move-object/from16 v69, v4

    move-object/from16 v76, v8

    const v0, 0x7fffffff

    move v8, v0

    const/4 v3, 0x0

    :goto_4e
    if-ge v3, v5, :cond_84

    .line 860
    aget v0, v14, v3

    if-eqz v0, :cond_83

    .line 861
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v8, v0

    :cond_83
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_84
    const/4 v13, 0x0

    :goto_4f
    if-ge v13, v7, :cond_86

    .line 866
    aget-boolean v0, v15, v13

    if-eqz v0, :cond_85

    move-object/from16 v0, p0

    move-object v14, v1

    move v1, v13

    move v2, v12

    move/from16 v5, v67

    move v3, v8

    move-object/from16 v18, v69

    move-object v4, v9

    move/from16 v19, v8

    move-object/from16 v71, v9

    const/16 v9, 0x56

    move v8, v5

    move-object v5, v14

    move/from16 v58, v6

    move-object/from16 v6, v28

    move/from16 v17, v7

    move-object v7, v11

    .line 867
    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->enlargeCell(III[Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;[I[Lcom/itextpdf/layout/renderer/TableRenderer;)V

    goto :goto_50

    :cond_85
    move-object v14, v1

    move/from16 v58, v6

    move/from16 v17, v7

    move/from16 v19, v8

    move-object/from16 v71, v9

    move/from16 v8, v67

    move-object/from16 v18, v69

    const/16 v9, 0x56

    :goto_50
    add-int/lit8 v13, v13, 0x1

    move/from16 v67, v8

    move-object v1, v14

    move/from16 v7, v17

    move-object/from16 v69, v18

    move/from16 v8, v19

    move/from16 v6, v58

    move-object/from16 v9, v71

    goto :goto_4f

    :cond_86
    move-object v14, v1

    move/from16 v58, v6

    move/from16 v8, v67

    move-object/from16 v18, v69

    const/16 v9, 0x56

    move/from16 v3, v70

    move/from16 v2, v72

    move-object/from16 v1, v76

    const/4 v0, 0x1

    goto :goto_51

    :cond_87
    move-object v14, v1

    move-object/from16 v18, v4

    move/from16 v58, v6

    move-object/from16 v76, v8

    const/16 v9, 0x56

    move v8, v3

    move v0, v13

    move/from16 v3, v70

    move/from16 v2, v72

    move-object/from16 v1, v76

    .line 872
    :goto_51
    invoke-direct {v10, v1, v2, v3, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySpacing(Lcom/itextpdf/kernel/geom/Rectangle;FFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 873
    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-direct {v10, v4, v2, v0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySingleSpacing(Lcom/itextpdf/kernel/geom/Rectangle;FZZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 874
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_88

    .line 875
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 877
    :cond_88
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_89

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 878
    :cond_89
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_8a
    if-nez v12, :cond_8b

    if-nez v58, :cond_8b

    .line 880
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_8b

    .line 881
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move/from16 v4, v73

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v4, 0x0

    goto :goto_52

    .line 883
    :cond_8b
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {v10, v0, v3, v4, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySingleSpacing(Lcom/itextpdf/kernel/geom/Rectangle;FZZ)Lcom/itextpdf/kernel/geom/Rectangle;

    :goto_52
    if-nez v22, :cond_8c

    .line 886
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_8c

    aget-object v0, v11, v4

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8c

    .line 887
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 890
    :cond_8c
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_90

    .line 897
    aget-object v0, v11, v4

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_8d

    goto :goto_54

    .line 900
    :cond_8d
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v1, v5}, Lcom/itextpdf/layout/renderer/TableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    if-nez v22, :cond_90

    if-nez v23, :cond_90

    .line 903
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8e

    const/16 v17, 0x1

    goto :goto_53

    :cond_8e
    move/from16 v17, v4

    :goto_53
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v2, v14

    const/4 v5, 0x0

    move-object v14, v0

    move v6, v4

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v19}, Lcom/itextpdf/layout/renderer/TableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_55

    :cond_8f
    :goto_54
    move v6, v4

    move-object v2, v14

    const/4 v5, 0x0

    .line 898
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v6}, Lcom/itextpdf/layout/renderer/TableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_55

    :cond_90
    move v6, v4

    move-object v2, v14

    const/4 v5, 0x0

    .line 907
    :goto_55
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v4, 0x57

    .line 908
    invoke-virtual {v10, v4}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    :cond_91
    const/4 v0, 0x1

    .line 909
    aget-object v4, v11, v0

    iget-object v0, v4, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {v10, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->extendLastRow([Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 911
    :cond_92
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_93

    move v7, v3

    goto :goto_56

    :cond_93
    move v7, v5

    :goto_56
    invoke-direct {v10, v1, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->adjustFooterAndFixOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 912
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_94

    move v7, v3

    goto :goto_57

    :cond_94
    move v7, v5

    :goto_57
    invoke-direct {v10, v1, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->adjustCaptionAndFixOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 915
    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_95
    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v4, 0x1

    .line 917
    aget-object v7, v11, v4

    iget-object v4, v7, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v9, v11, v6

    iget-object v9, v9, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v4, v4, v7

    if-nez v4, :cond_95

    .line 918
    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v4, v4, v7

    const/4 v7, 0x1

    .line 919
    aget-object v9, v11, v7

    iget-object v7, v9, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    aget-object v9, v11, v6

    iget-object v9, v9, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int v9, v12, v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v7, v7, v9

    .line 920
    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput-object v4, v9, v13

    .line 921
    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v13, 0x0

    aput-object v13, v4, v9

    .line 922
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v9, v11, v6

    iget-object v9, v9, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v4, v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v4, v9, v7}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 923
    aget-object v4, v11, v6

    iget-object v4, v4, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v4, v12, v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v3, v7}, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;

    goto/16 :goto_58

    :cond_96
    move-object/from16 v3, v75

    .line 927
    invoke-virtual {v10, v3}, Lcom/itextpdf/layout/renderer/TableRenderer;->isKeepTogether(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 928
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_98

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v7, 0x1a

    .line 929
    invoke-virtual {v10, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 930
    new-instance v6, Lcom/itextpdf/layout/layout/LayoutResult;

    if-nez v3, :cond_97

    move-object v5, v10

    goto :goto_59

    :cond_97
    move-object v5, v3

    :goto_59
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v6

    :cond_98
    const/16 v7, 0x1a

    .line 934
    :cond_99
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v2, :cond_9a

    move v2, v5

    goto :goto_5a

    .line 935
    :cond_9a
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    :goto_5a
    sub-float/2addr v0, v2

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v2, :cond_9b

    move v2, v5

    goto :goto_5b

    .line 936
    :cond_9b
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v4, v4, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxBottomWidth()F

    move-result v4

    sub-float/2addr v2, v4

    :goto_5b
    sub-float/2addr v0, v2

    cmpl-float v0, v0, v5

    if-nez v0, :cond_9d

    if-nez v22, :cond_9c

    if-eqz v23, :cond_9d

    :cond_9c
    const/4 v0, 0x3

    const/4 v13, 0x3

    goto :goto_5c

    :cond_9d
    const/4 v0, 0x3

    const/4 v13, 0x2

    :goto_5c
    if-ne v13, v0, :cond_9e

    .line 941
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    :cond_9e
    if-eqz v30, :cond_a5

    :cond_9f
    if-eqz v30, :cond_a4

    .line 944
    invoke-static/range {v36 .. v36}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 945
    const-string v2, "Element content was clipped because some height properties are set."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne v13, v0, :cond_a2

    .line 948
    iget-object v14, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a0

    const/16 v17, 0x1

    goto :goto_5d

    :cond_a0
    move/from16 v17, v6

    :goto_5d
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v19}, Lcom/itextpdf/layout/renderer/TableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 949
    iget-object v14, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a1

    const/16 v17, 0x1

    goto :goto_5e

    :cond_a1
    move/from16 v17, v6

    :goto_5e
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v19}, Lcom/itextpdf/layout/renderer/TableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    :cond_a2
    if-eqz v34, :cond_a4

    .line 952
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_a4

    .line 953
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 954
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a3

    .line 955
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    div-float v4, v4, v35

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 957
    :cond_a3
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 959
    :goto_5f
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    iget-object v3, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 960
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v3

    sub-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 961
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 964
    :cond_a4
    invoke-direct {v10, v6, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyFixedXOrYPosition(ZLcom/itextpdf/kernel/geom/Rectangle;)V

    .line 965
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v10, v0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 966
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v10, v0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 968
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v15, v68

    move/from16 v14, v74

    invoke-static {v10, v15, v0, v14, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    .line 969
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutResult;

    aget-object v3, v11, v6

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v1

    :cond_a5
    move-object/from16 v15, v68

    move/from16 v14, v74

    const/4 v2, 0x1

    .line 971
    aget-object v0, v11, v6

    aget-object v4, v11, v2

    invoke-virtual {v10, v6, v0, v4}, Lcom/itextpdf/layout/renderer/TableRenderer;->updateHeightsOnSplit(ZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    .line 972
    invoke-direct {v10, v6, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyFixedXOrYPosition(ZLcom/itextpdf/kernel/geom/Rectangle;)V

    .line 973
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v10, v0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 974
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v10, v0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v0, 0x3

    if-eq v13, v0, :cond_a6

    .line 978
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-static {v10, v15, v0, v14, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    move-object v14, v0

    goto :goto_60

    :cond_a6
    const/4 v14, 0x0

    .line 980
    :goto_60
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutResult;

    aget-object v15, v11, v6

    aget-object v16, v11, v2

    if-nez v3, :cond_a7

    move-object/from16 v17, v10

    goto :goto_61

    :cond_a7
    move-object/from16 v17, v3

    :goto_61
    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v0

    :cond_a8
    move-object/from16 v52, v2

    move/from16 v17, v7

    move-object v1, v8

    move v5, v14

    move v6, v15

    move/from16 v8, v67

    move-object/from16 v15, v68

    move/from16 v3, v70

    move/from16 v2, v72

    move/from16 v4, v73

    move/from16 v14, v74

    const/16 v7, 0x1a

    const/16 v13, 0xa

    const/16 v16, 0xd

    add-int/lit8 v0, v12, 0x1

    move-object v9, v1

    move v5, v2

    move v7, v4

    move-object/from16 v29, v11

    move/from16 v33, v14

    move-object/from16 v1, v28

    move/from16 v2, v31

    move-object/from16 v6, v32

    move-object/from16 v12, v49

    move-object/from16 v14, v52

    move/from16 v13, v56

    move v11, v0

    move v4, v3

    move/from16 v32, v8

    move-object v3, v15

    move/from16 v15, v17

    move-object/from16 v0, v27

    goto/16 :goto_19

    :cond_a9
    move-object v15, v3

    move v3, v4

    move v2, v5

    move v4, v7

    move-object v1, v9

    move-object/from16 v49, v12

    move/from16 v56, v13

    move-object/from16 v11, v29

    move/from16 v8, v32

    move/from16 v14, v33

    const/16 v0, 0x6c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x56

    .line 986
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_ac

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_ac

    .line 987
    iget-object v7, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 988
    array-length v12, v7

    sub-int/2addr v12, v13

    :goto_62
    if-ltz v12, :cond_aa

    .line 989
    aget-object v13, v7, v12

    if-nez v13, :cond_aa

    add-int/lit8 v12, v12, -0x1

    goto :goto_62

    :cond_aa
    if-ltz v12, :cond_ab

    .line 992
    array-length v13, v7

    aget-object v7, v7, v12

    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v12, v0

    if-eq v13, v12, :cond_ac

    .line 993
    :cond_ab
    invoke-static/range {v36 .. v36}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 994
    const-string v7, "Last row is not completed. Table bottom border may collapse as you do not expect it"

    invoke-interface {v0, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 999
    :cond_ac
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-nez v0, :cond_b3

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_ad

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b3

    :cond_ad
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_b3

    .line 1000
    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v7, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v7, v7, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1002
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Lcom/itextpdf/layout/renderer/TableBorders;->applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1003
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    invoke-direct {v10, v0, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->prepareFooterOrHeaderRendererForLayout(Lcom/itextpdf/layout/renderer/TableRenderer;F)Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1004
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_af

    if-nez v22, :cond_ae

    goto :goto_63

    .line 1006
    :cond_ae
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_b0

    .line 1007
    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v7, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v7, v7, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 v12, 0x1

    invoke-virtual {v0, v7, v12}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_64

    :cond_af
    :goto_63
    const/4 v12, 0x1

    .line 1005
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v7, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v7, v7, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0, v7, v12}, Lcom/itextpdf/layout/renderer/TableBorders;->collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1010
    :cond_b0
    :goto_64
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    new-instance v7, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v12, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v13

    invoke-direct {v12, v13, v1}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    if-nez v30, :cond_b2

    if-eqz v56, :cond_b1

    goto :goto_65

    :cond_b1
    move v13, v6

    goto :goto_66

    :cond_b2
    :goto_65
    const/4 v13, 0x1

    :goto_66
    invoke-direct {v7, v12, v13}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    invoke-virtual {v0, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    .line 1011
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0, v1, v6}, Lcom/itextpdf/layout/renderer/TableBorders;->applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1013
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 1014
    iget-object v7, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v12

    sub-float/2addr v12, v0

    neg-float v12, v12

    invoke-virtual {v7, v5, v12}, Lcom/itextpdf/layout/renderer/TableRenderer;->move(FF)V

    .line 1015
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_b3
    const/4 v0, 0x1

    .line 1018
    invoke-direct {v10, v1, v2, v3, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySpacing(Lcom/itextpdf/kernel/geom/Rectangle;FFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1019
    iget-object v7, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-direct {v10, v7, v2, v0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySingleSpacing(Lcom/itextpdf/kernel/geom/Rectangle;FZZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1020
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_b4

    .line 1021
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1023
    :cond_b4
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_b5

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 1024
    :cond_b5
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1026
    :cond_b6
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_b7

    .line 1027
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_67

    :cond_b7
    if-nez v22, :cond_b8

    .line 1028
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_b9

    .line 1029
    :cond_b8
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v10, v0, v3, v6, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applySingleSpacing(Lcom/itextpdf/kernel/geom/Rectangle;FZZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1032
    :cond_b9
    :goto_67
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxBottomWidth()F

    move-result v0

    .line 1034
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 1035
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_be

    .line 1036
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_ba

    .line 1037
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6}, Lcom/itextpdf/layout/renderer/TableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    move v4, v14

    move-object v7, v15

    goto/16 :goto_6b

    .line 1039
    :cond_ba
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_bc

    .line 1040
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    iget-object v4, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_bb

    const/16 v17, 0x1

    goto :goto_68

    :cond_bb
    move/from16 v17, v6

    :goto_68
    const/16 v18, 0x1

    const/16 v19, 0x0

    move v4, v14

    move-object v14, v0

    move-object v7, v15

    move-object v15, v2

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v19}, Lcom/itextpdf/layout/renderer/TableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    goto/16 :goto_6b

    :cond_bc
    move v4, v14

    move-object v7, v15

    .line 1042
    iget-object v14, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_bd

    const/16 v17, 0x1

    goto :goto_69

    :cond_bd
    move/from16 v17, v6

    :goto_69
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v19}, Lcom/itextpdf/layout/renderer/TableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_6b

    :cond_be
    move v4, v14

    move-object v7, v15

    .line 1046
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c2

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_c2

    .line 1047
    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxBottomWidth()F

    move-result v0

    .line 1048
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v14, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v17, 0x1

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v19}, Lcom/itextpdf/layout/renderer/TableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1049
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_6b

    :cond_bf
    move v4, v14

    move-object v7, v15

    .line 1053
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v2, :cond_c1

    .line 1054
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_c2

    .line 1055
    iget-object v14, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c0

    const/16 v17, 0x1

    goto :goto_6a

    :cond_c0
    move/from16 v17, v6

    :goto_6a
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v19}, Lcom/itextpdf/layout/renderer/TableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;

    goto :goto_6b

    .line 1059
    :cond_c1
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1064
    :cond_c2
    :goto_6b
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_c3

    .line 1065
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v9}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 1066
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {v10, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->extendLastRow([Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto/16 :goto_6d

    :cond_c3
    if-eqz v34, :cond_c5

    .line 1069
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_c5

    .line 1070
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v9

    sub-float/2addr v2, v9

    sub-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1071
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_c4

    .line 1072
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    iget-object v13, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget-object v13, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v13

    add-float/2addr v12, v13

    sub-float/2addr v12, v0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v2, v9, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 1074
    :cond_c4
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v9

    sub-float/2addr v9, v0

    iget-object v12, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v12

    div-float v12, v12, v35

    add-float/2addr v9, v12

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    :goto_6c
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    iget-object v9, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 1078
    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v9

    sub-float/2addr v9, v0

    invoke-virtual {v2, v9}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 1079
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1083
    :cond_c5
    :goto_6d
    invoke-direct {v10, v6, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyFixedXOrYPosition(ZLcom/itextpdf/kernel/geom/Rectangle;)V

    if-eqz v8, :cond_c6

    .line 1086
    invoke-virtual {v11, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 1089
    :cond_c6
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v10, v0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1090
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v10, v0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1093
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v0

    if-nez v0, :cond_c8

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_c8

    const/16 v0, 0x6c

    .line 1094
    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-eqz v0, :cond_c7

    .line 1097
    iget-object v2, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    :cond_c7
    const/4 v0, 0x0

    .line 1099
    iput-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1100
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iget-object v2, v0, Lcom/itextpdf/layout/renderer/TableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/TableBorders;->skipFooter([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1102
    :cond_c8
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_ca

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c9

    goto :goto_6e

    :cond_c9
    move v0, v5

    goto :goto_6f

    :cond_ca
    :goto_6e
    move v0, v3

    :goto_6f
    invoke-direct {v10, v1, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->adjustFooterAndFixOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 1103
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_cb

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cc

    :cond_cb
    move v5, v3

    :cond_cc
    invoke-direct {v10, v1, v5}, Lcom/itextpdf/layout/renderer/TableRenderer;->adjustCaptionAndFixOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 1105
    invoke-static {v7, v10}, Lcom/itextpdf/layout/renderer/FloatingHelper;->removeFloatsAboveRendererBottom(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;)V

    if-nez v22, :cond_ce

    if-nez v23, :cond_ce

    .line 1107
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_cd

    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_ce

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 1108
    :cond_cd
    iget-object v0, v10, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1111
    :cond_ce
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-static {v10, v7, v0, v4, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v13

    .line 1113
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v0
.end method

.method public move(FF)V
    .locals 1

    .line 1258
    invoke-super {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->move(FF)V

    .line 1259
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    .line 1260
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/layout/renderer/TableRenderer;->move(FF)V

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_1

    .line 1263
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/layout/renderer/TableRenderer;->move(FF)V

    :cond_1
    return-void
.end method

.method protected retrieveWidth(F)Ljava/lang/Float;
    .locals 6

    .line 1328
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v0

    .line 1329
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Table;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_3

    :cond_0
    const/4 v0, 0x0

    move v3, v2

    .line 1332
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1333
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Table;->getColumnWidth(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v4

    .line 1334
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1335
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    add-float/2addr v3, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1338
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    cmpl-float v1, v3, v2

    if-lez v1, :cond_3

    mul-float/2addr p1, v3

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 1340
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method protected split(I)[Lcom/itextpdf/layout/renderer/TableRenderer;
    .locals 1

    const/4 v0, 0x0

    .line 1268
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->split(IZ)[Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object p1

    return-object p1
.end method

.method protected split(IZ)[Lcom/itextpdf/layout/renderer/TableRenderer;
    .locals 1

    const/4 v0, 0x0

    .line 1272
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->split(IZZ)[Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object p1

    return-object p1
.end method

.method protected split(IZZ)[Lcom/itextpdf/layout/renderer/TableRenderer;
    .locals 4

    .line 1277
    new-instance v0, Lcom/itextpdf/layout/element/Table$RowRange;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->createSplitRenderer(Lcom/itextpdf/layout/element/Table$RowRange;)Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object v0

    .line 1278
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 1280
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1282
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->heights:Ljava/util/List;

    .line 1283
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->columnWidths:[F

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->columnWidths:[F

    .line 1284
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->countedColumnWidth:[F

    .line 1285
    iget v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->totalWidthForColumns:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->totalWidthForColumns:F

    .line 1286
    new-instance v1, Lcom/itextpdf/layout/element/Table$RowRange;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->createOverflowRenderer(Lcom/itextpdf/layout/element/Table$RowRange;)Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object v1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1287
    iget-object p2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rowRange:Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {p2}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result p2

    if-nez p2, :cond_0

    .line 1288
    iget-boolean p2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    iput-boolean p2, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->isOriginalNonSplitRenderer:Z

    .line 1290
    :cond_0
    iget-object p2, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p2, p1, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 1291
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    iput-object p1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 1293
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    iput-object p1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    .line 1295
    filled-new-array {v0, v1}, [Lcom/itextpdf/layout/renderer/TableRenderer;

    move-result-object p1

    return-object p1
.end method
