.class public Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;
.super Ljava/lang/Object;
.source "SvgProcessorContext.java"


# instance fields
.field private final cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

.field private deviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

.field private fontProvider:Lcom/itextpdf/layout/font/FontProvider;

.field private final resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

.field private tempFonts:Lcom/itextpdf/layout/font/FontSet;


# direct methods
.method public constructor <init>(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-interface {p1}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getMediaDeviceDescription()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->deviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getDefault()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->deviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    .line 91
    :cond_0
    invoke-interface {p1}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getFontProvider()Lcom/itextpdf/layout/font/FontProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/font/BasicFontProvider;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/resolver/font/BasicFontProvider;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    .line 95
    :cond_1
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    invoke-interface {p1}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getBaseUri()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-interface {p1}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getResourceRetriever()Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;)V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    .line 98
    new-instance p1, Lcom/itextpdf/svg/css/SvgCssContext;

    invoke-direct {p1}, Lcom/itextpdf/svg/css/SvgCssContext;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

    return-void
.end method


# virtual methods
.method public addTemporaryFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itextpdf/layout/font/FontSet;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public addTemporaryFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/itextpdf/layout/font/FontSet;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    return-void
.end method

.method public addTemporaryFont(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itextpdf/layout/font/FontSet;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;)Z

    return-void
.end method

.method public getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

    return-object v0
.end method

.method public getDeviceDescription()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->deviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    return-object v0
.end method

.method public getFontProvider()Lcom/itextpdf/layout/font/FontProvider;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    return-object v0
.end method

.method public getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    return-object v0
.end method

.method public getTempFonts()Lcom/itextpdf/layout/font/FontSet;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    return-object v0
.end method
