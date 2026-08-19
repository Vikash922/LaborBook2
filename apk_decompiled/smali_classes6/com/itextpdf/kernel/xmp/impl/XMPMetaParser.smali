.class public Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;
.super Ljava/lang/Object;
.source "XMPMetaParser.java"


# static fields
.field private static final XMP_RDF:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7

    .line 329
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 330
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 332
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 333
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x7

    if-ne v4, v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/ProcessingInstruction;

    .line 334
    invoke-interface {v3}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xpacket"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_5

    const/4 v2, 0x2

    .line 340
    invoke-interface {v3}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    .line 343
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v3, v5, :cond_5

    .line 344
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v4, v3, :cond_5

    .line 346
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    .line 348
    const-string v5, "xmpmeta"

    .line 350
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "xapmeta"

    .line 351
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "adobe:ns:meta/"

    .line 353
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 357
    invoke-static {v2, v0, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez p1, :cond_4

    .line 359
    const-string v5, "RDF"

    .line 360
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 361
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_3

    .line 365
    aput-object v2, p2, v0

    .line 366
    sget-object p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    const/4 p1, 0x1

    aput-object p0, p2, p1

    :cond_3
    return-object p2

    .line 373
    :cond_4
    invoke-static {v2, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    return-object v2

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 89
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/xmp/options/ParseOptions;

    invoke-direct {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;-><init>()V

    .line 92
    :goto_0
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseXml(Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 94
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getRequireXMPMeta()Z

    move-result v0

    const/4 v1, 0x3

    .line 95
    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    invoke-static {p0, v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    .line 98
    aget-object v0, p0, v0

    sget-object v1, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 100
    aget-object v0, p0, v0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/impl/ParseRDF;->parse(Lorg/w3c/dom/Node;)Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    move-result-object v0

    const/4 v1, 0x2

    .line 101
    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setPacketHeader(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getOmitNormalization()Z

    move-result p0

    if-nez p0, :cond_1

    .line 106
    invoke-static {v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->process(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    .line 116
    :cond_2
    new-instance p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;-><init>()V

    return-object p0
.end method

.method private static parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 284
    :try_start_0
    invoke-static {v0, v0}, Lcom/itextpdf/kernel/utils/XmlProcessorCreator;->createSafeDocumentBuilder(ZZ)Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 285
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 286
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 290
    new-instance v0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v1, "Error reading the XML-file"

    const/16 v2, 0xcc

    invoke-direct {v0, v1, v2, p0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 288
    new-instance v0, Lcom/itextpdf/kernel/xmp/XMPException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v2, p0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
.end method

.method private static parseXml(Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 141
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 143
    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseXmlFromInputStream(Ljava/io/InputStream;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0

    .line 145
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;

    check-cast p0, [B

    check-cast p0, [B

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;-><init>([B)V

    invoke-static {v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0

    .line 151
    :cond_1
    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseXmlFromString(Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method private static parseXmlFromBytebuffer(Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 201
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 204
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/XMPException;->getErrorCode()I

    move-result v1

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_1

    .line 209
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/XMPException;->getErrorCode()I

    move-result v1

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    throw v0

    .line 211
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getAcceptLatin1()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/impl/Latin1Converter;->convert(Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;)Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;

    move-result-object p0

    .line 216
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 220
    :try_start_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;->getEncoding()Ljava/lang/String;

    move-result-object p1

    .line 221
    new-instance v1, Lcom/itextpdf/kernel/xmp/impl/FixASCIIControlsReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 223
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/xmp/impl/FixASCIIControlsReader;-><init>(Ljava/io/Reader;)V

    .line 224
    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-direct {p0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 229
    :catch_1
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Unsupported Encoding"

    const/16 v1, 0x9

    invoke-direct {p0, p1, v1, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p0

    .line 233
    :cond_3
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 234
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method private static parseXmlFromInputStream(Ljava/io/InputStream;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 168
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getAcceptLatin1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-direct {p1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0

    .line 177
    :cond_0
    :try_start_0
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    .line 178
    invoke-static {v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 182
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v0, "Error reading the XML-file"

    const/16 v1, 0xcc

    invoke-direct {p1, v0, v1, p0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1
.end method

.method private static parseXmlFromString(Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 256
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 259
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/XMPException;->getErrorCode()I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 265
    new-instance p1, Lorg/xml/sax/InputSource;

    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/FixASCIIControlsReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/xmp/impl/FixASCIIControlsReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 266
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0

    .line 270
    :cond_0
    throw v0
.end method
