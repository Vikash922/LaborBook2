.class public Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "TextSvgBranchRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;


# static fields
.field protected static final TEXTFLIP:Lcom/itextpdf/kernel/geom/AffineTransform;


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private font:Lcom/itextpdf/kernel/font/PdfFont;

.field private moveResolved:Z

.field protected performRootTransformations:Z

.field private posResolved:Z

.field private whiteSpaceProcessed:Z

.field private xMove:F

.field private xPos:[F

.field private yMove:F

.field private yPos:[F


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 81
    new-instance v13, Lcom/itextpdf/kernel/geom/AffineTransform;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    sput-object v13, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->TEXTFLIP:Lcom/itextpdf/kernel/geom/AffineTransform;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->children:Ljava/util/List;

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->whiteSpaceProcessed:Z

    const/4 v1, 0x1

    .line 98
    iput-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->performRootTransformations:Z

    .line 99
    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->moveResolved:Z

    .line 100
    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->posResolved:Z

    return-void
.end method

.method private deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;)V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    .line 412
    invoke-interface {v1}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    .line 413
    invoke-interface {v1, p1}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 414
    invoke-virtual {p1, v2}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->addChild(Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getPositionsFromString(Ljava/lang/String;)[F
    .locals 3

    .line 370
    invoke-static {p0}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 371
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 373
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 374
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method static getTextTransform([[FLcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 6

    .line 382
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    const/4 v1, 0x0

    .line 384
    aget-object v2, p0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aget-object v2, p0, v3

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getTextMove()[F

    move-result-object p1

    aget p1, p1, v1

    new-array v2, v3, [F

    aput p1, v2, v1

    aput-object v2, p0, v1

    .line 388
    :cond_0
    aget-object p1, p0, v3

    if-nez p1, :cond_1

    .line 389
    new-array p1, v3, [F

    const/4 v2, 0x0

    aput v2, p1, v1

    aput-object p1, p0, v3

    .line 391
    :cond_1
    sget-object p1, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->TEXTFLIP:Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 392
    aget-object p1, p0, v1

    aget p1, p1, v1

    float-to-double v4, p1

    aget-object p0, p0, v3

    aget p0, p0, v1

    neg-float p0, p0

    float-to-double p0, p0

    invoke-static {v4, v5, p0, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    return-object v0
.end method

.method private resolveFontName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontInfo;
    .locals 2

    .line 309
    const-string v0, "bold"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    .line 310
    const-string v0, "italic"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    .line 312
    new-instance v0, Lcom/itextpdf/layout/font/FontCharacteristics;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontCharacteristics;-><init>()V

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {v0, p2}, Lcom/itextpdf/layout/font/FontCharacteristics;->setBoldFlag(Z)Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 316
    invoke-virtual {v0, p3}, Lcom/itextpdf/layout/font/FontCharacteristics;->setItalicFlag(Z)Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 318
    invoke-virtual {p4, v1, v0, p5}, Lcom/itextpdf/layout/font/FontProvider;->getFontSelector(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontSelector;->bestMatch()Lcom/itextpdf/layout/font/FontInfo;

    move-result-object p1

    return-object p1
.end method

.method private resolveTextMove()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "dx"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "dy"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    invoke-static {v0}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 291
    invoke-static {v1}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 293
    iput v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xMove:F

    .line 294
    iput v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->yMove:F

    .line 296
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 297
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xMove:F

    .line 300
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->yMove:F

    :cond_1
    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->moveResolved:Z

    :cond_2
    return-void
.end method

.method private resolveTextPosition()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "x"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 359
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "y"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 361
    invoke-static {v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getPositionsFromString(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xPos:[F

    .line 362
    invoke-static {v1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getPositionsFromString(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->yPos:[F

    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->posResolved:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final addChild(Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method applyTextRenderingMode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1

    .line 399
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->doStroke:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->doFill:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 400
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextRenderingMode(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 402
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->doStroke:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 403
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextRenderingMode(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 405
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextRenderingMode(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :goto_0
    return-void
.end method

.method public containsAbsolutePositionChange()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->posResolved:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->resolveTextPosition()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xPos:[F

    if-eqz v0, :cond_1

    array-length v0, v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->yPos:[F

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsRelativeMove()Z
    .locals 3

    .line 140
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->moveResolved:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->resolveTextMove()V

    .line 141
    :cond_0
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xMove:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->yMove:F

    invoke-static {v1, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    return v0
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 105
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;-><init>()V

    .line 106
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->fillCopy(Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;)V

    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 9

    .line 209
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 210
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->resetTextMove()V

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p1, v1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setLastTextTransform(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 213
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 214
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    .line 215
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 216
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 218
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->performRootTransformations(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 220
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->applyTextRenderingMode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->resolveFont(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 222
    iget-object v4, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getCurrentFontSize()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 224
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getCurrentFontSize()F

    move-result v4

    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-interface {v3, v4, v5}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->getTextContentLength(FLcom/itextpdf/kernel/font/PdfFont;)F

    move-result v4

    .line 225
    invoke-interface {v3}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->containsAbsolutePositionChange()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    invoke-interface {v3}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->getAbsolutePositionChanges()[[F

    move-result-object v5

    .line 228
    invoke-static {v5, p1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getTextTransform([[FLcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v5

    .line 230
    invoke-virtual {p1, v5}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setLastTextTransform(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 232
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 234
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->resetTextMove()V

    goto :goto_1

    .line 235
    :cond_0
    instance-of v5, v3, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;

    if-eqz v5, :cond_1

    .line 236
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getLastTextTransform()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_1

    .line 237
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getLastTextTransform()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 241
    :cond_1
    :goto_1
    invoke-virtual {p0, v4}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getTextAnchorAlignmentCorrection(F)F

    move-result v5

    const/4 v6, 0x0

    .line 242
    invoke-static {v6, v5}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v7

    if-nez v7, :cond_2

    .line 243
    invoke-virtual {p1, v5, v6}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addTextMove(FF)V

    .line 246
    :cond_2
    invoke-interface {v3}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->containsRelativeMove()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 247
    invoke-interface {v3}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->getRelativeTranslation()[F

    move-result-object v5

    const/4 v7, 0x0

    .line 248
    aget v7, v5, v7

    const/4 v8, 0x1

    aget v5, v5, v8

    neg-float v5, v5

    invoke-virtual {p1, v7, v5}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addTextMove(FF)V

    .line 251
    :cond_3
    invoke-interface {v3, p1}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 253
    invoke-virtual {p1, v4, v6}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addTextMove(FF)V

    .line 255
    invoke-virtual {p1, v1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setPreviousElementTextMove([F)V

    .line 257
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 258
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method fillCopy(Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;)V

    return-void
.end method

.method public getAbsolutePositionChanges()[[F
    .locals 2

    .line 153
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->posResolved:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->resolveTextPosition()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xPos:[F

    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->yPos:[F

    filled-new-array {v0, v1}, [[F

    move-result-object v0

    return-object v0
.end method

.method public final getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getTextRectangle(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/svg/utils/TextRectangle;

    move-result-object p1

    return-object p1
.end method

.method public getRelativeTranslation()[F
    .locals 4

    .line 134
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->moveResolved:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->resolveTextMove()V

    .line 135
    :cond_0
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xMove:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->yMove:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    return-object v2
.end method

.method getTextAnchorAlignmentCorrection(F)F
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "text-anchor"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {p0, v2}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    const-string v2, "middle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xPos:[F

    if-eqz v2, :cond_0

    array-length v2, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    sub-float/2addr v1, v2

    .line 431
    :cond_0
    const-string v2, "end"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xPos:[F

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    sub-float/2addr v1, p1

    :cond_1
    return v1
.end method

.method public getTextContentLength(FLcom/itextpdf/kernel/font/PdfFont;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTextRectangle(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/svg/utils/TextRectangle;
    .locals 15

    move-object v0, p0

    .line 163
    iget-object v1, v0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 164
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->resolveFont(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 166
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getAbsolutePositionChanges()[[F

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getAbsolutePositionChanges()[[F

    move-result-object v1

    aget-object v1, v1, v3

    aget v1, v1, v3

    float-to-double v6, v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 169
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    goto :goto_0

    :cond_1
    move-wide v6, v4

    .line 171
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getAbsolutePositionChanges()[[F

    move-result-object v1

    const/4 v8, 0x1

    aget-object v1, v1, v8

    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getAbsolutePositionChanges()[[F

    move-result-object v1

    aget-object v1, v1, v8

    aget v1, v1, v3

    float-to-double v4, v1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    .line 176
    :cond_3
    :goto_1
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v1, v6, v7, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 177
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getRelativeTranslation()[F

    move-result-object v4

    aget v4, v4, v3

    float-to-double v4, v4

    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getRelativeTranslation()[F

    move-result-object v6

    aget v6, v6, v8

    float-to-double v6, v6

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/Point;->translate(DD)V

    .line 179
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v2

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    move-object/from16 v7, p1

    if-eqz v6, :cond_4

    .line 182
    invoke-interface {v6, v7, v1}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->getTextRectangle(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/svg/utils/TextRectangle;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/itextpdf/svg/utils/TextRectangle;->getTextBaseLineRightPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    const/4 v9, 0x2

    .line 184
    new-array v9, v9, [Lcom/itextpdf/kernel/geom/Rectangle;

    aput-object v5, v9, v3

    aput-object v1, v9, v8

    invoke-static {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    move-object v1, v6

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    .line 188
    new-instance v2, Lcom/itextpdf/svg/utils/TextRectangle;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v10

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v11

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v12

    .line 189
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v13

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    double-to-float v14, v3

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/itextpdf/svg/utils/TextRectangle;-><init>(FFFFF)V

    :cond_6
    return-object v2
.end method

.method public markWhiteSpaceProcessed()V
    .locals 1

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->whiteSpaceProcessed:Z

    return-void
.end method

.method performRootTransformations(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->containsAbsolutePositionChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getAbsolutePositionChanges()[[F

    move-result-object v0

    invoke-static {v0, p2}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getTextTransform([[FLcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    sget-object v1, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->TEXTFLIP:Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 272
    :goto_0
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 274
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->containsRelativeMove()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getRelativeTranslation()[F

    move-result-object p1

    const/4 v1, 0x0

    .line 277
    aget v1, p1, v1

    aget p1, p1, v0

    neg-float p1, p1

    invoke-virtual {p2, v1, p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addTextMove(FF)V

    .line 280
    :cond_1
    iget-boolean p1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->whiteSpaceProcessed:Z

    if-nez p1, :cond_2

    .line 281
    invoke-static {p0, v0}, Lcom/itextpdf/svg/utils/SvgTextUtil;->processWhiteSpace(Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;Z)V

    :cond_2
    return-void
.end method

.method resolveFont(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 7

    .line 322
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getFontProvider()Lcom/itextpdf/layout/font/FontProvider;

    move-result-object v6

    .line 323
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getTempFonts()Lcom/itextpdf/layout/font/FontSet;

    move-result-object p1

    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 325
    invoke-virtual {v6}, Lcom/itextpdf/layout/font/FontProvider;->getFontSet()Lcom/itextpdf/layout/font/FontSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/font/FontSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "font-family"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "font-weight"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v3, "font-style"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    move-object v1, v0

    move-object v0, p0

    move-object v4, v6

    move-object v5, p1

    .line 331
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->resolveFontName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontInfo;

    move-result-object v0

    .line 333
    invoke-virtual {v6, v0, p1}, Lcom/itextpdf/layout/font/FontProvider;->getPdfFont(Lcom/itextpdf/layout/font/FontInfo;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 335
    :cond_2
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-nez p1, :cond_3

    .line 339
    :try_start_0
    invoke-static {}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 341
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "The font wasn\'t found."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method
