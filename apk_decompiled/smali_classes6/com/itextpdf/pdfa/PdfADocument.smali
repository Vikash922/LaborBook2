.class public Lcom/itextpdf/pdfa/PdfADocument;
.super Lcom/itextpdf/kernel/pdf/PdfDocument;
.source "PdfADocument.java"


# static fields
.field private static pdfAPageFactory:Lcom/itextpdf/kernel/pdf/IPdfPageFactory;


# instance fields
.field private alreadyLoggedThatObjectFlushingWasNotPerformed:Z

.field private alreadyLoggedThatPageFlushingWasNotPerformed:Z

.field protected checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

.field private isPdfADocument:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/itextpdf/pdfa/PdfAPageFactory;

    invoke-direct {v0}, Lcom/itextpdf/pdfa/PdfAPageFactory;-><init>()V

    sput-object v0, Lcom/itextpdf/pdfa/PdfADocument;->pdfAPageFactory:Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;)V
    .locals 1

    .line 145
    new-instance v0, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/pdfa/PdfADocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/pdfa/PdfADocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;Z)V

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;Z)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    const/4 p2, 0x0

    .line 103
    iput-boolean p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatObjectFlushingWasNotPerformed:Z

    .line 105
    iput-boolean p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatPageFlushingWasNotPerformed:Z

    const/4 p3, 0x1

    .line 107
    iput-boolean p3, p0, Lcom/itextpdf/pdfa/PdfADocument;->isPdfADocument:Z

    .line 162
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->getPdfAConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    .line 165
    iput-boolean p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->isPdfADocument:Z

    goto :goto_0

    .line 167
    :cond_0
    new-instance p1, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;

    const-string p2, "Document to read from shall be a pdfa conformant file with valid xmp metadata"

    invoke-direct {p1, p2}, Lcom/itextpdf/pdfa/exceptions/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/PdfADocument;->setChecker(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;Lcom/itextpdf/kernel/pdf/PdfOutputIntent;)V
    .locals 1

    .line 119
    new-instance v0, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/pdfa/PdfADocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;Lcom/itextpdf/kernel/pdf/PdfOutputIntent;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;Lcom/itextpdf/kernel/pdf/PdfOutputIntent;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p4}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatObjectFlushingWasNotPerformed:Z

    .line 105
    iput-boolean p1, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatPageFlushingWasNotPerformed:Z

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/itextpdf/pdfa/PdfADocument;->isPdfADocument:Z

    .line 134
    invoke-virtual {p0, p2}, Lcom/itextpdf/pdfa/PdfADocument;->setChecker(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    .line 135
    invoke-virtual {p0, p3}, Lcom/itextpdf/pdfa/PdfADocument;->addOutputIntent(Lcom/itextpdf/kernel/pdf/PdfOutputIntent;)V

    return-void
.end method

.method private static getPdfVersionForPdfA(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/kernel/pdf/PdfVersion;
    .locals 2

    .line 387
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_1
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 398
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_4:Lcom/itextpdf/kernel/pdf/PdfVersion;

    goto :goto_1

    .line 395
    :pswitch_3
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_7:Lcom/itextpdf/kernel/pdf/PdfVersion;

    goto :goto_1

    .line 392
    :pswitch_4
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_7:Lcom/itextpdf/kernel/pdf/PdfVersion;

    goto :goto_1

    .line 389
    :pswitch_5
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_4:Lcom/itextpdf/kernel/pdf/PdfVersion;

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected addCustomMetadataExtensions(Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    .locals 3

    .line 260
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->isPdfADocument:Z

    if-nez v0, :cond_0

    .line 261
    invoke-super {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addCustomMetadataExtensions(Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/PdfADocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :try_start_0
    const-string v0, "http://www.aiim.org/pdfua/ns/id/"

    const-string v1, "part"

    invoke-interface {p1, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    const-string v0, "    <x:xmpmeta xmlns:x=\"adobe:ns:meta/\">\n      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n        <rdf:Description rdf:about=\"\" xmlns:pdfaExtension=\"http://www.aiim.org/pdfa/ns/extension/\" xmlns:pdfaSchema=\"http://www.aiim.org/pdfa/ns/schema#\" xmlns:pdfaProperty=\"http://www.aiim.org/pdfa/ns/property#\">\n          <pdfaExtension:schemas>\n            <rdf:Bag>\n              <rdf:li rdf:parseType=\"Resource\">\n                <pdfaSchema:namespaceURI>http://www.aiim.org/pdfua/ns/id/</pdfaSchema:namespaceURI>\n                <pdfaSchema:prefix>pdfuaid</pdfaSchema:prefix>\n                <pdfaSchema:schema>PDF/UA identification schema</pdfaSchema:schema>\n                <pdfaSchema:property>\n                  <rdf:Seq>\n                    <rdf:li rdf:parseType=\"Resource\">\n                      <pdfaProperty:category>internal</pdfaProperty:category>\n                      <pdfaProperty:description>PDF/UA version identifier</pdfaProperty:description>\n                      <pdfaProperty:name>part</pdfaProperty:name>\n                      <pdfaProperty:valueType>Integer</pdfaProperty:valueType>\n                    </rdf:li>\n                    <rdf:li rdf:parseType=\"Resource\">\n                      <pdfaProperty:category>internal</pdfaProperty:category>\n                      <pdfaProperty:description>PDF/UA amendment identifier</pdfaProperty:description>\n                      <pdfaProperty:name>amd</pdfaProperty:name>\n                      <pdfaProperty:valueType>Text</pdfaProperty:valueType>\n                    </rdf:li>\n                    <rdf:li rdf:parseType=\"Resource\">\n                      <pdfaProperty:category>internal</pdfaProperty:category>\n                      <pdfaProperty:description>PDF/UA corrigenda identifier</pdfaProperty:description>\n                      <pdfaProperty:name>corr</pdfaProperty:name>\n                      <pdfaProperty:valueType>Text</pdfaProperty:valueType>\n                    </rdf:li>\n                  </rdf:Seq>\n                </pdfaSchema:property>\n              </rdf:li>\n            </rdf:Bag>\n          </pdfaExtension:schemas>\n        </rdf:Description>\n      </rdf:RDF>\n    </x:xmpmeta>"

    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-static {v0, p1, v1, v2}, Lcom/itextpdf/kernel/xmp/XMPUtils;->appendProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/XMPMeta;ZZ)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 272
    const-class v0, Lcom/itextpdf/pdfa/PdfADocument;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 273
    const-string v1, "Exception while updating XmpMetadata"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected checkIsoConformance()V
    .locals 2

    .line 300
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->isPdfADocument:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    iget-object v1, p0, Lcom/itextpdf/pdfa/PdfADocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkDocument(Lcom/itextpdf/kernel/pdf/PdfCatalog;)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance()V

    :goto_0
    return-void
.end method

.method public checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/itextpdf/pdfa/PdfADocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-void
.end method

.method public checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->isPdfADocument:Z

    if-nez v0, :cond_0

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 191
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 193
    :goto_0
    sget-object v0, Lcom/itextpdf/pdfa/PdfADocument$1;->$SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/IsoKey;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 231
    :pswitch_0
    iget-object p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p2, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkSignature(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 228
    :pswitch_1
    iget-object p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {p2, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkXrefTable(Lcom/itextpdf/kernel/pdf/PdfXrefTable;)V

    goto :goto_1

    .line 225
    :pswitch_2
    iget-object p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    invoke-virtual {p2, p1, p4}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkFontGlyphs(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_1

    .line 222
    :pswitch_3
    iget-object p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {p2, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkTagStructureElement(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 218
    :pswitch_4
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 219
    iget-object p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0, p4}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_1

    .line 215
    :pswitch_5
    iget-object p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {p2, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkSinglePage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    goto :goto_1

    .line 211
    :pswitch_6
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 212
    iget-object p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0, p4}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_1

    .line 207
    :pswitch_7
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 208
    iget-object p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {p2, p1, p4}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_1

    .line 204
    :pswitch_8
    iget-object p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p2, p1, p3}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkInlineImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_1

    .line 201
    :pswitch_9
    iget-object p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V

    goto :goto_1

    .line 198
    :pswitch_a
    iget-object p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {p2, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 195
    :pswitch_b
    iget-object p2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkCanvasStack(C)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected flushFonts()V
    .locals 3

    .line 327
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->isPdfADocument:Z

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/PdfADocument;->getDocumentFonts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/font/PdfFont;

    .line 329
    iget-object v2, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {v2, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkFont(Lcom/itextpdf/kernel/font/PdfFont;)V

    goto :goto_0

    .line 333
    :cond_0
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushFonts()V

    return-void
.end method

.method protected flushObject(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->isPdfADocument:Z

    if-nez v0, :cond_0

    .line 310
    invoke-super {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushObject(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V

    return-void

    .line 314
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/PdfADocument;->markObjectAsMustBeFlushed(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 315
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->isClosing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {v0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->objectIsChecked(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    iget-boolean p1, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatObjectFlushingWasNotPerformed:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 318
    iput-boolean p1, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatObjectFlushingWasNotPerformed:Z

    .line 320
    const-class p1, Lcom/itextpdf/pdfa/PdfADocument;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "Object flushing was not performed. Object in PDF/A mode can only be flushed if the document is closed or if this object has already been checked for compliance with PDF/A rules."

    .line 321
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushObject(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->isPdfADocument:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPageFactory()Lcom/itextpdf/kernel/pdf/IPdfPageFactory;
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->isPdfADocument:Z

    if-eqz v0, :cond_0

    .line 375
    sget-object v0, Lcom/itextpdf/pdfa/PdfADocument;->pdfAPageFactory:Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    return-object v0

    .line 377
    :cond_0
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageFactory()Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    move-result-object v0

    return-object v0
.end method

.method protected initTagStructureContext()V
    .locals 2

    .line 365
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->isPdfADocument:Z

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    iget-object v1, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/pdfa/PdfADocument;->getPdfVersionForPdfA(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;)V

    iput-object v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    goto :goto_0

    .line 368
    :cond_0
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->initTagStructureContext()V

    :goto_0
    return-void
.end method

.method isClosing()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->isClosing:Z

    return v0
.end method

.method logThatPdfAPageFlushingWasNotPerformed()V
    .locals 2

    .line 251
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatPageFlushingWasNotPerformed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->alreadyLoggedThatPageFlushingWasNotPerformed:Z

    .line 254
    const-class v0, Lcom/itextpdf/pdfa/PdfADocument;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Page flushing was not performed. Pages flushing in PDF/A mode works only with explicit calls to PdfPage#flush(boolean) with flushResourcesContentStreams argument set to true"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setChecker(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V
    .locals 3

    .line 343
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->isPdfADocument:Z

    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_2
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 355
    :pswitch_3
    new-instance v0, Lcom/itextpdf/pdfa/checker/PdfA3Checker;

    invoke-direct {v0, p1}, Lcom/itextpdf/pdfa/checker/PdfA3Checker;-><init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    iput-object v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    goto :goto_1

    .line 352
    :pswitch_4
    new-instance v0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;

    invoke-direct {v0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;-><init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    iput-object v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    goto :goto_1

    .line 349
    :pswitch_5
    new-instance v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;

    invoke-direct {v0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;-><init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    iput-object v0, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected updateXmpMetadata()V
    .locals 4

    .line 280
    const-string v0, "http://www.aiim.org/pdfa/ns/id/"

    iget-boolean v1, p0, Lcom/itextpdf/pdfa/PdfADocument;->isPdfADocument:Z

    if-nez v1, :cond_0

    .line 281
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->updateXmpMetadata()V

    return-void

    .line 286
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/PdfADocument;->updateDefaultXmpMetadata()Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v1

    .line 287
    const-string v2, "part"

    iget-object v3, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {v3}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getPart()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    const-string v2, "conformance"

    iget-object v3, p0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    .line 289
    invoke-virtual {v3}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getConformance()Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-interface {v1, v0, v2, v3}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/PdfADocument;->addCustomMetadataExtensions(Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    .line 291
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/PdfADocument;->setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 293
    const-class v1, Lcom/itextpdf/pdfa/PdfADocument;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 294
    const-string v2, "Exception while updating XmpMetadata"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
