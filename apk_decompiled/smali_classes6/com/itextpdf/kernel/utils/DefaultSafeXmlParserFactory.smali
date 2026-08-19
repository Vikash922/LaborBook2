.class public Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;
.super Ljava/lang/Object;
.source "DefaultSafeXmlParserFactory.java"

# interfaces
.implements Lcom/itextpdf/kernel/utils/IXmlParserFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory$SafeEmptyEntityResolver;
    }
.end annotation


# static fields
.field private static final DISALLOW_DOCTYPE_DECL:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field private static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field private static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field private static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private tryToSetFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V
    .locals 0

    .line 197
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    sget-object p3, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->LOGGER:Lorg/slf4j/Logger;

    .line 200
    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Exception was thrown: {0}. The feature {1} is probably not supported by your XML processor."

    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-interface {p3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private tryToSetFeature(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V
    .locals 0

    .line 206
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 208
    :goto_0
    sget-object p3, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->LOGGER:Lorg/slf4j/Logger;

    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Exception was thrown: {0}. The feature {1} is probably not supported by your XML processor."

    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-interface {p3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected configureSafeDocumentBuilderFactory(Ljavax/xml/parsers/DocumentBuilderFactory;)V
    .locals 2

    .line 172
    const-string v0, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->tryToSetFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 173
    const-string v0, "http://xml.org/sax/features/external-general-entities"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->tryToSetFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 174
    const-string v0, "http://xml.org/sax/features/external-parameter-entities"

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->tryToSetFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 175
    const-string v0, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->tryToSetFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 177
    invoke-virtual {p1, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V

    .line 178
    invoke-virtual {p1, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    return-void
.end method

.method protected configureSafeSAXParserFactory(Ljavax/xml/parsers/SAXParserFactory;)V
    .locals 2

    .line 187
    const-string v0, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->tryToSetFeature(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V

    .line 188
    const-string v0, "http://xml.org/sax/features/external-general-entities"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->tryToSetFeature(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V

    .line 189
    const-string v0, "http://xml.org/sax/features/external-parameter-entities"

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->tryToSetFeature(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V

    .line 190
    const-string v0, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->tryToSetFeature(Ljavax/xml/parsers/SAXParserFactory;Ljava/lang/String;Z)V

    .line 192
    invoke-virtual {p1, v1}, Ljavax/xml/parsers/SAXParserFactory;->setXIncludeAware(Z)V

    return-void
.end method

.method protected createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 1

    .line 154
    invoke-static {}, Lcom/itextpdf/io/util/XmlUtil;->getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    return-object v0
.end method

.method public createDocumentBuilderInstance(ZZ)Ljavax/xml/parsers/DocumentBuilder;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->configureSafeDocumentBuilderFactory(Ljavax/xml/parsers/DocumentBuilderFactory;)V

    .line 119
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 120
    invoke-virtual {v0, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 123
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    new-instance p2, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory$SafeEmptyEntityResolver;

    invoke-direct {p2}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory$SafeEmptyEntityResolver;-><init>()V

    invoke-virtual {p1, p2}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 125
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected createSAXParserFactory()Ljavax/xml/parsers/SAXParserFactory;
    .locals 1

    .line 163
    invoke-static {}, Lcom/itextpdf/io/util/XmlUtil;->createSAXParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    return-object v0
.end method

.method public createXMLReaderInstance(ZZ)Lorg/xml/sax/XMLReader;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->createSAXParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 135
    invoke-virtual {v0, p2}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;->configureSafeSAXParserFactory(Ljavax/xml/parsers/SAXParserFactory;)V

    .line 139
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    new-instance p2, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory$SafeEmptyEntityResolver;

    invoke-direct {p2}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory$SafeEmptyEntityResolver;-><init>()V

    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 142
    :goto_0
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
