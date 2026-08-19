.class Lcom/itextpdf/layout/renderer/CollapsedTableBorders;
.super Lcom/itextpdf/layout/renderer/TableBorders;
.source "CollapsedTableBorders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/CollapsedTableBorders$BorderComparator;
    }
.end annotation


# static fields
.field private static borderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bottomBorderCollapseWith:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation
.end field

.field private topBorderCollapseWith:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation
.end field

.field private verticalBottomBorderCollapseWith:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders$BorderComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders$BorderComparator;-><init>(Lcom/itextpdf/layout/renderer/CollapsedTableBorders$1;)V

    sput-object v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->borderComparator:Ljava/util/Comparator;

    return-void
.end method

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

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/TableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;)V

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->topBorderCollapseWith:Ljava/util/List;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->bottomBorderCollapseWith:Ljava/util/List;

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBottomBorderCollapseWith:Ljava/util/List;

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

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/layout/renderer/TableBorders;-><init>(Ljava/util/List;I[Lcom/itextpdf/layout/borders/Border;I)V

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->topBorderCollapseWith:Ljava/util/List;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->bottomBorderCollapseWith:Ljava/util/List;

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBottomBorderCollapseWith:Ljava/util/List;

    return-void
.end method

.method public static getCollapsedBorder(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/borders/Border;
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    return-object p1

    :cond_1
    if-eqz p0, :cond_2

    return-object p0

    .line 540
    :cond_2
    sget-object p0, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    return-object p0
.end method

.method public static getCollapsedList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 545
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-nez p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 546
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge v0, v1, :cond_2

    .line 548
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/borders/Border;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    invoke-static {v3, v4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedBorder(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object v2
.end method

.method private varargs getWidestBorderWidth([Lcom/itextpdf/layout/borders/Border;)F
    .locals 5

    .line 750
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 751
    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 752
    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isBorderWider(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Z
    .locals 1

    const/4 v0, 0x1

    .line 770
    invoke-static {p0, p1, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->isBorderWider(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;Z)Z

    move-result p0

    return p0
.end method

.method private static isBorderWider(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    .line 790
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p0

    invoke-virtual {p1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p2, :cond_2

    if-lez p0, :cond_3

    goto :goto_0

    :cond_2
    if-ltz p0, :cond_3

    :goto_0
    move v0, v1

    :cond_3
    return v0
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

    .line 594
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getMaxBottomWidth()F

    move-result v0

    mul-float/2addr p3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    .line 595
    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 596
    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-object p0
.end method

.method protected applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    if-nez p3, :cond_0

    .line 577
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p4, :cond_1

    .line 580
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 581
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->applyBottomTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0
.end method

.method protected applyCellIndents(Lcom/itextpdf/kernel/geom/Rectangle;FFFFZ)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 6

    const/high16 p6, 0x40000000    # 2.0f

    div-float v1, p2, p6

    div-float v2, p3, p6

    div-float v3, p4, p6

    div-float v4, p5, p6

    const/4 v5, 0x0

    move-object v0, p1

    .line 602
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    return-object p0
.end method

.method protected applyLeftAndRightTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 8

    if-eqz p1, :cond_0

    .line 558
    iget v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rightBorderMaxWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v4, v0, v1

    iget v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->leftBorderMaxWidth:F

    div-float v6, v0, v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

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

    .line 587
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getMaxTopWidth()F

    move-result v0

    mul-float/2addr p3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    .line 588
    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 589
    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-object p0
.end method

.method protected applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;ZZZ)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    if-nez p3, :cond_0

    .line 566
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p4, :cond_1

    .line 569
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    .line 570
    invoke-virtual {p0, p1, p2, p5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->applyTopTableBorder(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/layout/renderer/TableBorders;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0
.end method

.method protected buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;II[I)V
    .locals 11

    .line 265
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    const/16 v0, 0x10

    .line 268
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x3c

    const/4 v4, 0x1

    if-eqz p3, :cond_5

    .line 274
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/itextpdf/layout/renderer/CellRenderer;

    add-int/lit8 v6, p3, -0x1

    aget-object v5, v5, v6

    if-nez v5, :cond_5

    move v5, p3

    :cond_1
    add-int/lit8 v5, v5, -0x1

    move v6, p2

    .line 279
    :goto_0
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v6, :cond_2

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v7, v7, v5

    if-nez v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-lez v5, :cond_3

    .line 283
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v6, :cond_3

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    .line 284
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v7, v7, v5

    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v5

    if-ne v7, p3, :cond_1

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    .line 285
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v7, v7, v5

    invoke-virtual {v7, v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int v7, v6, v7

    add-int/2addr v7, v4

    aget v8, p4, v5

    add-int/2addr v7, v8

    if-ne v7, p2, :cond_1

    :cond_3
    if-ltz v5, :cond_5

    .line 287
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_5

    if-le v6, p2, :cond_5

    .line 288
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v7, v7, v5

    .line 289
    invoke-virtual {v7, v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v9, p4, v5

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 290
    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v9, v5

    :goto_1
    add-int v10, v5, v8

    if-ge v9, v10, :cond_4

    .line 292
    aput v2, p4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 294
    :cond_4
    invoke-virtual {p0, v7, v6, v4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;IZ)V

    :cond_5
    move v5, v2

    :goto_2
    if-ge v5, v1, :cond_9

    add-int/lit8 v6, p2, 0x1

    .line 302
    :goto_3
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    add-int v8, p3, v5

    aget-object v7, v7, v8

    if-nez v7, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 305
    :cond_6
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_7

    goto :goto_4

    .line 308
    :cond_7
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/renderer/CellRenderer;

    add-int v8, p3, v5

    aget-object v7, v7, v8

    .line 310
    invoke-virtual {v7, v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v6, v8

    if-ne p2, v8, :cond_8

    .line 311
    invoke-virtual {p0, v7, v6, v4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;IZ)V

    .line 313
    :cond_8
    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_2

    :cond_9
    :goto_4
    add-int/2addr p3, v1

    .line 317
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    array-length v1, v1

    if-ge p3, v1, :cond_c

    move v1, p2

    .line 319
    :goto_5
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_a

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v5, v5, p3

    if-nez v5, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 322
    :cond_a
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v1, v5, :cond_c

    .line 323
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v5, v5, p3

    .line 324
    invoke-virtual {v5, v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v7, p4, p3

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 325
    invoke-virtual {v5, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, p3

    :goto_6
    add-int v6, p3, v0

    if-ge v3, v6, :cond_b

    .line 327
    aput v2, p4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 329
    :cond_b
    invoke-virtual {p0, v5, v1, v4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;IZ)V

    .line 333
    :cond_c
    invoke-virtual {p0, p1, p2, v2}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;IZ)V

    return-void
.end method

.method protected buildBordersArrays(Lcom/itextpdf/layout/renderer/CellRenderer;IZ)V
    .locals 15

    move-object v6, p0

    move-object/from16 v0, p1

    move/from16 v7, p2

    const/16 v1, 0x10

    .line 338
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v1, 0x3c

    .line 339
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Cell;->getCol()I

    move-result v9

    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v10

    add-int/lit8 v11, v7, 0x1

    sub-int v0, v11, v1

    if-gez v0, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    move v12, v1

    :goto_0
    const/4 v13, 0x0

    move v14, v13

    :goto_1
    if-ge v14, v8, :cond_1

    .line 350
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->horizontalBorders:Ljava/util/List;

    sub-int v2, v11, v12

    add-int v3, v9, v14

    aget-object v4, v10, v13

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v13, v8, :cond_2

    .line 354
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->horizontalBorders:Ljava/util/List;

    add-int v3, v9, v13

    const/4 v0, 0x2

    aget-object v4, v10, v0

    const/4 v5, 0x1

    move-object v0, p0

    move v2, v11

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    sub-int v0, v7, v12

    const/4 v11, 0x1

    add-int/lit8 v12, v0, 0x1

    move v13, v12

    :goto_3
    if-gt v13, v7, :cond_3

    .line 358
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    const/4 v0, 0x3

    aget-object v4, v10, v0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v9

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-gt v12, v7, :cond_4

    .line 362
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    add-int v2, v9, v8

    aget-object v4, v10, v11

    const/4 v5, 0x1

    move-object v0, p0

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method protected checkAndReplaceBorderInArray(Ljava/util/List;IILcom/itextpdf/layout/borders/Border;Z)Z
    .locals 4
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

    .line 369
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 370
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/borders/Border;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 372
    invoke-interface {p1, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eq p2, p4, :cond_2

    if-eqz p4, :cond_2

    .line 376
    invoke-virtual {p2}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    invoke-virtual {p4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    if-nez p5, :cond_1

    .line 377
    invoke-virtual {p2}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p2

    invoke-virtual {p4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p5

    cmpl-float p2, p2, p5

    if-nez p2, :cond_1

    return v1

    .line 380
    :cond_1
    invoke-interface {p1, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_2
    return v1
.end method

.method protected collapseTableWithFooter(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 1

    .line 660
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz p2, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getLastHorizontalBorder()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getTopBorderCollapseWith()Ljava/util/List;

    move-result-object p2

    .line 660
    :goto_0
    invoke-virtual {v0, p2}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setTopBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    const/4 p2, 0x0

    .line 662
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/renderer/TableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object p1

    .line 663
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBordersCrossingTopHorizontalBorder()Ljava/util/List;

    move-result-object p2

    .line 662
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setBottomBorderCollapseWith(Ljava/util/List;Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    return-object p0
.end method

.method protected collapseTableWithHeader(Lcom/itextpdf/layout/renderer/TableBorders;Z)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 3

    .line 668
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    iget v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v1

    .line 669
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBordersCrossingTopHorizontalBorder()Ljava/util/List;

    move-result-object v2

    .line 668
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setBottomBorderCollapseWith(Ljava/util/List;Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    if-eqz p2, :cond_0

    .line 672
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getLastHorizontalBorder()Ljava/util/List;

    move-result-object p1

    .line 671
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setTopBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    :cond_0
    return-object p0
.end method

.method protected drawHorizontalBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/renderer/TableBorderDescriptor;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 18

    move-object/from16 v0, p0

    .line 392
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/layout/renderer/TableBorderDescriptor;->getBorderIndex()I

    move-result v1

    .line 393
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/layout/renderer/TableBorderDescriptor;->getMainCoordinateStart()F

    move-result v2

    .line 394
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/layout/renderer/TableBorderDescriptor;->getCrossCoordinate()F

    move-result v10

    .line 395
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/layout/renderer/TableBorderDescriptor;->getMainCoordinateWidths()[F

    move-result-object v11

    .line 397
    iget v3, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    .line 399
    aget v3, v11, v13

    add-float/2addr v3, v2

    const/4 v14, 0x1

    move v15, v3

    move v9, v14

    .line 401
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-gt v9, v3, :cond_8

    add-int/lit8 v3, v9, -0x1

    .line 402
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    .line 403
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-ge v9, v5, :cond_0

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/borders/Border;

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    move-object/from16 v16, v5

    if-eqz v4, :cond_6

    .line 405
    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCrossingBorders(II)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    .line 406
    new-array v6, v5, [Lcom/itextpdf/layout/borders/Border;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/borders/Border;

    aput-object v7, v6, v13

    const/4 v7, 0x3

    .line 407
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/borders/Border;

    aput-object v8, v6, v14

    .line 406
    invoke-direct {v0, v6}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getWidestBorderWidth([Lcom/itextpdf/layout/borders/Border;)F

    move-result v6

    .line 408
    invoke-virtual {v0, v1, v9}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCrossingBorders(II)Ljava/util/List;

    move-result-object v8

    .line 409
    new-array v5, v5, [Lcom/itextpdf/layout/borders/Border;

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/layout/borders/Border;

    aput-object v17, v5, v13

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/layout/borders/Border;

    aput-object v17, v5, v14

    invoke-direct {v0, v5}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getWidestBorderWidth([Lcom/itextpdf/layout/borders/Border;)F

    move-result v5

    if-ne v14, v9, :cond_1

    .line 416
    invoke-interface {v3, v13, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    if-nez v1, :cond_3

    if-eq v14, v9, :cond_2

    .line 420
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v3, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 422
    :cond_2
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8, v13, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 425
    :cond_3
    sget-object v7, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->borderComparator:Ljava/util/Comparator;

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 426
    sget-object v7, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->borderComparator:Ljava/util/Comparator;

    invoke-static {v8, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 428
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/itextpdf/layout/borders/Border;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v3, :cond_4

    neg-float v3, v6

    div-float/2addr v3, v7

    goto :goto_2

    :cond_4
    div-float v3, v6, v7

    .line 431
    :goto_2
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/itextpdf/layout/borders/Border;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    neg-float v5, v5

    :goto_3
    div-float/2addr v5, v7

    add-float/2addr v2, v3

    add-float v7, v15, v5

    .line 434
    sget-object v14, Lcom/itextpdf/layout/borders/Border$Side;->NONE:Lcom/itextpdf/layout/borders/Border$Side;

    move-object v3, v4

    move-object/from16 v4, p1

    move v5, v2

    move v6, v10

    move v8, v10

    move v2, v9

    move-object v9, v14

    invoke-virtual/range {v3 .. v9}, Lcom/itextpdf/layout/borders/Border;->drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V

    move v14, v2

    move v2, v15

    goto :goto_4

    :cond_6
    move v14, v9

    .line 439
    aget v3, v11, v3

    add-float/2addr v2, v3

    :goto_4
    if-eqz v16, :cond_7

    .line 442
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-eq v14, v3, :cond_7

    .line 443
    aget v3, v11, v14

    add-float/2addr v3, v2

    move v15, v3

    goto :goto_5

    :cond_7
    move v15, v2

    :goto_5
    add-int/lit8 v9, v14, 0x1

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method protected drawVerticalBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/renderer/TableBorderDescriptor;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 20

    move-object/from16 v0, p0

    .line 450
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/layout/renderer/TableBorderDescriptor;->getBorderIndex()I

    move-result v1

    .line 451
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/layout/renderer/TableBorderDescriptor;->getMainCoordinateStart()F

    move-result v2

    .line 452
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/layout/renderer/TableBorderDescriptor;->getCrossCoordinate()F

    move-result v10

    .line 453
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/layout/renderer/TableBorderDescriptor;->getMainCoordinateWidths()[F

    move-result-object v11

    .line 455
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v12

    .line 458
    array-length v3, v11

    const/4 v13, 0x0

    if-eqz v3, :cond_0

    .line 459
    aget v3, v11, v13

    sub-float v3, v2, v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v15, 0x1

    move/from16 v16, v3

    move v9, v15

    const/4 v3, 0x0

    .line 462
    :goto_1
    array-length v4, v11

    if-gt v9, v4, :cond_b

    .line 463
    iget v4, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v5, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v9

    sub-int/2addr v4, v15

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    .line 464
    array-length v5, v11

    if-ge v9, v5, :cond_1

    iget v5, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v6, v0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v5, v6

    add-int/2addr v5, v9

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/borders/Border;

    move-object v8, v5

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-eqz v4, :cond_8

    add-int/lit8 v5, v9, -0x1

    .line 466
    invoke-virtual {v0, v5, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCrossingBorders(II)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    .line 467
    new-array v7, v6, [Lcom/itextpdf/layout/borders/Border;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/layout/borders/Border;

    aput-object v17, v7, v13

    .line 468
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/layout/borders/Border;

    aput-object v17, v7, v15

    .line 467
    invoke-direct {v0, v7}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getWidestBorderWidth([Lcom/itextpdf/layout/borders/Border;)F

    move-result v7

    if-ne v15, v9, :cond_2

    .line 474
    invoke-interface {v5, v13, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 476
    :cond_2
    sget-object v14, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->borderComparator:Ljava/util/Comparator;

    invoke-static {v5, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 478
    invoke-virtual {v0, v9, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCrossingBorders(II)Ljava/util/List;

    move-result-object v14

    .line 479
    new-array v15, v6, [Lcom/itextpdf/layout/borders/Border;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/itextpdf/layout/borders/Border;

    aput-object v18, v15, v13

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/borders/Border;

    const/16 v17, 0x1

    aput-object v6, v15, v17

    invoke-direct {v0, v15}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getWidestBorderWidth([Lcom/itextpdf/layout/borders/Border;)F

    move-result v6

    .line 480
    sget-object v15, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->borderComparator:Ljava/util/Comparator;

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 483
    invoke-virtual {v4, v8}, Lcom/itextpdf/layout/borders/Border;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/high16 v18, 0x40000000    # 2.0f

    if-nez v15, :cond_6

    if-nez v3, :cond_4

    .line 485
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/itextpdf/layout/borders/Border;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    div-float v7, v7, v18

    goto :goto_3

    :cond_3
    neg-float v3, v7

    div-float v7, v3, v18

    :goto_3
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 489
    :cond_4
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/borders/Border;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    neg-float v5, v6

    div-float v5, v5, v18

    goto :goto_4

    :cond_5
    div-float v5, v6, v18

    .line 494
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float v6, v2, v3

    add-float v2, v16, v5

    sget-object v14, Lcom/itextpdf/layout/borders/Border$Side;->NONE:Lcom/itextpdf/layout/borders/Border$Side;

    move-object v3, v4

    move-object/from16 v4, p1

    move v5, v10

    move v7, v10

    move-object v15, v8

    move v8, v2

    move/from16 v19, v9

    move-object v9, v14

    invoke-virtual/range {v3 .. v9}, Lcom/itextpdf/layout/borders/Border;->drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V

    move/from16 v2, v16

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    move-object v15, v8

    move/from16 v19, v9

    if-nez v3, :cond_9

    .line 502
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/itextpdf/layout/borders/Border;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    div-float v7, v7, v18

    goto :goto_5

    :cond_7
    neg-float v3, v7

    div-float v7, v3, v18

    :goto_5
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_6

    :cond_8
    move/from16 v19, v9

    move/from16 v17, v15

    move-object v15, v8

    add-int/lit8 v9, v19, -0x1

    .line 510
    aget v4, v11, v9

    sub-float v16, v2, v4

    move/from16 v2, v16

    :cond_9
    :goto_6
    if-eqz v15, :cond_a

    .line 514
    aget v4, v11, v19

    sub-float v16, v16, v4

    :cond_a
    add-int/lit8 v9, v19, 0x1

    move/from16 v15, v17

    goto/16 :goto_1

    :cond_b
    return-object v0
.end method

.method protected fixHeaderOccupiedArea(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 1

    .line 678
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getMaxTopWidth()F

    move-result v0

    .line 679
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 680
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-object p0
.end method

.method public getBottomBorderCollapseWith()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->bottomBorderCollapseWith:Ljava/util/List;

    return-object v0
.end method

.method public getCellBorderIndents(IIII)[F
    .locals 8

    const/4 v0, 0x4

    .line 101
    new-array v0, v0, [F

    .line 105
    iget v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p3

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v1

    move v3, p2

    :goto_0
    add-int v4, p2, p4

    if-ge v3, v4, :cond_1

    .line 107
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    if-eqz v4, :cond_0

    .line 108
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    const/4 v6, 0x0

    aget v7, v0, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_0

    .line 109
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    aput v4, v0, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object p4

    .line 114
    iget v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v1, v3

    add-int/2addr v1, p1

    sub-int/2addr v1, p3

    add-int/2addr v1, v2

    :goto_1
    iget v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v3, v5

    add-int/2addr v3, p1

    add-int/2addr v3, v2

    if-ge v1, v3, :cond_3

    .line 115
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/borders/Border;

    if-eqz v3, :cond_2

    .line 116
    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    aget v6, v0, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 117
    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    aput v3, v0, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    :cond_3
    iget p4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    add-int/2addr p4, p1

    add-int/2addr p4, v2

    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object p4

    move v1, p2

    :goto_2
    if-ge v1, v4, :cond_5

    .line 123
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/borders/Border;

    if-eqz v3, :cond_4

    .line 124
    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    const/4 v6, 0x2

    aget v7, v0, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_4

    .line 125
    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    aput v3, v0, v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 129
    :cond_5
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object p2

    .line 130
    iget p4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr p4, v1

    add-int/2addr p4, p1

    sub-int/2addr p4, p3

    add-int/2addr p4, v2

    :goto_3
    iget p3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr p3, v1

    add-int/2addr p3, p1

    add-int/2addr p3, v2

    if-ge p4, p3, :cond_7

    .line 131
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/borders/Border;

    if-eqz p3, :cond_6

    .line 132
    invoke-virtual {p3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    const/4 v3, 0x3

    aget v4, v0, v3

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    .line 133
    invoke-virtual {p3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p3

    aput p3, v0, v3

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_7
    return-object v0
.end method

.method protected getCellVerticalAddition([F)F
    .locals 3

    const/4 v0, 0x0

    .line 607
    aget v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method getCrossingBorders(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 696
    iget v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getHorizontalBorder(I)Ljava/util/List;

    move-result-object v0

    .line 697
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v1

    .line 699
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    if-lez p2, :cond_0

    add-int/lit8 v4, p2, -0x1

    .line 700
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez p1, :cond_1

    .line 701
    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v4, v5

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    .line 702
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 701
    :goto_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->numberOfColumns:I

    if-ge p2, v4, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/borders/Border;

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    iget v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->finishRow:I

    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    sub-int/2addr v0, v4

    if-gt p1, v0, :cond_3

    iget v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v0, v3

    add-int/2addr v0, p1

    .line 705
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/itextpdf/layout/borders/Border;

    .line 704
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    iget v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->finishRow:I

    iget v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBottomBorderCollapseWith:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 711
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/borders/Border;

    const/4 v0, 0x3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/borders/Border;

    invoke-static {p1, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->isBorderWider(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 712
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBottomBorderCollapseWith:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v2
.end method

.method public getHorizontalBorder(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 173
    iget v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne p1, v0, :cond_6

    .line 174
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->topBorderCollapseWith:Ljava/util/List;

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    aget-object v3, v3, v2

    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->numberOfColumns:I

    invoke-static {v0, v3, v4}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->createAndFillBorderList(Ljava/util/List;Lcom/itextpdf/layout/borders/Border;I)Ljava/util/List;

    move-result-object v0

    .line 175
    iget v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    if-ne p1, v3, :cond_0

    .line 176
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->horizontalBorders:Ljava/util/List;

    iget v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr p1, v2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_5

    :goto_0
    move v3, p1

    .line 181
    :cond_1
    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->numberOfColumns:I

    if-ge v2, v4, :cond_5

    .line 182
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    iget v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int v5, v3, v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v4, v4, v2

    if-eqz v4, :cond_4

    sub-int v4, v3, p1

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    iget v6, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int v6, v3, v6

    .line 183
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v5}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 184
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    iget v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v3, v5

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v3, v3, v2

    .line 185
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/element/Cell;

    const/16 v5, 0xd

    invoke-static {v4, v5}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->getCellSideBorder(Lcom/itextpdf/layout/element/Cell;I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v4

    .line 186
    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 187
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v6}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    :cond_2
    move v5, v2

    :goto_1
    add-int v6, v2, v3

    if-ge v5, v6, :cond_3

    .line 189
    invoke-interface {v0, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v2, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 196
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    :cond_5
    return-object v0

    .line 204
    :cond_6
    iget v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->finishRow:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_d

    .line 205
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->bottomBorderCollapseWith:Ljava/util/List;

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->numberOfColumns:I

    invoke-static {v0, v3, v4}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->createAndFillBorderList(Ljava/util/List;Lcom/itextpdf/layout/borders/Border;I)Ljava/util/List;

    move-result-object v0

    .line 206
    iget v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int v3, p1, v3

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->horizontalBorders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_7

    .line 207
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->horizontalBorders:Ljava/util/List;

    iget v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr p1, v2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1, v0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 209
    :cond_7
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 p1, p1, -0x1

    :goto_2
    move v3, p1

    .line 212
    :cond_8
    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->numberOfColumns:I

    if-ge v2, v4, :cond_c

    .line 213
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    iget v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int v5, v3, v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v4, v4, v2

    if-eqz v4, :cond_b

    .line 214
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    iget v5, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v3, v5

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v3, v3, v2

    .line 215
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/element/Cell;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->getCellSideBorder(Lcom/itextpdf/layout/element/Cell;I)Lcom/itextpdf/layout/borders/Border;

    move-result-object v4

    .line 216
    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 217
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v6}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    :cond_9
    move v5, v2

    :goto_3
    add-int v6, v2, v3

    if-ge v5, v6, :cond_a

    .line 219
    invoke-interface {v0, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    add-int/2addr v2, v3

    goto :goto_2

    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 226
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_8

    :cond_c
    return-object v0

    .line 234
    :cond_d
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->horizontalBorders:Ljava/util/List;

    iget v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getTopBorderCollapseWith()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->topBorderCollapseWith:Ljava/util/List;

    return-object v0
.end method

.method public getVerticalBorder(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v1, 0x3

    aget-object p1, p1, v1

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    const/4 v2, 0x0

    .line 160
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->createAndFillBorderList(Ljava/util/List;Lcom/itextpdf/layout/borders/Border;I)Ljava/util/List;

    move-result-object p1

    .line 161
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 162
    :cond_0
    iget v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->numberOfColumns:I

    if-ne p1, v1, :cond_1

    .line 163
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->tableBoundingBorders:[Lcom/itextpdf/layout/borders/Border;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    .line 164
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 163
    invoke-static {v0, p1, v2}, Lcom/itextpdf/layout/renderer/TableBorderUtil;->createAndFillBorderList(Ljava/util/List;Lcom/itextpdf/layout/borders/Border;I)Ljava/util/List;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getCollapsedList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBorders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getVerticalBordersCrossingTopHorizontalBorder()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->numberOfColumns:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 146
    :goto_0
    iget v2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->numberOfColumns:I

    if-gt v1, v2, :cond_1

    .line 147
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getVerticalBorder(I)Ljava/util/List;

    move-result-object v2

    .line 149
    iget v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v3, v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->startRow:I

    iget v4, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->largeTableIndexOffset:I

    sub-int/2addr v3, v4

    .line 150
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/borders/Border;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 151
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setBottomBorderCollapseWith(Ljava/util/List;Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;)",
            "Lcom/itextpdf/layout/renderer/CollapsedTableBorders;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->bottomBorderCollapseWith:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 252
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p1, 0x0

    .line 254
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBottomBorderCollapseWith:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 256
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->verticalBottomBorderCollapseWith:Ljava/util/List;

    :cond_1
    return-object p0
.end method

.method public setTopBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;)",
            "Lcom/itextpdf/layout/renderer/CollapsedTableBorders;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->topBorderCollapseWith:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 243
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method protected skipFooter([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    .line 648
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setTableBoundingBorders([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 p1, 0x0

    .line 649
    invoke-virtual {p0, p1, p1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setBottomBorderCollapseWith(Ljava/util/List;Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    return-object p0
.end method

.method protected skipHeader([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    .line 654
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setTableBoundingBorders([Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/renderer/TableBorders;

    const/4 p1, 0x0

    .line 655
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setTopBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    return-object p0
.end method

.method protected updateBordersOnNewPage(ZZLcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/layout/renderer/TableRenderer;)Lcom/itextpdf/layout/renderer/TableBorders;
    .locals 0

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    .line 616
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rows:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->processAllBordersAndEmptyRows()Lcom/itextpdf/layout/renderer/TableBorders;

    .line 618
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getMaxRightWidth()F

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rightBorderMaxWidth:F

    .line 619
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->getMaxLeftWidth()F

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->leftBorderMaxWidth:F

    .line 622
    :cond_0
    invoke-virtual {p3}, Lcom/itextpdf/layout/renderer/TableRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Table;

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Table;->getLastRowBottomBorder()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setTopBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 624
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setTopBorderCollapseWith(Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    .line 625
    invoke-virtual {p0, p1, p1}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->setBottomBorderCollapseWith(Ljava/util/List;Ljava/util/List;)Lcom/itextpdf/layout/renderer/CollapsedTableBorders;

    :cond_2
    :goto_0
    if-eqz p5, :cond_3

    .line 629
    iget-object p1, p5, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxRightWidth()F

    move-result p1

    .line 630
    iget-object p2, p5, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxLeftWidth()F

    move-result p2

    .line 632
    iget p3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->leftBorderMaxWidth:F

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->leftBorderMaxWidth:F

    .line 633
    iget p2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rightBorderMaxWidth:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rightBorderMaxWidth:F

    :cond_3
    if-eqz p4, :cond_4

    .line 637
    iget-object p1, p4, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxRightWidth()F

    move-result p1

    .line 638
    iget-object p2, p4, Lcom/itextpdf/layout/renderer/TableRenderer;->bordersHandler:Lcom/itextpdf/layout/renderer/TableBorders;

    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/TableBorders;->getMaxLeftWidth()F

    move-result p2

    .line 640
    iget p3, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->leftBorderMaxWidth:F

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->leftBorderMaxWidth:F

    .line 641
    iget p2, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rightBorderMaxWidth:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/renderer/CollapsedTableBorders;->rightBorderMaxWidth:F

    :cond_4
    return-object p0
.end method
