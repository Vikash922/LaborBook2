.class public Lcom/itextpdf/io/source/ByteBuffer;
.super Ljava/lang/Object;
.source "ByteBuffer.java"


# static fields
.field private static final bytes:[B


# instance fields
.field private buffer:[B

.field protected count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 50
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/source/ByteBuffer;->bytes:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x80

    .line 57
    invoke-direct {p0, v0}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/16 p1, 0x80

    .line 63
    :cond_0
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    return-void
.end method

.method public static getHex(I)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public append(B)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 5

    .line 77
    iget v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 78
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 79
    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    .line 80
    iget-object v2, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    iget v3, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iput-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    iget v2, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    aput-byte p1, v1, v2

    .line 84
    iput v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    return-object p0
.end method

.method public append(I)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 0

    int-to-byte p1, p1

    .line 108
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 0

    .line 112
    invoke-static {p1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public append([B)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 2

    const/4 v0, 0x0

    .line 104
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append([BII)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public append([BII)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 5

    if-ltz p2, :cond_2

    .line 89
    array-length v0, p1

    if-gt p2, v0, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    add-int/2addr v0, p3

    .line 93
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    array-length v2, v1

    if-le v0, v2, :cond_1

    .line 94
    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    .line 95
    iget-object v2, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    iget v3, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iput-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    iget v2, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iput v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public appendHex(B)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 2

    .line 116
    sget-object v0, Lcom/itextpdf/io/source/ByteBuffer;->bytes:[B

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    and-int/lit8 p1, p1, 0xf

    .line 117
    aget-byte p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public capacity()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public get(I)B
    .locals 2

    .line 121
    iget v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    if-ge p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    aget-byte p1, v0, p1

    return p1

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Index: {0}, Size: {1}"

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInternalBuffer()[B
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method prepend(B)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    array-length v1, v0

    iget v2, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    add-int/lit8 v2, v2, 0x1

    .line 176
    iput v2, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    return-object p0
.end method

.method prepend([B)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    array-length v1, v0

    iget v2, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    sub-int/2addr v1, v2

    array-length v2, p1

    sub-int/2addr v1, v2

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iget v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    return-object p0
.end method

.method public reset()Lcom/itextpdf/io/source/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    return-object p0
.end method

.method public size()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    return v0
.end method

.method public startsWith([B)Z
    .locals 4

    .line 159
    invoke-virtual {p0}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 161
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    aget-byte v1, v1, v0

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public toByteArray()[B
    .locals 2

    const/4 v0, 0x0

    .line 155
    iget v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray(II)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(II)[B
    .locals 3

    .line 149
    new-array v0, p2, [B

    .line 150
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
