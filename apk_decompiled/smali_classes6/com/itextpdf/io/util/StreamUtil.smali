.class public final Lcom/itextpdf/io/util/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# static fields
.field private static final TRANSFER_SIZE:I = 0x10000

.field private static final escB:[B

.field private static final escF:[B

.field private static final escN:[B

.field private static final escR:[B

.field private static final escT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-string v0, "\\r"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/util/StreamUtil;->escR:[B

    .line 67
    const-string v0, "\\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/util/StreamUtil;->escN:[B

    .line 68
    const-string v0, "\\t"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/util/StreamUtil;->escT:[B

    .line 69
    const-string v0, "\\b"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/util/StreamUtil;->escB:[B

    .line 70
    const-string v0, "\\f"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/util/StreamUtil;->escF:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyBytes(Lcom/itextpdf/io/source/IRandomAccessSource;JJLjava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x2000

    .line 237
    new-array v9, v2, [B

    :goto_0
    cmp-long v3, p3, v0

    if-lez v3, :cond_2

    int-to-long v3, v2

    .line 239
    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v8, v3

    const/4 v7, 0x0

    move-object v3, p0

    move-wide v4, p1

    move-object v6, v9

    invoke-interface/range {v3 .. v8}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J[BII)I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, v0

    if-lez v5, :cond_1

    const/4 v5, 0x0

    long-to-int v6, v3

    .line 243
    invoke-virtual {p5, v9, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    add-long/2addr p1, v3

    sub-long/2addr p3, v3

    goto :goto_0

    .line 241
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    return-void
.end method

.method public static createBufferedEscapedString([B)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 7

    .line 130
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    const/16 v1, 0x28

    .line 131
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 132
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x29

    if-ge v3, v2, :cond_5

    aget-byte v5, p0, v3

    const/16 v6, 0xc

    if-eq v5, v6, :cond_4

    const/16 v6, 0xd

    if-eq v5, v6, :cond_3

    const/16 v6, 0x5c

    if-eq v5, v1, :cond_2

    if-eq v5, v4, :cond_2

    if-eq v5, v6, :cond_2

    packed-switch v5, :pswitch_data_0

    const/16 v4, 0x8

    if-ge v5, v4, :cond_0

    if-ltz v5, :cond_0

    .line 156
    const-string v4, "\\00"

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_1

    :cond_0
    if-lt v5, v4, :cond_1

    const/16 v4, 0x20

    if-ge v5, v4, :cond_1

    .line 158
    const-string v4, "\\0"

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_1

    .line 160
    :cond_1
    invoke-virtual {v0, v5}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_1

    .line 138
    :pswitch_0
    sget-object v4, Lcom/itextpdf/io/util/StreamUtil;->escN:[B

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_1

    .line 141
    :pswitch_1
    sget-object v4, Lcom/itextpdf/io/util/StreamUtil;->escT:[B

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_1

    .line 144
    :pswitch_2
    sget-object v4, Lcom/itextpdf/io/util/StreamUtil;->escB:[B

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_1

    .line 152
    :cond_2
    invoke-virtual {v0, v6}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_1

    .line 135
    :cond_3
    sget-object v4, Lcom/itextpdf/io/util/StreamUtil;->escR:[B

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_1

    .line 147
    :cond_4
    sget-object v4, Lcom/itextpdf/io/util/StreamUtil;->escF:[B

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_5
    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createBufferedHexedString([B)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 4

    .line 169
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    const/16 v1, 0x3c

    .line 170
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 171
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 172
    invoke-virtual {v0, v3}, Lcom/itextpdf/io/source/ByteBuffer;->appendHex(B)Lcom/itextpdf/io/source/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x3e

    .line 174
    invoke-virtual {v0, p0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    return-object v0
.end method

.method public static createEscapedString([B)[B
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/itextpdf/io/util/StreamUtil;->createBufferedEscapedString([B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static inputStreamToArray(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    .line 210
    new-array v0, v0, [B

    .line 211
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 219
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 220
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    .line 217
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 263
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 265
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return-void

    .line 260
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static skip(Ljava/io/InputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 87
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    sub-long/2addr p1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static transferBytes(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x10000

    .line 191
    new-array v1, v0, [B

    :goto_0
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p0, v1, v2, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    .line 195
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static transferBytes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x10000

    .line 179
    new-array v1, v0, [B

    :goto_0
    const/4 v2, 0x0

    .line 181
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    .line 183
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeEscapedString(Ljava/io/OutputStream;[B)V
    .locals 2

    .line 112
    invoke-static {p1}, Lcom/itextpdf/io/util/StreamUtil;->createBufferedEscapedString([B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object p1

    .line 114
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 116
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "Cannot write bytes."

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static writeHexedString(Ljava/io/OutputStream;[B)V
    .locals 2

    .line 121
    invoke-static {p1}, Lcom/itextpdf/io/util/StreamUtil;->createBufferedHexedString([B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object p1

    .line 123
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 125
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "Cannot write bytes."

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
