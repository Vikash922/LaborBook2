.class public Lcom/itextpdf/layout/renderer/ListItemRenderer;
.super Lcom/itextpdf/layout/renderer/DivRenderer;
.source "ListItemRenderer.java"


# instance fields
.field private symbolAddedInside:Z

.field protected symbolAreaWidth:F

.field protected symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/ListItem;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;-><init>(Lcom/itextpdf/layout/element/Div;)V

    return-void
.end method

.method private applyListSymbolPosition()V
    .locals 9

    .line 276
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_8

    .line 277
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v1, 0x53

    invoke-static {p0, v0, v1}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/ListSymbolPosition;

    .line 278
    sget-object v1, Lcom/itextpdf/layout/properties/ListSymbolPosition;->INSIDE:Lcom/itextpdf/layout/properties/ListSymbolPosition;

    if-ne v0, v1, :cond_8

    .line 279
    sget-object v0, Lcom/itextpdf/layout/properties/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/properties/BaseDirection;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/properties/BaseDirection;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    if-eqz v1, :cond_6

    .line 281
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    const/16 v4, 0x27

    .line 283
    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v4

    .line 285
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v6, v5, Lcom/itextpdf/layout/renderer/LineRenderer;

    const/16 v7, 0x2c

    const/16 v8, 0x2d

    if-eqz v6, :cond_2

    if-eqz v4, :cond_1

    .line 287
    invoke-interface {v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    invoke-interface {v5, v7, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 290
    iget-object v5, v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v5, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v7, v8

    .line 294
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    invoke-interface {v5, v7, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 296
    :cond_4
    iget-object v0, v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 298
    :cond_5
    iput-boolean v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAddedInside:Z

    goto :goto_3

    .line 299
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;

    if-eqz v0, :cond_7

    .line 300
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->renderSymbolInNeutralParagraph()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 302
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 303
    iput-boolean v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAddedInside:Z

    .line 305
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAddedInside:Z

    if-nez v0, :cond_8

    .line 306
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->renderSymbolInNeutralParagraph()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 308
    iput-boolean v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAddedInside:Z

    :cond_8
    return-void
.end method

.method private calculateAscenderDescender()[F
    .locals 7

    .line 336
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->resolveFirstPdfFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    const/16 v1, 0x18

    .line 337
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 339
    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    const-class v4, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 342
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 341
    const-string v5, "Property {0} in percents is not supported"

    invoke-static {v5, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 344
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->calculateAscenderDescender(Lcom/itextpdf/kernel/font/PdfFont;)[F

    move-result-object v0

    .line 345
    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    const/4 v4, 0x0

    aget v5, v0, v4

    mul-float/2addr v1, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v1, v5

    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    const/4 v6, 0x1

    aget v0, v0, v6

    mul-float/2addr v2, v0

    div-float/2addr v2, v5

    new-array v0, v3, [F

    aput v1, v0, v4

    aput v2, v0, v6

    return-object v0

    .line 347
    :cond_1
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private isListSymbolEmpty(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 3

    .line 327
    instance-of v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 328
    check-cast p1, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getText()Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 329
    :cond_1
    instance-of v0, p1, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-eqz v0, :cond_3

    .line 330
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getText()Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method private renderSymbolInNeutralParagraph()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 4

    .line 315
    new-instance v0, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v0}, Lcom/itextpdf/layout/element/Paragraph;-><init>()V

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Paragraph;->setNeutralRole()Lcom/itextpdf/layout/element/IElement;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Paragraph;

    const/4 v1, 0x0

    .line 316
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/element/Paragraph;->setMargin(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Paragraph;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Paragraph;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x27

    invoke-static {p0, v1, v2}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 320
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    const/16 v3, 0x2d

    invoke-interface {v2, v3, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v0
.end method


# virtual methods
.method public addSymbolRenderer(Lcom/itextpdf/layout/renderer/IRenderer;F)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 85
    iput p2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    return-void
.end method

.method protected createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 2

    .line 264
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    .line 265
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 266
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object p1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 269
    iget p1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    iput p1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->addAllProperties(Ljava/util/Map;)V

    return-object v0
.end method

.method protected createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 2

    .line 248
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    .line 249
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 250
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 251
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 252
    iget-boolean v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAddedInside:Z

    iput-boolean v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAddedInside:Z

    const/4 v1, 0x0

    .line 253
    iput-boolean v1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->isLastRendererForModelElement:Z

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object p1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 256
    iget p1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    iput p1, v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->addAllProperties(Ljava/util/Map;)V

    return-object v0
.end method

.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 10

    .line 105
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const-class v1, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    if-nez v0, :cond_0

    .line 106
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 107
    const-string v0, "Drawing won\'t be performed."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Occupied area has not been initialized. {0}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x6c

    .line 112
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-eqz v0, :cond_4

    .line 114
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v2, :cond_1

    .line 115
    invoke-static {v0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addTreeHints(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 117
    :cond_1
    invoke-virtual {v0, p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isArtifact(Lcom/itextpdf/layout/IPropertyContainer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    goto :goto_0

    .line 120
    :cond_2
    invoke-static {p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v2

    .line 121
    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 122
    invoke-virtual {v3}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v3

    invoke-interface {v3}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 123
    new-instance v3, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    invoke-direct {v3, v4}, Lcom/itextpdf/layout/tagging/TaggingDummyElement;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-static {v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 125
    invoke-virtual {v0, v2, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->replaceKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;)I

    .line 126
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v2, :cond_3

    .line 127
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V

    .line 129
    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V

    .line 135
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 138
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAddedInside:Z

    if-nez v0, :cond_1b

    .line 139
    sget-object v0, Lcom/itextpdf/layout/properties/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/properties/BaseDirection;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v4

    .line 140
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v2, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 141
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    .line 142
    :goto_2
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v6, 0x53

    invoke-static {p0, v5, v6}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/properties/ListSymbolPosition;

    .line 143
    sget-object v6, Lcom/itextpdf/layout/properties/ListSymbolPosition;->DEFAULT:Lcom/itextpdf/layout/properties/ListSymbolPosition;

    const/4 v7, 0x0

    if-eq v5, v6, :cond_d

    const/16 v6, 0x27

    .line 144
    invoke-virtual {p0, v6}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v6

    if-eqz v0, :cond_8

    .line 146
    iget v8, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    if-nez v6, :cond_7

    move v6, v7

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    :goto_3
    add-float/2addr v8, v6

    add-float/2addr v2, v8

    goto :goto_5

    .line 148
    :cond_8
    iget v8, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    if-nez v6, :cond_9

    move v6, v7

    goto :goto_4

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    :goto_4
    add-float/2addr v8, v6

    sub-float/2addr v2, v8

    .line 150
    :goto_5
    sget-object v6, Lcom/itextpdf/layout/properties/ListSymbolPosition;->OUTSIDE:Lcom/itextpdf/layout/properties/ListSymbolPosition;

    if-ne v5, v6, :cond_d

    .line 151
    const-string v5, "Property {0} in percents is not supported"

    if-eqz v0, :cond_b

    const/16 v6, 0x2d

    .line 152
    invoke-virtual {p0, v6}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v8

    .line 153
    invoke-virtual {v8}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v9

    if-nez v9, :cond_a

    .line 154
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 157
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 156
    invoke-static {v5, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-interface {v1, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 159
    :cond_a
    invoke-virtual {v8}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    sub-float/2addr v2, v1

    goto :goto_6

    :cond_b
    const/16 v6, 0x2c

    .line 161
    invoke-virtual {p0, v6}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v8

    .line 162
    invoke-virtual {v8}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v9

    if-nez v9, :cond_c

    .line 163
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 166
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 165
    invoke-static {v5, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-interface {v1, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 168
    :cond_c
    invoke-virtual {v8}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    add-float/2addr v2, v1

    .line 172
    :cond_d
    :goto_6
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 173
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 174
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    const/4 v1, 0x0

    .line 176
    :goto_7
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    .line 177
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    cmpl-float v5, v5, v7

    if-lez v5, :cond_e

    .line 178
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getFirstYLineRecursively()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_e

    goto :goto_8

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    if-eqz v1, :cond_11

    .line 185
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v5, v4, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-eqz v5, :cond_10

    .line 186
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v5, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/LineRenderer;->getYLine()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-interface {v4, v7, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto/16 :goto_9

    .line 188
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-interface {v4, v7, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto/16 :goto_9

    .line 191
    :cond_11
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 192
    invoke-interface {v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v6}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 191
    invoke-interface {v1, v7, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_9

    .line 195
    :cond_12
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v5, v1, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v5, :cond_13

    .line 196
    check-cast v1, Lcom/itextpdf/layout/renderer/TextRenderer;

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->calculateAscenderDescender()[F

    move-result-object v6

    aget v4, v6, v4

    sub-float/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->moveYLineTo(F)V

    goto :goto_9

    .line 198
    :cond_13
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 199
    invoke-interface {v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    .line 198
    invoke-interface {v1, v7, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 202
    :goto_9
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 203
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 205
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_14

    sget-object v3, Lcom/itextpdf/layout/properties/ListSymbolAlignment;->LEFT:Lcom/itextpdf/layout/properties/ListSymbolAlignment;

    goto :goto_a

    :cond_14
    sget-object v3, Lcom/itextpdf/layout/properties/ListSymbolAlignment;->RIGHT:Lcom/itextpdf/layout/properties/ListSymbolAlignment;

    :goto_a
    const/16 v4, 0x26

    invoke-interface {v1, v4, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/ListSymbolAlignment;

    .line 207
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 208
    sget-object v3, Lcom/itextpdf/layout/properties/ListSymbolAlignment;->RIGHT:Lcom/itextpdf/layout/properties/ListSymbolAlignment;

    if-ne v1, v3, :cond_15

    if-nez v0, :cond_16

    .line 210
    iget v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    sub-float/2addr v1, v3

    add-float/2addr v2, v1

    goto :goto_b

    .line 212
    :cond_15
    sget-object v3, Lcom/itextpdf/layout/properties/ListSymbolAlignment;->LEFT:Lcom/itextpdf/layout/properties/ListSymbolAlignment;

    if-ne v1, v3, :cond_16

    if-eqz v0, :cond_16

    .line 214
    iget v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolAreaWidth:F

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    sub-float/2addr v1, v3

    sub-float/2addr v2, v1

    .line 217
    :cond_16
    :goto_b
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v3, v1, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-eqz v3, :cond_18

    if-eqz v0, :cond_17

    .line 219
    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v1, v2, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_c

    .line 221
    :cond_17
    invoke-interface {v1, v2, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_c

    .line 224
    :cond_18
    invoke-interface {v1, v2, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 228
    :goto_c
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getRootRenderer()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/RootRenderer;->getCurrentArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    if-nez v0, :cond_19

    .line 232
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1a

    :cond_19
    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 233
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1b

    .line 234
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 235
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    :cond_1b
    return-void
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 243
    new-instance v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/ListItem;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/ListItemRenderer;-><init>(Lcom/itextpdf/layout/element/ListItem;)V

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->isListSymbolEmpty(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->calculateAscenderDescender()[F

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListItemRenderer;->symbolRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 93
    invoke-static {v0}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->updateMinHeight(Lcom/itextpdf/layout/properties/UnitValue;)V

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->applyListSymbolPosition()V

    .line 96
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object p1

    const/4 v0, 0x2

    .line 97
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    const/16 v1, 0x55

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->deleteOwnProperty(I)V

    :cond_1
    return-object p1
.end method
