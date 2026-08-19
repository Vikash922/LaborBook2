.class Lcom/itextpdf/io/font/woff2/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# instance fields
.field private data:[B

.field private initial_offset:I

.field private length:I

.field private offset:I


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/font/woff2/Buffer;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget v0, p1, Lcom/itextpdf/io/font/woff2/Buffer;->offset:I

    iput v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->offset:I

    .line 49
    iget v0, p1, Lcom/itextpdf/io/font/woff2/Buffer;->initial_offset:I

    iput v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->initial_offset:I

    .line 50
    iget v0, p1, Lcom/itextpdf/io/font/woff2/Buffer;->length:I

    iput v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->length:I

    .line 51
    iget-object p1, p1, Lcom/itextpdf/io/font/woff2/Buffer;->data:[B

    iput-object p1, p0, Lcom/itextpdf/io/font/woff2/Buffer;->data:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->offset:I

    .line 42
    iput p2, p0, Lcom/itextpdf/io/font/woff2/Buffer;->initial_offset:I

    .line 43
    iput p3, p0, Lcom/itextpdf/io/font/woff2/Buffer;->length:I

    .line 44
    iput-object p1, p0, Lcom/itextpdf/io/font/woff2/Buffer;->data:[B

    return-void
.end method

.method private readAsNumber(I)I
    .locals 4

    .line 96
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0, v0, v1, p1}, Lcom/itextpdf/io/font/woff2/Buffer;->read([BII)V

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    shl-int/lit8 v2, v2, 0x8

    .line 100
    aget-byte v3, v0, v1

    invoke-static {v3}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public getInitialOffset()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->initial_offset:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->length:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->offset:I

    return v0
.end method

.method public read([BII)V
    .locals 4

    .line 71
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->offset:I

    add-int v1, v0, p3

    iget v2, p0, Lcom/itextpdf/io/font/woff2/Buffer;->length:I

    const-string v3, "Reading woff2 exception"

    if-gt v1, v2, :cond_2

    sub-int/2addr v2, p3

    if-gt v0, v2, :cond_2

    if-eqz p1, :cond_1

    add-int v1, p2, p3

    .line 75
    array-length v2, p1

    if-gt v1, v2, :cond_0

    array-length v1, p1

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/itextpdf/io/font/woff2/Buffer;->data:[B

    iget v2, p0, Lcom/itextpdf/io/font/woff2/Buffer;->initial_offset:I

    add-int/2addr v2, v0

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p1, v3}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_1
    :goto_0
    iget p1, p0, Lcom/itextpdf/io/font/woff2/Buffer;->offset:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/itextpdf/io/font/woff2/Buffer;->offset:I

    return-void

    .line 72
    :cond_2
    new-instance p1, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p1, v3}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .locals 1

    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readAsNumber(I)I

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->toU8(I)B

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 1

    const/4 v0, 0x4

    .line 55
    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readAsNumber(I)I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 1

    const/4 v0, 0x2

    .line 59
    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readAsNumber(I)I

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->toU16(I)S

    move-result v0

    return v0
.end method

.method public skip(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, v1, p1}, Lcom/itextpdf/io/font/woff2/Buffer;->read([BII)V

    return-void
.end method
