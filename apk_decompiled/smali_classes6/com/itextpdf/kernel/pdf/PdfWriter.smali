.class public Lcom/itextpdf/kernel/pdf/PdfWriter;
.super Lcom/itextpdf/kernel/pdf/PdfOutputStream;
.source "PdfWriter.java"


# static fields
.field private static final endobj:[B

.field private static final obj:[B


# instance fields
.field private copiedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field protected isUserWarnedAboutAcroFormCopying:Z

.field objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

.field protected properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

.field private smartModeSerializer:Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-string v0, " obj\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->obj:[B

    .line 63
    const-string v0, "\nendobj\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->endobj:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 103
    new-instance v0, Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/WriterProperties;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    .locals 1

    .line 107
    new-instance v0, Lcom/itextpdf/kernel/pdf/CountOutputStream;

    invoke-static {p1}, Lcom/itextpdf/commons/utils/FileUtil;->wrapWithBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/CountOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    .line 78
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->copiedObjects:Ljava/util/Map;

    .line 82
    new-instance p1, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->smartModeSerializer:Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;

    .line 108
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/WriterProperties;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 135
    invoke-static {p1}, Lcom/itextpdf/commons/utils/FileUtil;->getBufferedOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    return-void
.end method

.method private static checkTypeOfPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)Z
    .locals 1

    .line 469
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private markArrayContentToFlush(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 436
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 437
    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfWriter;->markObjectToFlush(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private markDictionaryContentToFlush(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values(Z)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 443
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->markObjectToFlush(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private markObjectToFlush(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 449
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result p1

    if-nez p1, :cond_3

    .line 452
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    .line 456
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_3

    .line 457
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    if-ne v0, v2, :cond_2

    .line 460
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->markArrayContentToFlush(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 462
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->markDictionaryContentToFlush(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected copyObject(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 250
    invoke-static {}, Lcom/itextpdf/kernel/utils/NullCopyFilter;->getInstance()Lcom/itextpdf/kernel/utils/NullCopyFilter;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->copyObject(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method

.method protected copyObject(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 4

    .line 265
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v0, :cond_0

    .line 266
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 269
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    .line 271
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Catalog:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->checkTypeOfPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    const-class p1, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 273
    const-string v0, "Make copy of Catalog dictionary is forbidden."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 274
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    .line 277
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-nez p3, :cond_3

    if-eqz v0, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_4

    .line 281
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->copiedObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v1, :cond_4

    .line 283
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1

    .line 288
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-boolean v1, v1, Lcom/itextpdf/kernel/pdf/WriterProperties;->smartMode:Z

    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->Page:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfWriter;->checkTypeOfPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p3

    if-nez p3, :cond_5

    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->OCG:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 289
    invoke-static {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfWriter;->checkTypeOfPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p3

    if-nez p3, :cond_5

    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->OCMD:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfWriter;->checkTypeOfPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 290
    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->smartModeSerializer:Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;

    invoke-virtual {p3, p1}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->serializeObject(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/SerializedObjectContent;

    move-result-object p3

    .line 291
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->smartModeSerializer:Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;

    invoke-virtual {v1, p3}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->getSavedSerializedObject(Lcom/itextpdf/kernel/pdf/SerializedObjectContent;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 293
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->copiedObjects:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object p1, v1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p1

    :cond_5
    const/4 p3, 0x0

    .line 298
    :cond_6
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eqz v0, :cond_8

    .line 300
    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    if-eqz p3, :cond_7

    .line 302
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->smartModeSerializer:Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;

    invoke-virtual {v3, p3, v2}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->saveSerializedObject(Lcom/itextpdf/kernel/pdf/SerializedObjectContent;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 304
    :cond_7
    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->copiedObjects:Ljava/util/Map;

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_8
    invoke-virtual {v1, p1, p2, p4}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V

    return-object v1
.end method

.method flushCopiedObjects(J)V
    .locals 5

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->copiedObjects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 422
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 423
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 424
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v3, :cond_0

    .line 425
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    .line 426
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 431
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->copiedObjects:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected flushModifiedWaitingObjects(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;)V"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    const/4 v1, 0x1

    .line 375
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 376
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 377
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    .line 379
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 381
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 383
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 384
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getSize()I

    move-result p1

    if-lez p1, :cond_2

    .line 391
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->flush()V

    const/4 p1, 0x0

    .line 392
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    :cond_2
    return-void
.end method

.method protected flushObject(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V
    .locals 3

    .line 208
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    .line 209
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->isFullCompression()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getObjectStream()Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    move-result-object p2

    .line 211
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->addObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCurrentPos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeToBody(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :goto_0
    const/4 p2, 0x1

    .line 216
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->clearState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 217
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result p2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 237
    :pswitch_1
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->markObjectToFlush(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 232
    :pswitch_2
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 233
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->markDictionaryContentToFlush(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 234
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->releaseContent()V

    goto :goto_1

    .line 223
    :pswitch_3
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    goto :goto_1

    .line 226
    :pswitch_4
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 227
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->markArrayContentToFlush(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 228
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->releaseContent()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected flushWaitingObjects(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;)V"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    .line 348
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 349
    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 350
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x20

    .line 351
    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 352
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 353
    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 355
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    move v3, v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    .line 361
    :cond_2
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getSize()I

    move-result p1

    if-lez p1, :cond_3

    .line 362
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->flush()V

    const/4 p1, 0x0

    .line 363
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    :cond_3
    return-void
.end method

.method public getCompressionLevel()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget v0, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->compressionLevel:I

    return v0
.end method

.method getObjectStream()Lcom/itextpdf/kernel/pdf/PdfObjectStream;
    .locals 2

    .line 402
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->isFullCompression()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    if-nez v0, :cond_1

    .line 406
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getSize()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 408
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->flush()V

    .line 409
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;-><init>(Lcom/itextpdf/kernel/pdf/PdfObjectStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    .line 411
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    return-object v0
.end method

.method protected initCryptoIfSpecified(Lcom/itextpdf/kernel/pdf/PdfVersion;)V
    .locals 9

    .line 189
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    .line 190
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/WriterProperties;->isStandardEncryptionUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->userPassword:[B

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->ownerPassword:[B

    iget v5, v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->standardEncryptPermissions:I

    iget v6, v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->encryptionAlgorithm:I

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 194
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getOriginalDocumentId()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v7

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/itextpdf/kernel/pdf/PdfEncryption;-><init>([B[BII[BLcom/itextpdf/kernel/pdf/PdfVersion;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    goto :goto_0

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/WriterProperties;->isPublicKeyEncryptionUsed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->publicCertificates:[Ljava/security/cert/Certificate;

    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->publicKeyEncryptPermissions:[I

    iget v0, v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->encryptionAlgorithm:I

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;-><init>([Ljava/security/cert/Certificate;[IILcom/itextpdf/kernel/pdf/PdfVersion;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    :cond_1
    :goto_0
    return-void
.end method

.method public isFullCompression()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCompressionLevel(I)Lcom/itextpdf/kernel/pdf/PdfWriter;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/WriterProperties;->setCompressionLevel(I)Lcom/itextpdf/kernel/pdf/WriterProperties;

    return-object p0
.end method

.method public setSmartMode(Z)Lcom/itextpdf/kernel/pdf/PdfWriter;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iput-boolean p1, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->smartMode:Z

    return-object p0
.end method

.method protected writeHeader()V
    .locals 2

    const/16 v0, 0x25

    .line 332
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 333
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const-string v1, "\n%\u00e2\u00e3\u00cf\u00d3\n"

    .line 334
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    return-void
.end method

.method protected writeToBody(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v1

    .line 319
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v2

    .line 318
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setHashKeyForNextObject(II)V

    .line 321
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 322
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 323
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfWriter;->obj:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 324
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 325
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfWriter;->endobj:[B

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeBytes([B)Ljava/io/OutputStream;

    return-void
.end method
