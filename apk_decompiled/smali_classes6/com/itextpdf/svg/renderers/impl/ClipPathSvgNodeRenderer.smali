.class public Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
.source "ClipPathSvgNodeRenderer.java"


# instance fields
.field private clippedRenderer:Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 65
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;-><init>()V

    .line 66
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V

    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 6

    .line 80
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 82
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 84
    instance-of v3, v2, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    if-eqz v3, :cond_0

    .line 85
    move-object v4, v2

    check-cast v4, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->setPartOfClipPath(Z)V

    .line 88
    :cond_0
    invoke-interface {v2, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    if-eqz v3, :cond_1

    .line 91
    check-cast v2, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->setPartOfClipPath(Z)V

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->clippedRenderer:Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v2, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->preDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 96
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->clippedRenderer:Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    invoke-virtual {v2, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 97
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->clippedRenderer:Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    invoke-virtual {v2, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->postDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 100
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method preDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 0

    return-void
.end method

.method public setClippedRenderer(Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->clippedRenderer:Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    return-void
.end method
