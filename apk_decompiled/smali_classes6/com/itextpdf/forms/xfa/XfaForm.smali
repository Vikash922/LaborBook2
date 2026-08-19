.class public Lcom/itextpdf/forms/xfa/XfaForm;
.super Ljava/lang/Object;
.source "XfaForm.java"


# static fields
.field private static final INIT_SERIALIZER_BUFFER_SIZE:I = 0x4000

.field public static final XFA_DATA_SCHEMA:Ljava/lang/String; = "http://www.xfa.org/schema/xfa-data/1.0/"


# instance fields
.field private acroFieldsSom:Lcom/itextpdf/forms/xfa/AcroFieldsSearch;

.field private datasetsNode:Lorg/w3c/dom/Node;

.field private datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

.field private domDocument:Lorg/w3c/dom/Document;

.field private templateNode:Lorg/w3c/dom/Node;

.field private xfaPresent:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 101
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><xdp:xdp xmlns:xdp=\"http://ns.adobe.com/xdp/\"><template xmlns=\"http://www.xfa.org/schema/xfa-template/3.3/\"></template><xfa:datasets xmlns:xfa=\"http://www.xfa.org/schema/xfa-data/1.0/\"><xfa:data></xfa:data></xfa:datasets></xdp:xdp>"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/itextpdf/forms/xfa/XfaForm;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    .line 135
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    :try_start_0
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->initXfaForm(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    .line 152
    invoke-static {p1}, Lcom/itextpdf/forms/xfa/XfaForm;->getXfaObject(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    :try_start_0
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->initXfaForm(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    .line 111
    :try_start_0
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->initXfaForm(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 113
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    .line 122
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->setDomDocument(Lorg/w3c/dom/Document;)V

    return-void
.end method

.method private createDatasetsNode(Lorg/w3c/dom/Node;)V
    .locals 3

    :goto_0
    if-eqz p1, :cond_0

    .line 656
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 660
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "xfa:datasets"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 661
    const-string v1, "xmlns:xfa"

    const-string v2, "http://www.xfa.org/schema/xfa-data/1.0/"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iput-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    .line 663
    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    return-void
.end method

.method private extractNodes()V
    .locals 3

    .line 636
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-static {v0}, Lcom/itextpdf/forms/xfa/XfaForm;->extractXFANodes(Lorg/w3c/dom/Document;)Ljava/util/Map;

    move-result-object v0

    .line 638
    const-string v1, "template"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->templateNode:Lorg/w3c/dom/Node;

    .line 641
    :cond_0
    const-string v1, "datasets"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 642
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    .line 643
    invoke-direct {p0, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->findDataNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 644
    new-instance v1, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    if-nez v0, :cond_3

    .line 647
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->createDatasetsNode(Lorg/w3c/dom/Node;)V

    :cond_3
    return-void
.end method

.method public static extractXFANodes(Lorg/w3c/dom/Document;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    .line 244
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_0

    .line 245
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    .line 247
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_2

    .line 249
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 250
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private findDataNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    .line 680
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 681
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 682
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xfa:data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFirstElementNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    .line 669
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 670
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 671
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 672
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public static getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    .line 378
    const-string v0, ""

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->getNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 556
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 558
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 559
    invoke-static {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->getNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 560
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 563
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private static getXfaObject(Lcom/itextpdf/forms/PdfAcroForm;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    if-eqz p0, :cond_1

    .line 588
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static getXfaObject(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 576
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 577
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private initXfaForm(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 608
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 609
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x1

    .line 611
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 612
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 613
    instance-of v3, v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v3, :cond_0

    .line 614
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v2

    .line 615
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 618
    :cond_1
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v1, :cond_2

    .line 619
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p1

    .line 620
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 622
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 623
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->initXfaForm(Ljava/io/InputStream;)V

    return-void
.end method

.method private initXfaForm(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 627
    invoke-static {v1, v0}, Lcom/itextpdf/kernel/utils/XmlProcessorCreator;->createSafeDocumentBuilder(ZZ)Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 628
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->setDomDocument(Lorg/w3c/dom/Document;)V

    .line 629
    iput-boolean v1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    return-void
.end method

.method private static serializeDocument(Lorg/w3c/dom/Node;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    new-instance v0, Lcom/itextpdf/kernel/xmp/XmlDomWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/xmp/XmlDomWriter;-><init>(Z)V

    .line 600
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    .line 601
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/xmp/XmlDomWriter;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 602
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/xmp/XmlDomWriter;->write(Lorg/w3c/dom/Node;)V

    .line 603
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 604
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static setXfaForm(Lcom/itextpdf/forms/xfa/XfaForm;Lcom/itextpdf/forms/PdfAcroForm;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 182
    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 185
    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const-string v2, "XFA is deprecated in PDF 2.0. The XFA form will not be written to the document"

    invoke-static {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/VersionConforming;->validatePdfVersionForDeprecatedFeatureLogError(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/forms/xfa/XfaForm;->getXfaObject(Lcom/itextpdf/forms/PdfAcroForm;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 190
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 191
    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    .line 194
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 195
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v6

    .line 196
    const-string v7, "template"

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 199
    :cond_1
    const-string v7, "datasets"

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v3, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_3
    if-le v4, v2, :cond_5

    if-le v5, v2, :cond_5

    .line 206
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    iget-object v3, p0, Lcom/itextpdf/forms/xfa/XfaForm;->templateNode:Lorg/w3c/dom/Node;

    invoke-static {v3}, Lcom/itextpdf/forms/xfa/XfaForm;->serializeDocument(Lorg/w3c/dom/Node;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 207
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCompressionLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 208
    invoke-virtual {v1, v4, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 209
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    iget-object p0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-static {p0}, Lcom/itextpdf/forms/xfa/XfaForm;->serializeDocument(Lorg/w3c/dom/Node;)[B

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 210
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCompressionLevel()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 211
    invoke-virtual {v1, v5, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 212
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 213
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->flush()V

    .line 214
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    invoke-virtual {p1, p0, v2}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    .line 215
    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 216
    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isIndirect()Z

    move-result p0

    if-nez p0, :cond_4

    .line 217
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    :cond_4
    return-void

    .line 223
    :cond_5
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    iget-object p0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-static {p0}, Lcom/itextpdf/forms/xfa/XfaForm;->serializeDocument(Lorg/w3c/dom/Node;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 224
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCompressionLevel()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 225
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    .line 226
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    .line 227
    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 228
    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isIndirect()Z

    move-result p0

    if-nez p0, :cond_6

    .line 229
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    :cond_6
    return-void

    .line 183
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XfaForm, PdfAcroForm and PdfAcroForm\'s document shall not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setXfaForm(Lcom/itextpdf/forms/xfa/XfaForm;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 170
    invoke-static {p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object p1

    .line 171
    invoke-static {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->setXfaForm(Lcom/itextpdf/forms/xfa/XfaForm;Lcom/itextpdf/forms/PdfAcroForm;)V

    return-void
.end method


# virtual methods
.method public fillXfaForm(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 437
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->fillXfaForm(Ljava/io/File;Z)V

    return-void
.end method

.method public fillXfaForm(Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/forms/xfa/XfaForm;->fillXfaForm(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public fillXfaForm(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->fillXfaForm(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public fillXfaForm(Ljava/io/InputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/forms/xfa/XfaForm;->fillXfaForm(Lorg/xml/sax/InputSource;Z)V

    return-void
.end method

.method public fillXfaForm(Lorg/w3c/dom/Node;)V
    .locals 1

    const/4 v0, 0x0

    .line 512
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->fillXfaForm(Lorg/w3c/dom/Node;Z)V

    return-void
.end method

.method public fillXfaForm(Lorg/w3c/dom/Node;Z)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 523
    iget-object p2, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    const-string v1, "field"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    move v1, v0

    .line 524
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 525
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "access"

    const-string v4, "readOnly"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    :cond_0
    iget-object p2, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    .line 529
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 531
    :goto_1
    const-string v2, "http://www.xfa.org/schema/xfa-data/1.0/"

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    .line 532
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 533
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v3, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    .line 539
    iget-object p2, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    const-string v0, "xfa:data"

    invoke-interface {p2, v2, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 540
    iget-object p2, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-interface {p2, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 542
    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    .line 543
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    if-nez p2, :cond_4

    .line 544
    iget-object p2, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {p2, p1, v3}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {v4, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    .line 548
    :cond_4
    invoke-direct {p0, v4}, Lcom/itextpdf/forms/xfa/XfaForm;->getFirstElementNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 550
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, v3}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {v4, p1, p2}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 552
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/itextpdf/forms/xfa/XfaForm;->extractNodes()V

    return-void
.end method

.method public fillXfaForm(Lorg/xml/sax/InputSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->fillXfaForm(Lorg/xml/sax/InputSource;Z)V

    return-void
.end method

.method public fillXfaForm(Lorg/xml/sax/InputSource;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 498
    :try_start_0
    invoke-static {v0, v0}, Lcom/itextpdf/kernel/utils/XmlProcessorCreator;->createSafeDocumentBuilder(ZZ)Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 499
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 500
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/forms/xfa/XfaForm;->fillXfaForm(Lorg/w3c/dom/Node;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 502
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public findDatasetsName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->getName2Node()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    invoke-static {p1}, Lcom/itextpdf/forms/xfa/Xml2Som;->splitParts(Ljava/lang/String;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->inverseSearchGlobal(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findDatasetsNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 365
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->findDatasetsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->getName2Node()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Node;

    return-object p1
.end method

.method public findFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->acroFieldsSom:Lcom/itextpdf/forms/xfa/AcroFieldsSearch;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;

    iget-object v1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    invoke-virtual {v1}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->getName2Node()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->acroFieldsSom:Lcom/itextpdf/forms/xfa/AcroFieldsSearch;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->acroFieldsSom:Lcom/itextpdf/forms/xfa/AcroFieldsSearch;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    if-eqz v1, :cond_2

    .line 338
    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->getAcroShort2LongName()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->acroFieldsSom:Lcom/itextpdf/forms/xfa/AcroFieldsSearch;

    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->getAcroShort2LongName()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->acroFieldsSom:Lcom/itextpdf/forms/xfa/AcroFieldsSearch;

    invoke-static {p1}, Lcom/itextpdf/forms/xfa/Xml2Som;->splitParts(Ljava/lang/String;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->inverseSearchGlobal(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDatasetsNode()Lorg/w3c/dom/Node;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getDomDocument()Lorg/w3c/dom/Document;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getXfaFieldValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfa/XfaForm;->isXfaPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->findFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 310
    invoke-static {p1}, Lcom/itextpdf/forms/xfa/Xml2Som;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->findDatasetsNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/forms/xfa/XfaForm;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isXfaPresent()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    return v0
.end method

.method public setDomDocument(Lorg/w3c/dom/Document;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    .line 416
    invoke-direct {p0}, Lcom/itextpdf/forms/xfa/XfaForm;->extractNodes()V

    return-void
.end method

.method public setNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 392
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 393
    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 395
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string v2, "dataNode"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 396
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public setXfaFieldValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 286
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfa/XfaForm;->isXfaPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->findFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 289
    invoke-static {p1}, Lcom/itextpdf/forms/xfa/Xml2Som;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->findDatasetsNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfa/XfaForm;->getDatasetsNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->insertNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 294
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/forms/xfa/XfaForm;->setNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public write(Lcom/itextpdf/forms/PdfAcroForm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-static {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->setXfaForm(Lcom/itextpdf/forms/xfa/XfaForm;Lcom/itextpdf/forms/PdfAcroForm;)V

    return-void
.end method

.method public write(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-static {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->setXfaForm(Lcom/itextpdf/forms/xfa/XfaForm;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method
