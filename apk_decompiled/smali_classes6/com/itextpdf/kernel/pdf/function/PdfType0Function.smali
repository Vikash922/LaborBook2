.class public Lcom/itextpdf/kernel/pdf/function/PdfType0Function;
.super Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;
.source "PdfType0Function.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction<",
        "Lcom/itextpdf/kernel/pdf/PdfStream;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bitsPerSample:I

.field private decode:[D

.field private decodeLimit:J

.field private derivatives:[[D

.field private encode:[I

.field private errorMessage:Ljava/lang/String;

.field private isValidated:Z

.field private order:I

.field private outputDimension:I

.field private sampleExtractor:Lcom/itextpdf/kernel/pdf/function/utils/AbstractSampleExtractor;

.field private samples:[B

.field private size:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 5

    .line 78
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->sampleExtractor:Lcom/itextpdf/kernel/pdf/function/utils/AbstractSampleExtractor;

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->isValidated:Z

    .line 73
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->errorMessage:Ljava/lang/String;

    .line 75
    move-object v2, v0

    check-cast v2, [[D

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->derivatives:[[D

    .line 80
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Size:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 81
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getDomain()[D

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getRange()[D

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_0

    goto :goto_4

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    .line 88
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Order:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->order:I

    .line 91
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Encode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 92
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->initializeEncoding(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 94
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_2

    .line 96
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getRange()[D

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->decode:[D

    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toDoubleArray()[D

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->decode:[D

    .line 100
    :goto_1
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getRange()[D

    move-result-object v0

    array-length v0, v0

    shr-int/2addr v0, v2

    iput v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->outputDimension:I

    .line 102
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerSample:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    :goto_2
    iput v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->bitsPerSample:I

    const-wide/16 v3, 0x1

    shl-long v0, v3, v1

    sub-long/2addr v0, v3

    .line 105
    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->decodeLimit:J

    .line 106
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->samples:[B

    .line 108
    :try_start_0
    iget p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->bitsPerSample:I

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/function/utils/AbstractSampleExtractor;->createExtractor(I)Lcom/itextpdf/kernel/pdf/function/utils/AbstractSampleExtractor;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->sampleExtractor:Lcom/itextpdf/kernel/pdf/function/utils/AbstractSampleExtractor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->setErrorMessage(Ljava/lang/String;)V

    :goto_3
    return-void

    .line 82
    :cond_4
    :goto_4
    const-string p1, "Domain, range and size must be not null"

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([D[I[DII[B)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, p5

    move-object v8, p6

    .line 117
    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;-><init>([D[I[DI[I[DI[B)V

    return-void
.end method

.method public constructor <init>([D[I[DI[I[DI[B)V
    .locals 2

    .line 122
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, p8}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;I[D[D)V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->sampleExtractor:Lcom/itextpdf/kernel/pdf/function/utils/AbstractSampleExtractor;

    .line 72
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->isValidated:Z

    .line 73
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->errorMessage:Ljava/lang/String;

    .line 75
    move-object v0, p1

    check-cast v0, [[D

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->derivatives:[[D

    if-eqz p2, :cond_0

    .line 124
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    .line 127
    :cond_0
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getDomain()[D

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getRange()[D

    move-result-object p1

    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto/16 :goto_2

    .line 132
    :cond_1
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    .line 133
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Size:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([I)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 135
    iput p4, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->order:I

    .line 136
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Order:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v0, p4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 138
    invoke-direct {p0, p5}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->initializeEncoding([I)V

    .line 139
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Encode:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p4, Lcom/itextpdf/kernel/pdf/PdfArray;

    iget-object p5, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    invoke-direct {p4, p5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([I)V

    invoke-virtual {p1, p2, p4}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    if-nez p6, :cond_2

    .line 142
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->decode:[D

    goto :goto_0

    .line 144
    :cond_2
    array-length p1, p6

    invoke-static {p6, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->decode:[D

    .line 146
    :goto_0
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfArray;

    iget-object p4, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->decode:[D

    invoke-direct {p3, p4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 148
    iput p7, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->bitsPerSample:I

    .line 149
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerSample:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p3, p7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 151
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getRange()[D

    move-result-object p1

    array-length p1, p1

    shr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->outputDimension:I

    const-wide/16 p1, 0x1

    shl-long p3, p1, p7

    sub-long/2addr p3, p1

    .line 152
    iput-wide p3, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->decodeLimit:J

    .line 153
    array-length p1, p8

    invoke-static {p8, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->samples:[B

    .line 155
    :try_start_0
    invoke-static {p7}, Lcom/itextpdf/kernel/pdf/function/utils/AbstractSampleExtractor;->createExtractor(I)Lcom/itextpdf/kernel/pdf/function/utils/AbstractSampleExtractor;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->sampleExtractor:Lcom/itextpdf/kernel/pdf/function/utils/AbstractSampleExtractor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->setErrorMessage(Ljava/lang/String;)V

    .line 159
    :goto_1
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->isInvalid()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 160
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->errorMessage:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_4
    :goto_2
    const-string p1, "Domain, range and size must be not null"

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method private static calculateCubicInterpolationFormula(DDDDD)D
    .locals 10

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, p0

    sub-double v2, p6, p2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p2

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double/2addr v6, p4

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double v6, v6, p6

    add-double/2addr v4, v6

    sub-double v4, v4, p8

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    sub-double v8, p4, p6

    mul-double/2addr v8, v6

    add-double v8, v8, p8

    sub-double/2addr v8, p2

    mul-double v6, p0, v8

    add-double/2addr v4, v6

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, p4

    return-wide v0
.end method

.method private static calculateCubicSplineFormula(DDDDD)D
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, p0

    mul-double/2addr p4, p0

    mul-double/2addr p2, v2

    add-double/2addr p4, p2

    mul-double p2, p0, v2

    add-double/2addr v2, v0

    mul-double/2addr p6, v2

    add-double/2addr p0, v0

    mul-double/2addr p8, p0

    add-double/2addr p6, p8

    mul-double/2addr p2, p6

    const-wide/high16 p0, 0x4018000000000000L    # 6.0

    div-double/2addr p2, p0

    sub-double/2addr p4, p2

    return-wide p4
.end method

.method private calculateCubicSplineFormula(DI)[D
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 483
    iget v2, v0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->outputDimension:I

    new-array v2, v2, [D

    const/4 v3, 0x0

    move v4, v3

    .line 484
    :goto_0
    iget v5, v0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->outputDimension:I

    if-ge v4, v5, :cond_0

    .line 486
    invoke-direct {v0, v4, v1}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getValue(II)D

    move-result-wide v8

    add-int/lit8 v5, v1, 0x1

    invoke-direct {v0, v4, v5}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getValue(II)D

    move-result-wide v10

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->derivatives:[[D

    aget-object v5, v5, v4

    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    aget v6, v6, v3

    sub-int v7, v1, v6

    aget-wide v12, v5, v7

    sub-int v6, v1, v6

    add-int/lit8 v6, v6, 0x1

    aget-wide v14, v5, v6

    move-wide/from16 v6, p1

    .line 485
    invoke-static/range {v6 .. v15}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->calculateCubicSplineFormula(DDDDD)D

    move-result-wide v5

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static calculateLinearInterpolationFormula(DDD)D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    mul-double/2addr v0, p2

    mul-double/2addr p0, p4

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private calculateSecondDerivatives()V
    .locals 13

    .line 496
    iget v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->outputDimension:I

    new-array v0, v0, [[D

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->derivatives:[[D

    const/4 v0, 0x0

    move v1, v0

    .line 497
    :goto_0
    iget v2, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->outputDimension:I

    if-ge v1, v2, :cond_1

    .line 498
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    aget v2, v2, v0

    sub-int/2addr v4, v2

    sub-int/2addr v4, v3

    new-array v4, v4, [D

    .line 499
    :goto_1
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    aget v6, v5, v3

    sub-int/2addr v6, v3

    if-ge v2, v6, :cond_0

    .line 500
    aget v5, v5, v0

    sub-int v5, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getValue(II)D

    move-result-wide v6

    add-int/lit8 v8, v2, 0x1

    invoke-direct {p0, v1, v8}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getValue(II)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v9, v11

    sub-double/2addr v6, v9

    add-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getValue(II)D

    move-result-wide v9

    add-double/2addr v6, v9

    const-wide/high16 v9, 0x4018000000000000L    # 6.0

    mul-double/2addr v6, v9

    aput-wide v6, v4, v5

    move v2, v8

    goto :goto_1

    .line 502
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->derivatives:[[D

    invoke-static {v4}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->specialSweepMethod([D)[D

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private decode(JI)D
    .locals 5

    shl-int/lit8 p3, p3, 0x1

    .line 551
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->decode:[D

    aget-wide v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    aget-wide v3, v0, p3

    sub-double/2addr v3, v1

    long-to-double p1, p1

    mul-double/2addr v3, p1

    iget-wide p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->decodeLimit:J

    long-to-double p1, p1

    div-double/2addr v3, p1

    add-double/2addr v1, v3

    return-wide v1
.end method

.method static encode(DII)D
    .locals 2

    int-to-double v0, p2

    sub-int/2addr p3, p2

    int-to-double p2, p3

    mul-double/2addr p0, p2

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private getDefaultEncoding()[I
    .locals 8

    .line 389
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 391
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_0

    aget v6, v0, v4

    add-int/lit8 v7, v5, 0x1

    .line 392
    aput v3, v1, v5

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, -0x1

    .line 393
    aput v6, v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static getFloor([D[I)[I
    .locals 8

    .line 268
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 269
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    shl-int/lit8 v3, v2, 0x1

    .line 271
    aget-wide v4, p0, v2

    aget v6, p1, v3

    add-int/lit8 v3, v3, 0x1

    aget v7, p1, v3

    invoke-static {v4, v5, v6, v7}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode(DII)D

    move-result-wide v4

    double-to-int v4, v4

    .line 273
    aget v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getFloorWeight(DII)D
    .locals 0

    .line 322
    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode(DII)D

    move-result-wide p0

    add-int/lit8 p3, p3, -0x1

    double-to-int p2, p0

    .line 323
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-double p2, p2

    sub-double/2addr p0, p2

    return-wide p0
.end method

.method static getFloorWeights([D[I)[D
    .locals 6

    .line 304
    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 305
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 306
    aget-wide v2, p0, v1

    mul-int/lit8 v4, v1, 0x2

    aget v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    invoke-static {v2, v3, v5, v4}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getFloorWeight(DII)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getInputDimensionSteps()[I
    .locals 6

    .line 533
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 534
    aput v3, v1, v2

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v2, v3, -0x1

    .line 536
    aget v4, v1, v2

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    aget v2, v5, v2

    mul-int/2addr v4, v2

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static getSamplePosition([I[I)I
    .locals 4

    .line 287
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    .line 288
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_0

    .line 289
    aget v2, p0, v1

    aget v3, p1, v1

    mul-int/2addr v3, v0

    add-int v0, v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getValue(II)D
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->sampleExtractor:Lcom/itextpdf/kernel/pdf/function/utils/AbstractSampleExtractor;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->samples:[B

    iget v2, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->outputDimension:I

    mul-int/2addr v2, p2

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/function/utils/AbstractSampleExtractor;->extract([BI)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->decode(JI)D

    move-result-wide p1

    return-wide p1
.end method

.method private initializeEncoding(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 5

    if-nez p1, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getDefaultEncoding()[I

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    goto :goto_1

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toIntArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    const/4 p1, 0x0

    move v0, p1

    .line 367
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    shl-int/lit8 v1, v0, 0x1

    .line 369
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    aget v3, v2, v1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v2, v1

    .line 370
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    aget v3, v3, v0

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private initializeEncoding([I)V
    .locals 6

    if-nez p1, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getDefaultEncoding()[I

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    goto :goto_1

    .line 379
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    const/4 v0, 0x0

    move v1, v0

    .line 380
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    shl-int/lit8 v2, v1, 0x1

    .line 382
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    aget v4, p1, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v3, v2

    .line 383
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    aget v4, v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v5, p1, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private interpolate([D[I)[D
    .locals 11

    .line 399
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    invoke-static {p2, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getSamplePosition([I[I)I

    move-result v0

    .line 400
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    invoke-static {p1, v1}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getFloorWeights([D[I)[D

    move-result-object p1

    .line 401
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getInputDimensionSteps()[I

    move-result-object v8

    .line 402
    iget v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->outputDimension:I

    new-array v9, v1, [D

    .line 403
    iget v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->order:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    move v10, v2

    .line 410
    :goto_0
    iget v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->outputDimension:I

    if-ge v10, v1, :cond_0

    .line 411
    array-length v6, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move-object v5, v8

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->interpolateOrder3([D[II[III)D

    move-result-wide v1

    aput-wide v1, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-object v9

    .line 415
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Order must be equal to 1 or 3"

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move p2, v2

    .line 405
    :goto_1
    iget v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->outputDimension:I

    if-ge p2, v1, :cond_3

    .line 406
    array-length v5, v8

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move-object v4, v8

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->interpolateOrder1([DI[III)D

    move-result-wide v1

    aput-wide v1, v9, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-object v9
.end method

.method private interpolateByCubicSpline(DI)[D
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->derivatives:[[D

    if-nez v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->calculateSecondDerivatives()V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {p1, p2, v1, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getFloorWeight(DII)D

    move-result-wide p1

    .line 479
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->calculateCubicSplineFormula(DI)[D

    move-result-object p1

    return-object p1
.end method

.method private interpolateOrder1([DI[III)D
    .locals 10

    if-nez p4, :cond_0

    .line 421
    invoke-direct {p0, p5, p2}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getValue(II)D

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 p4, p4, -0x1

    .line 423
    aget v6, p3, p4

    shl-int/lit8 v7, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 426
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->interpolateOrder1([DI[III)D

    move-result-wide v8

    .line 427
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    aget v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    aget v0, v0, v7

    if-ne v1, v0, :cond_1

    return-wide v8

    :cond_1
    add-int v2, p2, v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 432
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->interpolateOrder1([DI[III)D

    move-result-wide v4

    .line 434
    aget-wide v0, p1, p4

    move-wide v2, v8

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->calculateLinearInterpolationFormula(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method private interpolateOrder3([D[II[III)D
    .locals 25

    move-object/from16 v7, p0

    move/from16 v8, p3

    if-nez p5, :cond_0

    move/from16 v9, p6

    .line 439
    invoke-direct {v7, v9, v8}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getValue(II)D

    move-result-wide v0

    return-wide v0

    :cond_0
    move/from16 v9, p6

    add-int/lit8 v10, p5, -0x1

    .line 441
    aget v11, p4, v10

    shl-int/lit8 v12, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v10

    move/from16 v6, p6

    .line 444
    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->interpolateOrder3([D[II[III)D

    move-result-wide v17

    .line 445
    iget-object v0, v7, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    aget v1, v0, v12

    add-int/lit8 v13, v12, 0x1

    aget v0, v0, v13

    if-ne v1, v0, :cond_1

    return-wide v17

    :cond_1
    add-int v14, v8, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move-object/from16 v4, p4

    move v5, v10

    move/from16 v6, p6

    .line 450
    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->interpolateOrder3([D[II[III)D

    move-result-wide v19

    .line 452
    iget-object v0, v7, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    aget v1, v0, v13

    aget v0, v0, v12

    sub-int/2addr v1, v0

    const/4 v15, 0x1

    if-ne v1, v15, :cond_2

    .line 453
    aget-wide v0, p1, v10

    move-wide/from16 p1, v0

    move-wide/from16 p3, v17

    move-wide/from16 p5, v19

    invoke-static/range {p1 .. p6}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->calculateLinearInterpolationFormula(DDD)D

    move-result-wide v0

    return-wide v0

    .line 457
    :cond_2
    aget v1, p2, v10

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    if-le v1, v0, :cond_3

    sub-int v3, v8, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move v5, v10

    move/from16 v6, p6

    .line 458
    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->interpolateOrder3([D[II[III)D

    move-result-wide v0

    goto :goto_0

    :cond_3
    mul-double v0, v17, v21

    sub-double v0, v0, v19

    :goto_0
    move-wide/from16 v23, v0

    .line 464
    aget v0, p2, v10

    iget-object v1, v7, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    aget v2, v1, v13

    aget v1, v1, v12

    sub-int/2addr v2, v1

    sub-int/2addr v2, v15

    if-ge v0, v2, :cond_4

    add-int v3, v14, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move v5, v10

    move/from16 v6, p6

    .line 465
    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->interpolateOrder3([D[II[III)D

    move-result-wide v0

    move-wide/from16 v21, v0

    goto :goto_1

    :cond_4
    mul-double v21, v21, v19

    sub-double v21, v21, v17

    .line 470
    :goto_1
    aget-wide v13, p1, v10

    move-wide/from16 v15, v23

    invoke-static/range {v13 .. v22}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->calculateCubicInterpolationFormula(DDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private isInvalid()Z
    .locals 8

    .line 560
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->isValidated:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 563
    :cond_1
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getDomain()[D

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getRange()[D

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    if-nez v0, :cond_2

    goto/16 :goto_6

    .line 567
    :cond_2
    iget v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->order:I

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    .line 568
    const-string v0, "Order must be equal to 1 or 3"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->setErrorMessage(Ljava/lang/String;)V

    return v2

    .line 571
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getDomain()[D

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getDomain()[D

    move-result-object v0

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_4

    goto/16 :goto_5

    .line 575
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getRange()[D

    move-result-object v0

    array-length v0, v0

    const-string v3, "Invalid encode array for PDF function of type 0"

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getRange()[D

    move-result-object v0

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_5

    goto/16 :goto_4

    .line 580
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getDomain()[D

    move-result-object v0

    array-length v0, v0

    shr-int/2addr v0, v2

    .line 581
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    const-string v5, "Invalid size array for PDF function of type 0"

    if-eqz v4, :cond_f

    array-length v6, v4

    if-eq v6, v0, :cond_6

    goto/16 :goto_3

    .line 585
    :cond_6
    array-length v0, v4

    move v6, v1

    :goto_0
    if-ge v6, v0, :cond_8

    aget v7, v4, v6

    if-gtz v7, :cond_7

    .line 587
    invoke-direct {p0, v5}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->setErrorMessage(Ljava/lang/String;)V

    return v2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 591
    :cond_8
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    array-length v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getDomain()[D

    move-result-object v4

    array-length v4, v4

    if-eq v0, v4, :cond_9

    .line 592
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->setErrorMessage(Ljava/lang/String;)V

    return v2

    :cond_9
    move v0, v1

    .line 595
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    array-length v5, v4

    if-ge v0, v5, :cond_b

    add-int/lit8 v5, v0, 0x1

    .line 596
    aget v5, v4, v5

    aget v4, v4, v0

    if-ge v5, v4, :cond_a

    .line 597
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->setErrorMessage(Ljava/lang/String;)V

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 601
    :cond_b
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->decode:[D

    array-length v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getRange()[D

    move-result-object v3

    array-length v3, v3

    if-eq v0, v3, :cond_c

    .line 602
    const-string v0, "Invalid decode array for PDF function of type 0"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->setErrorMessage(Ljava/lang/String;)V

    return v2

    .line 605
    :cond_c
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    iget v3, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->outputDimension:I

    iget v4, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->bitsPerSample:I

    mul-int/2addr v3, v4

    new-instance v4, Lcom/itextpdf/kernel/pdf/function/PdfType0Function$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/stream/IntStream;->reduce(ILjava/util/function/IntBinaryOperator;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 607
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->samples:[B

    if-eqz v3, :cond_e

    array-length v3, v3

    if-ge v3, v0, :cond_d

    goto :goto_2

    .line 613
    :cond_d
    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->isValidated:Z

    return v1

    .line 608
    :cond_e
    :goto_2
    const-string v0, "Invalid samples array for PDF function of type 0"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->setErrorMessage(Ljava/lang/String;)V

    return v2

    .line 582
    :cond_f
    :goto_3
    invoke-direct {p0, v5}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->setErrorMessage(Ljava/lang/String;)V

    return v2

    .line 576
    :cond_10
    :goto_4
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->setErrorMessage(Ljava/lang/String;)V

    return v2

    .line 572
    :cond_11
    :goto_5
    const-string v0, "Invalid domain for PDF function of type 0"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->setErrorMessage(Ljava/lang/String;)V

    return v2

    .line 564
    :cond_12
    :goto_6
    const-string v0, "Domain, range and size must be not null"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->setErrorMessage(Ljava/lang/String;)V

    return v2
.end method

.method static synthetic lambda$isInvalid$0(II)I
    .locals 0

    mul-int/2addr p0, p1

    return p0
.end method

.method private setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->errorMessage:Ljava/lang/String;

    const/4 p1, 0x1

    .line 556
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->isValidated:Z

    return-void
.end method

.method static specialSweepMethod([D)[D
    .locals 14

    .line 345
    array-length v0, p0

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x1

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    .line 346
    aput-wide v3, v1, v2

    move v5, v2

    .line 347
    :goto_0
    array-length v6, p0

    const/4 v7, 0x0

    if-ge v5, v6, :cond_0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 348
    aget-wide v10, v1, v5

    div-double/2addr v8, v10

    aput-wide v8, v1, v7

    add-int/lit8 v6, v5, 0x1

    sub-double v8, v3, v8

    .line 349
    aput-wide v8, v1, v6

    .line 350
    aget-wide v8, p0, v5

    aget-wide v10, v1, v7

    add-int/lit8 v7, v5, -0x1

    aget-wide v12, p0, v7

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, p0, v5

    move v5, v6

    goto :goto_0

    .line 353
    :cond_0
    array-length v3, p0

    array-length v4, p0

    sub-int/2addr v4, v2

    aget-wide v4, p0, v4

    array-length v6, p0

    aget-wide v8, v1, v6

    div-double/2addr v4, v8

    aput-wide v4, v1, v3

    .line 354
    array-length v3, p0

    sub-int/2addr v3, v2

    :goto_1
    if-lez v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 355
    aget-wide v4, p0, v4

    add-int/lit8 v6, v3, 0x1

    aget-wide v8, v1, v6

    sub-double/2addr v4, v8

    aget-wide v8, v1, v3

    div-double/2addr v4, v8

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 358
    aput-wide v2, v1, v0

    aput-wide v2, v1, v7

    return-object v1
.end method


# virtual methods
.method public calculate([D)[D
    .locals 5

    .line 223
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getDomain()[D

    move-result-object v0

    invoke-static {p1, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->normalize([D[D)[D

    move-result-object p1

    .line 228
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    invoke-static {p1, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getFloor([D[I)[I

    move-result-object v0

    .line 232
    iget v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->order:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    aget v3, v1, v2

    const/4 v4, 0x0

    aget v1, v1, v4

    sub-int/2addr v3, v1

    if-le v3, v2, :cond_0

    .line 233
    aget-wide v1, p1, v4

    aget p1, v0, v4

    invoke-direct {p0, v1, v2, p1}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->interpolateByCubicSpline(DI)[D

    move-result-object p1

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->interpolate([D[I)[D

    move-result-object p1

    .line 238
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getRange()[D

    move-result-object v0

    invoke-static {p1, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->clip([D[D)[D

    move-result-object p1

    return-object p1

    .line 224
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->errorMessage:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkCompatibilityWithColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Z
    .locals 2

    .line 206
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getInputSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getOutputSize()I

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getNumberOfComponents()I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDecode()[D
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->decode:[D

    return-object v0
.end method

.method public getEncode()[I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->encode:[I

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->order:I

    return v0
.end method

.method public getSize()[I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    return-object v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDecode([D)V
    .locals 3

    .line 199
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->decode:[D

    .line 200
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    const/4 p1, 0x0

    .line 201
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->isValidated:Z

    return-void
.end method

.method public setDomain([D)V
    .locals 0

    .line 211
    invoke-super {p0, p1}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->setDomain([D)V

    const/4 p1, 0x0

    .line 212
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->isValidated:Z

    return-void
.end method

.method public setEncode([I)V
    .locals 3

    .line 189
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->initializeEncoding([I)V

    .line 190
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Encode:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    const/4 p1, 0x0

    .line 191
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->isValidated:Z

    return-void
.end method

.method public setOrder(I)V
    .locals 3

    .line 169
    iput p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->order:I

    .line 170
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Order:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->isValidated:Z

    return-void
.end method

.method public setRange([D)V
    .locals 0

    .line 217
    invoke-super {p0, p1}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->setRange([D)V

    const/4 p1, 0x0

    .line 218
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->isValidated:Z

    return-void
.end method

.method public setSize([I)V
    .locals 3

    .line 179
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->size:[I

    .line 180
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Size:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;->isValidated:Z

    return-void
.end method
