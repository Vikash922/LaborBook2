.class public Lcom/itextpdf/kernel/pdf/function/PdfType2Function;
.super Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;
.source "PdfType2Function.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# instance fields
.field private c0:[D

.field private c1:[D

.field private n:D


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 7

    .line 73
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 75
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 79
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->n:D

    .line 81
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getDomain()[D

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    .line 85
    iget-wide v2, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->n:D

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getDomain()[D

    move-result-object v0

    aget-wide v5, v0, v2

    cmpg-double v0, v5, v3

    if-ltz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid PDF Type 2 Function object, when \"N\" is not an integer, values of \"Domain\" shall define the input value as non-negative."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    :goto_0
    iget-wide v5, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->n:D

    cmpg-double v0, v5, v3

    if-gez v0, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [D

    aput-wide v3, v0, v2

    invoke-super {p0, v0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->clipInput([D)[D

    move-result-object v0

    aget-wide v5, v0, v2

    cmpl-double v0, v5, v3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 89
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid PDF Type 2 Function object, when \"N\" is negative, values of \"Domain\" shall not allow zero as input value."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_3
    :goto_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->C0:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 93
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->C1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 94
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Range:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    .line 95
    invoke-static {v0, v2, p1, v3, v4}, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->initializeCArray(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;D)[D

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->c0:[D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 96
    invoke-static {v2, v0, p1, v3, v4}, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->initializeCArray(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;D)[D

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->c1:[D

    .line 98
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->c0:[D

    array-length v0, v0

    array-length p1, p1

    if-ne v0, p1, :cond_5

    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getRange()[D

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->c0:[D

    array-length p1, p1

    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getRange()[D

    move-result-object v0

    array-length v0, v0

    div-int/2addr v0, v1

    if-ne p1, v0, :cond_5

    :cond_4
    return-void

    .line 99
    :cond_5
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid PDF Type 2 Function object, if present the size of \"C0\", \"C1\" and half \"Range\" shall be equal."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_6
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid PDF Type 2 Function object, \"Domain\" array shall consist of 2 numbers."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_7
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid PDF Type 2 Function object, \"N\" field should be existed and must be a number."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([D[D[D[DI)V
    .locals 2

    .line 104
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;I[D[D)V

    .line 105
    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->setC0([D)V

    .line 106
    invoke-virtual {p0, p4}, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->setC1([D)V

    .line 107
    invoke-virtual {p0, p5}, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->setN(I)V

    return-void
.end method

.method private static initializeCArray(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;D)[D
    .locals 0

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toDoubleArray()[D

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_1

    const/4 p0, 0x1

    .line 209
    new-array p0, p0, [D

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    new-array p0, p0, [D

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p0

    new-array p0, p0, [D

    :goto_0
    const/4 p1, 0x0

    .line 217
    :goto_1
    array-length p2, p0

    if-ge p1, p2, :cond_3

    .line 218
    aput-wide p3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-object p0
.end method


# virtual methods
.method public calculate([D)[D
    .locals 13

    if-eqz p1, :cond_1

    .line 112
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 115
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->clipInput([D)[D

    move-result-object p1

    const/4 v0, 0x0

    .line 116
    aget-wide v1, p1, v0

    .line 117
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->getOutputSize()I

    move-result p1

    .line 118
    new-array v3, p1, [D

    :goto_0
    if-ge v0, p1, :cond_0

    .line 120
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->c0:[D

    aget-wide v5, v4, v0

    iget-wide v7, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->n:D

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->c1:[D

    aget-wide v9, v4, v0

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->c0:[D

    aget-wide v11, v4, v0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aput-wide v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->clipOutput([D)[D

    move-result-object p1

    return-object p1

    .line 113
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid input value for PDF Type 2 Function, value should be a single number."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getC0()[D
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->c0:[D

    return-object v0
.end method

.method public final getC1()[D
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->c1:[D

    return-object v0
.end method

.method public final getN()D
    .locals 2

    .line 183
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->n:D

    return-wide v0
.end method

.method public final getOutputSize()I
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->getRange()[D

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->c0:[D

    array-length v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->getRange()[D

    move-result-object v0

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setC0([D)V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->C0:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 155
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->c0:[D

    return-void
.end method

.method public final setC1([D)V
    .locals 3

    .line 173
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->C1:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 174
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->c1:[D

    return-void
.end method

.method public final setN(I)V
    .locals 3

    .line 192
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    int-to-double v0, p1

    .line 193
    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;->n:D

    return-void
.end method
