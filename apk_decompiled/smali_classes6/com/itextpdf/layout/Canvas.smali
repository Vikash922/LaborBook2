.class public Lcom/itextpdf/layout/Canvas;
.super Lcom/itextpdf/layout/RootElement;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/RootElement<",
        "Lcom/itextpdf/layout/Canvas;",
        ">;"
    }
.end annotation


# instance fields
.field private isCanvasOfPage:Z

.field protected page:Lcom/itextpdf/kernel/pdf/PdfPage;

.field protected pdfCanvas:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

.field protected rootArea:Lcom/itextpdf/kernel/geom/Rectangle;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 1

    .line 94
    invoke-static {p1}, Lcom/itextpdf/layout/Canvas;->initPdfCanvasOrThrowIfPageIsFlushed(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/layout/Canvas;-><init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/Canvas;->enableAutoTagging(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/itextpdf/layout/Canvas;->isCanvasOfPage:Z

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/itextpdf/layout/RootElement;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/Canvas;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 109
    iput-object p1, p0, Lcom/itextpdf/layout/Canvas;->pdfCanvas:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 110
    iput-object p2, p0, Lcom/itextpdf/layout/Canvas;->rootArea:Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;Z)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/Canvas;-><init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 122
    iput-boolean p3, p0, Lcom/itextpdf/layout/Canvas;->immediateFlush:Z

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 132
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getBBox()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/layout/Canvas;-><init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    return-void
.end method

.method private static initPdfCanvasOrThrowIfPageIsFlushed(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    return-object v0

    .line 258
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot draw elements on already flushed pages."

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/itextpdf/layout/Canvas;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/itextpdf/layout/Canvas;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->close()V

    :cond_0
    return-void
.end method

.method public enableAutoTagging(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/itextpdf/layout/Canvas;->isCanvasOfPage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/Canvas;->page:Lcom/itextpdf/kernel/pdf/PdfPage;

    if-eq v0, p1, :cond_0

    .line 182
    const-class v0, Lcom/itextpdf/layout/Canvas;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 183
    const-string v1, "The page passed to Canvas#enableAutoTagging(PdfPage) method shall be the one on which this canvas will be rendered. However the actual passed PdfPage instance sets not such page. This might lead to creation of malformed PDF document."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 185
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/layout/Canvas;->page:Lcom/itextpdf/kernel/pdf/PdfPage;

    return-void
.end method

.method protected ensureRootRendererNotNull()Lcom/itextpdf/layout/renderer/RootRenderer;
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/itextpdf/layout/Canvas;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/itextpdf/layout/renderer/CanvasRenderer;

    iget-boolean v1, p0, Lcom/itextpdf/layout/Canvas;->immediateFlush:Z

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/layout/renderer/CanvasRenderer;-><init>(Lcom/itextpdf/layout/Canvas;Z)V

    iput-object v0, p0, Lcom/itextpdf/layout/Canvas;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/Canvas;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    return-object v0
.end method

.method public flush()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/itextpdf/layout/Canvas;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->flush()V

    return-void
.end method

.method public getPage()Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/itextpdf/layout/Canvas;->page:Lcom/itextpdf/kernel/pdf/PdfPage;

    return-object v0
.end method

.method public getPdfCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/itextpdf/layout/Canvas;->pdfCanvas:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-object v0
.end method

.method public getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/itextpdf/layout/Canvas;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public getRootArea()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/itextpdf/layout/Canvas;->rootArea:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public isAutoTaggingEnabled()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/itextpdf/layout/Canvas;->page:Lcom/itextpdf/kernel/pdf/PdfPage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCanvasOfPage()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/itextpdf/layout/Canvas;->isCanvasOfPage:Z

    return v0
.end method

.method public relayout()V
    .locals 2

    .line 214
    iget-boolean v0, p0, Lcom/itextpdf/layout/Canvas;->immediateFlush:Z

    if-nez v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/itextpdf/layout/Canvas;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/Canvas;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 219
    instance-of v1, v0, Lcom/itextpdf/layout/renderer/RootRenderer;

    if-nez v1, :cond_2

    .line 220
    :cond_1
    new-instance v0, Lcom/itextpdf/layout/renderer/CanvasRenderer;

    iget-boolean v1, p0, Lcom/itextpdf/layout/Canvas;->immediateFlush:Z

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/layout/renderer/CanvasRenderer;-><init>(Lcom/itextpdf/layout/Canvas;Z)V

    .line 222
    :cond_2
    check-cast v0, Lcom/itextpdf/layout/renderer/RootRenderer;

    iput-object v0, p0, Lcom/itextpdf/layout/Canvas;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    .line 223
    iget-object v0, p0, Lcom/itextpdf/layout/Canvas;->childElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/IElement;

    .line 224
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/Canvas;->createAndAddRendererSubTree(Lcom/itextpdf/layout/element/IElement;)V

    goto :goto_1

    :cond_3
    return-void

    .line 215
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation not supported with immediate flush"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRenderer(Lcom/itextpdf/layout/renderer/CanvasRenderer;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/itextpdf/layout/Canvas;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    return-void
.end method
