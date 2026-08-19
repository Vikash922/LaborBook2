.class public abstract Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "AbstractPdfFunction.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/function/IPdfFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">",
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "TT;>;",
        "Lcom/itextpdf/kernel/pdf/function/IPdfFunction;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private domain:[D

.field private final functionType:I

.field private range:[D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 105
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FunctionType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->functionType:I

    .line 107
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Domain:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toDoubleArray()[D

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->domain:[D

    .line 109
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Range:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 110
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toDoubleArray()[D

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->range:[D

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;I[D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I[D[D)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 85
    iput p2, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->functionType:I

    if-eqz p3, :cond_0

    .line 87
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->domain:[D

    .line 88
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Domain:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1, p3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    if-eqz p4, :cond_1

    .line 91
    array-length p3, p4

    invoke-static {p4, p3}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p3

    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->range:[D

    .line 92
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->Range:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0, p4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {p1, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 94
    :cond_1
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->FunctionType:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p4, p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method protected static clip([D[D)[D
    .locals 10

    .line 331
    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    move v2, v1

    .line 333
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 334
    aget-wide v4, p1, v2

    add-int/lit8 v2, v2, 0x2

    .line 335
    aget-wide v6, p1, v3

    .line 337
    aget-wide v8, p0, v1

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected static normalize([D[D)[D
    .locals 10

    .line 345
    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    move v2, v1

    .line 347
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 348
    aget-wide v4, p1, v2

    const-wide/16 v6, 0x1

    add-double/2addr v6, v4

    add-int/lit8 v2, v2, 0x2

    .line 349
    aget-wide v8, p1, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 351
    aget-wide v8, p0, v1

    sub-double/2addr v8, v4

    sub-double/2addr v6, v4

    div-double/2addr v8, v6

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public calculateFromByteArray([BIIII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 235
    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->calculateFromByteArray([BIIIILcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IInputConversionFunction;Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IOutputConversionFunction;)[B

    move-result-object p1

    return-object p1
.end method

.method public calculateFromByteArray([BIIIILcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IInputConversionFunction;Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IOutputConversionFunction;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-double v0, p4

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    .line 257
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    int-to-double v0, p5

    div-double/2addr v0, v2

    .line 258
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p5, v0

    .line 259
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getInputSize()I

    move-result v0

    .line 260
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getOutputSize()I

    move-result v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-nez p6, :cond_0

    .line 264
    invoke-static {p4, v2, v3}, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors;->getInputConvertor(ID)Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IInputConversionFunction;

    move-result-object p6

    :cond_0
    if-nez p7, :cond_1

    .line 269
    invoke-static {p5, v2, v3}, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors;->getOutputConvertor(ID)Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IOutputConversionFunction;

    move-result-object p7

    .line 272
    :cond_1
    invoke-interface {p6, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IInputConversionFunction;->convert([BII)[D

    move-result-object p1

    .line 273
    array-length p2, p1

    div-int/2addr p2, v0

    mul-int/2addr p2, v1

    new-array p2, p2, [D

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    .line 275
    :goto_0
    array-length p6, p1

    if-ge p4, p6, :cond_2

    add-int p6, p4, v0

    .line 276
    invoke-static {p1, p4, p6}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->calculate([D)[D

    move-result-object p4

    .line 277
    array-length v1, p4

    invoke-static {p4, p3, p2, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    array-length p4, p4

    add-int/2addr p5, p4

    move p4, p6

    goto :goto_0

    .line 280
    :cond_2
    invoke-interface {p7, p2}, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IOutputConversionFunction;->convert([D)[B

    move-result-object p1

    return-object p1
.end method

.method public checkCompatibilityWithColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getOutputSize()I

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getNumberOfComponents()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clipInput([D)[D
    .locals 3

    .line 295
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->domain:[D

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 298
    invoke-static {p1, v1}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->clip([D[D)[D

    move-result-object p1

    return-object p1

    .line 296
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The size of the input array must be a multiple of the domain size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clipOutput([D)[D
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->range:[D

    if-nez v0, :cond_0

    return-object p1

    .line 316
    :cond_0
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 320
    invoke-static {p1, v0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->clip([D[D)[D

    move-result-object p1

    return-object p1

    .line 317
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The size of the input array must be a multiple of the range size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAsPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 325
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()[D
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->domain:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    return-object v0
.end method

.method public getFunctionType()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->functionType:I

    return v0
.end method

.method public getInputSize()I
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Domain:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getOutputSize()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->range:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0
.end method

.method public getRange()[D
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->range:[D

    if-eqz v0, :cond_0

    .line 196
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDomain([D)V
    .locals 3

    .line 181
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->domain:[D

    .line 182
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Domain:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->domain:[D

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method public setRange([D)V
    .locals 3

    if-nez p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Range:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void

    .line 215
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->range:[D

    .line 216
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Range:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->range:[D

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method
