.class Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;
.super Ljava/lang/Object;
.source "EncryptedEmbeddedStreamsHandler.java"


# instance fields
.field private final document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private final embeddedStreams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;->embeddedStreams:Ljava/util/Set;

    .line 40
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-void
.end method

.method private static getEmbeddedFileStreamFromDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 3

    .line 74
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filespec:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 76
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method isStreamStoredAsEmbedded(Lcom/itextpdf/kernel/pdf/PdfStream;)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;->embeddedStreams:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method storeAllEmbeddedStreams()V
    .locals 3

    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPdfObjects()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfObject(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 50
    instance-of v2, v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v2, :cond_0

    .line 51
    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;->getEmbeddedFileStreamFromDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;->storeEmbeddedStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method storeEmbeddedStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;->embeddedStreams:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
