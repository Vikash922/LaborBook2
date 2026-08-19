.class public Lcom/itextpdf/svg/renderers/SvgDrawContext;
.super Ljava/lang/Object;
.source "SvgDrawContext.java"


# instance fields
.field private final canvases:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;",
            ">;"
        }
    .end annotation
.end field

.field private cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

.field private final fontProvider:Lcom/itextpdf/layout/font/FontProvider;

.field private lastTextTransform:Lcom/itextpdf/kernel/geom/AffineTransform;

.field private final namedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private final patternIds:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private previousElementTextMove:[F

.field private final resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

.field private tempFonts:Lcom/itextpdf/layout/font/FontSet;

.field private textMove:[F

.field private final useIds:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final viewports:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;Lcom/itextpdf/layout/font/FontProvider;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->namedObjects:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->canvases:Ljava/util/Deque;

    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->viewports:Ljava/util/Deque;

    .line 72
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->useIds:Ljava/util/Stack;

    .line 73
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->patternIds:Ljava/util/Stack;

    .line 79
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->lastTextTransform:Lcom/itextpdf/kernel/geom/AffineTransform;

    const/4 v0, 0x2

    .line 80
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->textMove:[F

    if-nez p1, :cond_0

    .line 91
    new-instance p1, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;-><init>(Ljava/lang/String;)V

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    if-nez p2, :cond_1

    .line 95
    new-instance p2, Lcom/itextpdf/styledxmlparser/resolver/font/BasicFontProvider;

    invoke-direct {p2}, Lcom/itextpdf/styledxmlparser/resolver/font/BasicFontProvider;-><init>()V

    .line 97
    :cond_1
    iput-object p2, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    .line 98
    new-instance p1, Lcom/itextpdf/svg/css/SvgCssContext;

    invoke-direct {p1}, Lcom/itextpdf/svg/css/SvgCssContext;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public addNamedObject(Ljava/lang/String;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 1

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->namedObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->namedObjects:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 191
    :cond_1
    new-instance p1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string p2, "The name of the named object can\'t be null or empty."

    invoke-direct {p1, p2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_2
    new-instance p1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string p2, "A named object can\'t be null."

    invoke-direct {p1, p2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addNamedObjects(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;)V"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->namedObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public addTextMove(FF)V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->textMove:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    const/4 p1, 0x1

    .line 323
    aget v1, v0, p1

    add-float/2addr v1, p2

    aput v1, v0, p1

    return-void
.end method

.method public addUsedId(Ljava/lang/String;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->useIds:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addViewPort(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->viewports:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

    return-object v0
.end method

.method public getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->canvases:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-object v0
.end method

.method public getCurrentCanvasTransform()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 15

    .line 331
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCtm()Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    new-instance v14, Lcom/itextpdf/kernel/geom/AffineTransform;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    float-to-double v2, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    float-to-double v4, v1

    const/4 v1, 0x3

    .line 334
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    float-to-double v6, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    float-to-double v8, v1

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    float-to-double v10, v1

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v0

    float-to-double v12, v0

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v14

    .line 336
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    return-object v0
.end method

.method public getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->viewports:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public getFontProvider()Lcom/itextpdf/layout/font/FontProvider;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    return-object v0
.end method

.method public getLastTextTransform()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->lastTextTransform:Lcom/itextpdf/kernel/geom/AffineTransform;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->lastTextTransform:Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->lastTextTransform:Lcom/itextpdf/kernel/geom/AffineTransform;

    return-object v0
.end method

.method public getNamedObject(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->namedObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    return-object p1
.end method

.method public getPreviousElementTextMove()[F
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->previousElementTextMove:[F

    return-object v0
.end method

.method public getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    return-object v0
.end method

.method public getRootViewPort()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->viewports:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public getTempFonts()Lcom/itextpdf/layout/font/FontSet;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    return-object v0
.end method

.method public getTextMove()[F
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->textMove:[F

    return-object v0
.end method

.method public isIdUsedByUseTagBefore(Ljava/lang/String;)Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->useIds:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public popCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->canvases:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 118
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->canvases:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    return-object v0
.end method

.method public popPatternId()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->patternIds:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public pushCanvas(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->canvases:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public pushPatternId(Ljava/lang/String;)Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->patternIds:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->patternIds:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public removeCurrentViewPort()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->viewports:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->viewports:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeUsedId(Ljava/lang/String;)V
    .locals 0

    .line 279
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->useIds:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public resetTextMove()V
    .locals 1

    const/4 v0, 0x2

    .line 313
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->textMove:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public setCssContext(Lcom/itextpdf/svg/css/SvgCssContext;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

    return-void
.end method

.method public setLastTextTransform(Lcom/itextpdf/kernel/geom/AffineTransform;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->lastTextTransform:Lcom/itextpdf/kernel/geom/AffineTransform;

    return-void
.end method

.method public setPreviousElementTextMove([F)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->previousElementTextMove:[F

    return-void
.end method

.method public setTempFonts(Lcom/itextpdf/layout/font/FontSet;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    return-void
.end method

.method public size()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->canvases:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method
