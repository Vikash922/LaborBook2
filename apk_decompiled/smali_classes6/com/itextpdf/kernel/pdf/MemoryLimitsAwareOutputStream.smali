.class Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "MemoryLimitsAwareOutputStream.java"


# static fields
.field private static final DEFAULT_MAX_STREAM_SIZE:I = 0x7ffffff7


# instance fields
.field private maxStreamSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const v0, 0x7ffffff7

    .line 66
    iput v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->maxStreamSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const p1, 0x7ffffff7

    .line 66
    iput p1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->maxStreamSize:I

    return-void
.end method


# virtual methods
.method public getMaxStreamSize()J
    .locals 2

    .line 93
    iget v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->maxStreamSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public setMaxStreamSize(I)Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;
    .locals 0

    .line 103
    iput p1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->maxStreamSize:I

    return-object p0
.end method

.method public declared-synchronized write([BII)V
    .locals 3

    monitor-enter p0

    if-ltz p2, :cond_5

    .line 113
    :try_start_0
    array-length v0, p1

    if-gt p2, v0, :cond_5

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_5

    .line 118
    iget v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->count:I

    add-int/2addr v0, p3

    if-ltz v0, :cond_4

    .line 124
    iget v1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->maxStreamSize:I

    if-gt v0, v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->buf:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_1

    sub-int v2, v1, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 137
    :cond_1
    :goto_0
    iget v1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->maxStreamSize:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->buf:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->buf:[B

    .line 141
    :cond_2
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 125
    :cond_3
    :try_start_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/MemoryLimitsAwareException;

    const-string p2, "During decompression a single stream occupied more memory than allowed. Please either check your pdf or increase the allowed multiple decompressed pdf streams maximum size value by setting the appropriate parameter of ReaderProperties\'s MemoryLimitsAwareHandler."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/MemoryLimitsAwareException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_4
    new-instance p1, Lcom/itextpdf/kernel/exceptions/MemoryLimitsAwareException;

    const-string p2, "During decompression a single stream occupied more than a maximum integer value. Please check your pdf."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/MemoryLimitsAwareException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
