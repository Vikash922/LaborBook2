.class public Lcom/itextpdf/kernel/pdf/PdfStream;
.super Lcom/itextpdf/kernel/pdf/PdfDictionary;
.source "PdfStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected compressionLevel:I

.field private inputStream:Ljava/io/InputStream;

.field private length:I

.field private offset:J

.field protected outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 161
    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([BI)V

    return-void
.end method

.method constructor <init>(JLcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    const/high16 v0, -0x80000000

    .line 173
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->compressionLevel:I

    .line 174
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->offset:J

    .line 175
    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfStream;->putAll(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 176
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 178
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p1

    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/InputStream;)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 145
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/InputStream;I)V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz p2, :cond_0

    .line 124
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    .line 125
    iput p3, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->compressionLevel:I

    .line 126
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p3, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The input stream in PdfStream constructor can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Cannot create pdfstream by InputStream without PdfDocument."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    .line 165
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const/high16 p1, -0x80000000

    .line 166
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->compressionLevel:I

    const/16 p1, 0x40

    .line 167
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    const/16 v0, 0x40

    .line 78
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 79
    iput p2, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->compressionLevel:I

    if-eqz p1, :cond_0

    .line 80
    array-length p2, p1

    if-lez p2, :cond_0

    .line 81
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    new-instance v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    array-length v1, p1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>(I)V

    invoke-direct {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 82
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    new-instance p2, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {p2}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    :goto_0
    return-void
.end method


# virtual methods
.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 369
    invoke-static {}, Lcom/itextpdf/kernel/utils/NullCopyFilter;->getInstance()Lcom/itextpdf/kernel/utils/NullCopyFilter;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V

    return-void
.end method

.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V
    .locals 1

    .line 374
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V

    .line 375
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    const/4 p2, 0x0

    .line 377
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object p2

    .line 379
    :try_start_0
    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p3, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 381
    new-instance p3, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot copy object content."

    invoke-direct {p3, v0, p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw p3
.end method

.method public getBytes()[B
    .locals 1

    const/4 v0, 0x1

    .line 230
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Z)[B
    .locals 3

    .line 242
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 246
    const-class p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "PdfStream was created by InputStream.getBytes() always returns null in this case"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const-string v2, "Cannot get PdfStream bytes."

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 256
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz p1, :cond_1

    .line 257
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 258
    invoke-static {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->decodeBytes([BLcom/itextpdf/kernel/pdf/PdfDictionary;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 261
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {v0, v2, p1, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v0

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 266
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 269
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readStreamBytes(Lcom/itextpdf/kernel/pdf/PdfStream;Z)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 271
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {v0, v2, p1, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_0
    return-object v1

    .line 243
    :cond_4
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot operate with the flushed PdfStream."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCompressionLevel()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->compressionLevel:I

    return v0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    return v0
.end method

.method protected getOffset()J
    .locals 2

    .line 354
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->offset:J

    return-wide v0
.end method

.method public getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    return-object v0
.end method

.method public getType()B
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method protected initOutputStream(Ljava/io/OutputStream;)V
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 387
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {p1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    :cond_1
    return-void
.end method

.method protected newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 350
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    return-object v0
.end method

.method protected releaseContent()V
    .locals 3

    .line 394
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->releaseContent()V

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->close()V

    const/4 v0, 0x0

    .line 398
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 401
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCompressionLevel(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->compressionLevel:I

    return-void
.end method

.method public setData([B)V
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->setData([BZ)V

    return-void
.end method

.method public setData([BZ)V
    .locals 3

    .line 301
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 304
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_8

    .line 309
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 311
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    new-instance v2, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v2}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    :cond_1
    if-eqz p2, :cond_5

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object p2

    if-nez p2, :cond_3

    :cond_2
    if-nez v0, :cond_4

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 316
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 322
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p2
    :try_end_0
    .catch Lcom/itextpdf/kernel/exceptions/PdfException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    array-length v1, p2

    invoke-virtual {v0, p2, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->assignBytes([BI)V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 324
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot read a stream in order to append new bytes."

    invoke-direct {p2, v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_1
    if-eqz p1, :cond_7

    .line 331
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 335
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    array-length v0, p1

    invoke-virtual {p2, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->assignBytes([BI)V

    goto :goto_2

    .line 337
    :cond_6
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->reset()V

    :cond_7
    :goto_2
    const-wide/16 p1, 0x0

    .line 341
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->offset:J

    .line 344
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 345
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void

    .line 305
    :cond_8
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Cannot set data to PdfStream which was created by InputStream."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_9
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Cannot operate with the flushed PdfStream."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected updateLength(I)V
    .locals 0

    .line 364
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    return-void
.end method
