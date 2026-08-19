.class public Lcom/itextpdf/layout/renderer/TabRenderer;
.super Lcom/itextpdf/layout/renderer/AbstractRenderer;
.source "TabRenderer.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/Tab;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TabRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    if-nez v0, :cond_0

    .line 87
    const-class p1, Lcom/itextpdf/layout/renderer/TabRenderer;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 88
    const-string v0, "Drawing won\'t be performed."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Occupied area has not been initialized. {0}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x44

    .line 92
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TabRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    if-nez v0, :cond_1

    return-void

    .line 96
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;-><init>()V

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 101
    :cond_2
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TabRenderer;->beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 102
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TabRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TabRenderer;->endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_3
    return-void
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 123
    const-class v0, Lcom/itextpdf/layout/renderer/TabRenderer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/TabRenderer;->logWarningIfGetNextRendererNotOverridden(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 124
    new-instance v0, Lcom/itextpdf/layout/renderer/TabRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TabRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/Tab;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/TabRenderer;-><init>(Lcom/itextpdf/layout/element/Tab;)V

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 7

    .line 73
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TabRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x55

    .line 75
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TabRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/UnitValue;

    .line 76
    new-instance v2, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 77
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v5

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    add-float/2addr v6, p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-direct {v4, v5, v6, p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v2, p0, Lcom/itextpdf/layout/renderer/TabRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 79
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 81
    new-instance p1, Lcom/itextpdf/layout/layout/LayoutResult;

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TabRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, v2, v0, v1, v1}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object p1
.end method
