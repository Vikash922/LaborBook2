.class public Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;
.super Ljava/lang/Object;
.source "SvgFontProcessor.java"


# instance fields
.field private context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;


# direct methods
.method public constructor <init>(Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    return-void
.end method

.method private createFont(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;Lcom/itextpdf/layout/font/Range;)Z
    .locals 4

    .line 108
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->getFormat()Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->isSupportedFontFormat(Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->isLocal()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 111
    iget-object p3, p0, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-virtual {p3}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getFontProvider()Lcom/itextpdf/layout/font/FontProvider;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/layout/font/FontProvider;->getFontSet()Lcom/itextpdf/layout/font/FontSet;

    move-result-object p3

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->getSrc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/itextpdf/layout/font/FontSet;->get(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p2

    .line 112
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p3

    if-lez p3, :cond_2

    .line 113
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/font/FontInfo;

    .line 114
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-virtual {v0, p3, p1}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->addTemporaryFont(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    return v1

    .line 124
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-virtual {v0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->getSrc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retrieveBytesFromResource(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_4

    .line 126
    invoke-static {p2, v1}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont([BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p2

    .line 127
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    const-string v3, "Identity-H"

    invoke-virtual {v0, p2, v3, p1, p3}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->addTemporaryFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    :cond_4
    return v1
.end method


# virtual methods
.method public addFontFaceFonts(Lcom/itextpdf/styledxmlparser/css/ICssResolver;)V
    .locals 6

    .line 79
    instance-of v0, p1, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;

    if-eqz v0, :cond_2

    .line 80
    check-cast p1, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;

    invoke-virtual {p1}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->getFonts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;

    .line 82
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;->getProperties()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->create(Ljava/util/List;)Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->getSources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;

    .line 85
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->getFontFamily()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;->resolveUnicodeRange()Lcom/itextpdf/layout/font/Range;

    move-result-object v5

    invoke-direct {p0, v4, v3, v5}, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;->createFont(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;Lcom/itextpdf/layout/font/Range;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 92
    :cond_1
    const-class v1, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Unable to retrieve font:\n {0}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 93
    invoke-static {v2, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
