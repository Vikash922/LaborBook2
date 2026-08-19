.class final Lcom/itextpdf/layout/renderer/TableWidths;
.super Ljava/lang/Object;
.source "TableWidths.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;,
        Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ZeroWidth:Lcom/itextpdf/layout/properties/UnitValue;


# instance fields
.field private cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fixedTableLayout:Z

.field private fixedTableWidth:Z

.field private final horizontalBorderSpacing:F

.field private layoutMinWidth:F

.field private final leftBorderMaxWidth:F

.field private final numberOfColumns:I

.field private final rightBorderMaxWidth:F

.field private tableMaxWidth:F

.field private tableMinWidth:F

.field private final tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

.field private tableWidth:F

.field private final widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 838
    invoke-static {v0}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/renderer/TableWidths;->ZeroWidth:Lcom/itextpdf/layout/properties/UnitValue;

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/layout/renderer/TableRenderer;FZFF)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableLayout:Z

    .line 82
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 83
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getNumberOfColumns()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    .line 84
    new-array v0, v0, [Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    .line 85
    iput p4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->rightBorderMaxWidth:F

    .line 86
    iput p5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->leftBorderMaxWidth:F

    .line 87
    iget-object p4, p1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of p4, p4, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    const/16 p4, 0x73

    .line 88
    invoke-virtual {p1, p4}, Lcom/itextpdf/layout/renderer/TableRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p5

    :goto_0
    iput p5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->horizontalBorderSpacing:F

    goto :goto_1

    .line 91
    :cond_1
    iput p5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->horizontalBorderSpacing:F

    .line 93
    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/itextpdf/layout/renderer/TableWidths;->calculateTableWidth(FZ)V

    return-void
.end method

.method private calculateMinMaxWidths()V
    .locals 10

    .line 654
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    new-array v1, v0, [F

    .line 655
    new-array v0, v0, [F

    .line 657
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->cells:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;

    .line 658
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->setParent(Lcom/itextpdf/layout/renderer/TableRenderer;)V

    .line 659
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCell()Lcom/itextpdf/layout/renderer/CellRenderer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/CellRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v4

    .line 660
    sget-object v5, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v7, 0x72

    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 661
    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getAdditionalWidth()F

    move-result v5

    iget v7, p0, Lcom/itextpdf/layout/renderer/TableWidths;->horizontalBorderSpacing:F

    sub-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setAdditionalWidth(F)V

    goto :goto_1

    .line 663
    :cond_1
    invoke-direct {p0, v3}, Lcom/itextpdf/layout/renderer/TableWidths;->getCellBorderIndents(Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;)[F

    move-result-object v5

    .line 664
    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getAdditionalWidth()F

    move-result v7

    aget v8, v5, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x3

    aget v5, v5, v8

    div-float/2addr v5, v9

    add-float/2addr v7, v5

    invoke-virtual {v4, v7}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setAdditionalWidth(F)V

    .line 667
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 668
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v5

    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v6

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v7

    aget v7, v1, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v1, v5

    .line 669
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v5

    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v4

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v3

    aget v3, v0, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v0, v5

    goto :goto_0

    .line 671
    :cond_2
    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v5

    .line 672
    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v4

    .line 673
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v6

    :goto_2
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v7

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_3

    .line 674
    aget v7, v1, v6

    sub-float/2addr v5, v7

    .line 675
    aget v7, v0, v6

    sub-float/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-lez v7, :cond_4

    .line 678
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v7

    :goto_3
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v8

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v9

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_4

    .line 679
    aget v8, v1, v7

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v5, v9

    add-float/2addr v8, v9

    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    cmpl-float v5, v4, v6

    if-lez v5, :cond_0

    .line 683
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v5

    :goto_4
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v6

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    .line 684
    aget v6, v0, v5

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v4, v7

    add-float/2addr v6, v7

    aput v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 690
    :goto_5
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 691
    new-instance v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget v5, v1, v2

    aget v6, v0, v2

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;-><init>(FF)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method private calculateTableWidth(FZ)V
    .locals 5

    .line 585
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v1, 0x5d

    const-string v2, "auto"

    .line 586
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 585
    const-string v1, "fixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableLayout:Z

    .line 587
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    .line 588
    iget-boolean v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableLayout:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    .line 589
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/layout/element/Table;->getLastRowBottomBorder()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/layout/element/Table;->getWidth()Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    goto :goto_0

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/layout/element/Table;->getWidth()Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/layout/element/Table;->getWidth()Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 592
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object p2

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v2, p1, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/layout/element/Table;->setWidth(F)Lcom/itextpdf/layout/element/IElement;

    .line 594
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableWidth:Z

    .line 595
    invoke-direct {p0, v0, p1}, Lcom/itextpdf/layout/renderer/TableWidths;->retrieveTableWidth(Lcom/itextpdf/layout/properties/UnitValue;F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    .line 596
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    :goto_1
    iput v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->layoutMinWidth:F

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 598
    iput-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableLayout:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 600
    iput v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->layoutMinWidth:F

    if-eqz p2, :cond_4

    .line 602
    iput-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableWidth:Z

    .line 603
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/TableWidths;->retrieveTableWidth(F)F

    move-result p2

    iput p2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 604
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p2

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_5

    .line 605
    iput-boolean v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableWidth:Z

    .line 606
    invoke-direct {p0, v0, p1}, Lcom/itextpdf/layout/renderer/TableWidths;->retrieveTableWidth(Lcom/itextpdf/layout/properties/UnitValue;F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    goto :goto_2

    .line 608
    :cond_5
    iput-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableWidth:Z

    .line 609
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/TableWidths;->retrieveTableWidth(F)F

    move-result p2

    iput p2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    .line 612
    :goto_2
    iget-object p2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/properties/UnitValue;

    invoke-direct {p0, p2, p1}, Lcom/itextpdf/layout/renderer/TableWidths;->retrieveTableWidth(Lcom/itextpdf/layout/properties/UnitValue;F)Ljava/lang/Float;

    move-result-object p2

    .line 613
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v1, 0x4f

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/layout/renderer/TableWidths;->retrieveTableWidth(Lcom/itextpdf/layout/properties/UnitValue;F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p2, :cond_6

    .line 615
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_3

    :cond_6
    iget p2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->layoutMinWidth:F

    :goto_3
    iput p2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableMinWidth:F

    if-eqz p1, :cond_7

    .line 616
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_4

    :cond_7
    iget p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    :goto_4
    iput p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableMaxWidth:F

    .line 618
    iget p2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableMinWidth:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_8

    .line 619
    iput p2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableMaxWidth:F

    .line 621
    :cond_8
    iget p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_9

    .line 622
    iput p2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    .line 624
    :cond_9
    iget p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableMaxWidth:F

    iget p2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_a

    .line 625
    iput p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    :cond_a
    return-void
.end method

.method private extractWidths()[F
    .locals 6

    const/4 v0, 0x0

    .line 739
    iput v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->layoutMinWidth:F

    .line 740
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    array-length v1, v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 741
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 743
    aget-object v3, v3, v2

    iget v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    iget v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->horizontalBorderSpacing:F

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 744
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    add-float/2addr v0, v3

    .line 745
    iget v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->layoutMinWidth:F

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iget v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->horizontalBorderSpacing:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->layoutMinWidth:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    :cond_0
    iget v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getEps()F

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    array-length v4, v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 748
    const-class v0, Lcom/itextpdf/layout/renderer/TableWidths;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 749
    const-string v2, "Table width is more than expected due to min width of cell(s)."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method private fillAndSortCells()V
    .locals 2

    .line 708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->cells:Ljava/util/List;

    .line 709
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/layout/renderer/TableWidths;->fillRendererCells(Lcom/itextpdf/layout/renderer/TableRenderer;B)V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/layout/renderer/TableWidths;->fillRendererCells(Lcom/itextpdf/layout/renderer/TableRenderer;B)V

    .line 713
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/layout/renderer/TableWidths;->fillRendererCells(Lcom/itextpdf/layout/renderer/TableRenderer;B)V

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->cells:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private fillRendererCells(Lcom/itextpdf/layout/renderer/TableRenderer;B)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 722
    :goto_0
    iget-object v2, p1, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 723
    :goto_1
    iget v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v2, v3, :cond_1

    .line 724
    iget-object v3, p1, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 726
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->cells:Ljava/util/List;

    new-instance v5, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;

    invoke-direct {v5, v3, v1, v2, p2}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;-><init>(Lcom/itextpdf/layout/renderer/CellRenderer;IIB)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getCellBorderIndents(Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;)[F
    .locals 4

    .line 697
    iget-byte v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->region:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    goto :goto_0

    .line 699
    :cond_0
    iget-byte v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->region:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 700
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    goto :goto_0

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 704
    :goto_0
    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getRow()I

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getRowspan()I

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getCellBorderIndents(IIII)[F

    move-result-object p1

    return-object p1
.end method

.method private getCellWidth(Lcom/itextpdf/layout/renderer/CellRenderer;Z)Lcom/itextpdf/layout/properties/UnitValue;
    .locals 6

    .line 849
    new-instance v0, Lcom/itextpdf/layout/properties/UnitValue;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {p1, v2, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/UnitValue;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(Lcom/itextpdf/layout/properties/UnitValue;)V

    .line 851
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    const v2, -0x472e48e9    # -1.0E-4f

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return-object v2

    .line 855
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    if-eqz p2, :cond_1

    .line 856
    sget-object v2, Lcom/itextpdf/layout/renderer/TableWidths;->ZeroWidth:Lcom/itextpdf/layout/properties/UnitValue;

    :cond_1
    return-object v2

    .line 857
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v0

    .line 860
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/renderer/TableWidths;->resolveMinMaxCollision(Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    .line 861
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 862
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    const/4 v1, 0x1

    .line 863
    aget-object v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_5

    .line 864
    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v4, v4, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v4, v4, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v4, :cond_4

    aget-object v4, v0, v1

    .line 866
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    goto :goto_0

    :cond_4
    aget-object v4, v0, v1

    .line 867
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    div-float/2addr v4, v3

    :goto_0
    add-float/2addr v2, v4

    .line 864
    invoke-virtual {p2, v2}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    :cond_5
    const/4 v2, 0x3

    .line 869
    aget-object v4, v0, v2

    if-eqz v4, :cond_7

    .line 870
    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v5, v5, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v5, v5, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v5, :cond_6

    aget-object v0, v0, v2

    .line 872
    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    goto :goto_1

    :cond_6
    aget-object v0, v0, v2

    .line 873
    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    div-float/2addr v0, v3

    :goto_1
    add-float/2addr v4, v0

    .line 870
    invoke-virtual {p2, v4}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    .line 875
    :cond_7
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPaddings()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    .line 876
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v0

    const-string v3, "Property {0} in percents is not supported"

    const-class v4, Lcom/itextpdf/layout/renderer/TableWidths;

    if-nez v0, :cond_8

    .line 877
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const/16 v5, 0x30

    .line 879
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 878
    invoke-static {v3, v5}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 881
    :cond_8
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 882
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const/16 v4, 0x31

    .line 884
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 883
    invoke-static {v3, v4}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 886
    :cond_9
    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    add-float/2addr v0, v1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p1

    add-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    :cond_a
    return-object p2
.end method

.method private getTable()Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table;

    return-object v0
.end method

.method private resolveMinMaxCollision(Lcom/itextpdf/layout/renderer/CellRenderer;Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/properties/UnitValue;
    .locals 3

    const/16 v0, 0x50

    .line 895
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x4f

    .line 900
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz p1, :cond_1

    .line 901
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method

.method private retrieveTableWidth(F)F
    .locals 3

    .line 636
    sget-object v0, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->rightBorderMaxWidth:F

    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->leftBorderMaxWidth:F

    add-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 638
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->horizontalBorderSpacing:F

    mul-float/2addr v0, v1

    goto :goto_0

    .line 640
    :cond_0
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->rightBorderMaxWidth:F

    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->leftBorderMaxWidth:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :goto_0
    sub-float/2addr p1, v0

    const/4 v0, 0x0

    .line 642
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private retrieveTableWidth(Lcom/itextpdf/layout/properties/UnitValue;F)Ljava/lang/Float;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 630
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p1

    mul-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    goto :goto_0

    .line 632
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p1

    .line 630
    :goto_0
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/TableWidths;->retrieveTableWidth(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method private warn100percent()V
    .locals 2

    .line 733
    const-class v0, Lcom/itextpdf/layout/renderer/TableWidths;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 734
    const-string v1, "Sum of table columns is greater than 100%."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method autoLayout()[F
    .locals 5

    .line 114
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->fillAndSortCells()V

    .line 115
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->calculateMinMaxWidths()V

    .line 118
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 119
    iget v4, v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->cells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;

    .line 123
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TableWidths;->processCell(Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;)V

    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->processColumns()V

    .line 128
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/TableWidths;->recalculate(F)V

    .line 130
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->extractWidths()[F

    move-result-object v0

    return-object v0
.end method

.method autoLayoutCustom()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->fillAndSortCells()V

    .line 136
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->calculateMinMaxWidths()V

    .line 137
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->cells:Ljava/util/List;

    return-object v0
.end method

.method fixedLayout()[F
    .locals 16

    move-object/from16 v0, p0

    .line 480
    iget v1, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    new-array v2, v1, [F

    const/4 v3, 0x0

    move v4, v3

    .line 482
    :goto_0
    iget v5, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v7, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    if-ge v4, v5, :cond_3

    .line 483
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/itextpdf/layout/element/Table;->getColumnWidth(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 484
    invoke-virtual {v5}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v9

    cmpg-float v7, v9, v7

    if-gez v7, :cond_0

    goto :goto_1

    .line 486
    :cond_0
    invoke-virtual {v5}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 487
    invoke-virtual {v5}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v5

    iget v7, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    mul-float/2addr v5, v7

    div-float/2addr v5, v6

    aput v5, v2, v4

    goto :goto_2

    .line 489
    :cond_1
    invoke-virtual {v5}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v5

    aput v5, v2, v4

    goto :goto_2

    .line 485
    :cond_2
    :goto_1
    aput v8, v2, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 494
    :cond_3
    iget v4, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    .line 496
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v5, v5, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v5, v5, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v5, v5, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 497
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v5, v5, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v5, v5, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/itextpdf/layout/renderer/CellRenderer;

    goto :goto_3

    .line 498
    :cond_4
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v5, v5, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/element/Table;->getLastRowBottomBorder()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 499
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v5, v5, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/itextpdf/layout/renderer/CellRenderer;

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 505
    :goto_3
    new-array v9, v1, [F

    move v10, v3

    :goto_4
    if-ge v10, v1, :cond_6

    .line 507
    aput v8, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_b

    .line 512
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table;->getLastRowBottomBorder()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v3

    move v10, v1

    move v11, v7

    .line 513
    :goto_5
    iget v12, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v1, v12, :cond_e

    .line 514
    aget v12, v2, v1

    cmpl-float v13, v12, v8

    if-nez v13, :cond_9

    .line 515
    aget-object v12, v5, v1

    if-eqz v12, :cond_a

    const/4 v13, 0x1

    .line 517
    invoke-direct {v0, v12, v13}, Lcom/itextpdf/layout/renderer/TableWidths;->getCellWidth(Lcom/itextpdf/layout/renderer/CellRenderer;Z)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 521
    invoke-virtual {v13}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 522
    iget v14, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    invoke-virtual {v13}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v15

    mul-float/2addr v14, v15

    div-float/2addr v14, v6

    .line 523
    invoke-virtual {v13}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v13

    aput v13, v9, v1

    add-float/2addr v11, v13

    goto :goto_6

    .line 526
    :cond_7
    invoke-virtual {v13}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v14

    .line 528
    :goto_6
    invoke-virtual {v12}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v12}, Lcom/itextpdf/layout/element/Cell;->getColspan()I

    move-result v12

    move v13, v3

    :goto_7
    if-ge v13, v12, :cond_8

    add-int v15, v1, v13

    int-to-float v3, v12

    div-float v3, v14, v3

    .line 530
    aput v3, v2, v15

    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_7

    .line 532
    :cond_8
    aget v3, v2, v1

    sub-float/2addr v4, v3

    goto :goto_8

    :cond_9
    sub-float/2addr v4, v12

    :goto_8
    add-int/lit8 v10, v10, 0x1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 542
    :goto_9
    iget v3, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v1, v3, :cond_d

    .line 543
    aget v3, v2, v1

    cmpl-float v5, v3, v8

    if-eqz v5, :cond_c

    add-int/lit8 v10, v10, 0x1

    sub-float/2addr v4, v3

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_d
    move v11, v7

    :cond_e
    cmpl-float v1, v11, v6

    if-lez v1, :cond_f

    .line 550
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TableWidths;->warn100percent()V

    :cond_f
    cmpl-float v1, v4, v7

    if-lez v1, :cond_10

    .line 553
    iget v1, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ne v1, v10, :cond_12

    const/4 v1, 0x0

    .line 555
    :goto_a
    iget v3, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v1, v3, :cond_12

    .line 556
    iget v3, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    aget v5, v2, v1

    mul-float/2addr v5, v3

    sub-float/2addr v3, v4

    div-float/2addr v5, v3

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    cmpg-float v1, v4, v7

    if-gez v1, :cond_12

    const/4 v1, 0x0

    .line 561
    :goto_b
    iget v3, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v1, v3, :cond_12

    .line 562
    aget v3, v2, v1

    aget v5, v9, v1

    cmpl-float v6, v8, v5

    if-eqz v6, :cond_11

    mul-float/2addr v5, v4

    div-float/2addr v5, v11

    goto :goto_c

    :cond_11
    move v5, v7

    :goto_c
    add-float/2addr v3, v5

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    .line 567
    :goto_d
    iget v3, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v1, v3, :cond_14

    .line 568
    aget v5, v2, v1

    cmpl-float v5, v5, v8

    if-nez v5, :cond_13

    sub-int/2addr v3, v10

    int-to-float v3, v3

    div-float v3, v4, v3

    .line 569
    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v2, v1

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 574
    :cond_14
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/TableWidths;->tableRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    instance-of v1, v1, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;

    if-eqz v1, :cond_15

    const/4 v3, 0x0

    .line 575
    :goto_e
    iget v1, v0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v3, v1, :cond_15

    .line 576
    aget v1, v2, v3

    iget v4, v0, Lcom/itextpdf/layout/renderer/TableWidths;->horizontalBorderSpacing:F

    add-float/2addr v1, v4

    aput v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_15
    return-object v2
.end method

.method getMinWidth()F
    .locals 1

    .line 109
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->layoutMinWidth:F

    return v0
.end method

.method hasFixedLayout()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableLayout:Z

    return v0
.end method

.method layout()[F
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->hasFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->fixedLayout()[F

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->autoLayout()[F

    move-result-object v0

    return-object v0
.end method

.method processCell(Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;)V
    .locals 7

    .line 144
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCell()Lcom/itextpdf/layout/renderer/CellRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/layout/renderer/TableWidths;->getCellWidth(Lcom/itextpdf/layout/renderer/CellRenderer;Z)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 147
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 150
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 151
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setPercents(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    goto/16 :goto_6

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v3

    move v4, v2

    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v5

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_2

    .line 156
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v3

    iget-boolean v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    sub-float/2addr v0, v4

    cmpl-float v2, v0, v2

    if-lez v2, :cond_c

    if-nez v1, :cond_3

    .line 167
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v1

    :goto_2
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_c

    .line 168
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->addPercents(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 173
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v2

    :goto_3
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_c

    .line 174
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v3, :cond_4

    .line 175
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v2

    int-to-float v4, v1

    div-float v4, v0, v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setPercents(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 184
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 185
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v2

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v1, :cond_c

    .line 186
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v2

    aget-object v1, v1, v2

    iget v1, v1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    .line 187
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setFixed(Z)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    goto/16 :goto_6

    .line 189
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result p1

    aget-object p1, v1, p1

    iget p1, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    goto :goto_6

    .line 193
    :cond_7
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/TableWidths;->processCellsRemainWidth(Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;Lcom/itextpdf/layout/properties/UnitValue;)V

    goto :goto_6

    .line 196
    :cond_8
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFlexible()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 201
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v0

    move v3, v2

    :goto_4
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_a

    .line 202
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFlexible()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 203
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->max:F

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    cmpl-float v0, v3, v2

    if-lez v0, :cond_c

    .line 210
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v0

    :goto_5
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v4

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_c

    .line 211
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFlexible()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 212
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    int-to-float v4, v1

    div-float v4, v3, v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->addPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    return-void
.end method

.method processCellsRemainWidth(Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;Lcom/itextpdf/layout/properties/UnitValue;)V
    .locals 8

    .line 433
    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p2

    .line 434
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    if-ge v0, v3, :cond_2

    .line 435
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v3, :cond_1

    .line 436
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    sub-float/2addr p2, v3

    .line 437
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move p2, v4

    :cond_2
    cmpl-float v0, p2, v4

    if-lez v0, :cond_9

    .line 447
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v0

    new-array v0, v0, [I

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/itextpdf/io/util/ArrayUtil;->fillWithValue([II)[I

    move-result-object v0

    if-lez v2, :cond_8

    .line 450
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v3

    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v5

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_6

    .line 451
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFlexible()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 453
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    int-to-float v7, v2

    div-float v7, p2, v7

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 454
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v3

    iget v6, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->resetPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    .line 455
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    sub-float/2addr v5, v6

    sub-float/2addr p2, v5

    add-int/lit8 v2, v2, -0x1

    if-eqz v2, :cond_6

    cmpg-float v5, p2, v4

    if-gtz v5, :cond_5

    goto :goto_3

    .line 461
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v5

    sub-int v5, v3, v5

    aput v3, v0, v5

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    if-lez v2, :cond_9

    cmpl-float p1, p2, v4

    if-lez p1, :cond_9

    .line 465
    :goto_4
    array-length p1, v0

    if-ge v1, p1, :cond_9

    .line 466
    aget p1, v0, v1

    if-ltz p1, :cond_7

    .line 467
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object p1, v3, p1

    int-to-float v3, v2

    div-float v3, p2, v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->addPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setFixed(Z)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 472
    :cond_8
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v0

    :goto_5
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_9

    .line 473
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->addPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    return-void
.end method

.method processColumns()V
    .locals 4

    const/4 v0, 0x0

    .line 220
    :goto_0
    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v0, v1, :cond_4

    .line 221
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->getTable()Lcom/itextpdf/layout/element/Table;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Table;->getColumnWidth(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 222
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 223
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v2, :cond_3

    .line 225
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget v3, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    iput v3, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->max:F

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setPercents(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    goto :goto_1

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 231
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    goto :goto_1

    .line 234
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->resetPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->setFixed(Z)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method recalculate(F)V
    .locals 13

    .line 242
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    cmpg-float v0, v0, p1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 243
    :goto_0
    iget p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v1, p1, :cond_24

    .line 244
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object p1, p1, v1

    iget v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iput v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, p1

    move v3, v2

    move v4, v3

    move v0, v1

    .line 253
    :goto_1
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    array-length v6, v5

    const/high16 v7, 0x42c80000    # 100.0f

    if-ge v0, v6, :cond_4

    .line 254
    aget-object v5, v5, v0

    iget-boolean v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v5, :cond_3

    cmpg-float v5, v2, v7

    if-gez v5, :cond_1

    .line 255
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v5, v2

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1

    .line 256
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v0

    sub-float/2addr v7, v2

    iput v7, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    .line 257
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v2, v5

    .line 258
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->warn100percent()V

    goto :goto_2

    :cond_1
    cmpl-float v5, v2, v7

    if-ltz v5, :cond_2

    .line 260
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v0

    iget v6, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->resetPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    .line 261
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    add-float/2addr v3, v5

    .line 262
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TableWidths;->warn100percent()V

    goto :goto_2

    .line 264
    :cond_2
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v2, v5

    goto :goto_2

    .line 267
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    add-float/2addr v3, v5

    .line 268
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v4, v5

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    :cond_4
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableWidth:Z

    const/4 v5, 0x1

    if-nez v0, :cond_9

    cmpg-float v0, v2, v7

    if-gez v0, :cond_5

    mul-float v0, v4, v7

    sub-float v6, v7, v2

    div-float/2addr v0, v6

    goto :goto_3

    :cond_5
    move v0, p1

    :goto_3
    move v6, v1

    .line 277
    :goto_4
    iget v8, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v6, v8, :cond_7

    .line 278
    iget-object v8, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v8, v8, v6

    iget-boolean v8, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    cmpl-float v8, v8, p1

    if-lez v8, :cond_6

    .line 279
    iget-object v8, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->max:F

    mul-float/2addr v8, v7

    iget-object v9, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    div-float/2addr v8, v9

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 283
    :cond_7
    iget v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_9

    cmpl-float v6, v0, v3

    if-ltz v6, :cond_8

    .line 285
    iput v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    move v0, v1

    goto :goto_5

    .line 289
    :cond_8
    iput v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    :cond_9
    move v0, v5

    :goto_5
    cmpl-float v6, v2, p1

    if-lez v6, :cond_b

    cmpg-float v6, v2, v7

    if-gez v6, :cond_b

    cmpl-float v4, v4, p1

    if-nez v4, :cond_b

    move v4, v1

    .line 297
    :goto_6
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    array-length v8, v6

    if-ge v4, v8, :cond_a

    .line 298
    aget-object v6, v6, v4

    iget v8, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v8, v7

    div-float/2addr v8, v2

    iput v8, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    move v2, v7

    :cond_b
    if-nez v0, :cond_d

    .line 305
    :goto_7
    iget p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v1, p1, :cond_24

    .line 306
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object p1, p1, v1

    iget-boolean v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v0, v2

    div-float/2addr v0, v7

    goto :goto_8

    :cond_c
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    :goto_8
    iput v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_d
    cmpl-float v0, v2, v7

    if-ltz v0, :cond_12

    .line 313
    iget p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    sub-float/2addr p1, v3

    move v0, v1

    move v2, v0

    move v3, v7

    .line 314
    :goto_9
    iget v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v0, v4, :cond_10

    .line 315
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v4, :cond_f

    .line 316
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v4, p1

    div-float/2addr v4, v7

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_e

    .line 317
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v4, v4, v0

    iget v6, v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v6, p1

    div-float/2addr v6, v7

    iput v6, v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    goto :goto_a

    .line 319
    :cond_e
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget v4, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iput v4, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 320
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iput-boolean v1, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    .line 321
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    sub-float/2addr p1, v2

    .line 322
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    sub-float/2addr v3, v2

    move v2, v5

    goto :goto_a

    .line 326
    :cond_f
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v4, v4, v0

    iget v6, v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iput v6, v4, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_10
    if-eqz v2, :cond_24

    .line 330
    :goto_b
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v1, v0, :cond_24

    .line 331
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v0, :cond_11

    .line 332
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v0, v0, v1

    iget v2, v0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    iput v2, v0, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_12
    move v3, p1

    move v4, v3

    move v6, v4

    move v8, v6

    move v0, v1

    move v9, v0

    .line 350
    :goto_c
    iget v10, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v0, v10, :cond_16

    .line 351
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v10, v10, v0

    iget-boolean v10, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz v10, :cond_14

    .line 352
    iget v10, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    iget-object v11, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v11, v11, v0

    iget v11, v11, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v10, v11

    div-float/2addr v10, v7

    iget-object v11, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v11, v11, v0

    iget v11, v11, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_13

    .line 353
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v10, v10, v0

    iget v11, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    iget v12, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v11, v12

    div-float/2addr v11, v7

    iput v11, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 354
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v10, v10, v0

    iget v10, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    add-float/2addr v3, v10

    goto :goto_d

    .line 356
    :cond_13
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v10, v10, v0

    iget v10, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    sub-float/2addr v2, v10

    .line 357
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v10, v10, v0

    iget v11, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    invoke-virtual {v10, v11}, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->resetPoints(F)Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    .line 358
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v10, v10, v0

    iget v11, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iput v11, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 359
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v10, v10, v0

    iget v10, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    add-float/2addr v4, v10

    goto :goto_d

    .line 362
    :cond_14
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v10, v10, v0

    iget v11, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    iput v11, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 363
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v10, v10, v0

    iget v10, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    add-float/2addr v4, v10

    .line 364
    iget-object v10, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v10, v10, v0

    iget v10, v10, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    iget-object v11, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v11, v11, v0

    iget v11, v11, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    sub-float/2addr v10, v11

    .line 365
    iget-object v11, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v11, v11, v0

    iget-boolean v11, v11, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-eqz v11, :cond_15

    add-float/2addr v6, v10

    goto :goto_d

    :cond_15
    add-float/2addr v8, v10

    move v9, v5

    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_16
    add-float v0, v3, v4

    .line 373
    iget v5, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_18

    sub-float/2addr v5, v4

    cmpl-float p1, v2, p1

    if-lez p1, :cond_24

    .line 377
    :goto_e
    iget p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v1, p1, :cond_24

    .line 378
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object p1, p1, v1

    iget-boolean p1, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-eqz p1, :cond_17

    .line 379
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object p1, p1, v1

    iget v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v0, v5

    div-float/2addr v0, v2

    iput v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    sub-float/2addr v5, v3

    sub-float/2addr v5, v4

    cmpl-float v0, v6, p1

    if-lez v0, :cond_1b

    cmpg-float v0, v5, v6

    if-ltz v0, :cond_19

    if-nez v9, :cond_1b

    .line 386
    :cond_19
    :goto_f
    iget p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v1, p1, :cond_24

    .line 388
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object p1, p1, v1

    iget-boolean p1, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-eqz p1, :cond_1a

    .line 389
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object p1, p1, v1

    iget v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    div-float/2addr v2, v6

    add-float/2addr v0, v2

    iput v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1b
    sub-float/2addr v5, v6

    cmpg-float v0, v5, v8

    if-gez v0, :cond_1e

    .line 395
    :goto_10
    iget p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v1, p1, :cond_24

    .line 396
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object p1, p1, v1

    iget-boolean p1, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-eqz p1, :cond_1c

    .line 397
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object p1, p1, v1

    iget v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    iput v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    goto :goto_11

    .line 398
    :cond_1c
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object p1, p1, v1

    iget-boolean p1, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez p1, :cond_1d

    .line 399
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object p1, p1, v1

    iget v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->min:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    div-float/2addr v2, v8

    add-float/2addr v0, v2

    iput v0, p1, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    :cond_1d
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    move v2, p1

    move v4, v2

    move v5, v4

    move v0, v1

    .line 406
    :goto_12
    iget v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v0, v6, :cond_21

    .line 407
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v0

    iget-boolean v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-eqz v6, :cond_1f

    .line 408
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v0

    iget v7, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    iput v7, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    .line 409
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v4, v6

    goto :goto_13

    .line 410
    :cond_1f
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v0

    iget-boolean v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v6, :cond_20

    .line 411
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    add-float/2addr v2, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    :cond_20
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 416
    :cond_21
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    sub-float/2addr v0, v3

    sub-float/2addr v0, v4

    .line 417
    :goto_14
    iget v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->numberOfColumns:I

    if-ge v1, v3, :cond_24

    .line 418
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isPercent:Z

    if-nez v3, :cond_23

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->isFixed:Z

    if-nez v3, :cond_23

    .line 419
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TableWidths;->widths:[Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;

    aget-object v3, v3, v1

    cmpl-float v4, v2, p1

    if-lez v4, :cond_22

    iget v4, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->width:F

    mul-float/2addr v4, v0

    div-float/2addr v4, v2

    goto :goto_15

    :cond_22
    div-float v4, v0, v5

    :goto_15
    iput v4, v3, Lcom/itextpdf/layout/renderer/TableWidths$ColumnWidthData;->finalWidth:F

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->tableWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/itextpdf/layout/renderer/TableWidths;->fixedTableWidth:Z

    if-eqz v1, :cond_0

    const-string v1, "!!"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
