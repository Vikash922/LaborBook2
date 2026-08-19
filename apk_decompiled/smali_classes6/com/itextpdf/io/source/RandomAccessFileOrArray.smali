.class public Lcom/itextpdf/io/source/RandomAccessFileOrArray;
.super Ljava/lang/Object;
.source "RandomAccessFileOrArray.java"

# interfaces
.implements Ljava/io/DataInput;


# static fields
.field public static plainRandomAccess:Z = false


# instance fields
.field private back:B

.field private byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

.field private byteSourcePosition:J

.field private isBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    .line 89
    iput-object p1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    return-void
.end method

.method private ensureByteSourceIsThreadSafe()V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    instance-of v0, v0, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;

    iget-object v1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iput-object v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    .line 252
    iget-object v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v0}, Lcom/itextpdf/io/source/IRandomAccessSource;->close()V

    return-void
.end method

.method public createSourceView()Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->ensureByteSourceIsThreadSafe()V

    .line 111
    new-instance v0, Lcom/itextpdf/io/source/IndependentRandomAccessSource;

    iget-object v1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/IndependentRandomAccessSource;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v0
.end method

.method public createView()Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .locals 3

    .line 99
    invoke-direct {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->ensureByteSourceIsThreadSafe()V

    .line 100
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/IndependentRandomAccessSource;

    iget-object v2, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-direct {v1, v2}, Lcom/itextpdf/io/source/IndependentRandomAccessSource;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v0
.end method

.method public getPosition()J
    .locals 4

    .line 281
    iget-wide v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSourcePosition:J

    iget-boolean v2, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public length()J
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v0}, Lcom/itextpdf/io/source/IRandomAccessSource;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public pushBack(B)V
    .locals 0

    .line 120
    iput-byte p1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->back:B

    const/4 p1, 0x1

    .line 121
    iput-boolean p1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    .line 133
    iget-byte v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->back:B

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    iget-wide v1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSourcePosition:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSourcePosition:J

    invoke-interface {v0, v1, v2}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J)I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 178
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 152
    :cond_0
    iget-boolean v1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    if-eqz v1, :cond_1

    if-lez p3, :cond_1

    .line 153
    iput-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    add-int/lit8 v0, p2, 0x1

    .line 154
    iget-byte v1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->back:B

    aput-byte v1, p1, p2

    add-int/lit8 p3, p3, -0x1

    const/4 p2, 0x1

    move v6, p3

    move v5, v0

    move v0, p2

    goto :goto_0

    :cond_1
    move v5, p2

    move v6, p3

    :goto_0
    if-lez v6, :cond_2

    .line 159
    iget-object v1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    iget-wide v2, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSourcePosition:J

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J[BII)I

    move-result p1

    if-lez p1, :cond_2

    add-int/2addr v0, p1

    .line 162
    iget-wide p2, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSourcePosition:J

    int-to-long v1, p1

    add-long/2addr p2, v1

    iput-wide p2, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSourcePosition:J

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    return v0
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 290
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    if-ltz v0, :cond_0

    int-to-byte v0, v0

    return v0

    .line 300
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 398
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    .line 400
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readCharLE()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 425
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    shl-int/lit8 v0, v1, 0x8

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    .line 427
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readDoubleLE()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLongLE()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFloatLE()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 185
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 194
    invoke-virtual {p0, p1, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([BII)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    return-void

    .line 196
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 436
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 437
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v2

    .line 438
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0

    .line 440
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readIntLE()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 465
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 466
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v2

    .line 467
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_0

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v3, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    return v3

    .line 469
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-nez v2, :cond_2

    .line 555
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    const/16 v6, 0xd

    if-eq v3, v6, :cond_0

    int-to-char v4, v3

    .line 568
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v6

    .line 563
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 564
    invoke-virtual {p0, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_3

    .line 573
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    return-object v0

    .line 576
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final readLongLE()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    .line 520
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 319
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 321
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readShortLE()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 348
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    int-to-short v0, v1

    return v0

    .line 350
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    new-array p1, p1, [B

    .line 596
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 597
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 310
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readUnsignedInt()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-long v0, v0

    .line 493
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v2

    int-to-long v2, v2

    .line 494
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v4

    int-to-long v4, v4

    .line 495
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v6

    int-to-long v6, v6

    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    const/16 v8, 0x18

    shl-long/2addr v0, v8

    const/16 v8, 0x10

    shl-long/2addr v2, v8

    add-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long v2, v4, v2

    add-long/2addr v0, v2

    add-long/2addr v0, v6

    return-wide v0

    .line 497
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readUnsignedIntLE()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-long v0, v0

    .line 503
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v2

    int-to-long v2, v2

    .line 504
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v4

    int-to-long v4, v4

    .line 505
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v6

    int-to-long v6, v6

    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    const/16 v8, 0x10

    shl-long/2addr v4, v8

    add-long/2addr v6, v4

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-long/2addr v6, v2

    add-long/2addr v6, v0

    return-wide v6

    .line 507
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUnsignedShort()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 359
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    return v0

    .line 361
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readUnsignedShortLE()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 387
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    return v1

    .line 389
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public seek(J)V
    .locals 0

    .line 270
    iput-wide p1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSourcePosition:J

    const/4 p1, 0x0

    .line 271
    iput-boolean p1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    return-void
.end method

.method public skip(J)J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    .line 213
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 214
    iput-boolean v1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    sub-long/2addr p1, v0

    const/4 v1, 0x1

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v2

    .line 227
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v4

    add-long/2addr p1, v2

    cmp-long v0, p1, v4

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    move-wide v4, p1

    .line 232
    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    sub-long/2addr v4, v2

    int-to-long p1, v1

    add-long/2addr v4, p1

    return-wide v4
.end method

.method public skipBytes(I)I
    .locals 2

    int-to-long v0, p1

    .line 241
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skip(J)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method
