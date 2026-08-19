.class public final Lcom/itextpdf/kernel/utils/XmlProcessorCreator;
.super Ljava/lang/Object;
.source "XmlProcessorCreator.java"


# static fields
.field private static xmlParserFactory:Lcom/itextpdf/kernel/utils/IXmlParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;

    invoke-direct {v0}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/utils/XmlProcessorCreator;->xmlParserFactory:Lcom/itextpdf/kernel/utils/IXmlParserFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSafeDocumentBuilder(ZZ)Ljavax/xml/parsers/DocumentBuilder;
    .locals 1

    .line 96
    sget-object v0, Lcom/itextpdf/kernel/utils/XmlProcessorCreator;->xmlParserFactory:Lcom/itextpdf/kernel/utils/IXmlParserFactory;

    invoke-interface {v0, p0, p1}, Lcom/itextpdf/kernel/utils/IXmlParserFactory;->createDocumentBuilderInstance(ZZ)Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static createSafeXMLReader(ZZ)Lorg/xml/sax/XMLReader;
    .locals 1

    .line 113
    sget-object v0, Lcom/itextpdf/kernel/utils/XmlProcessorCreator;->xmlParserFactory:Lcom/itextpdf/kernel/utils/IXmlParserFactory;

    invoke-interface {v0, p0, p1}, Lcom/itextpdf/kernel/utils/IXmlParserFactory;->createXMLReaderInstance(ZZ)Lorg/xml/sax/XMLReader;

    move-result-object p0

    return-object p0
.end method

.method public static setXmlParserFactory(Lcom/itextpdf/kernel/utils/IXmlParserFactory;)V
    .locals 0

    if-nez p0, :cond_0

    .line 77
    new-instance p0, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;

    invoke-direct {p0}, Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;-><init>()V

    sput-object p0, Lcom/itextpdf/kernel/utils/XmlProcessorCreator;->xmlParserFactory:Lcom/itextpdf/kernel/utils/IXmlParserFactory;

    goto :goto_0

    .line 79
    :cond_0
    sput-object p0, Lcom/itextpdf/kernel/utils/XmlProcessorCreator;->xmlParserFactory:Lcom/itextpdf/kernel/utils/IXmlParserFactory;

    :goto_0
    return-void
.end method
