.class public Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;
.super Ljava/lang/Object;
.source "SvgConverterProperties.java"

# interfaces
.implements Lcom/itextpdf/svg/processors/ISvgConverterProperties;


# instance fields
.field private baseUri:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private fontProvider:Lcom/itextpdf/layout/font/FontProvider;

.field private mediaDeviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

.field private rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

.field private resourceRetriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->baseUri:Ljava/lang/String;

    .line 74
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->charset:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->resourceRetriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    .line 82
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    return-void
.end method


# virtual methods
.method public getBaseUri()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->baseUri:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getFontProvider()Lcom/itextpdf/layout/font/FontProvider;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    return-object v0
.end method

.method public getMediaDeviceDescription()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->mediaDeviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    return-object v0
.end method

.method public getRendererFactory()Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    return-object v0
.end method

.method public getResourceRetriever()Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->resourceRetriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    return-object v0
.end method

.method public setBaseUri(Ljava/lang/String;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->baseUri:Ljava/lang/String;

    return-object p0
.end method

.method public setCharset(Ljava/lang/String;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->charset:Ljava/lang/String;

    return-object p0
.end method

.method public setFontProvider(Lcom/itextpdf/layout/font/FontProvider;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    return-object p0
.end method

.method public setMediaDeviceDescription(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->mediaDeviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    return-object p0
.end method

.method public setRendererFactory(Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    return-object p0
.end method

.method public setResourceRetriever(Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->resourceRetriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    return-object p0
.end method
