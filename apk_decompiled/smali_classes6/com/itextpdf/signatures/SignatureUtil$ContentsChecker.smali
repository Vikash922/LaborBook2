.class Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;
.super Lcom/itextpdf/kernel/pdf/PdfReader;
.source "SignatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/signatures/SignatureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentsChecker"
.end annotation


# instance fields
.field private contentsEnd:J

.field private contentsLevel:I

.field private contentsStart:J

.field private currentLevel:I

.field private rangeIsCorrect:Z

.field private searchInV:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 411
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V

    const/4 p1, 0x0

    .line 403
    iput p1, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->currentLevel:I

    const/4 v0, 0x1

    .line 404
    iput v0, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsLevel:I

    .line 405
    iput-boolean v0, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->searchInV:Z

    .line 407
    iput-boolean p1, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->rangeIsCorrect:Z

    return-void
.end method


# virtual methods
.method public checkWhetherSignatureCoversWholeDocument(Lcom/itextpdf/forms/fields/PdfFormField;)Z
    .locals 8

    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->rangeIsCorrect:Z

    .line 416
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getValue()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 417
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ByteRange:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->toIntArray()[I

    move-result-object v2

    const/4 v3, 0x4

    .line 418
    array-length v4, v2

    if-ne v3, v4, :cond_2

    aget v3, v2, v0

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 419
    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v3

    const/4 v5, 0x2

    aget v5, v2, v5

    const/4 v6, 0x3

    aget v6, v2, v6

    add-int/2addr v6, v5

    int-to-long v6, v6

    cmp-long v3, v3, v6

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 423
    aget v2, v2, v3

    int-to-long v6, v2

    iput-wide v6, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsStart:J

    int-to-long v4, v5

    .line 424
    iput-wide v4, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsEnd:J

    .line 427
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 428
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v1

    .line 429
    iput-boolean v3, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->searchInV:Z

    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v1

    .line 432
    iput-boolean v0, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->searchInV:Z

    .line 433
    iget p1, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsLevel:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsLevel:I

    .line 437
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 438
    iget-object p1, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {p1}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 439
    invoke-virtual {p0, v0, v0}, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    iget-boolean p1, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->rangeIsCorrect:Z

    return p1

    :catch_0
    :cond_2
    :goto_1
    return v0
.end method

.method protected readDictionary(Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    iget v0, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->currentLevel:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->currentLevel:I

    .line 453
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 454
    :goto_0
    iget-boolean v2, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->rangeIsCorrect:Z

    if-nez v2, :cond_9

    .line 455
    iget-object v2, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 456
    iget-object v2, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v2, v3, :cond_0

    .line 457
    iget p1, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->currentLevel:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->currentLevel:I

    goto/16 :goto_2

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Name:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v2, v3, :cond_1

    .line 461
    iget-object v2, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    iget-object v3, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 462
    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 461
    const-string v4, "Dictionary key {0} is not a name."

    invoke-virtual {v2, v4, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    :cond_1
    invoke-virtual {p0, v1}, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->readPdfName(Z)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 466
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->searchInV:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsLevel:I

    iget v5, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->currentLevel:I

    if-ne v3, v5, :cond_4

    .line 467
    iget-object v3, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v5

    const/4 v3, -0x1

    move v7, v3

    .line 471
    :cond_2
    iget-object v8, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v8

    add-int/2addr v7, v1

    if-eq v8, v3, :cond_3

    .line 473
    invoke-static {v8}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 474
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3, v5, v6}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 475
    invoke-virtual {p0, v1, p1}, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 476
    iget-object v8, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v8

    .line 477
    iget-wide v10, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsEnd:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    int-to-long v7, v7

    add-long/2addr v5, v7

    iget-wide v7, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsStart:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 478
    iput-boolean v1, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->rangeIsCorrect:Z

    goto :goto_1

    .line 480
    :cond_4
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->searchInV:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->currentLevel:I

    if-ne v1, v3, :cond_5

    .line 481
    iput-boolean v1, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->searchInV:Z

    .line 482
    invoke-virtual {p0, v1, p1}, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 483
    iput-boolean v4, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->searchInV:Z

    goto :goto_1

    .line 485
    :cond_5
    invoke-virtual {p0, v1, p1}, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    :cond_6
    :goto_1
    if-nez v3, :cond_8

    .line 488
    iget-object v5, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v5, v6, :cond_7

    .line 489
    iget-object v5, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v6, "unexpected >>."

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    :cond_7
    iget-object v5, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v5, v6, :cond_8

    .line 491
    iget-object v5, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v6, "Unexpected close bracket."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v4}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    :cond_8
    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto/16 :goto_0

    :cond_9
    :goto_2
    return-object v0
.end method

.method protected readReference(Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 0

    .line 500
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfNull;-><init>()V

    return-object p1
.end method
