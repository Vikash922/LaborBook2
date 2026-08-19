.class public final Lcom/itextpdf/svg/converter/SvgConverter;
.super Ljava/lang/Object;
.source "SvgConverter.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    const-class v0, Lcom/itextpdf/svg/converter/SvgConverter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/converter/SvgConverter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkNull(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance p0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v0, "Parameters cannot be null."

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertToImage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/layout/element/Image;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 723
    new-instance v0, Lcom/itextpdf/layout/element/Image;

    invoke-static {p0, p1}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/element/Image;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V

    return-object v0
.end method

.method public static convertToImage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/layout/element/Image;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    new-instance v0, Lcom/itextpdf/layout/element/Image;

    invoke-static {p0, p1, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/element/Image;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V

    return-object v0
.end method

.method private static convertToSvgConverterProps(Lcom/itextpdf/svg/processors/ISvgConverterProperties;Ljava/lang/String;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;
    .locals 1

    .line 491
    new-instance v0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    invoke-direct {v0}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->setBaseUri(Ljava/lang/String;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    move-result-object p1

    .line 492
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getMediaDeviceDescription()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->setMediaDeviceDescription(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    move-result-object p1

    .line 493
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getFontProvider()Lcom/itextpdf/layout/font/FontProvider;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->setFontProvider(Lcom/itextpdf/layout/font/FontProvider;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    move-result-object p1

    .line 494
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->setCharset(Ljava/lang/String;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    move-result-object p1

    .line 495
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getRendererFactory()Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->setRendererFactory(Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    move-result-object p0

    return-object p0
.end method

.method private static convertToXObject(Lcom/itextpdf/svg/processors/ISvgProcessorResult;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 2

    .line 667
    invoke-static {p0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->getResourceResolver(Lcom/itextpdf/svg/processors/ISvgProcessorResult;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object p2

    .line 668
    new-instance v0, Lcom/itextpdf/svg/renderers/SvgDrawContext;

    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getFontProvider()Lcom/itextpdf/layout/font/FontProvider;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;-><init>(Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;Lcom/itextpdf/layout/font/FontProvider;)V

    .line 669
    instance-of p2, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    if-eqz p2, :cond_0

    .line 670
    move-object p2, p0

    check-cast p2, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    invoke-virtual {p2}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getContext()Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setCssContext(Lcom/itextpdf/svg/css/SvgCssContext;)V

    .line 672
    :cond_0
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getTempFonts()Lcom/itextpdf/layout/font/FontSet;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setTempFonts(Lcom/itextpdf/layout/font/FontSet;)V

    .line 673
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getNamedObjects()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addNamedObjects(Ljava/util/Map;)V

    .line 674
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getRootRenderer()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object p0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p0

    return-object p0
.end method

.method public static convertToXObject(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 2

    .line 790
    new-instance v0, Lcom/itextpdf/svg/renderers/SvgDrawContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;-><init>(Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;Lcom/itextpdf/layout/font/FontProvider;)V

    invoke-static {p0, p1, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p0

    return-object p0
.end method

.method private static convertToXObject(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 5

    .line 814
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 815
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 816
    invoke-static {p2}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 819
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->extractWidthAndHeight(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 820
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 821
    aget v0, v0, v2

    .line 823
    new-instance v2, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 824
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v0, v2, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 826
    invoke-virtual {p2, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->pushCanvas(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 827
    new-instance p1, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;

    invoke-direct {p1, p0}, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;-><init>(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 828
    invoke-interface {p1, p2}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    return-object v2
.end method

.method public static convertToXObject(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 699
    invoke-static {p0, p1, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p0

    return-object p0
.end method

.method public static convertToXObject(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 659
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 661
    invoke-static {p0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->parse(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Lcom/itextpdf/svg/processors/ISvgProcessorResult;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p0

    return-object p0
.end method

.method public static convertToXObject(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 1

    const/4 v0, 0x0

    .line 604
    invoke-static {p0, p1, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p0

    return-object p0
.end method

.method public static convertToXObject(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 0

    .line 629
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 630
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 632
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Lcom/itextpdf/svg/processors/ISvgProcessorResult;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p0

    return-object p0
.end method

.method public static createPdf(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 430
    invoke-static {p0, p1, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->createPdf(Ljava/io/File;Ljava/io/File;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    return-void
.end method

.method public static createPdf(Ljava/io/File;Ljava/io/File;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 456
    invoke-static {p0, p1, v0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->createPdf(Ljava/io/File;Ljava/io/File;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    return-void
.end method

.method public static createPdf(Ljava/io/File;Ljava/io/File;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 443
    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->createPdf(Ljava/io/File;Ljava/io/File;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    return-void
.end method

.method public static createPdf(Ljava/io/File;Ljava/io/File;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 471
    new-instance p2, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    invoke-direct {p2}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;-><init>()V

    invoke-static {p0}, Lcom/itextpdf/commons/utils/FileUtil;->getParentDirectoryUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->setBaseUri(Ljava/lang/String;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    move-result-object p2

    goto :goto_0

    .line 472
    :cond_0
    invoke-interface {p2}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getBaseUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getBaseUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    :cond_1
    invoke-static {p0}, Lcom/itextpdf/commons/utils/FileUtil;->getParentDirectoryUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {p2, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToSvgConverterProps(Lcom/itextpdf/svg/processors/ISvgConverterProperties;Ljava/lang/String;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    move-result-object p2

    .line 476
    :cond_2
    :goto_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 477
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 478
    :try_start_1
    invoke-static {v0, p0, p2, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 476
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 479
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 476
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    .line 479
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method public static createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 506
    invoke-static {p0, p1, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    return-void
.end method

.method public static createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 518
    invoke-static {p0, p1, v0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    return-void
.end method

.method public static createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 530
    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    return-void
.end method

.method public static createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 545
    new-instance p3, Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-direct {p3}, Lcom/itextpdf/kernel/pdf/WriterProperties;-><init>()V

    .line 547
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-direct {v0, p1, p3}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    .line 548
    :try_start_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 550
    :try_start_1
    invoke-static {p0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->parse(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;

    move-result-object p0

    .line 552
    invoke-static {p0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->getResourceResolver(Lcom/itextpdf/svg/processors/ISvgProcessorResult;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object p2

    .line 553
    new-instance p3, Lcom/itextpdf/svg/renderers/SvgDrawContext;

    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getFontProvider()Lcom/itextpdf/layout/font/FontProvider;

    move-result-object v1

    invoke-direct {p3, p2, v1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;-><init>(Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;Lcom/itextpdf/layout/font/FontProvider;)V

    .line 554
    instance-of p2, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    if-eqz p2, :cond_1

    .line 555
    move-object p2, p0

    check-cast p2, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    invoke-virtual {p2}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getContext()Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setCssContext(Lcom/itextpdf/svg/css/SvgCssContext;)V

    .line 558
    :cond_1
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getNamedObjects()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addNamedObjects(Ljava/util/Map;)V

    .line 560
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getTempFonts()Lcom/itextpdf/layout/font/FontSet;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setTempFonts(Lcom/itextpdf/layout/font/FontSet;)V

    .line 562
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getRootRenderer()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object p0

    .line 564
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 565
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 568
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->extractWidthAndHeight(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)[F

    move-result-object p2

    const/4 v1, 0x0

    .line 569
    aget v1, p2, v1

    const/4 v2, 0x1

    .line 570
    aget p2, p2, v2

    .line 573
    new-instance v2, Lcom/itextpdf/kernel/geom/PageSize;

    invoke-direct {v2, v1, p2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->setDefaultPageSize(Lcom/itextpdf/kernel/geom/PageSize;)V

    .line 574
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNewPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p2

    .line 575
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 577
    invoke-static {p0, p1, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p0

    .line 579
    invoke-static {p0, v1}, Lcom/itextpdf/svg/converter/SvgConverter;->draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    :try_start_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 547
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 580
    :try_start_4
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 547
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    .line 580
    :try_start_7
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method private static createResourceResolver(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    .locals 2

    if-nez p0, :cond_0

    .line 1003
    new-instance p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1005
    :cond_0
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getBaseUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getResourceRetriever()Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;)V

    return-object v0
.end method

.method private static draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 755
    invoke-static {p0, p1, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    return-void
.end method

.method static draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V
    .locals 3

    .line 764
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getBBox()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getBBox()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v0

    :goto_0
    add-float/2addr p2, v0

    .line 765
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getBBox()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getBBox()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v1

    :goto_1
    add-float/2addr p3, v1

    .line 762
    invoke-virtual {p1, p0, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectAt(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public static drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 378
    invoke-static {p0, p1, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    return-void
.end method

.method public static drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 392
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    return-void
.end method

.method public static drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 419
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    return-void
.end method

.method public static drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 404
    invoke-static {p0, p1, v0, v0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    return-void
.end method

.method public static drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 329
    invoke-static {p0, p1, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    return-void
.end method

.method public static drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V
    .locals 1

    .line 341
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 342
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    return-void
.end method

.method public static drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1

    .line 366
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    return-void
.end method

.method public static drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1

    const/4 v0, 0x0

    .line 353
    invoke-static {p0, p1, v0, v0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    return-void
.end method

.method public static drawOnDocument(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    invoke-static {p0, p1, p2, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnDocument(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;IFF)V

    return-void
.end method

.method public static drawOnDocument(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;IFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    invoke-static {p0, p1, p3, p4}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;FF)V

    return-void
.end method

.method public static drawOnDocument(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;IFFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    invoke-static {p0, p1, p3, p4, p5}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    return-void
.end method

.method public static drawOnDocument(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .line 201
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnDocument(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;IFFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    return-void
.end method

.method public static drawOnDocument(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;I)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-static {p0, p1, p2, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnDocument(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;IFF)V

    return-void
.end method

.method public static drawOnDocument(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;IFF)V
    .locals 0

    .line 128
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    invoke-static {p0, p1, p3, p4}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;FF)V

    return-void
.end method

.method public static drawOnDocument(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;IFFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 0

    .line 157
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    invoke-static {p0, p1, p3, p4, p5}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    return-void
.end method

.method public static drawOnDocument(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .line 142
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnDocument(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;IFFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    return-void
.end method

.method public static drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 278
    invoke-static {p0, p1, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;FF)V

    return-void
.end method

.method public static drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 292
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-static {p0, v0, p2, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    return-void
.end method

.method public static drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 319
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-static {p0, v0, p2, p3, p4}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    return-void
.end method

.method public static drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 304
    invoke-static {p0, p1, v0, v0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    return-void
.end method

.method public static drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-static {p0, p1, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;FF)V

    return-void
.end method

.method public static drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;FF)V
    .locals 1

    .line 240
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 241
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-static {p0, v0, p2, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    return-void
.end method

.method public static drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1

    .line 266
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 267
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-static {p0, v0, p2, p3, p4}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    return-void
.end method

.method public static drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-static {p0, p1, v0, v0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    return-void
.end method

.method public static extractWidthAndHeight(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)[F
    .locals 9

    .line 934
    const-string v0, "viewBox"

    invoke-interface {p0, v0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 937
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v0, 0x4

    .line 939
    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v5, 0x2

    aput v3, v0, v5

    const/4 v6, 0x3

    aput v3, v0, v6

    if-eqz v1, :cond_2

    .line 941
    invoke-static {v1}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 942
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [F

    move v7, v2

    :goto_0
    if-ge v7, v1, :cond_1

    .line 944
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v8

    aput v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v2

    .line 950
    :goto_1
    const-string v3, "width"

    invoke-interface {p0, v3}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_3

    .line 953
    aget v3, v0, v5

    goto :goto_2

    .line 956
    :cond_3
    sget-object v3, Lcom/itextpdf/svg/converter/SvgConverter;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "Top Svg tag has no defined width attribute and viewbox width is not present, so browser default of 300px is used"

    invoke-interface {v3, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 958
    const-string v3, "300px"

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    goto :goto_2

    .line 961
    :cond_4
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    .line 963
    :goto_2
    const-string v7, "height"

    invoke-interface {p0, v7}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    if-eqz v1, :cond_5

    .line 966
    aget p0, v0, v6

    goto :goto_3

    .line 969
    :cond_5
    sget-object p0, Lcom/itextpdf/svg/converter/SvgConverter;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Top Svg tag has no defined height attribute and viewbox height is not present, so browser default of 150px is used"

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 971
    const-string p0, "150px"

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result p0

    goto :goto_3

    .line 974
    :cond_6
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result p0

    .line 978
    :goto_3
    new-array v0, v5, [F

    aput v3, v0, v2

    aput p0, v0, v4

    return-object v0
.end method

.method static getResourceResolver(Lcom/itextpdf/svg/processors/ISvgProcessorResult;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    .locals 1

    .line 985
    instance-of v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    if-eqz v0, :cond_0

    .line 986
    check-cast p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    invoke-virtual {p0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getContext()Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object p0

    return-object p0

    .line 988
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->createResourceResolver(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/itextpdf/styledxmlparser/node/INode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 898
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 899
    invoke-static {p0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->parse(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/node/INode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 915
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 916
    new-instance v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupXmlParser;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupXmlParser;-><init>()V

    .line 917
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->tryToExtractCharset(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/itextpdf/styledxmlparser/IXmlParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/INode;
    .locals 1

    .line 884
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 885
    new-instance v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupXmlParser;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupXmlParser;-><init>()V

    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupXmlParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    move-result-object p0

    return-object p0
.end method

.method public static parseAndProcess(Ljava/io/InputStream;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;
    .locals 1

    const/4 v0, 0x0

    .line 841
    invoke-static {p0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->parseAndProcess(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseAndProcess(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;
    .locals 2

    .line 852
    new-instance v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupXmlParser;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupXmlParser;-><init>()V

    .line 853
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->tryToExtractCharset(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Ljava/lang/String;

    move-result-object v1

    .line 856
    :try_start_0
    invoke-interface {v0, p0, v1}, Lcom/itextpdf/styledxmlparser/IXmlParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    new-instance v0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;

    invoke-direct {v0}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 858
    new-instance p1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v0, "Failed to parse InputStream."

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;
    .locals 1

    .line 872
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 873
    new-instance v0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;

    invoke-direct {v0}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;

    move-result-object p0

    return-object p0
.end method

.method private static tryToExtractCharset(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 998
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getCharset()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
