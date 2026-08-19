.class Lcom/itextpdf/kernel/pdf/PdfObjectStream;
.super Lcom/itextpdf/kernel/pdf/PdfStream;
.source "PdfObjectStream.java"


# static fields
.field public static final MAX_OBJ_STREAM_SIZE:I = 0xc8


# instance fields
.field protected indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

.field protected size:Lcom/itextpdf/kernel/pdf/PdfNumber;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 70
    new-instance v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/OutputStream;)V

    .line 71
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    new-instance v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    return-void
.end method

.method private constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/OutputStream;)V
    .locals 1

    .line 89
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->size:Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 91
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->createNewIndirectReference(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 92
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p2

    iput-object p1, p2, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 93
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->ObjStm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 94
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->size:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 95
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->First:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfObjectStream;)V
    .locals 2

    .line 80
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/OutputStream;)V

    .line 81
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 82
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->reset()V

    .line 83
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->reset()V

    const/4 v0, 0x1

    .line 85
    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->releaseContent(Z)V

    return-void
.end method

.method private releaseContent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 141
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 142
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->releaseContent()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->size:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 109
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 110
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getCurrentPos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeLong(J)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 111
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 112
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 113
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setObjStreamNumber(I)V

    .line 114
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->size:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setIndex(J)V

    .line 115
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 116
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->size:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->increment()V

    .line 117
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->First:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getCurrentPos()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(D)V

    return-void

    .line 105
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "PdfObjectStream reach max size."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIndexStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->size:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    return v0
.end method

.method protected releaseContent()V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->releaseContent(Z)V

    return-void
.end method
