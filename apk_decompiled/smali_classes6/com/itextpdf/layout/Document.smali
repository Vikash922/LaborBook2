.class public Lcom/itextpdf/layout/Document;
.super Lcom/itextpdf/layout/RootElement;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/RootElement<",
        "Lcom/itextpdf/layout/Document;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultPageSize()Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/Document;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/PageSize;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/PageSize;)V
    .locals 1

    const/4 v0, 0x1

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/layout/Document;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/PageSize;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/PageSize;Z)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/itextpdf/layout/RootElement;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/itextpdf/layout/Document;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 105
    iget-object p1, p0, Lcom/itextpdf/layout/Document;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->setDefaultPageSize(Lcom/itextpdf/kernel/geom/PageSize;)V

    .line 106
    iput-boolean p3, p0, Lcom/itextpdf/layout/Document;->immediateFlush:Z

    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/Document;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/itextpdf/layout/Document;->checkClosingStatus()V

    .line 129
    iget-object v0, p0, Lcom/itextpdf/layout/Document;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p0}, Lcom/itextpdf/layout/Document;->ensureRootRendererNotNull()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/AreaBreak;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/RootRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 131
    iget-boolean p1, p0, Lcom/itextpdf/layout/Document;->immediateFlush:Z

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/itextpdf/layout/Document;->childElements:Ljava/util/List;

    iget-object v0, p0, Lcom/itextpdf/layout/Document;->childElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/Document;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/itextpdf/layout/Document;->checkClosingStatus()V

    .line 140
    invoke-super {p0, p1}, Lcom/itextpdf/layout/RootElement;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 141
    instance-of v0, p1, Lcom/itextpdf/layout/element/ILargeElement;

    if-eqz v0, :cond_0

    .line 142
    check-cast p1, Lcom/itextpdf/layout/element/ILargeElement;

    invoke-interface {p1, p0}, Lcom/itextpdf/layout/element/ILargeElement;->setDocument(Lcom/itextpdf/layout/Document;)V

    .line 143
    invoke-interface {p1}, Lcom/itextpdf/layout/element/ILargeElement;->flushContent()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/Document;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/Document;

    move-result-object p1

    return-object p1
.end method

.method protected checkClosingStatus()V
    .locals 2

    .line 342
    invoke-virtual {p0}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Document was closed. It is impossible to execute action."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/itextpdf/layout/Document;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/itextpdf/layout/Document;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->close()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/Document;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    return-void
.end method

.method protected ensureRootRendererNotNull()Lcom/itextpdf/layout/renderer/RootRenderer;
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/itextpdf/layout/Document;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/itextpdf/layout/renderer/DocumentRenderer;

    iget-boolean v1, p0, Lcom/itextpdf/layout/Document;->immediateFlush:Z

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/layout/renderer/DocumentRenderer;-><init>(Lcom/itextpdf/layout/Document;Z)V

    iput-object v0, p0, Lcom/itextpdf/layout/Document;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/Document;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    return-object v0
.end method

.method public flush()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/itextpdf/layout/Document;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->flush()V

    return-void
.end method

.method public getBottomMargin()F
    .locals 2

    const/16 v0, 0x2b

    .line 273
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Document;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Document;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 326
    invoke-super {p0, p1}, Lcom/itextpdf/layout/RootElement;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    const/high16 p1, 0x42100000    # 36.0f

    .line 324
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getLeftMargin()F
    .locals 2

    const/16 v0, 0x2c

    .line 216
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Document;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Document;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getPageEffectiveArea(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4

    .line 309
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/PageSize;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/layout/Document;->getLeftMargin()F

    move-result v1

    add-float/2addr v0, v1

    .line 310
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/PageSize;->getBottom()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/layout/Document;->getBottomMargin()F

    move-result v2

    add-float/2addr v1, v2

    .line 311
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/PageSize;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/layout/Document;->getLeftMargin()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itextpdf/layout/Document;->getRightMargin()F

    move-result v3

    sub-float/2addr v2, v3

    .line 312
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/PageSize;->getHeight()F

    move-result p1

    invoke-virtual {p0}, Lcom/itextpdf/layout/Document;->getBottomMargin()F

    move-result v3

    sub-float/2addr p1, v3

    invoke-virtual {p0}, Lcom/itextpdf/layout/Document;->getTopMargin()F

    move-result v3

    sub-float/2addr p1, v3

    .line 313
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v3
.end method

.method public getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/itextpdf/layout/Document;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public getRightMargin()F
    .locals 2

    const/16 v0, 0x2d

    .line 235
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Document;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Document;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getTopMargin()F
    .locals 2

    const/16 v0, 0x2e

    .line 254
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Document;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Document;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public relayout()V
    .locals 3

    .line 183
    iget-boolean v0, p0, Lcom/itextpdf/layout/Document;->immediateFlush:Z

    if-nez v0, :cond_6

    .line 187
    iget-object v0, p0, Lcom/itextpdf/layout/Document;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/DocumentRenderer;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/itextpdf/layout/Document;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/DocumentRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->getTargetCounterHandler()Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->prepareHandlerToRelayout()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/Document;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/Document;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 192
    instance-of v1, v0, Lcom/itextpdf/layout/renderer/RootRenderer;

    if-nez v1, :cond_3

    .line 193
    :cond_2
    new-instance v0, Lcom/itextpdf/layout/renderer/DocumentRenderer;

    iget-boolean v1, p0, Lcom/itextpdf/layout/Document;->immediateFlush:Z

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/layout/renderer/DocumentRenderer;-><init>(Lcom/itextpdf/layout/Document;Z)V

    .line 200
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/layout/Document;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    if-lez v1, :cond_4

    .line 201
    iget-object v1, p0, Lcom/itextpdf/layout/Document;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v2, p0, Lcom/itextpdf/layout/Document;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->removePage(I)V

    goto :goto_1

    .line 204
    :cond_4
    check-cast v0, Lcom/itextpdf/layout/renderer/RootRenderer;

    iput-object v0, p0, Lcom/itextpdf/layout/Document;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    .line 205
    iget-object v0, p0, Lcom/itextpdf/layout/Document;->childElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/IElement;

    .line 206
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/Document;->createAndAddRendererSubTree(Lcom/itextpdf/layout/element/IElement;)V

    goto :goto_2

    :cond_5
    return-void

    .line 184
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation not supported with immediate flush"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBottomMargin(F)V
    .locals 1

    const/16 v0, 0x2b

    .line 283
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Document;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public setLeftMargin(F)V
    .locals 1

    const/16 v0, 0x2c

    .line 226
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Document;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public setMargins(FFFF)V
    .locals 0

    .line 295
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/Document;->setTopMargin(F)V

    .line 296
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/Document;->setRightMargin(F)V

    .line 297
    invoke-virtual {p0, p3}, Lcom/itextpdf/layout/Document;->setBottomMargin(F)V

    .line 298
    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/Document;->setLeftMargin(F)V

    return-void
.end method

.method public setRenderer(Lcom/itextpdf/layout/renderer/DocumentRenderer;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/itextpdf/layout/Document;->rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;

    return-void
.end method

.method public setRightMargin(F)V
    .locals 1

    const/16 v0, 0x2d

    .line 245
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Document;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public setTopMargin(F)V
    .locals 1

    const/16 v0, 0x2e

    .line 264
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Document;->setProperty(ILjava/lang/Object;)V

    return-void
.end method
