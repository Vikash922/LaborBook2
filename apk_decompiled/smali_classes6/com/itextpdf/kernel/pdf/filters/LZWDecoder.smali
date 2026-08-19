.class public Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;
.super Ljava/lang/Object;
.source "LZWDecoder.java"


# instance fields
.field andTable:[I

.field bitPointer:I

.field bitsToGet:I

.field bytePointer:I

.field data:[B

.field nextBits:I

.field nextData:I

.field stringTable:[[B

.field tableIndex:I

.field uncompData:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->data:[B

    const/16 v0, 0x9

    .line 60
    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextData:I

    .line 63
    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextBits:I

    const/16 v0, 0x7ff

    const/16 v1, 0xfff

    const/16 v2, 0x1ff

    const/16 v3, 0x3ff

    .line 65
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->andTable:[I

    return-void
.end method


# virtual methods
.method public addStringToTable([B)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    iget v1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->tableIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->tableIndex:I

    aput-object p1, v0, v1

    const/16 p1, 0x1ff

    if-ne v2, p1, :cond_0

    const/16 p1, 0xa

    .line 207
    iput p1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x3ff

    if-ne v2, p1, :cond_1

    const/16 p1, 0xb

    .line 209
    iput p1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x7ff

    if-ne v2, p1, :cond_2

    const/16 p1, 0xc

    .line 211
    iput p1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    :cond_2
    :goto_0
    return-void
.end method

.method public addStringToTable([BB)V
    .locals 3

    .line 179
    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    .line 180
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 181
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    aput-byte p2, v1, v0

    .line 185
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    iget p2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->tableIndex:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->tableIndex:I

    aput-object v1, p1, p2

    const/16 p1, 0x1ff

    if-ne v0, p1, :cond_0

    const/16 p1, 0xa

    .line 188
    iput p1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x3ff

    if-ne v0, p1, :cond_1

    const/16 p1, 0xb

    .line 190
    iput p1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x7ff

    if-ne v0, p1, :cond_2

    const/16 p1, 0xc

    .line 192
    iput p1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    :cond_2
    :goto_0
    return-void
.end method

.method public composeString([BB)[B
    .locals 3

    .line 223
    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    .line 224
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 225
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    aput-byte p2, v1, v0

    return-object v1
.end method

.method public decode([BLjava/io/OutputStream;)V
    .locals 3

    const/4 v0, 0x0

    .line 87
    aget-byte v1, p1, v0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "LZW flavour not supported."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->initializeStringTable()V

    .line 93
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->data:[B

    .line 94
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->uncompData:Ljava/io/OutputStream;

    .line 97
    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bytePointer:I

    .line 98
    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitPointer:I

    .line 100
    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextData:I

    .line 101
    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextBits:I

    move p1, v0

    .line 106
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->getNextCode()I

    move-result p2

    const/16 v1, 0x101

    if-eq p2, v1, :cond_5

    const/16 v2, 0x100

    if-ne p2, v2, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->initializeStringTable()V

    .line 111
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->getNextCode()I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_3

    .line 117
    :cond_2
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    aget-object p2, p2, p1

    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->writeString([B)V

    goto :goto_1

    .line 122
    :cond_3
    iget v1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->tableIndex:I

    if-ge p2, v1, :cond_4

    .line 124
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    aget-object v1, v1, p2

    .line 126
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->writeString([B)V

    .line 127
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    aget-object p1, v2, p1

    aget-byte v1, v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->addStringToTable([BB)V

    goto :goto_2

    .line 132
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    aget-object p1, v1, p1

    .line 133
    aget-byte v1, p1, v0

    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->composeString([BB)[B

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->writeString([B)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->addStringToTable([B)V

    :goto_2
    move p1, p2

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method public getNextCode()I
    .locals 7

    .line 244
    :try_start_0
    iget v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextData:I

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->data:[B

    iget v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bytePointer:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bytePointer:I

    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextData:I

    .line 245
    iget v4, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextBits:I

    add-int/lit8 v5, v4, 0x8

    iput v5, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextBits:I

    .line 247
    iget v6, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    if-ge v5, v6, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v2, 0x2

    .line 248
    iput v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bytePointer:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextData:I

    add-int/lit8 v4, v4, 0x10

    .line 249
    iput v4, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextBits:I

    .line 252
    :cond_0
    iget v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextData:I

    iget v1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextBits:I

    sub-int v2, v1, v6

    shr-int/2addr v0, v2

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->andTable:[I

    add-int/lit8 v3, v6, -0x9

    aget v2, v2, v3

    and-int/2addr v0, v2

    sub-int/2addr v1, v6

    .line 254
    iput v1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextBits:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/16 v0, 0x101

    return v0
.end method

.method public initializeStringTable()V
    .locals 4

    const/16 v0, 0x2000

    .line 148
    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    const/4 v3, 0x1

    new-array v3, v3, [B

    aput-object v3, v2, v1

    int-to-byte v2, v1

    .line 152
    aput-byte v2, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x102

    .line 155
    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->tableIndex:I

    const/16 v0, 0x9

    .line 156
    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    return-void
.end method

.method public writeString([B)V
    .locals 2

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->uncompData:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 168
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "LZW decoder exception."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
