.class public Lcom/itextpdf/layout/renderer/DocumentRenderer;
.super Lcom/itextpdf/layout/renderer/RootRenderer;
.source "DocumentRenderer.java"


# instance fields
.field protected document:Lcom/itextpdf/layout/Document;

.field protected targetCounterHandler:Lcom/itextpdf/layout/renderer/TargetCounterHandler;

.field protected wrappedContentPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/Document;)V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/renderer/DocumentRenderer;-><init>(Lcom/itextpdf/layout/Document;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/Document;Z)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/RootRenderer;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->wrappedContentPage:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    invoke-direct {v0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->targetCounterHandler:Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    .line 77
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    .line 78
    iput-boolean p2, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->immediateFlush:Z

    .line 79
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    return-void
.end method

.method private getCurrentPageEffectiveArea(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 8

    const/16 v0, 0x2c

    .line 214
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/16 v1, 0x2b

    .line 215
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/16 v2, 0x2e

    .line 216
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/16 v3, 0x2d

    .line 217
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 218
    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/PageSize;->getLeft()F

    move-result v5

    add-float/2addr v5, v0

    .line 219
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/PageSize;->getBottom()F

    move-result v6

    add-float/2addr v6, v1

    .line 220
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/PageSize;->getWidth()F

    move-result v7

    sub-float/2addr v7, v0

    sub-float/2addr v7, v3

    .line 221
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/PageSize;->getHeight()F

    move-result p1

    sub-float/2addr p1, v1

    sub-float/2addr p1, v2

    invoke-direct {v4, v5, v6, v7, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v4
.end method

.method private possiblyFlushPreviousPage(I)V
    .locals 2

    .line 225
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->immediateFlush:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v1}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->flush()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addNewPage(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/PageSize;
    .locals 1

    if-eqz p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v0}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNewPage(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/pdf/PdfPage;

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v0}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNewPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {p1}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultPageSize()Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method protected ensureDocumentHasNPages(ILcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/PageSize;
    .locals 2

    const/4 v0, 0x0

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v1}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 208
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->addNewPage(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v0}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->linkRenderToDocument(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const/16 v0, 0x35

    .line 150
    invoke-interface {p1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/Transform;

    .line 151
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->processWaitingDrawing(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/Transform;Ljava/util/List;)V

    .line 153
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 158
    :cond_1
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 159
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v1}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    const/4 v2, 0x0

    .line 162
    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->ensureDocumentHasNPages(ILcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/PageSize;

    .line 163
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 168
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 169
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStreamCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 170
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getLastContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getLength()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->wrappedContentPage:Ljava/util/List;

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v3

    if-lt v3, v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 172
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->wrappedContentPage:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getAutoTaggingPointer()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setPageForTagging(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 177
    :cond_3
    new-instance v0, Lcom/itextpdf/layout/renderer/DrawContext;

    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v4, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;Z)V

    .line 178
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v2

    invoke-direct {v0, v1, v4, v2}, Lcom/itextpdf/layout/renderer/DrawContext;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Z)V

    .line 177
    invoke-interface {p1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    goto :goto_1

    .line 165
    :cond_4
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot draw elements on already flushed pages."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 3

    .line 112
    new-instance v0, Lcom/itextpdf/layout/renderer/DocumentRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    iget-boolean v2, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->immediateFlush:Z

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/renderer/DocumentRenderer;-><init>(Lcom/itextpdf/layout/Document;Z)V

    .line 113
    new-instance v1, Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->targetCounterHandler:Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    invoke-direct {v1, v2}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;-><init>(Lcom/itextpdf/layout/renderer/TargetCounterHandler;)V

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->targetCounterHandler:Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    return-object v0
.end method

.method public getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not applicable for DocumentRenderer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTargetCounterHandler()Lcom/itextpdf/layout/renderer/TargetCounterHandler;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->targetCounterHandler:Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    return-object v0
.end method

.method public isRelayoutRequired()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->targetCounterHandler:Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->isRelayoutRequired()Z

    move-result v0

    return v0
.end method

.method protected updateCurrentArea(Lcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 4

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->flushWaitingDrawingElements(Z)V

    const/16 v1, 0x6c

    .line 119
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->releaseFinishedHints()V

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getPageNumber()I

    move-result v0

    :goto_1
    if-eqz p1, :cond_3

    .line 126
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/AreaBreak;->getType()Lcom/itextpdf/layout/properties/AreaBreakType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/layout/properties/AreaBreakType;->LAST_PAGE:Lcom/itextpdf/layout/properties/AreaBreakType;

    if-ne v2, v3, :cond_3

    .line 127
    :goto_2
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v2}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 128
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->possiblyFlushPreviousPage(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 132
    :cond_3
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->possiblyFlushPreviousPage(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_4
    if-eqz p1, :cond_5

    .line 135
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/AreaBreak;->getPageSize()Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object v1

    .line 136
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {p1}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result p1

    if-lt p1, v0, :cond_6

    iget-object p1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    .line 137
    invoke-virtual {p1}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result p1

    if-eqz p1, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 140
    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->ensureDocumentHasNPages(ILcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object p1

    if-nez p1, :cond_7

    .line 142
    new-instance p1, Lcom/itextpdf/kernel/geom/PageSize;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v1}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getTrimBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 144
    :cond_7
    new-instance v1, Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->getCurrentPageEffectiveArea(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/itextpdf/layout/layout/RootLayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    return-object v1
.end method
