.class Lcom/itextpdf/io/codec/BitFile;
.super Ljava/lang/Object;
.source "BitFile.java"


# instance fields
.field bitsLeft:I

.field blocks:Z

.field buffer:[B

.field index:I

.field output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/itextpdf/io/codec/BitFile;->output:Ljava/io/OutputStream;

    .line 76
    iput-boolean p2, p0, Lcom/itextpdf/io/codec/BitFile;->blocks:Z

    const/16 p1, 0x100

    .line 77
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    const/16 p1, 0x8

    .line 79
    iput p1, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget v0, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    iget v1, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 85
    iget-boolean v1, p0, Lcom/itextpdf/io/codec/BitFile;->blocks:Z

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/itextpdf/io/codec/BitFile;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/codec/BitFile;->output:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    invoke-virtual {v1, v4, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 88
    iget-object v0, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    aput-byte v2, v0, v2

    .line 89
    iput v2, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    .line 90
    iput v3, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    :cond_2
    return-void
.end method

.method public writeBits(II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    :cond_0
    iget v0, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    const/16 v1, 0xfe

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget v4, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    if-eqz v4, :cond_2

    :cond_1
    if-le v0, v1, :cond_4

    .line 101
    :cond_2
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/BitFile;->blocks:Z

    const/16 v1, 0xff

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/itextpdf/io/codec/BitFile;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/io/codec/BitFile;->output:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    invoke-virtual {v0, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 106
    iget-object v0, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    aput-byte v3, v0, v3

    .line 107
    iput v3, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    .line 108
    iput v2, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    .line 112
    :cond_4
    iget v0, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    const/4 v1, 0x1

    if-gt p2, v0, :cond_6

    .line 115
    iget-boolean v2, p0, Lcom/itextpdf/io/codec/BitFile;->blocks:Z

    if-eqz v2, :cond_5

    .line 117
    iget-object v2, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    iget v4, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    aget-byte v5, v2, v4

    shl-int v6, v1, p2

    sub-int/2addr v6, v1

    and-int v1, p1, v6

    rsub-int/lit8 v6, v0, 0x8

    shl-int/2addr v1, v6

    int-to-byte v1, v1

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    sub-int/2addr v0, p2

    .line 119
    iput v0, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    goto :goto_0

    .line 122
    :cond_5
    iget-object v2, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    iget v4, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    aget-byte v5, v2, v4

    shl-int v6, v1, p2

    sub-int/2addr v6, v1

    and-int v1, p1, v6

    sub-int v6, v0, p2

    shl-int/2addr v1, v6

    int-to-byte v1, v1

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    sub-int/2addr v0, p2

    .line 124
    iput v0, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    :goto_0
    move p2, v3

    goto :goto_1

    .line 132
    :cond_6
    iget-boolean v4, p0, Lcom/itextpdf/io/codec/BitFile;->blocks:Z

    if-eqz v4, :cond_7

    .line 136
    iget-object v4, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    iget v5, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    aget-byte v6, v4, v5

    shl-int v7, v1, v0

    sub-int/2addr v7, v1

    and-int/2addr v7, p1

    rsub-int/lit8 v8, v0, 0x8

    shl-int/2addr v7, v8

    int-to-byte v7, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    shr-int/2addr p1, v0

    sub-int/2addr p2, v0

    add-int/2addr v5, v1

    .line 140
    iput v5, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    aput-byte v3, v4, v5

    .line 141
    iput v2, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    goto :goto_1

    :cond_7
    sub-int v4, p2, v0

    ushr-int v4, p1, v4

    shl-int v5, v1, v0

    sub-int/2addr v5, v1

    and-int/2addr v4, v5

    .line 147
    iget-object v5, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    iget v6, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    aget-byte v7, v5, v6

    int-to-byte v4, v4

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    sub-int/2addr p2, v0

    add-int/2addr v6, v1

    .line 152
    iput v6, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    aput-byte v3, v5, v6

    .line 153
    iput v2, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    :goto_1
    if-nez p2, :cond_0

    return-void
.end method
