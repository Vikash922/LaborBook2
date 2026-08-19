.class final Lcom/itextpdf/io/codec/brotli/dec/BitReader;
.super Ljava/lang/Object;
.source "BitReader.java"


# static fields
.field private static final BYTE_BUFFER_SIZE:I = 0x1040

.field private static final BYTE_READ_SIZE:I = 0x1000

.field private static final CAPACITY:I = 0x400

.field private static final INT_BUFFER_SIZE:I = 0x410

.field private static final SLACK:I = 0x10


# instance fields
.field accumulator:J

.field bitOffset:I

.field private final byteBuffer:[B

.field private endOfStreamReached:Z

.field private input:Ljava/io/InputStream;

.field private final intBuffer:[I

.field private intOffset:I

.field private final intReader:Lcom/itextpdf/io/codec/brotli/dec/IntReader;

.field private tailBytes:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1040

    .line 27
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->byteBuffer:[B

    const/16 v0, 0x410

    .line 28
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intBuffer:[I

    .line 29
    new-instance v0, Lcom/itextpdf/io/codec/brotli/dec/IntReader;

    invoke-direct {v0}, Lcom/itextpdf/io/codec/brotli/dec/IntReader;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intReader:Lcom/itextpdf/io/codec/brotli/dec/IntReader;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->tailBytes:I

    return-void
.end method

.method static checkHealth(Lcom/itextpdf/io/codec/brotli/dec/BitReader;Z)V
    .locals 2

    .line 98
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->endOfStreamReached:Z

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intOffset:I

    shl-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x8

    .line 102
    iget p0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->tailBytes:I

    if-gt v0, p0, :cond_3

    if-eqz p1, :cond_2

    if-ne v0, p0, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    new-instance p0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string p1, "Unused bytes after end"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void

    .line 103
    :cond_3
    new-instance p0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string p1, "Read after end"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static close(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->input:Ljava/io/InputStream;

    const/4 v1, 0x0

    .line 167
    iput-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method static copyBytes(Lcom/itextpdf/io/codec/brotli/dec/BitReader;[BII)V
    .locals 4

    .line 192
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_8

    .line 197
    :goto_0
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    if-eqz p3, :cond_0

    add-int/lit8 v1, p2, 0x1

    .line 198
    iget-wide v2, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->accumulator:J

    ushr-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 v0, v0, 0x8

    .line 199
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    add-int/lit8 p3, p3, -0x1

    move p2, v1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 207
    :cond_1
    invoke-static {p0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intAvailable(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result v0

    shr-int/lit8 v1, p3, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_2

    .line 209
    iget v1, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intOffset:I

    shl-int/lit8 v1, v1, 0x2

    .line 210
    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->byteBuffer:[B

    shl-int/lit8 v3, v0, 0x2

    invoke-static {v2, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    .line 213
    iget v1, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intOffset:I

    :cond_2
    if-nez p3, :cond_3

    return-void

    .line 220
    :cond_3
    invoke-static {p0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intAvailable(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result v0

    if-lez v0, :cond_5

    .line 222
    invoke-static {p0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->fillBitWindow(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    :goto_1
    if-eqz p3, :cond_4

    add-int/lit8 v0, p2, 0x1

    .line 224
    iget-wide v1, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->accumulator:J

    iget v3, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v3, v3, 0x8

    .line 225
    iput v3, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 228
    invoke-static {p0, p1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->checkHealth(Lcom/itextpdf/io/codec/brotli/dec/BitReader;Z)V

    return-void

    :cond_5
    :goto_2
    if-lez p3, :cond_7

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->input:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_2

    .line 237
    :cond_6
    new-instance p0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string p1, "Unexpected end of input"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 243
    new-instance p1, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string p2, "Failed to read input"

    invoke-direct {p1, p2, p0}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    return-void

    .line 193
    :cond_8
    new-instance p0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string p1, "Unaligned copyBytes"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static fillBitWindow(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V
    .locals 6

    .line 114
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 115
    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intBuffer:[I

    iget v3, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intOffset:I

    aget v2, v2, v3

    int-to-long v2, v2

    shl-long/2addr v2, v1

    iget-wide v4, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->accumulator:J

    ushr-long/2addr v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->accumulator:J

    sub-int/2addr v0, v1

    .line 116
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    :cond_0
    return-void
.end method

.method static init(Lcom/itextpdf/io/codec/brotli/dec/BitReader;Ljava/io/InputStream;)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->input:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intReader:Lcom/itextpdf/io/codec/brotli/dec/IntReader;

    iget-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->byteBuffer:[B

    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intBuffer:[I

    invoke-static {v0, v1, v2}, Lcom/itextpdf/io/codec/brotli/dec/IntReader;->init(Lcom/itextpdf/io/codec/brotli/dec/IntReader;[B[I)V

    .line 144
    iput-object p1, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->input:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    .line 145
    iput-wide v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->accumulator:J

    const/16 p1, 0x40

    .line 146
    iput p1, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    const/16 p1, 0x400

    .line 147
    iput p1, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intOffset:I

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->endOfStreamReached:Z

    .line 149
    invoke-static {p0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->prepare(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    return-void

    .line 141
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Bit reader already has associated input stream"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static intAvailable(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)I
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->endOfStreamReached:Z

    if-eqz v0, :cond_0

    .line 186
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->tailBytes:I

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    .line 188
    :goto_0
    iget p0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intOffset:I

    sub-int/2addr v0, p0

    return v0
.end method

.method static jumpToByteBoundary(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V
    .locals 1

    .line 174
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    rsub-int/lit8 v0, v0, 0x40

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_1

    .line 176
    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance p0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string v0, "Corrupted padding bits"

    invoke-direct {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static prepare(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V
    .locals 1

    .line 153
    invoke-static {p0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readMoreInput(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    const/4 v0, 0x0

    .line 154
    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->checkHealth(Lcom/itextpdf/io/codec/brotli/dec/BitReader;Z)V

    .line 155
    invoke-static {p0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->fillBitWindow(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 156
    invoke-static {p0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->fillBitWindow(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    return-void
.end method

.method static readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I
    .locals 4

    .line 124
    invoke-static {p0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->fillBitWindow(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 125
    iget-wide v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->accumulator:J

    iget v2, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x1

    shl-int v3, v1, p1

    sub-int/2addr v3, v1

    and-int/2addr v0, v3

    add-int/2addr v2, p1

    .line 126
    iput v2, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    return v0
.end method

.method static readMoreInput(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V
    .locals 4

    .line 66
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intOffset:I

    const/16 v1, 0x3f7

    if-gt v0, v1, :cond_0

    return-void

    .line 69
    :cond_0
    iget-boolean v1, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->endOfStreamReached:Z

    if-eqz v1, :cond_2

    .line 70
    invoke-static {p0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intAvailable(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result p0

    const/4 v0, -0x2

    if-lt p0, v0, :cond_1

    return-void

    .line 73
    :cond_1
    new-instance p0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string v0, "No more input"

    invoke-direct {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    shl-int/lit8 v0, v0, 0x2

    rsub-int v1, v0, 0x1000

    .line 77
    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->byteBuffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iput v3, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intOffset:I

    :goto_0
    const/16 v0, 0x1000

    if-ge v1, v0, :cond_4

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->byteBuffer:[B

    rsub-int v3, v1, 0x1000

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->endOfStreamReached:Z

    .line 85
    iput v1, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->tailBytes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    :cond_3
    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 92
    new-instance v0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string v1, "Failed to read input"

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 94
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->intReader:Lcom/itextpdf/io/codec/brotli/dec/IntReader;

    shr-int/lit8 v0, v1, 0x2

    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/IntReader;->convert(Lcom/itextpdf/io/codec/brotli/dec/IntReader;I)V

    return-void
.end method

.method static reload(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V
    .locals 2

    .line 160
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 161
    invoke-static {p0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->prepare(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    :cond_0
    return-void
.end method
