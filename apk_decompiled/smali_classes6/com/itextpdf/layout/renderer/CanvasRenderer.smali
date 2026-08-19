.class public Lcom/itextpdf/layout/renderer/CanvasRenderer;
.super Lcom/itextpdf/layout/renderer/RootRenderer;
.source "CanvasRenderer.java"


# instance fields
.field protected canvas:Lcom/itextpdf/layout/Canvas;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/Canvas;)V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/renderer/CanvasRenderer;-><init>(Lcom/itextpdf/layout/Canvas;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/Canvas;Z)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/RootRenderer;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    .line 83
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 84
    iput-boolean p2, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->immediateFlush:Z

    return-void
.end method


# virtual methods
.method public addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 2

    .line 89
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x19

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/CanvasRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-class p1, Lcom/itextpdf/layout/renderer/CanvasRenderer;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "Canvas is already full. Element will be skipped."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/RootRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    :goto_0
    return-void
.end method

.method protected flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v0}, Lcom/itextpdf/layout/Canvas;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/CanvasRenderer;->linkRenderToDocument(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const/16 v0, 0x35

    .line 104
    invoke-interface {p1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/Transform;

    .line 105
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itextpdf/layout/renderer/CanvasRenderer;->processWaitingDrawing(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/Transform;Ljava/util/List;)V

    .line 107
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 111
    :cond_1
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 112
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v0}, Lcom/itextpdf/layout/Canvas;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v0}, Lcom/itextpdf/layout/Canvas;->isAutoTaggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 115
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v3}, Lcom/itextpdf/layout/Canvas;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getAutoTaggingPointer()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v4}, Lcom/itextpdf/layout/Canvas;->getPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setPageForTagging(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 119
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v4}, Lcom/itextpdf/layout/Canvas;->getPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStreamCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_4

    .line 120
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v1}, Lcom/itextpdf/layout/Canvas;->getPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v5}, Lcom/itextpdf/layout/Canvas;->getPdfCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 126
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v1}, Lcom/itextpdf/layout/Canvas;->getPdfCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setContentStreamForTagging(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    goto :goto_2

    :cond_5
    move-object v3, v2

    .line 129
    :goto_2
    new-instance v1, Lcom/itextpdf/layout/renderer/DrawContext;

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v4}, Lcom/itextpdf/layout/Canvas;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v5}, Lcom/itextpdf/layout/Canvas;->getPdfCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    invoke-direct {v1, v4, v5, v0}, Lcom/itextpdf/layout/renderer/DrawContext;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Z)V

    invoke-interface {p1, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    if-eqz v0, :cond_6

    .line 131
    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setContentStreamForTagging(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    :cond_6
    return-void
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 3

    .line 158
    new-instance v0, Lcom/itextpdf/layout/renderer/CanvasRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    iget-boolean v2, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->immediateFlush:Z

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/renderer/CanvasRenderer;-><init>(Lcom/itextpdf/layout/Canvas;Z)V

    return-object v0
.end method

.method protected updateCurrentArea(Lcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 2

    .line 141
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-nez p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {p1}, Lcom/itextpdf/layout/Canvas;->isCanvasOfPage()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {p1}, Lcom/itextpdf/layout/Canvas;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v0}, Lcom/itextpdf/layout/Canvas;->getPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 143
    :goto_0
    new-instance v0, Lcom/itextpdf/layout/layout/RootLayoutArea;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v1}, Lcom/itextpdf/layout/Canvas;->getRootArea()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/layout/layout/RootLayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 145
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/CanvasRenderer;->setProperty(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 148
    :goto_1
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    return-object p1
.end method
