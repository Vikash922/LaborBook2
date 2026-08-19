.class public Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
.super Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
.source "PdfImageXObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;
    }
.end annotation


# instance fields
.field private height:F

.field private mask:Z

.field private softMask:Z

.field private width:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/image/ImageData;)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/image/ImageData;Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V
    .locals 1

    .line 116
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->checkImageType(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->createPdfStream(Lcom/itextpdf/io/image/ImageData;Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 117
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->isMask()Z

    move-result p2

    iput-boolean p2, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->mask:Z

    .line 118
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->isSoftMask()Z

    move-result p1

    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->softMask:Z

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 130
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->isFlushed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->initWidthField()F

    .line 132
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->initHeightField()F

    :cond_0
    return-void
.end method

.method private static checkImageType(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 551
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    if-nez v0, :cond_0

    return-object p0

    .line 552
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot create PdfImageXObject instance by WmfImage. Use PdfFormXObject constructor instead."

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createArray(Lcom/itextpdf/kernel/pdf/PdfStream;[Ljava/lang/Object;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 7

    .line 528
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 529
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    .line 530
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 531
    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x2f

    .line 532
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 533
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 535
    :cond_0
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 537
    :cond_1
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 538
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 539
    :cond_2
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_3

    .line 540
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v5, v3

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 541
    :cond_3
    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 542
    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-static {p0, v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->createArray(Lcom/itextpdf/kernel/pdf/PdfStream;[Ljava/lang/Object;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 544
    :cond_4
    check-cast v3, Ljava/util/Map;

    invoke-static {p0, v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->createDictionaryFromMap(Lcom/itextpdf/kernel/pdf/PdfStream;Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static createDictionaryFromMap(Lcom/itextpdf/kernel/pdf/PdfStream;Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 489
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 490
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 491
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 492
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 493
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 494
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 495
    :cond_1
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_2

    .line 496
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v4, v2

    invoke-direct {v1, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 497
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 498
    const-string v3, "Mask"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 499
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Mask:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 501
    :cond_3
    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x2f

    .line 502
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-nez v3, :cond_4

    .line 503
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 505
    :cond_4
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto/16 :goto_0

    .line 508
    :cond_5
    instance-of v3, v2, [B

    if-eqz v3, :cond_6

    .line 509
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    .line 510
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 511
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->JBIG2Globals:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto/16 :goto_0

    .line 512
    :cond_6
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    .line 513
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto/16 :goto_0

    .line 514
    :cond_7
    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_8

    .line 515
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->createArray(Lcom/itextpdf/kernel/pdf/PdfStream;[Ljava/lang/Object;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto/16 :goto_0

    .line 516
    :cond_8
    instance-of v3, v2, [F

    if-eqz v3, :cond_9

    .line 517
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    check-cast v2, [F

    check-cast v2, [F

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto/16 :goto_0

    .line 518
    :cond_9
    instance-of v3, v2, [I

    if-eqz v3, :cond_0

    .line 519
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    check-cast v2, [I

    check-cast v2, [I

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([I)V

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto/16 :goto_0

    :cond_a
    return-object v0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createPdfStream(Lcom/itextpdf/io/image/ImageData;Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 10

    .line 326
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->RAW:Lcom/itextpdf/io/image/ImageType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 327
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/io/image/RawImageData;

    invoke-static {v0, v2}, Lcom/itextpdf/io/image/RawImageHelper;->updateImageAttributes(Lcom/itextpdf/io/image/RawImageData;Ljava/util/Map;)V

    .line 329
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 330
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getFilter()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 331
    const-string v4, "JPXDecode"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getColorEncodingComponentsNumber()I

    move-result v1

    if-gtz v1, :cond_1

    .line 332
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 333
    invoke-virtual {p0, v3}, Lcom/itextpdf/io/image/ImageData;->setBpc(I)V

    .line 335
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 336
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Image:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 337
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getDecodeParms()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->createDictionaryFromMap(Lcom/itextpdf/kernel/pdf/PdfStream;Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 339
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 342
    :cond_2
    instance-of v1, p0, Lcom/itextpdf/io/image/PngImageData;

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v1, :cond_5

    .line 344
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getColorEncodingComponentsNumber()I

    move-result v6

    if-eq v6, v5, :cond_4

    if-eq v6, v4, :cond_3

    .line 352
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceCMYK:Lcom/itextpdf/kernel/pdf/PdfName;

    goto :goto_0

    .line 349
    :cond_3
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    goto :goto_0

    .line 346
    :cond_4
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 354
    :goto_0
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v7, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 357
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getBpc()I

    move-result v6

    if-eqz v6, :cond_6

    .line 358
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerComponent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getBpc()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 361
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getFilter()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 362
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getFilter()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 365
    :cond_7
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getColorEncodingComponentsNumber()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    .line 366
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_8
    if-eqz v1, :cond_c

    .line 371
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/io/image/PngImageData;

    .line 373
    invoke-virtual {v1}, Lcom/itextpdf/io/image/PngImageData;->isIndexed()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 374
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 375
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Indexed:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 376
    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getColorSpaceInfo(Lcom/itextpdf/io/image/PngImageData;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 378
    invoke-virtual {v1}, Lcom/itextpdf/io/image/PngImageData;->getColorPalette()[B

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v1}, Lcom/itextpdf/io/image/PngImageData;->getColorPalette()[B

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_9

    .line 381
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/io/image/PngImageData;->getColorPalette()[B

    move-result-object v8

    array-length v8, v8

    div-int/2addr v8, v4

    sub-int/2addr v8, v5

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 384
    :cond_9
    invoke-virtual {v1}, Lcom/itextpdf/io/image/PngImageData;->getColorPalette()[B

    move-result-object v4

    if-eqz v4, :cond_a

    .line 385
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfString;

    .line 386
    invoke-virtual {v1}, Lcom/itextpdf/io/image/PngImageData;->getColorPalette()[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v6, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 389
    :cond_a
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 391
    :cond_b
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getColorSpaceInfo(Lcom/itextpdf/io/image/PngImageData;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 394
    :cond_c
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getImageAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->createDictionaryFromMap(Lcom/itextpdf/kernel/pdf/PdfStream;Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 397
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->putAll(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 400
    :cond_d
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getProfile()Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 402
    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;->getIccProfileStream(Lcom/itextpdf/io/colors/IccProfile;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v2

    .line 403
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 404
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->ICCBased:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 405
    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 406
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 409
    invoke-static {v6}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v7

    .line 410
    const-class v8, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-nez v7, :cond_e

    .line 411
    invoke-static {v8}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Image has incorrect or unsupported color space, that will be overridden by one based on embedded icc profile."

    .line 412
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_5

    .line 413
    :cond_e
    instance-of v9, v7, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Indexed;

    if-eqz v9, :cond_11

    .line 414
    check-cast v7, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Indexed;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Indexed;->getBaseCs()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v7

    if-nez v7, :cond_f

    .line 416
    invoke-static {v8}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Image has incorrect or unsupported base color space in indexed color space, it will be overridden by one based on embedded icc profile."

    .line 417
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 418
    :cond_f
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getNumberOfComponents()I

    move-result v9

    invoke-virtual {v1}, Lcom/itextpdf/io/colors/IccProfile;->getNumComponents()I

    move-result v1

    if-eq v9, v1, :cond_10

    .line 419
    invoke-static {v8}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Image has icc profile with incompatible number of color components compared to base color space in image indexed color space. The icc profile will be ignored."

    .line 420
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    move v1, v3

    goto :goto_3

    .line 423
    :cond_10
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Alternate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {v2, v1, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :goto_2
    move v1, v5

    :goto_3
    if-eqz v1, :cond_14

    .line 426
    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v6, v5, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_4

    .line 429
    :cond_11
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getNumberOfComponents()I

    move-result v7

    invoke-virtual {v1}, Lcom/itextpdf/io/colors/IccProfile;->getNumComponents()I

    move-result v1

    if-eq v7, v1, :cond_12

    .line 430
    invoke-static {v8}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Image has icc profile with incompatible number of color components compared to image color space. The icc profile will be ignored."

    .line 431
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_4
    move v1, v3

    goto :goto_6

    .line 434
    :cond_12
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Alternate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_13
    :goto_5
    move v1, v5

    :cond_14
    :goto_6
    if-eqz v1, :cond_15

    .line 438
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 442
    :cond_15
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->isMask()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getBpc()I

    move-result v1

    if-eq v1, v5, :cond_16

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getBpc()I

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_17

    .line 443
    :cond_16
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ImageMask:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfBoolean;->TRUE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_17
    if-eqz p1, :cond_19

    .line 447
    iget-boolean v1, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->softMask:Z

    if-eqz v1, :cond_18

    .line 448
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->SMask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_7

    .line 449
    :cond_18
    iget-boolean v1, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->mask:Z

    if-eqz v1, :cond_19

    .line 450
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Mask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 454
    :cond_19
    :goto_7
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getImageMask()Lcom/itextpdf/io/image/ImageData;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 456
    invoke-virtual {v1}, Lcom/itextpdf/io/image/ImageData;->isSoftMask()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 457
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->SMask:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getImageMask()Lcom/itextpdf/io/image/ImageData;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_8

    .line 458
    :cond_1a
    invoke-virtual {v1}, Lcom/itextpdf/io/image/ImageData;->isMask()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 459
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Mask:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getImageMask()Lcom/itextpdf/io/image/ImageData;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 463
    :cond_1b
    :goto_8
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getDecode()[F

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 464
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getDecode()[F

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 466
    :cond_1c
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->isMask()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->isInverted()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 467
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-direct {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 469
    :cond_1d
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->isInterpolation()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 470
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Interpolate:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfBoolean;->TRUE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 473
    :cond_1e
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getTransparency()[I

    move-result-object v1

    if-eqz v1, :cond_20

    .line 474
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->isMask()Z

    move-result v2

    if-nez v2, :cond_20

    if-nez p1, :cond_20

    .line 475
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 476
    array-length v2, v1

    :goto_9
    if-ge v3, v2, :cond_1f

    aget v4, v1, v3

    .line 477
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 479
    :cond_1f
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Mask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 482
    :cond_20
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v2

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 483
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result p0

    float-to-double v2, p0

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static getColorSpaceInfo(Lcom/itextpdf/io/image/PngImageData;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 9

    .line 558
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->getProfile()Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->isGrayscaleImage()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 560
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 562
    :cond_0
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 565
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->getGamma()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->isHasCHRM()Z

    move-result v0

    if-nez v0, :cond_3

    .line 566
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->isGrayscaleImage()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 567
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 569
    :cond_2
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 572
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 573
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 574
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->isGrayscaleImage()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 575
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->getGamma()F

    move-result v3

    cmpl-float v1, v3, v1

    if-nez v1, :cond_4

    .line 576
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 578
    :cond_4
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CalGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 579
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Gamma:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->getGamma()F

    move-result p0

    float-to-double v5, p0

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 580
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->WhitePoint:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    filled-new-array {v4, v4, v4}, [I

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([I)V

    invoke-virtual {v2, p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    .line 582
    new-array v5, v3, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    aput v1, v5, v4

    const/4 v7, 0x2

    aput v1, v5, v7

    .line 583
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->CalRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 584
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->getGamma()F

    move-result v8

    cmpl-float v1, v8, v1

    if-eqz v1, :cond_6

    .line 589
    new-array v1, v3, [F

    aput v8, v1, v6

    aput v8, v1, v4

    aput v8, v1, v7

    .line 590
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Gamma:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 592
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->isHasCHRM()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 593
    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$1;)V

    .line 594
    invoke-virtual {v1, p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;->constructMatrix(Lcom/itextpdf/io/image/PngImageData;)V

    .line 595
    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;->wp:[F

    .line 596
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Matrix:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;->matrix:[F

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 598
    :cond_7
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->WhitePoint:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 600
    :goto_0
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-object v0
.end method

.method private initHeightField()F
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->height:F

    .line 321
    :cond_0
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->height:F

    return v0
.end method

.method private initWidthField()F
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->width:F

    .line 313
    :cond_0
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->width:F

    return v0
.end method


# virtual methods
.method public copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .locals 2

    .line 175
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 176
    iget-boolean p1, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->mask:Z

    iput-boolean p1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->mask:Z

    .line 177
    iget-boolean p1, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->softMask:Z

    iput-boolean p1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->softMask:Z

    return-object v0
.end method

.method public flush()V
    .locals 0

    .line 165
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->flush()V

    return-void
.end method

.method public getBufferedImage()Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getImageBytes()[B

    move-result-object v0

    .line 189
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 153
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->height:F

    return v0
.end method

.method public getImageBytes()[B
    .locals 1

    const/4 v0, 0x1

    .line 198
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getImageBytes(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getImageBytes(Z)[B
    .locals 3

    .line 211
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object v0

    if-eqz p1, :cond_1

    .line 213
    new-instance p1, Ljava/util/HashMap;

    invoke-static {}, Lcom/itextpdf/kernel/pdf/filters/FilterHandlers;->getDefaultFilterHandlers()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 214
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->JBIG2Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/filters/DoNothingFilter;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/filters/DoNothingFilter;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->decodeBytes([BLcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;)[B

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->identifyImageType()Lcom/itextpdf/io/image/ImageType;

    move-result-object p1

    .line 218
    sget-object v1, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    if-ne p1, v1, :cond_1

    .line 220
    :cond_0
    :try_start_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;

    invoke-direct {p1, p0}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->decodeTiffAndPngBytes([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IO exception in PdfImageXObject"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 143
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->width:F

    return v0
.end method

.method public identifyImageFileExtension()Ljava/lang/String;
    .locals 2

    .line 278
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->identifyImageType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    .line 279
    sget-object v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$1;->$SwitchMap$com$itextpdf$io$image$ImageType:[I

    invoke-virtual {v0}, Lcom/itextpdf/io/image/ImageType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 289
    const-string v0, "jbig2"

    return-object v0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should have never happened. This type of image is not allowed for ImageXObject"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1
    const-string v0, "tif"

    return-object v0

    .line 285
    :cond_2
    const-string v0, "jp2"

    return-object v0

    .line 283
    :cond_3
    const-string v0, "jpg"

    return-object v0

    .line 281
    :cond_4
    const-string v0, "png"

    return-object v0
.end method

.method public identifyImageType()Lcom/itextpdf/io/image/ImageType;
    .locals 5

    .line 240
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 241
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 244
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    if-ne v3, v2, :cond_1

    .line 246
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 249
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_5

    .line 250
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 251
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DCTDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    return-object v0

    .line 253
    :cond_2
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->JBIG2Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 254
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JBIG2:Lcom/itextpdf/io/image/ImageType;

    return-object v0

    .line 255
    :cond_3
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->JPXDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 256
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG2000:Lcom/itextpdf/io/image/ImageType;

    return-object v0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 261
    :cond_5
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V

    .line 262
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->getPngColorType()I

    move-result v0

    if-gez v0, :cond_6

    .line 263
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    return-object v0

    .line 265
    :cond_6
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    return-object v0
.end method

.method public put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method
