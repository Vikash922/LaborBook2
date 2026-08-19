.class public Lcom/itextpdf/layout/renderer/CellRenderer;
.super Lcom/itextpdf/layout/renderer/BlockRenderer;
.source "CellRenderer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/element/Cell;)V
    .locals 2

    .line 71
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    .line 73
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 74
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getColspan()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 3

    .line 164
    sget-object v0, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_0
    return-object p1
.end method

.method protected applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 176
    sget-object p2, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 177
    invoke-virtual {p0, p1, p3}, Lcom/itextpdf/layout/renderer/CellRenderer;->applySpacings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_0
    return-object p1
.end method

.method protected applySpacings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 7

    .line 192
    sget-object v0, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v1, 0x74

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 194
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x73

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    const/4 v2, 0x4

    .line 195
    new-array v3, v2, [F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 197
    rem-int/lit8 v5, v4, 0x2

    const/4 v6, 0x0

    if-nez v5, :cond_0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    :cond_1
    :goto_1
    aput v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0, p1, v3, p2}, Lcom/itextpdf/layout/renderer/CellRenderer;->applySpacings(Lcom/itextpdf/kernel/geom/Rectangle;[FZ)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_3
    return-object p1
.end method

.method protected applySpacings(Lcom/itextpdf/kernel/geom/Rectangle;[FZ)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 8

    .line 219
    sget-object v0, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 220
    aget v0, p2, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    const/4 v0, 0x1

    aget v0, p2, v0

    div-float v4, v0, v1

    const/4 v0, 0x2

    aget v0, p2, v0

    div-float v5, v0, v1

    const/4 v0, 0x3

    aget p2, p2, v0

    div-float v6, p2, v1

    move-object v2, p1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_0
    return-object p1
.end method

.method protected createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 110
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v0, p1, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 111
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v0, p1, Lcom/itextpdf/layout/renderer/CellRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 112
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->addAllProperties(Ljava/util/Map;)V

    return-object p1
.end method

.method protected createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 96
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v0, p1, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 97
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v0, p1, Lcom/itextpdf/layout/renderer/CellRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 98
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    iput-object v0, p1, Lcom/itextpdf/layout/renderer/CellRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p1, Lcom/itextpdf/layout/renderer/CellRenderer;->isLastRendererForModelElement:Z

    .line 100
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->addAllProperties(Ljava/util/Map;)V

    return-object p1
.end method

.method public drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 29

    move-object/from16 v1, p0

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCtm()Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v2

    const/16 v3, 0x37

    .line 122
    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 123
    invoke-virtual {v1, v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->hasProperty(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v7

    .line 124
    :goto_0
    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->hasOwnProperty(I)Z

    move-result v9

    const/4 v10, 0x7

    const/4 v11, 0x4

    const/4 v12, 0x3

    if-eqz v8, :cond_1

    .line 126
    new-instance v26, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-virtual {v2, v7}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v13

    float-to-double v14, v13

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v13

    move/from16 v27, v8

    float-to-double v7, v13

    invoke-virtual {v2, v12}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v13

    move-object/from16 v28, v4

    float-to-double v3, v13

    invoke-virtual {v2, v11}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v13

    float-to-double v11, v13

    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v13

    float-to-double v5, v13

    invoke-virtual {v2, v10}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v13

    move-wide/from16 v20, v11

    float-to-double v10, v13

    move-object/from16 v13, v26

    move-wide/from16 v16, v7

    move-wide/from16 v18, v3

    move-wide/from16 v22, v5

    move-wide/from16 v24, v10

    invoke-direct/range {v13 .. v25}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    .line 128
    :try_start_0
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/kernel/geom/AffineTransform;->createInverse()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v3
    :try_end_0
    .catch Lcom/itextpdf/kernel/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    new-instance v4, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v4}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 133
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 v3, 0x0

    const/16 v4, 0x37

    .line 134
    invoke-virtual {v1, v4, v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 130
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v3, "A noninvertible matrix has been parsed. The behaviour is unpredictable."

    invoke-direct {v0, v3, v2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    move-object/from16 v28, v4

    move/from16 v27, v8

    .line 137
    :goto_1
    invoke-super/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V

    if-eqz v27, :cond_3

    if-eqz v9, :cond_2

    move-object/from16 v3, v28

    const/16 v4, 0x37

    .line 142
    invoke-virtual {v1, v4, v3}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/16 v4, 0x37

    .line 144
    invoke-virtual {v1, v4}, Lcom/itextpdf/layout/renderer/CellRenderer;->deleteOwnProperty(I)V

    .line 146
    :goto_2
    new-instance v3, Lcom/itextpdf/kernel/geom/AffineTransform;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v4

    float-to-double v6, v4

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v4

    float-to-double v8, v4

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v4

    float-to-double v10, v4

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v4

    float-to-double v12, v4

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v4

    float-to-double v14, v4

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v2

    float-to-double v4, v2

    move-wide/from16 v16, v4

    move-object v5, v3

    invoke-direct/range {v5 .. v17}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_3
    return-void
.end method

.method public drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 3

    .line 155
    sget-object v0, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/properties/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V

    :cond_0
    return-void
.end method

.method public getModelElement()Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 240
    const-class v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->logWarningIfGetNextRendererNotOverridden(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 241
    new-instance v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;-><init>(Lcom/itextpdf/layout/element/Cell;)V

    return-object v0
.end method

.method protected retrieveWidth(F)Ljava/lang/Float;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
