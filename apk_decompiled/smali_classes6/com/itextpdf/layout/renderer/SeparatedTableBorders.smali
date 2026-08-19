.class Lcom/itextpdf/layout/renderer/SeparatedTableBorders;
.super Lcom/itextpdf/layout/renderer/TableBorders;
.source "SeparatedTableBorders.java"


# direct methods
.method public constructor <init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V
    .locals 0
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

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/TableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V

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

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/layout/renderer/TableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;I)V

    return-void
.end method


# virtual methods
.method protected applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 1

    if-eqz p3, :cond_0

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    int-to-float p3, p3

    .line 96
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->getMaxBottomWidth()F

    move-result v0

    mul-float/2addr p3, v0

    .line 97
    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 98
    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-object p0
.end method

.method protected applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    .line 91
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    move-result-object p1

    return-object p1
.end method

.method protected applyCellIndents(Lcom/itextpdf/kernel/geom/Rectangle;FFFFZ)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    return-object p0
.end method

.method protected applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 6

    if-eqz p1, :cond_0

    .line 105
    iget v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rightBorderMaxWidth:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->leftBorderMaxWidth:F

    const/4 v1, 0x0

    move-object v0, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_0
    return-object p0
.end method

.method protected applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 1

    if-eqz p3, :cond_0

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    int-to-float p3, p3

    .line 83
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->getMaxTopWidth()F

    move-result v0

    mul-float/2addr p3, v0

    .line 84
    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 85
    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-object p0
.end method

.method protected applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    .line 78
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    move-result-object p1

    return-object p1
.end method

.method protected buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;II[I)V
    .locals 11

    const/16 p3, 0x10

    .line 196
    invoke-virtual {p1, p3}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/16 p4, 0x3c

    .line 197
    invoke-virtual {p1, p4}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 198
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getCol()I

    move-result v0

    .line 199
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object p1

    add-int/lit8 v1, p2, 0x1

    sub-int v2, v1, p4

    if-gez v2, :cond_0

    move p4, v1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, p3, :cond_1

    .line 208
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->horizontalBorders:Ljava/util/List;

    sub-int v5, v1, p4

    mul-int/lit8 v7, v5, 0x2

    add-int v8, v0, v3

    aget-object v9, p1, v2

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    if-ge v2, p3, :cond_2

    .line 212
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->horizontalBorders:Ljava/util/List;

    mul-int/lit8 v3, p2, 0x2

    add-int/lit8 v7, v3, 0x1

    add-int v8, v0, v2

    aget-object v9, p1, v4

    const/4 v10, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sub-int p4, p2, p4

    add-int/2addr p4, v1

    move v2, p4

    :goto_2
    if-gt v2, p2, :cond_3

    .line 216
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->verticalBorders:Ljava/util/List;

    mul-int/lit8 v7, v0, 0x2

    const/4 v3, 0x3

    aget-object v9, p1, v3

    const/4 v10, 0x0

    move-object v5, p0

    move v8, v2

    invoke-virtual/range {v5 .. v10}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-gt p4, p2, :cond_4

    .line 220
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->verticalBorders:Ljava/util/List;

    add-int v2, v0, p3

    mul-int/2addr v2, v4

    add-int/lit8 v7, v2, -0x1

    aget-object v9, p1, v1

    const/4 v10, 0x1

    move-object v5, p0

    move v8, p4

    invoke-virtual/range {v5 .. v10}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method protected checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;>;II",
            "Lcom/itextpdf/layout/borders/Border;",
            "Z)Z"
        }
    .end annotation

    .line 225
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 226
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/borders/Border;

    if-nez p2, :cond_0

    .line 228
    invoke-interface {p1, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 230
    :cond_0
    const-class p1, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 231
    const-string p2, "Unexpected behaviour during table row collapsing. Calculated rowspan was less then 1."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    return-object p0
.end method

.method protected collapseTableWithHeader(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    return-object p0
.end method

.method protected drawHorizontalBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/renderer/TableBorderDescriptor;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    return-object p0
.end method

.method protected drawVerticalBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/renderer/TableBorderDescriptor;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    return-object p0
.end method

.method protected fixHeaderOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    return-object p0
.end method

.method public getCellBorderIndents(IIII)[F
    .locals 0

    const/4 p1, 0x4

    .line 192
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected getCellVerticalAddition([F)F
    .locals 0

    const/4 p1, 0x0

    return p1
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

    .line 261
    iget v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->startRow:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalBorder(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->horizontalBorders:Ljava/util/List;

    iget v1, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
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

    .line 266
    iget v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->finishRow:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBottomWidth()F
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getMaxLeftWidth()F
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getMaxRightWidth()F
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getMaxTopWidth()F
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getVerticalBorder(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method protected initializeBorders()Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 5

    .line 241
    :goto_0
    iget v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->numberOfColumns:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-le v0, v2, :cond_1

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v2, v4, :cond_0

    .line 244
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    :goto_3
    iget v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->numberOfColumns:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 252
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 254
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method protected skipFooter([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->setTableBoundingBorders([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    return-object p0
.end method

.method protected skipHeader([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    return-object p0
.end method

.method protected updateBordersOnNewPage(ZZLcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rows:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->processAllBordersAndEmptyRows()Lcom/itextpdf/layout/renderer/TableBorders;

    .line 165
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->getMaxRightWidth()F

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rightBorderMaxWidth:F

    .line 166
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->getMaxLeftWidth()F

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->leftBorderMaxWidth:F

    :cond_0
    if-eqz p5, :cond_1

    .line 171
    iget-object p1, p5, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxRightWidth()F

    move-result p1

    .line 172
    iget-object p2, p5, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxLeftWidth()F

    move-result p2

    .line 174
    iget p3, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->leftBorderMaxWidth:F

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->leftBorderMaxWidth:F

    .line 175
    iget p2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rightBorderMaxWidth:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rightBorderMaxWidth:F

    :cond_1
    if-eqz p4, :cond_2

    .line 179
    iget-object p1, p4, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxRightWidth()F

    move-result p1

    .line 180
    iget-object p2, p4, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxLeftWidth()F

    move-result p2

    .line 182
    iget p3, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->leftBorderMaxWidth:F

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->leftBorderMaxWidth:F

    .line 183
    iget p2, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rightBorderMaxWidth:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/renderer/SeparatedTableBorders;->rightBorderMaxWidth:F

    :cond_2
    return-object p0
.end method
