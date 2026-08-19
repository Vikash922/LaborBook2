.class Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;
.super Ljava/lang/Object;
.source "ImagePdfBytesInfo.java"


# static fields
.field private static final TIFFTAG_SOFTWARE_VALUE:Ljava/lang/String;


# instance fields
.field private final bpc:I

.field private final colorspace:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private final decode:Lcom/itextpdf/kernel/pdf/PdfArray;

.field private final height:I

.field private icc:[B

.field private palette:[B

.field private pngBitDepth:I

.field private pngColorType:I

.field private stride:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iText\u00ae "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/itextpdf/kernel/actions/data/ITextCoreProductData;->getInstance()Lcom/itextpdf/commons/actions/data/ProductData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/commons/actions/data/ProductData;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00a9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/itextpdf/kernel/actions/data/ITextCoreProductData;->getInstance()Lcom/itextpdf/commons/actions/data/ProductData;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/itextpdf/commons/actions/data/ProductData;->getSinceCopyrightYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/itextpdf/kernel/actions/data/ITextCoreProductData;->getInstance()Lcom/itextpdf/commons/actions/data/ProductData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/commons/actions/data/ProductData;->getToCopyrightYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " iText Group NV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->TIFFTAG_SOFTWARE_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    .line 80
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerComponent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    .line 81
    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngBitDepth:I

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->palette:[B

    .line 84
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->icc:[B

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 86
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getWidth()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    .line 87
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getHeight()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->height:I

    .line 88
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->colorspace:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 89
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->decode:Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 p1, 0x1

    .line 90
    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->findColorspace(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V

    return-void
.end method

.method private findColorspace(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V
    .locals 8

    .line 216
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_c

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget v3, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    if-ne v3, v0, :cond_0

    goto/16 :goto_2

    .line 220
    :cond_0
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v3, :cond_2

    .line 221
    iget p1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    if-eq p1, v2, :cond_1

    if-ne p1, v4, :cond_d

    .line 222
    :cond_1
    iget p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    mul-int/2addr p2, p1

    mul-int/2addr p2, v6

    add-int/lit8 p2, p2, 0x7

    div-int/2addr p2, v2

    iput p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 223
    iput v5, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    goto/16 :goto_3

    .line 225
    :cond_2
    instance-of v3, p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v3, :cond_d

    .line 226
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 227
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 228
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->CalGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 229
    iget p1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    iget p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    mul-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x7

    div-int/2addr p1, v2

    iput p1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 230
    iput v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    goto/16 :goto_3

    .line 231
    :cond_3
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->CalRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 232
    iget p1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    if-eq p1, v2, :cond_4

    if-ne p1, v4, :cond_d

    .line 233
    :cond_4
    iget p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    mul-int/2addr p2, p1

    mul-int/2addr p2, v6

    add-int/lit8 p2, p2, 0x7

    div-int/2addr p2, v2

    iput p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 234
    iput v5, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    goto/16 :goto_3

    .line 236
    :cond_5
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->ICCBased:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 237
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 238
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_6

    .line 240
    iget p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    mul-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x7

    div-int/2addr p2, v2

    iput p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 241
    iput v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    .line 242
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->icc:[B

    goto/16 :goto_3

    :cond_6
    if-ne p2, v6, :cond_d

    .line 244
    iget p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    mul-int/2addr p2, v0

    mul-int/2addr p2, v6

    add-int/lit8 p2, p2, 0x7

    div-int/2addr p2, v2

    iput p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 245
    iput v5, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    .line 246
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->icc:[B

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_a

    .line 248
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Indexed:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 249
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    invoke-direct {p0, p2, v1}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->findColorspace(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V

    .line 250
    iget p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    if-ne p2, v5, :cond_d

    .line 251
    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    .line 252
    instance-of p2, p1, Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz p2, :cond_8

    .line 253
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->palette:[B

    goto :goto_0

    .line 254
    :cond_8
    instance-of p2, p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz p2, :cond_9

    .line 255
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->palette:[B

    .line 257
    :cond_9
    :goto_0
    iget p1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    iget p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    mul-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x7

    div-int/2addr p1, v2

    iput p1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 258
    iput v6, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    goto :goto_3

    .line 260
    :cond_a
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Separation:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 261
    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/function/PdfFunctionFactory;->create(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/function/IPdfFunction;

    move-result-object p1

    .line 262
    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/function/IPdfFunction;->getOutputSize()I

    move-result p1

    if-ne p1, v0, :cond_b

    goto :goto_1

    :cond_b
    move v0, v5

    .line 263
    :goto_1
    iput v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    .line 264
    iput v2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngBitDepth:I

    goto :goto_3

    .line 218
    :cond_c
    :goto_2
    iget p1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    iget p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    mul-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x7

    div-int/2addr p1, v2

    iput p1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 219
    iput v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    :cond_d
    :goto_3
    return-void
.end method

.method private processPng([BII)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    new-instance v1, Lcom/itextpdf/io/codec/PngWriter;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/codec/PngWriter;-><init>(Ljava/io/OutputStream;)V

    .line 180
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->decode:Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    const/4 v4, 0x0

    .line 183
    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->decode:Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 184
    array-length v2, p1

    :goto_0
    if-ge v4, v2, :cond_0

    .line 186
    aget-byte v3, p1, v4

    xor-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    :cond_0
    iget v2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    iget v3, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->height:I

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/itextpdf/io/codec/PngWriter;->writeHeader(IIII)V

    .line 196
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->icc:[B

    if-eqz p2, :cond_1

    .line 197
    invoke-virtual {v1, p2}, Lcom/itextpdf/io/codec/PngWriter;->writeIccProfile([B)V

    .line 199
    :cond_1
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->palette:[B

    if-eqz p2, :cond_2

    .line 200
    invoke-virtual {v1, p2}, Lcom/itextpdf/io/codec/PngWriter;->writePalette([B)V

    .line 202
    :cond_2
    iget p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/io/codec/PngWriter;->writeData([BI)V

    .line 203
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/PngWriter;->writeEnd()V

    .line 204
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private processSeperationColor([BLcom/itextpdf/kernel/pdf/PdfArray;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 160
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;->getTintTransformation()Lcom/itextpdf/kernel/pdf/function/IPdfFunction;

    move-result-object v1

    array-length v4, p1

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/4 v3, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/itextpdf/kernel/pdf/function/IPdfFunction;->calculateFromByteArray([BIIII)[B

    move-result-object p1

    .line 165
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;->getBaseCs()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getNumberOfComponents()I

    move-result p2

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    .line 171
    iget p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    iget v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    mul-int/2addr p2, v1

    mul-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 172
    iget p2, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngBitDepth:I

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->processPng([BII)[B

    move-result-object p1

    return-object p1

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Only RGB alternate color spaces are currently supported for extracting separation color images"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decodeTiffAndPngBytes([B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    const/4 v1, 0x0

    if-gez v0, :cond_6

    .line 99
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_5

    .line 102
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->colorspace:Lcom/itextpdf/kernel/pdf/PdfObject;

    instance-of v3, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const-string v4, "The color space {0} is not supported."

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eqz v3, :cond_2

    .line 103
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 104
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 105
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->ICCBased:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 109
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->icc:[B

    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "N value {1} is not supported."

    invoke-direct {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p1

    throw p1

    .line 106
    :cond_1
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p1, v4}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p1

    throw p1

    .line 114
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceCMYK:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->colorspace:Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    iget v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    mul-int/2addr v1, v6

    iput v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    .line 120
    new-instance v1, Lcom/itextpdf/io/codec/TiffWriter;

    invoke-direct {v1}, Lcom/itextpdf/io/codec/TiffWriter;-><init>()V

    .line 121
    new-instance v3, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;

    const/16 v4, 0x115

    invoke-direct {v3, v4, v6}, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 122
    new-instance v3, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;

    const/16 v4, 0x102

    filled-new-array {v2, v2, v2, v2}, [I

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;-><init>(I[I)V

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 123
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;

    const/16 v3, 0x106

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 124
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;

    const/16 v3, 0x100

    iget v6, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->width:I

    invoke-direct {v2, v3, v6}, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 125
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;

    const/16 v3, 0x101

    iget v6, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->height:I

    invoke-direct {v2, v3, v6}, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 126
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;

    const/16 v3, 0x103

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 127
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;

    const/16 v3, 0x13d

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 128
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;

    const/16 v3, 0x116

    iget v6, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->height:I

    invoke-direct {v2, v3, v6}, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 129
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;

    const/16 v3, 0x11a

    const/16 v6, 0x12c

    filled-new-array {v6, v5}, [I

    move-result-object v7

    invoke-direct {v2, v3, v7}, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;-><init>(I[I)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 130
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;

    const/16 v3, 0x11b

    filled-new-array {v6, v5}, [I

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;-><init>(I[I)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 131
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;

    const/16 v3, 0x128

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 132
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldAscii;

    const/16 v3, 0x131

    sget-object v4, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->TIFFTAG_SOFTWARE_VALUE:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/io/codec/TiffWriter$FieldAscii;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 133
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    iget v8, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->height:I

    const/4 v9, 0x4

    iget v10, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->stride:I

    const/4 v6, 0x2

    move-object v5, v2

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Lcom/itextpdf/io/codec/TiffWriter;->compressLZW(Ljava/io/OutputStream;I[BIII)V

    .line 135
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 136
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldImage;

    invoke-direct {v2, p1}, Lcom/itextpdf/io/codec/TiffWriter$FieldImage;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 137
    new-instance v2, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;

    const/16 v3, 0x117

    array-length p1, p1

    invoke-direct {v2, v3, p1}, Lcom/itextpdf/io/codec/TiffWriter$FieldLong;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 138
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->icc:[B

    if-eqz p1, :cond_3

    .line 139
    new-instance p1, Lcom/itextpdf/io/codec/TiffWriter$FieldUndefined;

    const v2, 0x8773

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->icc:[B

    invoke-direct {p1, v2, v3}, Lcom/itextpdf/io/codec/TiffWriter$FieldUndefined;-><init>(I[B)V

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/codec/TiffWriter;->addField(Lcom/itextpdf/io/codec/TiffWriter$FieldBase;)V

    .line 141
    :cond_3
    invoke-virtual {v1, v0}, Lcom/itextpdf/io/codec/TiffWriter;->writeFile(Ljava/io/OutputStream;)V

    .line 143
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 115
    :cond_4
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p1, v4}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->colorspace:Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p1

    throw p1

    .line 100
    :cond_5
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "The color depth {0} is not supported."

    invoke-direct {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->bpc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p1

    throw p1

    .line 146
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->colorspace:Lcom/itextpdf/kernel/pdf/PdfObject;

    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v2, :cond_7

    .line 147
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 148
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 149
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Separation:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->processSeperationColor([BLcom/itextpdf/kernel/pdf/PdfArray;)[B

    move-result-object p1

    return-object p1

    .line 153
    :cond_7
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngBitDepth:I

    iget v1, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->processPng([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public getPngColorType()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->pngColorType:I

    return v0
.end method
