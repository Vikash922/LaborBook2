.class final Lcom/itextpdf/barcodes/qrcode/BitVector;
.super Ljava/lang/Object;
.source "BitVector.java"


# static fields
.field private static final DEFAULT_SIZE_IN_BYTES:I = 0x20


# instance fields
.field private array:[B

.field private sizeInBits:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    const/16 v0, 0x20

    .line 67
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    return-void
.end method

.method private appendByte(I)V
    .locals 4

    .line 226
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    shr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 227
    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 228
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    shr-int/lit8 v2, v1, 0x3

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    add-int/lit8 v1, v1, 0x8

    .line 232
    iput v1, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    return-void
.end method


# virtual methods
.method public appendBit(I)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad bit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_1
    :goto_0
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    and-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_2

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0, v2}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendByte(I)V

    .line 114
    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    iget v3, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    shr-int/lit8 v4, v3, 0x3

    aget-byte v5, v2, v4

    rsub-int/lit8 v1, v1, 0x7

    shl-int/2addr p1, v1

    int-to-byte p1, p1

    or-int/2addr p1, v5

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    add-int/2addr v3, v0

    .line 118
    iput v3, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    return-void
.end method

.method public appendBitVector(Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 3

    .line 163
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 165
    invoke-virtual {p1, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->at(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBit(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public appendBits(II)V
    .locals 1

    if-ltz p2, :cond_2

    const/16 v0, 0x20

    if-gt p2, v0, :cond_2

    :goto_0
    if-lez p2, :cond_1

    .line 146
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_0

    const/16 v0, 0x8

    if-lt p2, v0, :cond_0

    add-int/lit8 v0, p2, -0x8

    shr-int v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 148
    invoke-direct {p0, v0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendByte(I)V

    add-int/lit8 p2, p2, -0x8

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, -0x1

    shr-int v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    .line 152
    invoke-virtual {p0, v0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBit(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void

    .line 141
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Num bits must be between 0 and 32"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public at(I)I
    .locals 3

    if-ltz p1, :cond_0

    .line 78
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    if-ge p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    shr-int/lit8 v1, p1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 p1, p1, 0x7

    rsub-int/lit8 p1, p1, 0x7

    shr-int p1, v0, p1

    and-int/lit8 p1, p1, 0x1

    return p1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArray()[B
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    return v0
.end method

.method public sizeInBytes()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 193
    :goto_0
    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    if-ge v1, v2, :cond_2

    .line 194
    invoke-virtual {p0, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->at(I)I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x30

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 196
    :cond_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->at(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v2, 0x31

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte isn\'t 0 or 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xor(Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 5

    .line 175
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 178
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 182
    iget-object v2, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    aget-byte v3, v2, v1

    iget-object v4, p1, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 176
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BitVector sizes don\'t match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
