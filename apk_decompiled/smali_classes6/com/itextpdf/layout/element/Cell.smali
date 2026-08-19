.class public Lcom/itextpdf/layout/element/Cell;
.super Lcom/itextpdf/layout/element/BlockElement;
.source "Cell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/element/BlockElement<",
        "Lcom/itextpdf/layout/element/Cell;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_BORDER:Lcom/itextpdf/layout/borders/Border;


# instance fields
.field private col:I

.field private colspan:I

.field private row:I

.field private rowspan:I

.field protected tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lcom/itextpdf/layout/borders/SolidBorder;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(F)V

    sput-object v0, Lcom/itextpdf/layout/element/Cell;->DEFAULT_BORDER:Lcom/itextpdf/layout/borders/Border;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 98
    invoke-direct {p0, v0, v0}, Lcom/itextpdf/layout/element/Cell;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    const/4 v0, 0x1

    .line 90
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/element/Cell;->rowspan:I

    .line 91
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/element/Cell;->colspan:I

    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/itextpdf/layout/element/Cell;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Cell;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/itextpdf/layout/element/Cell;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clone(Z)Lcom/itextpdf/layout/element/Cell;
    .locals 3

    .line 185
    new-instance v0, Lcom/itextpdf/layout/element/Cell;

    iget v1, p0, Lcom/itextpdf/layout/element/Cell;->rowspan:I

    iget v2, p0, Lcom/itextpdf/layout/element/Cell;->colspan:I

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/element/Cell;-><init>(II)V

    .line 186
    iget v1, p0, Lcom/itextpdf/layout/element/Cell;->row:I

    iput v1, v0, Lcom/itextpdf/layout/element/Cell;->row:I

    .line 187
    iget v1, p0, Lcom/itextpdf/layout/element/Cell;->col:I

    iput v1, v0, Lcom/itextpdf/layout/element/Cell;->col:I

    .line 188
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/itextpdf/layout/element/Cell;->properties:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/itextpdf/layout/element/Cell;->properties:Ljava/util/Map;

    .line 189
    iget-object v1, p0, Lcom/itextpdf/layout/element/Cell;->styles:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 190
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/itextpdf/layout/element/Cell;->styles:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/itextpdf/layout/element/Cell;->styles:Ljava/util/Set;

    :cond_0
    if-eqz p1, :cond_1

    .line 193
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/layout/element/Cell;->childElements:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/itextpdf/layout/element/Cell;->childElements:Ljava/util/List;

    :cond_1
    return-object v0
.end method

.method public getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/itextpdf/layout/element/Cell;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    const-string v1, "TD"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Cell;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Cell;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    return-object v0
.end method

.method public getCol()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/itextpdf/layout/element/Cell;->col:I

    return v0
.end method

.method public getColspan()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/itextpdf/layout/element/Cell;->colspan:I

    return v0
.end method

.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 209
    invoke-super {p0, p1}, Lcom/itextpdf/layout/element/BlockElement;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    const/high16 p1, 0x40000000    # 2.0f

    .line 207
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    return-object p1

    .line 202
    :cond_0
    sget-object p1, Lcom/itextpdf/layout/element/Cell;->DEFAULT_BORDER:Lcom/itextpdf/layout/borders/Border;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/itextpdf/layout/element/Cell;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/itextpdf/layout/element/Cell;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/itextpdf/layout/element/Cell;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 113
    iget-object v1, p0, Lcom/itextpdf/layout/element/Cell;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/element/Cell;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 114
    check-cast v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    goto :goto_0

    .line 116
    :cond_0
    const-class v0, Lcom/itextpdf/layout/element/Table;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 117
    const-string v1, "Invalid renderer for Table: must be inherited from TableRenderer"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Cell;->makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/itextpdf/layout/element/Cell;->row:I

    return v0
.end method

.method public getRowspan()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/itextpdf/layout/element/Cell;->rowspan:I

    return v0
.end method

.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 228
    new-instance v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/CellRenderer;-><init>(Lcom/itextpdf/layout/element/Cell;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 215
    iget v0, p0, Lcom/itextpdf/layout/element/Cell;->row:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/layout/element/Cell;->col:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/layout/element/Cell;->rowspan:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/layout/element/Cell;->colspan:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cell[row={0}, col={1}, rowspan={2}, colspan={3}]"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateCellIndexes(III)Lcom/itextpdf/layout/element/Cell;
    .locals 0

    .line 241
    iput p1, p0, Lcom/itextpdf/layout/element/Cell;->row:I

    .line 242
    iput p2, p0, Lcom/itextpdf/layout/element/Cell;->col:I

    .line 243
    iget p1, p0, Lcom/itextpdf/layout/element/Cell;->colspan:I

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/element/Cell;->colspan:I

    return-object p0
.end method
