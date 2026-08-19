.class public Lcom/itextpdf/layout/element/Table;
.super Lcom/itextpdf/layout/element/BlockElement;
.source "Table.java"

# interfaces
.implements Lcom/itextpdf/layout/element/ILargeElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/element/Table$RowRange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/element/BlockElement<",
        "Lcom/itextpdf/layout/element/Table;",
        ">;",
        "Lcom/itextpdf/layout/element/ILargeElement;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private caption:Lcom/itextpdf/layout/element/Div;

.field private columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

.field private currentColumn:I

.field private currentRow:I

.field private document:Lcom/itextpdf/layout/Document;

.field private footer:Lcom/itextpdf/layout/element/Table;

.field private header:Lcom/itextpdf/layout/element/Table;

.field private isComplete:Z

.field private lastAddedRow:[Lcom/itextpdf/layout/element/Cell;

.field private lastAddedRowGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/element/Table$RowRange;",
            ">;"
        }
    .end annotation
.end field

.field private rowWindowStart:I

.field private rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lcom/itextpdf/layout/element/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private skipFirstHeader:Z

.field private skipLastFooter:Z

.field protected tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/element/Table;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 218
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    const/4 v1, -0x1

    .line 80
    iput v1, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    .line 89
    iput v0, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    if-lez p1, :cond_0

    .line 222
    invoke-static {p1}, Lcom/itextpdf/layout/element/Table;->normalizeColumnWidths(I)[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

    .line 223
    invoke-direct {p0, p2}, Lcom/itextpdf/layout/element/Table;->initializeLargeTable(Z)V

    .line 224
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->initializeRows()V

    return-void

    .line 220
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The number of columns in Table constructor must be greater than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([F)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/element/Table;-><init>([FZ)V

    return-void
.end method

.method public constructor <init>([FZ)V
    .locals 2

    .line 113
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    const/4 v1, -0x1

    .line 80
    iput v1, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    .line 89
    iput v0, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    if-eqz p1, :cond_1

    .line 117
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p1}, Lcom/itextpdf/layout/element/Table;->normalizeColumnWidths([F)[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

    .line 121
    invoke-direct {p0, p2}, Lcom/itextpdf/layout/element/Table;->initializeLargeTable(Z)V

    .line 122
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->initializeRows()V

    return-void

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The widths array in table constructor can not have zero length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The widths array in table constructor can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lcom/itextpdf/layout/properties/UnitValue;)V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/element/Table;-><init>([Lcom/itextpdf/layout/properties/UnitValue;Z)V

    return-void
.end method

.method public constructor <init>([Lcom/itextpdf/layout/properties/UnitValue;Z)V
    .locals 2

    .line 144
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    const/4 v1, -0x1

    .line 80
    iput v1, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    .line 89
    iput v0, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    if-eqz p1, :cond_1

    .line 148
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 151
    invoke-static {p1}, Lcom/itextpdf/layout/element/Table;->normalizeColumnWidths([Lcom/itextpdf/layout/properties/UnitValue;)[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

    .line 152
    invoke-direct {p0, p2}, Lcom/itextpdf/layout/element/Table;->initializeLargeTable(Z)V

    .line 153
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->initializeRows()V

    return-void

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The widths array in table constructor can not have zero length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The widths array in table constructor can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private cellBelongsToAnyRowGroup(Lcom/itextpdf/layout/element/Cell;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/element/Cell;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/element/Table$RowRange;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 990
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getRow()I

    move-result v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 991
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getRow()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {p2}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result p2

    if-gt p1, p2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private ensureCaptionPropertiesAreSet()V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->caption:Lcom/itextpdf/layout/element/Div;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Div;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v0

    const-string v1, "Caption"

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    return-void
.end method

.method private ensureFooterIsInitialized()V
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    if-nez v0, :cond_3

    .line 1014
    new-instance v0, Lcom/itextpdf/layout/element/Table;

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/element/Table;-><init>([Lcom/itextpdf/layout/properties/UnitValue;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    .line 1015
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Table;->getWidth()Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Table;->setWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/IElement;

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v0

    const-string v1, "TFoot"

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    const/16 v0, 0x72

    .line 1018
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->hasOwnProperty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1019
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Table;->setBorderCollapse(Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;)Lcom/itextpdf/layout/element/Table;

    :cond_1
    const/16 v0, 0x73

    .line 1021
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->hasOwnProperty(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1022
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Table;->setHorizontalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    :cond_2
    const/16 v0, 0x74

    .line 1024
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->hasOwnProperty(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1025
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Table;->setVerticalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    :cond_3
    return-void
.end method

.method private ensureHeaderIsInitialized()V
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    if-nez v0, :cond_3

    .line 996
    new-instance v0, Lcom/itextpdf/layout/element/Table;

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/element/Table;-><init>([Lcom/itextpdf/layout/properties/UnitValue;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    .line 997
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Table;->getWidth()Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Table;->setWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/IElement;

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v0

    const-string v1, "THead"

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    const/16 v0, 0x72

    .line 1000
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->hasOwnProperty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1001
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Table;->setBorderCollapse(Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;)Lcom/itextpdf/layout/element/Table;

    :cond_1
    const/16 v0, 0x73

    .line 1003
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->hasOwnProperty(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1004
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Table;->setHorizontalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    :cond_2
    const/16 v0, 0x74

    .line 1006
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->hasOwnProperty(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1007
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Table;->setVerticalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    :cond_3
    return-void
.end method

.method private initializeLargeTable(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 1031
    iput-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    .line 1033
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Table;->setWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/IElement;

    .line 1034
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Table;->setFixedLayout()Lcom/itextpdf/layout/element/Table;

    :cond_0
    return-void
.end method

.method private initializeRows()V
    .locals 1

    .line 985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    const/4 v0, -0x1

    .line 986
    iput v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    return-void
.end method

.method private static normalizeColumnWidths(I)[Lcom/itextpdf/layout/properties/UnitValue;
    .locals 0

    .line 939
    new-array p0, p0, [Lcom/itextpdf/layout/properties/UnitValue;

    return-object p0
.end method

.method private static normalizeColumnWidths([F)[Lcom/itextpdf/layout/properties/UnitValue;
    .locals 5

    .line 919
    array-length v0, p0

    new-array v1, v0, [Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 921
    aget v3, p0, v2

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    .line 922
    invoke-static {v3}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static normalizeColumnWidths([Lcom/itextpdf/layout/properties/UnitValue;)[Lcom/itextpdf/layout/properties/UnitValue;
    .locals 4

    .line 929
    array-length v0, p0

    new-array v0, v0, [Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v1, 0x0

    .line 930
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 931
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    new-instance v2, Lcom/itextpdf/layout/properties/UnitValue;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(Lcom/itextpdf/layout/properties/UnitValue;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addCell(Lcom/itextpdf/layout/element/BlockElement;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/itextpdf/layout/element/IElement;",
            ">(",
            "Lcom/itextpdf/layout/element/BlockElement<",
            "TT;>;)",
            "Lcom/itextpdf/layout/element/Table;"
        }
    .end annotation

    .line 632
    new-instance v0, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {v0}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    move-result-object p1

    return-object p1
.end method

.method public addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;
    .locals 5

    .line 588
    iget-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRow:[Lcom/itextpdf/layout/element/Cell;

    if-nez v0, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "The large table was completed. It\'s prohibited to use it anymore. Created different Table instance instead."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 594
    :cond_1
    :goto_0
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 595
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Table;->startNewRow()Lcom/itextpdf/layout/element/Table;

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v1, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    iget v2, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/element/Cell;

    iget v1, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 598
    iput v1, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    goto :goto_0

    .line 604
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    iget v1, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/itextpdf/layout/element/Cell;->updateCellIndexes(III)Lcom/itextpdf/layout/element/Cell;

    .line 607
    :goto_1
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    iget v1, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 608
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

    array-length v1, v1

    new-array v1, v1, [Lcom/itextpdf/layout/element/Cell;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 612
    :cond_5
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    :goto_2
    iget v1, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    .line 613
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v2, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/element/Cell;

    .line 614
    iget v2, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    :goto_3
    iget v3, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getColspan()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_7

    .line 615
    aget-object v3, v1, v2

    if-nez v3, :cond_6

    .line 616
    aput-object p1, v1, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 620
    :cond_8
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getColspan()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    return-object p0
.end method

.method public addCell(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 642
    new-instance v0, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {v0}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Cell;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    move-result-object p1

    return-object p1
.end method

.method public addCell(Ljava/lang/String;)Lcom/itextpdf/layout/element/Table;
    .locals 2

    .line 652
    new-instance v0, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {v0}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    new-instance v1, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v1, p1}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    move-result-object p1

    return-object p1
.end method

.method public addFooterCell(Lcom/itextpdf/layout/element/BlockElement;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/itextpdf/layout/element/IElement;",
            ">(",
            "Lcom/itextpdf/layout/element/BlockElement<",
            "TT;>;)",
            "Lcom/itextpdf/layout/element/Table;"
        }
    .end annotation

    .line 433
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureFooterIsInitialized()V

    .line 434
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/BlockElement;)Lcom/itextpdf/layout/element/Table;

    return-object p0
.end method

.method public addFooterCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 418
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureFooterIsInitialized()V

    .line 419
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    return-object p0
.end method

.method public addFooterCell(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 447
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureFooterIsInitialized()V

    .line 448
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Table;

    return-object p0
.end method

.method public addFooterCell(Ljava/lang/String;)Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 461
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureFooterIsInitialized()V

    .line 462
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Ljava/lang/String;)Lcom/itextpdf/layout/element/Table;

    return-object p0
.end method

.method public addHeaderCell(Lcom/itextpdf/layout/element/BlockElement;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/itextpdf/layout/element/IElement;",
            ">(",
            "Lcom/itextpdf/layout/element/BlockElement<",
            "TT;>;)",
            "Lcom/itextpdf/layout/element/Table;"
        }
    .end annotation

    .line 367
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureHeaderIsInitialized()V

    .line 368
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/BlockElement;)Lcom/itextpdf/layout/element/Table;

    return-object p0
.end method

.method public addHeaderCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 352
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureHeaderIsInitialized()V

    .line 353
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    return-object p0
.end method

.method public addHeaderCell(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 381
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureHeaderIsInitialized()V

    .line 382
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Table;

    return-object p0
.end method

.method public addHeaderCell(Ljava/lang/String;)Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 395
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureHeaderIsInitialized()V

    .line 396
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Ljava/lang/String;)Lcom/itextpdf/layout/element/Table;

    return-object p0
.end method

.method public complete()V
    .locals 1

    const/4 v0, 0x1

    .line 750
    iput-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    .line 751
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Table;->flush()V

    return-void
.end method

.method public createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 5

    .line 683
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Table;->getRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 684
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->childElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/IElement;

    .line 685
    iget-boolean v3, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    if-nez v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/element/Cell;

    iget-object v4, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lcom/itextpdf/layout/element/Table;->cellBelongsToAnyRowGroup(Lcom/itextpdf/layout/element/Cell;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 687
    :cond_1
    invoke-interface {v2}, Lcom/itextpdf/layout/element/IElement;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public flush()V
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 761
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/element/Cell;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 764
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v2, p0}, Lcom/itextpdf/layout/Document;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/Document;

    if-eqz v1, :cond_1

    .line 765
    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 766
    iput-object v1, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRow:[Lcom/itextpdf/layout/element/Cell;

    :cond_1
    return-void
.end method

.method public flushContent()V
    .locals 8

    .line 776
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table$RowRange;

    iget v0, v0, Lcom/itextpdf/layout/element/Table$RowRange;->startRow:I

    .line 779
    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Table$RowRange;

    iget v2, v2, Lcom/itextpdf/layout/element/Table$RowRange;->finishRow:I

    .line 781
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 782
    iget-object v4, p0, Lcom/itextpdf/layout/element/Table;->childElements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/element/IElement;

    .line 783
    move-object v6, v5

    check-cast v6, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v6}, Lcom/itextpdf/layout/element/Cell;->getRow()I

    move-result v7

    if-lt v7, v0, :cond_1

    invoke-virtual {v6}, Lcom/itextpdf/layout/element/Cell;->getRow()I

    move-result v6

    if-gt v6, v2, :cond_1

    .line 784
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 787
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/layout/element/Table;->childElements:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :goto_1
    sub-int v3, v2, v0

    if-ge v1, v3, :cond_3

    .line 790
    iget-object v3, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v4, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v4, v0, v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 792
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v2, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/element/Cell;

    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRow:[Lcom/itextpdf/layout/element/Cell;

    .line 793
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    const/4 v0, 0x0

    .line 795
    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    :cond_4
    :goto_2
    return-void
.end method

.method public getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2

    .line 907
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    if-nez v0, :cond_0

    .line 908
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    const-string v1, "Table"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    return-object v0
.end method

.method public getCaption()Lcom/itextpdf/layout/element/Div;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->caption:Lcom/itextpdf/layout/element/Div;

    return-object v0
.end method

.method public getCell(II)Lcom/itextpdf/layout/element/Cell;
    .locals 2

    .line 664
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v1, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/element/Cell;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getRow()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getCol()I

    move-result p1

    if-ne p1, p2, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getColumnWidth(I)Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFooter()Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    return-object v0
.end method

.method public getHeader()Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    return-object v0
.end method

.method public getLastRowBottomBorder()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 810
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRow:[Lcom/itextpdf/layout/element/Cell;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 811
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRow:[Lcom/itextpdf/layout/element/Cell;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 812
    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    const/16 v3, 0xa

    .line 815
    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Cell;->hasProperty(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 816
    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Cell;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/borders/Border;

    goto :goto_1

    :cond_0
    const/16 v3, 0x9

    .line 817
    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Cell;->hasProperty(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 818
    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Cell;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/borders/Border;

    goto :goto_1

    .line 820
    :cond_1
    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Cell;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/borders/Border;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 823
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

    array-length v0, v0

    return v0
.end method

.method public getNumberOfRows()I
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 4

    .line 702
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 705
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/element/Table;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    return-object v0

    .line 708
    :cond_0
    const-class v0, Lcom/itextpdf/layout/element/Table;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 709
    const-string v1, "Invalid renderer for Table: must be inherited from TableRenderer"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 714
    :cond_1
    iget-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    if-eqz v0, :cond_2

    .line 716
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRow:[Lcom/itextpdf/layout/element/Cell;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    new-instance v1, Lcom/itextpdf/layout/element/Table$RowRange;

    iget v2, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    iget-object v3, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    goto :goto_0

    .line 722
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Table;->getRowGroups()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    .line 724
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    if-eqz v0, :cond_4

    .line 725
    new-instance v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    new-instance v1, Lcom/itextpdf/layout/element/Table$RowRange;

    iget v2, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    iget-object v3, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;-><init>(Lcom/itextpdf/layout/element/Table;Lcom/itextpdf/layout/element/Table$RowRange;)V

    return-object v0

    .line 727
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table$RowRange;

    iget v0, v0, Lcom/itextpdf/layout/element/Table$RowRange;->finishRow:I

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    .line 728
    :goto_1
    new-instance v1, Lcom/itextpdf/layout/renderer/TableRenderer;

    new-instance v2, Lcom/itextpdf/layout/element/Table$RowRange;

    iget v3, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    invoke-direct {v2, v3, v0}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-direct {v1, p0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;-><init>(Lcom/itextpdf/layout/element/Table;Lcom/itextpdf/layout/element/Table$RowRange;)V

    return-object v1
.end method

.method protected getRowGroups()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/element/Table$RowRange;",
            ">;"
        }
    .end annotation

    .line 949
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    sub-int/2addr v0, v3

    .line 950
    :goto_0
    array-length v1, v1

    new-array v1, v1, [I

    .line 951
    iget v2, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    .line 952
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-gt v2, v0, :cond_8

    const/4 v5, 0x0

    move v6, v5

    .line 954
    :goto_2
    iget-object v7, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 955
    aput v2, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 957
    :cond_1
    aget v6, v1, v5

    iget-object v7, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v8, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v8, v6, v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/element/Cell;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v6, v3

    move v8, v3

    move v7, v5

    :cond_2
    if-nez v7, :cond_6

    move v7, v3

    move v9, v5

    .line 962
    :goto_3
    iget-object v10, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

    array-length v10, v10

    if-ge v9, v10, :cond_2

    .line 963
    :goto_4
    aget v10, v1, v9

    if-ge v10, v0, :cond_3

    iget-object v11, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v12, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v12, v10, v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/itextpdf/layout/element/Cell;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v10, v3

    if-ge v10, v6, :cond_3

    .line 964
    aget v10, v1, v9

    iget-object v11, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v12, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v12, v10, v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/itextpdf/layout/element/Cell;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v11

    add-int/2addr v10, v11

    aput v10, v1, v9

    goto :goto_4

    .line 966
    :cond_3
    aget v10, v1, v9

    iget-object v11, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v12, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v12, v10, v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/itextpdf/layout/element/Cell;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v10, v3

    if-le v10, v6, :cond_4

    .line 967
    aget v6, v1, v9

    iget-object v7, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v10, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v10, v6, v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/layout/element/Cell;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v6, v3

    move v7, v5

    goto :goto_5

    .line 969
    :cond_4
    aget v10, v1, v9

    iget-object v11, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v12, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v12, v10, v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/itextpdf/layout/element/Cell;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v10, v3

    if-ge v10, v6, :cond_5

    move v8, v5

    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_6
    if-eqz v8, :cond_7

    .line 976
    new-instance v5, Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-direct {v5, v2, v6}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v6, 0x1

    goto/16 :goto_1

    :cond_8
    return-object v4
.end method

.method public isComplete()Z
    .locals 1

    .line 734
    iget-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    return v0
.end method

.method public isSkipFirstHeader()Z
    .locals 1

    .line 482
    iget-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->skipFirstHeader:Z

    return v0
.end method

.method public isSkipLastFooter()Z
    .locals 1

    .line 504
    iget-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->skipLastFooter:Z

    return v0
.end method

.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 915
    new-instance v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/TableRenderer;-><init>(Lcom/itextpdf/layout/element/Table;)V

    return-object v0
.end method

.method public setAutoLayout()Lcom/itextpdf/layout/element/Table;
    .locals 2

    const/16 v0, 0x5d

    .line 301
    const-string v1, "auto"

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setBorderCollapse(Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;)Lcom/itextpdf/layout/element/Table;
    .locals 1

    const/16 v0, 0x72

    .line 861
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    .line 862
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->setBorderCollapse(Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;)Lcom/itextpdf/layout/element/Table;

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    if-eqz v0, :cond_1

    .line 866
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->setBorderCollapse(Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;)Lcom/itextpdf/layout/element/Table;

    :cond_1
    return-object p0
.end method

.method public setCaption(Lcom/itextpdf/layout/element/Div;)Lcom/itextpdf/layout/element/Table;
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/itextpdf/layout/element/Table;->caption:Lcom/itextpdf/layout/element/Div;

    if-eqz p1, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureCaptionPropertiesAreSet()V

    :cond_0
    return-object p0
.end method

.method public setCaption(Lcom/itextpdf/layout/element/Div;Lcom/itextpdf/layout/properties/CaptionSide;)Lcom/itextpdf/layout/element/Table;
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x77

    .line 547
    invoke-virtual {p1, v0, p2}, Lcom/itextpdf/layout/element/Div;->setProperty(ILjava/lang/Object;)V

    .line 549
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Table;->setCaption(Lcom/itextpdf/layout/element/Div;)Lcom/itextpdf/layout/element/Table;

    return-object p0
.end method

.method public setDocument(Lcom/itextpdf/layout/Document;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/itextpdf/layout/element/Table;->document:Lcom/itextpdf/layout/Document;

    return-void
.end method

.method public setExtendBottomRow(Z)Lcom/itextpdf/layout/element/Table;
    .locals 1

    const/16 v0, 0x56

    .line 838
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setExtendBottomRowOnSplit(Z)Lcom/itextpdf/layout/element/Table;
    .locals 1

    const/16 v0, 0x57

    .line 850
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setFixedLayout()Lcom/itextpdf/layout/element/Table;
    .locals 2

    const/16 v0, 0x5d

    .line 278
    const-string v1, "fixed"

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setHorizontalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;
    .locals 2

    const/16 v0, 0x73

    .line 878
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    .line 879
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->setHorizontalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    if-eqz v0, :cond_1

    .line 883
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->setHorizontalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    :cond_1
    return-object p0
.end method

.method public setSkipFirstHeader(Z)Lcom/itextpdf/layout/element/Table;
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/itextpdf/layout/element/Table;->skipFirstHeader:Z

    return-object p0
.end method

.method public setSkipLastFooter(Z)Lcom/itextpdf/layout/element/Table;
    .locals 0

    .line 515
    iput-boolean p1, p0, Lcom/itextpdf/layout/element/Table;->skipLastFooter:Z

    return-object p0
.end method

.method public setVerticalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;
    .locals 2

    const/16 v0, 0x74

    .line 895
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    .line 896
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->setVerticalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    if-eqz v0, :cond_1

    .line 900
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->setVerticalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    :cond_1
    return-object p0
.end method

.method public startNewRow()Lcom/itextpdf/layout/element/Table;
    .locals 2

    const/4 v0, 0x0

    .line 572
    iput v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    .line 573
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    .line 574
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/properties/UnitValue;

    array-length v1, v1

    new-array v1, v1, [Lcom/itextpdf/layout/element/Cell;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public useAllAvailableWidth()Lcom/itextpdf/layout/element/Table;
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    .line 311
    invoke-static {v0}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method
