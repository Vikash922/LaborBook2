.class final Lcom/itextpdf/barcodes/qrcode/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p1}, Lcom/itextpdf/barcodes/qrcode/BitMatrix;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 77
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    .line 78
    iput p2, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->height:I

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 83
    :cond_0
    iput v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    .line 84
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    return-void

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both dimensions must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 127
    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flip(II)V
    .locals 3

    .line 117
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->rowSize:I

    mul-int/2addr p2, v0

    shr-int/lit8 v0, p1, 0x5

    add-int/2addr p2, v0

    .line 118
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    xor-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public get(II)Z
    .locals 1

    .line 95
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->rowSize:I

    mul-int/2addr p2, v0

    shr-int/lit8 v0, p1, 0x5

    add-int/2addr p2, v0

    .line 96
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    aget p2, v0, p2

    and-int/lit8 p1, p1, 0x1f

    ushr-int p1, p2, p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public getDimension()I
    .locals 2

    .line 199
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->height:I

    if-ne v0, v1, :cond_0

    return v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t call getDimension() on a non-square matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/itextpdf/barcodes/qrcode/BitArray;)Lcom/itextpdf/barcodes/qrcode/BitArray;
    .locals 4

    if-eqz p2, :cond_0

    .line 168
    invoke-virtual {p2}, Lcom/itextpdf/barcodes/qrcode/BitArray;->getSize()I

    move-result v0

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    if-ge v0, v1, :cond_1

    .line 169
    :cond_0
    new-instance p2, Lcom/itextpdf/barcodes/qrcode/BitArray;

    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    invoke-direct {p2, v0}, Lcom/itextpdf/barcodes/qrcode/BitArray;-><init>(I)V

    .line 171
    :cond_1
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->rowSize:I

    mul-int/2addr p1, v0

    const/4 v0, 0x0

    .line 172
    :goto_0
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->rowSize:I

    if-ge v0, v1, :cond_2

    shl-int/lit8 v1, v0, 0x5

    .line 173
    iget-object v2, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    add-int v3, p1, v0

    aget v2, v2, v3

    invoke-virtual {p2, v1, v2}, Lcom/itextpdf/barcodes/qrcode/BitArray;->setBulk(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getWidth()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    return v0
.end method

.method public set(II)V
    .locals 3

    .line 106
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->rowSize:I

    mul-int/2addr p2, v0

    shr-int/lit8 v0, p1, 0x5

    add-int/2addr p2, v0

    .line 107
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public setRegion(IIII)V
    .locals 7

    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    if-lt p4, v0, :cond_3

    if-lt p3, v0, :cond_3

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 148
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->height:I

    if-gt p4, v1, :cond_2

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    if-gt p3, v1, :cond_2

    :goto_0
    if-ge p2, p4, :cond_1

    .line 152
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    move v2, p1

    :goto_1
    if-ge v2, p3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    shr-int/lit8 v4, v2, 0x5

    add-int/2addr v4, v1

    aget v5, v3, v4

    and-int/lit8 v6, v2, 0x1f

    shl-int v6, v0, v6

    or-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 149
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The region must fit inside the matrix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height and width must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Left and top must be nonnegative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 206
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->height:I

    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 207
    :goto_0
    iget v3, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->height:I

    if-ge v2, v3, :cond_2

    move v3, v1

    .line 208
    :goto_1
    iget v4, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    if-ge v3, v4, :cond_1

    .line 209
    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "X "

    goto :goto_2

    :cond_0
    const-string v4, "  "

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0xa

    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
