.class public Lcom/itextpdf/signatures/SignatureUtil;
.super Ljava/lang/Object;
.source "SignatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;,
        Lcom/itextpdf/signatures/SignatureUtil$SorterComparator;
    }
.end annotation


# instance fields
.field private acroForm:Lcom/itextpdf/forms/PdfAcroForm;

.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private orderedSignatureNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sigNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private totalRevisions:I


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/itextpdf/signatures/SignatureUtil;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 96
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    return-void
.end method

.method private populateSignatureNames()V
    .locals 8

    .line 341
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v1}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 348
    invoke-virtual {v4}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 349
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Sig:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 352
    :cond_1
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 356
    :cond_2
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 360
    :cond_3
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfString;->markAsUnencryptedObject()V

    .line 362
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->ByteRange:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 365
    :cond_4
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v6, v5, -0x1

    .line 368
    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v6

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v4

    add-int/2addr v6, v4

    .line 369
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v6, v3}, [I

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    :cond_6
    new-instance v1, Lcom/itextpdf/signatures/SignatureUtil$SorterComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itextpdf/signatures/SignatureUtil$SorterComparator;-><init>(Lcom/itextpdf/signatures/SignatureUtil$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 372
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 373
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, [I

    check-cast v1, [I

    aget v1, v1, v3

    int-to-long v4, v1

    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->getFileLength()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_7

    .line 374
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->totalRevisions:I

    goto :goto_1

    .line 376
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->totalRevisions:I

    :goto_1
    move v1, v3

    .line 378
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 379
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 380
    aget-object v5, v4, v3

    check-cast v5, Ljava/lang/String;

    .line 381
    aget-object v4, v4, v2

    check-cast v4, [I

    check-cast v4, [I

    add-int/lit8 v1, v1, 0x1

    .line 382
    aput v1, v4, v2

    .line 383
    iget-object v6, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v4, p0, Lcom/itextpdf/signatures/SignatureUtil;->orderedSignatureNames:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-void
.end method

.method private updateByteRange(Lcom/itextpdf/signatures/PdfPKCS7;Lcom/itextpdf/signatures/PdfSignature;)V
    .locals 4

    .line 204
    invoke-virtual {p2}, Lcom/itextpdf/signatures/PdfSignature;->getByteRange()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p2

    .line 205
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 208
    :try_start_0
    new-instance v2, Lcom/itextpdf/io/source/RASInputStream;

    new-instance v3, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v3}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    .line 209
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createSourceView()Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->toLongArray()[J

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createRanged(Lcom/itextpdf/io/source/IRandomAccessSource;[J)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/itextpdf/io/source/RASInputStream;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x2000

    .line 210
    :try_start_1
    new-array v0, p2, [B

    :goto_0
    const/4 v1, 0x0

    .line 212
    invoke-virtual {v2, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    .line 213
    invoke-virtual {p1, v0, v1, v3}, Lcom/itextpdf/signatures/PdfPKCS7;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 222
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 216
    :goto_1
    :try_start_3
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v1, :cond_1

    .line 219
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 222
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 224
    :cond_1
    :goto_3
    throw p1
.end method


# virtual methods
.method public doesSignatureFieldExist(Ljava/lang/String;)Z
    .locals 1

    .line 337
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getBlankSignatureNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public extractRevision(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9

    .line 297
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    .line 298
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 302
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v0

    .line 303
    new-instance v1, Lcom/itextpdf/io/source/RASInputStream;

    new-instance v8, Lcom/itextpdf/io/source/WindowRandomAccessSource;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createSourceView()Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v3

    const-wide/16 v4, 0x0

    int-to-long v6, p1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/io/source/WindowRandomAccessSource;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;JJ)V

    invoke-direct {v1, v8}, Lcom/itextpdf/io/source/RASInputStream;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v1
.end method

.method public getBlankSignatureNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    if-eqz v1, :cond_2

    .line 252
    invoke-virtual {v1}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 253
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 254
    invoke-virtual {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 255
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Sig:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getRevision(Ljava/lang/String;)I
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    .line 274
    invoke-virtual {p0, p1}, Lcom/itextpdf/signatures/SignatureUtil;->getTranslatedFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 275
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v0, 0x1

    aget p1, p1, v0

    return p1
.end method

.method public getSignature(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignature;
    .locals 1

    .line 179
    invoke-virtual {p0, p1}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureDictionary(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    new-instance v0, Lcom/itextpdf/signatures/PdfSignature;

    invoke-direct {v0, p1}, Lcom/itextpdf/signatures/PdfSignature;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSignatureDictionary(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    .line 194
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 199
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSignatureNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->orderedSignatureNames:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 236
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->orderedSignatureNames:Ljava/util/List;

    .line 238
    invoke-direct {p0}, Lcom/itextpdf/signatures/SignatureUtil;->populateSignatureNames()V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->orderedSignatureNames:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTotalRevisions()I
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    .line 269
    iget v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->totalRevisions:I

    return v0
.end method

.method public getTranslatedFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/forms/PdfAcroForm;->getXfaForm()Lcom/itextpdf/forms/xfa/XfaForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/XfaForm;->isXfaPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v0}, Lcom/itextpdf/forms/PdfAcroForm;->getXfaForm()Lcom/itextpdf/forms/xfa/XfaForm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->findFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public readSignatureData(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfPKCS7;
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/signatures/SignatureUtil;->readSignatureData(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/PdfPKCS7;

    move-result-object p1

    return-object p1
.end method

.method public readSignatureData(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/PdfPKCS7;
    .locals 4

    .line 139
    invoke-virtual {p0, p1}, Lcom/itextpdf/signatures/SignatureUtil;->getSignature(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignature;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 144
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/signatures/PdfSignature;->getSubFilter()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 145
    invoke-virtual {p1}, Lcom/itextpdf/signatures/PdfSignature;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    .line 147
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Adbe_x509_rsa_sha1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    invoke-virtual {p1}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Cert:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p1}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Cert:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 152
    :cond_1
    new-instance v3, Lcom/itextpdf/signatures/PdfPKCS7;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v1

    invoke-direct {v3, v0, v1, p2}, Lcom/itextpdf/signatures/PdfPKCS7;-><init>([B[BLjava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_2
    new-instance v3, Lcom/itextpdf/signatures/PdfPKCS7;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v0, v1, p2}, Lcom/itextpdf/signatures/PdfPKCS7;-><init>([BLcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    .line 157
    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/itextpdf/signatures/SignatureUtil;->updateByteRange(Lcom/itextpdf/signatures/PdfPKCS7;Lcom/itextpdf/signatures/PdfSignature;)V

    .line 158
    invoke-virtual {p1}, Lcom/itextpdf/signatures/PdfSignature;->getDate()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 160
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/itextpdf/kernel/pdf/PdfDate;->decode(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/itextpdf/signatures/PdfPKCS7;->setSignDate(Ljava/util/Calendar;)V

    .line 162
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/signatures/PdfSignature;->getName()Ljava/lang/String;

    move-result-object p2

    .line 163
    invoke-virtual {v3, p2}, Lcom/itextpdf/signatures/PdfPKCS7;->setSignName(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Lcom/itextpdf/signatures/PdfSignature;->getReason()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 166
    invoke-virtual {v3, p2}, Lcom/itextpdf/signatures/PdfPKCS7;->setReason(Ljava/lang/String;)V

    .line 168
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/signatures/PdfSignature;->getLocation()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 170
    invoke-virtual {v3, p1}, Lcom/itextpdf/signatures/PdfPKCS7;->setLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v3

    :catch_0
    move-exception p1

    .line 174
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public signatureCoversWholeDocument(Ljava/lang/String;)Z
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    .line 318
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 322
    :cond_0
    :try_start_0
    new-instance v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;

    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 323
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createSourceView()Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 324
    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v1, p1}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->checkWhetherSignatureCoversWholeDocument(Lcom/itextpdf/forms/fields/PdfFormField;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 326
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
