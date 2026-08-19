.class Lcom/itextpdf/io/font/WoffConverter;
.super Ljava/lang/Object;
.source "WoffConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/WoffConverter$TableDirectory;
    }
.end annotation


# static fields
.field private static final woffSignature:J = 0x774f4646L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToUInt([BI)J
    .locals 7

    .line 226
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static bytesToUShort([BI)I
    .locals 1

    .line 233
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static convert([B)[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 63
    invoke-static {v0, v1}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUInt([BI)J

    move-result-wide v2

    const-wide/32 v4, 0x774f4646

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    const/4 v2, 0x4

    .line 68
    new-array v3, v2, [B

    .line 69
    invoke-static {v0, v2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x8

    .line 73
    invoke-static {v0, v4}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUInt([BI)J

    move-result-wide v5

    array-length v7, v0

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_f

    const/4 v5, 0x2

    .line 78
    new-array v6, v5, [B

    const/16 v7, 0xc

    .line 79
    invoke-static {v0, v7, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v8, 0xe

    .line 83
    invoke-static {v0, v8}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUShort([BI)I

    move-result v8

    if-nez v8, :cond_e

    const/16 v8, 0x10

    .line 88
    invoke-static {v0, v8}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUInt([BI)J

    move-result-wide v9

    long-to-int v11, v9

    .line 108
    new-array v11, v11, [B

    .line 109
    invoke-static {v3, v1, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    invoke-static {v6, v1, v11, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    invoke-static {v6, v1}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUShort([BI)I

    move-result v3

    move v5, v1

    :goto_0
    const/16 v6, 0x11

    if-ge v5, v6, :cond_1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    int-to-double v14, v5

    .line 118
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v6, v12

    if-le v6, v3, :cond_0

    mul-int/2addr v6, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    move v6, v5

    :goto_1
    if-ltz v5, :cond_d

    shr-int/lit8 v12, v6, 0x8

    int-to-byte v12, v12

    const/4 v13, 0x6

    .line 128
    aput-byte v12, v11, v13

    const/4 v12, 0x7

    int-to-byte v13, v6

    .line 129
    aput-byte v13, v11, v12

    shr-int/lit8 v12, v5, 0x8

    int-to-byte v12, v12

    .line 131
    aput-byte v12, v11, v4

    int-to-byte v4, v5

    const/16 v5, 0x9

    .line 132
    aput-byte v4, v11, v5

    mul-int/lit8 v4, v3, 0x10

    sub-int/2addr v4, v6

    shr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    const/16 v6, 0xa

    .line 135
    aput-byte v5, v11, v6

    int-to-byte v4, v4

    const/16 v5, 0xb

    .line 136
    aput-byte v4, v11, v5

    .line 140
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v5, 0x2c

    move v6, v1

    move v12, v7

    :goto_2
    if-ge v6, v3, :cond_3

    .line 142
    new-instance v13, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;-><init>(Lcom/itextpdf/io/font/WoffConverter$1;)V

    .line 143
    iget-object v14, v13, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->tag:[B

    invoke-static {v0, v5, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v5, 0x4

    .line 145
    invoke-static {v0, v14}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUInt([BI)J

    move-result-wide v14

    iput-wide v14, v13, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->offset:J

    add-int/lit8 v14, v5, 0x8

    .line 148
    iget-wide v7, v13, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->offset:J

    const-wide/16 v16, 0x4

    rem-long v7, v7, v16

    const-wide/16 v16, 0x0

    cmp-long v7, v7, v16

    if-nez v7, :cond_2

    .line 152
    invoke-static {v0, v14}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUInt([BI)J

    move-result-wide v7

    iput-wide v7, v13, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->compLength:J

    add-int/lit8 v7, v5, 0xc

    .line 154
    iget-object v8, v13, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLength:[B

    invoke-static {v0, v7, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v7, v13, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLength:[B

    invoke-static {v7, v1}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUInt([BI)J

    move-result-wide v7

    iput-wide v7, v13, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLengthVal:J

    add-int/lit8 v7, v5, 0x10

    .line 157
    iget-object v8, v13, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origChecksum:[B

    invoke-static {v0, v7, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x14

    .line 160
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x10

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0xc

    const/16 v8, 0x10

    goto :goto_2

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 164
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v7, 0xc

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;

    .line 165
    iget-object v6, v5, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->tag:[B

    invoke-static {v6, v1, v11, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v7, 0x4

    .line 168
    iget-object v8, v5, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origChecksum:[B

    invoke-static {v8, v1, v11, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v7, 0x8

    shr-int/lit8 v8, v12, 0x18

    int-to-byte v8, v8

    .line 171
    aput-byte v8, v11, v6

    add-int/lit8 v6, v7, 0x9

    shr-int/lit8 v8, v12, 0x10

    int-to-byte v8, v8

    .line 172
    aput-byte v8, v11, v6

    add-int/lit8 v6, v7, 0xa

    shr-int/lit8 v8, v12, 0x8

    int-to-byte v8, v8

    .line 173
    aput-byte v8, v11, v6

    add-int/lit8 v6, v7, 0xb

    int-to-byte v8, v12

    .line 174
    aput-byte v8, v11, v6

    add-int/lit8 v6, v7, 0xc

    .line 177
    iget-object v8, v5, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLength:[B

    invoke-static {v8, v1, v11, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, 0x10

    add-int/2addr v7, v6

    .line 180
    iput v12, v5, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->outOffset:I

    .line 182
    iget-wide v13, v5, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLengthVal:J

    long-to-int v5, v13

    add-int/2addr v12, v5

    .line 183
    rem-int/lit8 v5, v12, 0x4

    if-eqz v5, :cond_4

    rsub-int/lit8 v5, v5, 0x4

    add-int/2addr v12, v5

    goto :goto_3

    :cond_5
    int-to-long v2, v12

    cmp-long v2, v2, v9

    if-nez v2, :cond_c

    .line 192
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;

    .line 193
    iget-wide v4, v3, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->compLength:J

    long-to-int v4, v4

    new-array v4, v4, [B

    .line 195
    iget-wide v5, v3, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->offset:J

    long-to-int v5, v5

    iget-wide v6, v3, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->compLength:J

    long-to-int v6, v6

    invoke-static {v0, v5, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget-wide v5, v3, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLengthVal:J

    long-to-int v5, v5

    .line 197
    iget-wide v6, v3, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->compLength:J

    iget-wide v8, v3, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLengthVal:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_a

    .line 200
    iget-wide v6, v3, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->compLength:J

    iget-wide v8, v3, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLengthVal:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    .line 201
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 202
    new-instance v4, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v4, v6}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 203
    new-array v6, v5, [B

    move v7, v1

    :goto_5
    sub-int v8, v5, v7

    if-lez v8, :cond_7

    .line 206
    invoke-virtual {v4, v6, v7, v8}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_6

    add-int/2addr v7, v8

    goto :goto_5

    .line 208
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 212
    :cond_7
    invoke-virtual {v4}, Ljava/util/zip/InflaterInputStream;->read()I

    move-result v4

    if-gez v4, :cond_8

    move-object v4, v6

    goto :goto_6

    .line 213
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 219
    :cond_9
    :goto_6
    iget v3, v3, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->outOffset:I

    invoke-static {v4, v1, v11, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 198
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    return-object v11

    .line 189
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 126
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 84
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 74
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 64
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static isWoffFont([B)Z
    .locals 5

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, v0}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUInt([BI)J

    move-result-wide v1

    const-wide/32 v3, 0x774f4646

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
