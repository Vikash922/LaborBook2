.class public abstract Lcom/itextpdf/layout/RootElement;
.super Lcom/itextpdf/layout/ElementPropertyContainer;
.source "RootElement.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/itextpdf/layout/IPropertyContainer;",
        ">",
        "Lcom/itextpdf/layout/ElementPropertyContainer<",
        "TT;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field protected childElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/element/IElement;",
            ">;"
        }
    .end annotation
.end field

.field protected defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

.field protected defaultFontProvider:Lcom/itextpdf/layout/font/FontProvider;

.field private defaultLayoutTaggingHelper:Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

.field protected defaultSplitCharacters:Lcom/itextpdf/layout/splitting/ISplitCharacters;

.field protected immediateFlush:Z

.field protected pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/itextpdf/layout/ElementPropertyContainer;-><init>()V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/itextpdf/layout/RootElement;->immediateFlush:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/RootElement;->childElements:Ljava/util/List;

    return-void
.end method

.method private addElement(Lcom/itextpdf/layout/element/IElement;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/element/IElement;",
            ")TT;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/RootElement;->createAndAddRendererSubTree(Lcom/itextpdf/layout/element/IElement;)V

    .line 377
    iget-boolean p1, p0, Lcom/itextpdf/layout/RootElement;->immediateFlush:Z

    if-eqz p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/itextpdf/layout/RootElement;->childElements:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 380
    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method private initTaggingHelperIfNeeded()Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultLayoutTaggingHelper:Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    iget-object v1, p0, Lcom/itextpdf/layout/RootElement;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-boolean v2, p0, Lcom/itextpdf/layout/RootElement;->immediateFlush:Z

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V

    iput-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultLayoutTaggingHelper:Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultLayoutTaggingHelper:Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/element/IBlockElement;",
            ")TT;"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/RootElement;->addElement(Lcom/itextpdf/layout/element/IElement;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/element/Image;",
            ")TT;"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/RootElement;->addElement(Lcom/itextpdf/layout/element/IElement;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method

.method protected createAndAddRendererSubTree(Lcom/itextpdf/layout/element/IElement;)V
    .locals 3

    .line 362
    invoke-interface {p1}, Lcom/itextpdf/layout/element/IElement;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p1

    .line 363
    invoke-direct {p0}, Lcom/itextpdf/layout/RootElement;->initTaggingHelperIfNeeded()Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v1, p0, Lcom/itextpdf/layout/RootElement;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getAutoTaggingPointer()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Iterable;)V

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/RootElement;->ensureRootRendererNotNull()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/RootRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-void
.end method

.method public deleteOwnProperty(I)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected abstract ensureRootRendererNotNull()Lcom/itextpdf/layout/renderer/RootRenderer;
.end method

.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    const/16 v0, 0x14

    if-eq p1, v0, :cond_9

    const/16 v0, 0x18

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x47

    if-eq p1, v0, :cond_1

    const/16 v0, 0x48

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 188
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/itextpdf/layout/RootElement;->defaultSplitCharacters:Lcom/itextpdf/layout/splitting/ISplitCharacters;

    if-nez p1, :cond_3

    .line 178
    new-instance p1, Lcom/itextpdf/layout/splitting/DefaultSplitCharacters;

    invoke-direct {p1}, Lcom/itextpdf/layout/splitting/DefaultSplitCharacters;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/RootElement;->defaultSplitCharacters:Lcom/itextpdf/layout/splitting/ISplitCharacters;

    .line 180
    :cond_3
    iget-object p1, p0, Lcom/itextpdf/layout/RootElement;->defaultSplitCharacters:Lcom/itextpdf/layout/splitting/ISplitCharacters;

    return-object p1

    :cond_4
    const/high16 p1, 0x3f400000    # 0.75f

    .line 190
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 184
    :cond_5
    invoke-direct {p0}, Lcom/itextpdf/layout/RootElement;->initTaggingHelperIfNeeded()Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    move-result-object p1

    return-object p1

    .line 172
    :cond_6
    iget-object p1, p0, Lcom/itextpdf/layout/RootElement;->defaultFontProvider:Lcom/itextpdf/layout/font/FontProvider;

    if-nez p1, :cond_7

    .line 173
    new-instance p1, Lcom/itextpdf/layout/font/FontProvider;

    invoke-direct {p1}, Lcom/itextpdf/layout/font/FontProvider;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/RootElement;->defaultFontProvider:Lcom/itextpdf/layout/font/FontProvider;

    .line 175
    :cond_7
    iget-object p1, p0, Lcom/itextpdf/layout/RootElement;->defaultFontProvider:Lcom/itextpdf/layout/font/FontProvider;

    return-object p1

    :cond_8
    const/high16 p1, 0x41400000    # 12.0f

    .line 182
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    return-object p1

    .line 167
    :cond_9
    iget-object p1, p0, Lcom/itextpdf/layout/RootElement;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    if-nez p1, :cond_a

    .line 168
    invoke-static {}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/RootElement;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    .line 170
    :cond_a
    iget-object p1, p0, Lcom/itextpdf/layout/RootElement;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 195
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getFontProvider()Lcom/itextpdf/layout/font/FontProvider;
    .locals 2

    const/16 v0, 0x5b

    .line 125
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/RootElement;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 126
    instance-of v1, v0, Lcom/itextpdf/layout/font/FontProvider;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Lcom/itextpdf/layout/font/FontProvider;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnProperty(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 154
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/RootElement;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRenderer()Lcom/itextpdf/layout/renderer/RootRenderer;
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/itextpdf/layout/RootElement;->ensureRootRendererNotNull()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object v0

    return-object v0
.end method

.method public hasOwnProperty(I)Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasProperty(I)Z
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/RootElement;->hasOwnProperty(I)Z

    move-result p1

    return p1
.end method

.method public setFontProvider(Lcom/itextpdf/layout/font/FontProvider;)V
    .locals 1

    const/16 v0, 0x5b

    .line 139
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/RootElement;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFILcom/itextpdf/layout/properties/TextAlignment;Lcom/itextpdf/layout/properties/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/element/Paragraph;",
            "FFI",
            "Lcom/itextpdf/layout/properties/TextAlignment;",
            "Lcom/itextpdf/layout/properties/VerticalAlignment;",
            "F)TT;"
        }
    .end annotation

    .line 322
    new-instance v0, Lcom/itextpdf/layout/element/Div;

    invoke-direct {v0}, Lcom/itextpdf/layout/element/Div;-><init>()V

    .line 323
    invoke-virtual {v0, p5}, Lcom/itextpdf/layout/element/Div;->setTextAlignment(Lcom/itextpdf/layout/properties/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Div;

    invoke-virtual {v1, p6}, Lcom/itextpdf/layout/element/Div;->setVerticalAlignment(Lcom/itextpdf/layout/properties/VerticalAlignment;)Lcom/itextpdf/layout/element/IElement;

    const/4 v1, 0x0

    cmpl-float v2, p7, v1

    if-eqz v2, :cond_0

    .line 325
    invoke-virtual {v0, p7}, Lcom/itextpdf/layout/element/Div;->setRotationAngle(F)Lcom/itextpdf/layout/element/IElement;

    :cond_0
    const/16 p7, 0x3a

    .line 327
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, p7, v2}, Lcom/itextpdf/layout/element/Div;->setProperty(ILjava/lang/Object;)V

    const/16 p7, 0x3b

    .line 328
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, p7, v2}, Lcom/itextpdf/layout/element/Div;->setProperty(ILjava/lang/Object;)V

    .line 332
    sget-object p7, Lcom/itextpdf/layout/properties/TextAlignment;->CENTER:Lcom/itextpdf/layout/properties/TextAlignment;

    const v2, 0x451c4000    # 2500.0f

    const v3, 0x459c4000    # 5000.0f

    if-ne p5, p7, :cond_1

    sub-float/2addr p2, v2

    .line 334
    sget-object p5, Lcom/itextpdf/layout/properties/HorizontalAlignment;->CENTER:Lcom/itextpdf/layout/properties/HorizontalAlignment;

    invoke-virtual {p1, p5}, Lcom/itextpdf/layout/element/Paragraph;->setHorizontalAlignment(Lcom/itextpdf/layout/properties/HorizontalAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    goto :goto_0

    .line 335
    :cond_1
    sget-object p7, Lcom/itextpdf/layout/properties/TextAlignment;->RIGHT:Lcom/itextpdf/layout/properties/TextAlignment;

    if-ne p5, p7, :cond_2

    sub-float/2addr p2, v3

    .line 337
    sget-object p5, Lcom/itextpdf/layout/properties/HorizontalAlignment;->RIGHT:Lcom/itextpdf/layout/properties/HorizontalAlignment;

    invoke-virtual {p1, p5}, Lcom/itextpdf/layout/element/Paragraph;->setHorizontalAlignment(Lcom/itextpdf/layout/properties/HorizontalAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 340
    :cond_2
    :goto_0
    sget-object p5, Lcom/itextpdf/layout/properties/VerticalAlignment;->MIDDLE:Lcom/itextpdf/layout/properties/VerticalAlignment;

    if-ne p6, p5, :cond_3

    sub-float/2addr p3, v2

    goto :goto_1

    .line 342
    :cond_3
    sget-object p5, Lcom/itextpdf/layout/properties/VerticalAlignment;->TOP:Lcom/itextpdf/layout/properties/VerticalAlignment;

    if-ne p6, p5, :cond_4

    sub-float/2addr p3, v3

    :cond_4
    :goto_1
    if-nez p4, :cond_5

    const/4 p4, 0x1

    .line 348
    :cond_5
    invoke-virtual {v0, p4, p2, p3, v3}, Lcom/itextpdf/layout/element/Div;->setFixedPosition(IFFF)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/element/Div;

    invoke-virtual {p2, v3}, Lcom/itextpdf/layout/element/Div;->setMinHeight(F)Lcom/itextpdf/layout/element/IElement;

    const/16 p2, 0x21

    .line 349
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Paragraph;->getProperty(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_6

    const/high16 p2, 0x3f800000    # 1.0f

    .line 350
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Paragraph;->setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;

    .line 352
    :cond_6
    invoke-virtual {p1, v1, v1, v1, v1}, Lcom/itextpdf/layout/element/Paragraph;->setMargins(FFFF)Lcom/itextpdf/layout/element/IElement;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Div;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Div;

    .line 353
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Div;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object p1

    const-string p2, "Artifact"

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 354
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/RootElement;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 356
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFLcom/itextpdf/layout/properties/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/element/Paragraph;",
            "FF",
            "Lcom/itextpdf/layout/properties/TextAlignment;",
            ")TT;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v5

    sget-object v7, Lcom/itextpdf/layout/properties/VerticalAlignment;->BOTTOM:Lcom/itextpdf/layout/properties/VerticalAlignment;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v8}, Lcom/itextpdf/layout/RootElement;->showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFILcom/itextpdf/layout/properties/TextAlignment;Lcom/itextpdf/layout/properties/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method

.method public showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFLcom/itextpdf/layout/properties/TextAlignment;Lcom/itextpdf/layout/properties/VerticalAlignment;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/element/Paragraph;",
            "FF",
            "Lcom/itextpdf/layout/properties/TextAlignment;",
            "Lcom/itextpdf/layout/properties/VerticalAlignment;",
            ")TT;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v5

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/itextpdf/layout/RootElement;->showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFILcom/itextpdf/layout/properties/TextAlignment;Lcom/itextpdf/layout/properties/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method

.method public showTextAligned(Ljava/lang/String;FFLcom/itextpdf/layout/properties/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF",
            "Lcom/itextpdf/layout/properties/TextAlignment;",
            ")TT;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 230
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/RootElement;->showTextAligned(Ljava/lang/String;FFLcom/itextpdf/layout/properties/TextAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method

.method public showTextAligned(Ljava/lang/String;FFLcom/itextpdf/layout/properties/TextAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF",
            "Lcom/itextpdf/layout/properties/TextAlignment;",
            "F)TT;"
        }
    .end annotation

    .line 244
    sget-object v5, Lcom/itextpdf/layout/properties/VerticalAlignment;->BOTTOM:Lcom/itextpdf/layout/properties/VerticalAlignment;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/RootElement;->showTextAligned(Ljava/lang/String;FFLcom/itextpdf/layout/properties/TextAlignment;Lcom/itextpdf/layout/properties/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method

.method public showTextAligned(Ljava/lang/String;FFLcom/itextpdf/layout/properties/TextAlignment;Lcom/itextpdf/layout/properties/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF",
            "Lcom/itextpdf/layout/properties/TextAlignment;",
            "Lcom/itextpdf/layout/properties/VerticalAlignment;",
            "F)TT;"
        }
    .end annotation

    .line 259
    new-instance v0, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Paragraph;->setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/element/Paragraph;->setMargin(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/layout/element/Paragraph;

    .line 260
    iget-object p1, p0, Lcom/itextpdf/layout/RootElement;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v4

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/layout/RootElement;->showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFILcom/itextpdf/layout/properties/TextAlignment;Lcom/itextpdf/layout/properties/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method

.method public showTextAlignedKerned(Ljava/lang/String;FFLcom/itextpdf/layout/properties/TextAlignment;Lcom/itextpdf/layout/properties/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF",
            "Lcom/itextpdf/layout/properties/TextAlignment;",
            "Lcom/itextpdf/layout/properties/VerticalAlignment;",
            "F)TT;"
        }
    .end annotation

    .line 275
    new-instance v0, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Paragraph;->setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/element/Paragraph;->setMargin(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Paragraph;

    sget-object v0, Lcom/itextpdf/layout/properties/FontKerning;->YES:Lcom/itextpdf/layout/properties/FontKerning;

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/element/Paragraph;->setFontKerning(Lcom/itextpdf/layout/properties/FontKerning;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/layout/element/Paragraph;

    .line 276
    iget-object p1, p0, Lcom/itextpdf/layout/RootElement;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v4

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/layout/RootElement;->showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFILcom/itextpdf/layout/properties/TextAlignment;Lcom/itextpdf/layout/properties/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method
