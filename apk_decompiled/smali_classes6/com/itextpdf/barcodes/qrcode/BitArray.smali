.class final Lcom/itextpdf/barcodes/qrcode/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"


# instance fields
.field private bits:[I

.field private final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 61
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->size:I

    .line 62
    invoke-static {p1}, Lcom/itextpdf/barcodes/qrcode/BitArray;->makeArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static makeArray(I)[I
    .locals 1

    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 p0, p0, 0x1f

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 188
    :cond_0
    new-array p0, v0, [I

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 112
    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flip(I)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v3, 0x1

    shl-int p1, v3, p1

    xor-int/2addr p1, v2

    aput p1, v0, v1

    return-void
.end method

.method public get(I)Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getBitArray()[I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->size:I

    return v0
.end method

.method public isRange(IIZ)Z
    .locals 10

    if-lt p2, p1, :cond_8

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    add-int/2addr p2, v1

    shr-int/lit8 v2, p1, 0x5

    shr-int/lit8 v3, p2, 0x5

    move v4, v2

    :goto_0
    if-gt v4, v3, :cond_7

    const/4 v5, 0x0

    const/16 v6, 0x1f

    if-le v4, v2, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    and-int/lit8 v7, p1, 0x1f

    :goto_1
    if-ge v4, v3, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    and-int/lit8 v8, p2, 0x1f

    :goto_2
    if-nez v7, :cond_3

    if-ne v8, v6, :cond_3

    move v6, v1

    goto :goto_4

    :cond_3
    move v6, v5

    :goto_3
    if-gt v7, v8, :cond_4

    shl-int v9, v0, v7

    or-int/2addr v6, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 154
    :cond_4
    :goto_4
    iget-object v7, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    aget v7, v7, v4

    and-int/2addr v7, v6

    if-eqz p3, :cond_5

    goto :goto_5

    :cond_5
    move v6, v5

    :goto_5
    if-eq v7, v6, :cond_6

    return v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return v0

    .line 127
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public reverse()V
    .locals 7

    .line 173
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 174
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    sub-int v3, v1, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 176
    invoke-virtual {p0, v3}, Lcom/itextpdf/barcodes/qrcode/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    shr-int/lit8 v3, v2, 0x5

    .line 177
    aget v5, v0, v3

    and-int/lit8 v6, v2, 0x1f

    shl-int/2addr v4, v6

    or-int/2addr v4, v5

    aput v4, v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    return-void
.end method

.method public set(I)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v3, 0x1

    shl-int p1, v3, p1

    or-int/2addr p1, v2

    aput p1, v0, v1

    return-void
.end method

.method public setBulk(II)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    shr-int/lit8 p1, p1, 0x5

    aput p2, v0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 193
    :goto_0
    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->size:I

    if-ge v1, v2, :cond_2

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_0

    const/16 v2, 0x20

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 197
    :cond_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/barcodes/qrcode/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x58

    goto :goto_1

    :cond_1
    const/16 v2, 0x2e

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
