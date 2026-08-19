.class public Lcom/itextpdf/io/codec/TIFFDirectory;
.super Ljava/lang/Object;
.source "TIFFDirectory.java"


# static fields
.field private static final sizeOfType:[I


# instance fields
.field IFDOffset:J

.field fieldIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fields:[Lcom/itextpdf/io/codec/TIFFField;

.field isBigEndian:Z

.field nextIFDOffset:J

.field numEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    .line 222
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/codec/TIFFDirectory;->sizeOfType:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    const-wide/16 v0, 0x8

    .line 104
    iput-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->IFDOffset:J

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->nextIFDOffset:J

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    const-wide/16 v0, 0x8

    .line 104
    iput-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->IFDOffset:J

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->nextIFDOffset:J

    .line 135
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v2

    .line 139
    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 140
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 141
    invoke-static {v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->isValidEndianTag(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x4d4d

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 144
    :goto_0
    iput-boolean v4, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    .line 146
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_3

    .line 152
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v4

    :goto_1
    if-ge v6, p2, :cond_2

    cmp-long v7, v4, v0

    if-eqz v7, :cond_1

    .line 159
    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 160
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v4

    mul-int/lit8 v4, v4, 0xc

    int-to-long v4, v4

    .line 161
    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skip(J)J

    .line 163
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 156
    :cond_1
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string p2, "Directory number is too large."

    invoke-direct {p1, p2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_2
    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 167
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->initialize(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 168
    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    return-void

    .line 148
    :cond_3
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string p2, "Bad magic number. Should be 42."

    invoke-direct {p1, p2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_4
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string p2, "Bad endianness tag: 0x4949 or 0x4d4d."

    invoke-direct {p1, p2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;JI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    const-wide/16 v0, 0x8

    .line 104
    iput-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->IFDOffset:J

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->nextIFDOffset:J

    .line 188
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v2

    .line 189
    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 190
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 191
    invoke-static {v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isValidEndianTag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x4d4d

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    .line 194
    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    .line 197
    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    :goto_1
    if-ge v4, p4, :cond_1

    .line 203
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    int-to-long v0, v0

    add-long/2addr p2, v0

    .line 206
    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 209
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide p2

    .line 212
    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 218
    :cond_1
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->initialize(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 219
    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    return-void

    .line 192
    :cond_2
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string p2, "Bad endianness tag: 0x4949 or 0x4d4d."

    invoke-direct {p1, p2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getNumDirectories(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 698
    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 699
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 700
    invoke-static {v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->isValidEndianTag(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x4d4d

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 704
    :goto_0
    invoke-static {p0, v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Z)I

    move-result v5

    const/16 v7, 0x2a

    if-ne v5, v7, :cond_2

    const-wide/16 v7, 0x4

    .line 709
    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 710
    invoke-static {p0, v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Z)J

    move-result-wide v7

    :goto_1
    cmp-long v5, v7, v2

    if-eqz v5, :cond_1

    add-int/lit8 v5, v6, 0x1

    .line 718
    :try_start_0
    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 719
    invoke-static {p0, v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Z)I

    move-result v7

    mul-int/lit8 v7, v7, 0xc

    int-to-long v7, v7

    .line 720
    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skip(J)J

    .line 721
    invoke-static {p0, v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Z)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v5

    goto :goto_1

    .line 729
    :catch_0
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    return v6

    .line 706
    :cond_2
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "Bad magic number. Should be 42."

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 701
    :cond_3
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "Bad endianness tag: 0x4949 or 0x4d4d."

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initialize(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v2

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/itextpdf/io/codec/TIFFDirectory;->IFDOffset:J

    .line 271
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v4

    iput v4, v0, Lcom/itextpdf/io/codec/TIFFDirectory;->numEntries:I

    .line 272
    new-array v4, v4, [Lcom/itextpdf/io/codec/TIFFField;

    iput-object v4, v0, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    const/4 v6, 0x0

    move v7, v6

    const-wide/16 v8, 0x0

    .line 274
    :goto_0
    iget v10, v0, Lcom/itextpdf/io/codec/TIFFDirectory;->numEntries:I

    if-ge v7, v10, :cond_8

    cmp-long v8, v8, v2

    if-gez v8, :cond_8

    .line 275
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v8

    .line 276
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v9

    .line 277
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v10

    long-to-int v10, v10

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v11

    const-wide/16 v13, 0x4

    add-long/2addr v11, v13

    .line 286
    :try_start_0
    sget-object v13, Lcom/itextpdf/io/codec/TIFFDirectory;->sizeOfType:[I

    aget v13, v13, v9

    mul-int/2addr v13, v10

    const/4 v14, 0x4

    if-le v13, v14, :cond_0

    .line 287
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v13

    cmp-long v15, v13, v2

    if-gez v15, :cond_7

    .line 291
    invoke-virtual {v1, v13, v14}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    iget-object v13, v0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x2

    const/4 v14, 0x1

    packed-switch v9, :pswitch_data_0

    const/4 v13, 0x0

    goto/16 :goto_c

    .line 404
    :pswitch_0
    new-array v13, v10, [D

    move v14, v6

    :goto_1
    if-ge v14, v10, :cond_6

    .line 406
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readDouble(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)D

    move-result-wide v15

    aput-wide v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 396
    :pswitch_1
    new-array v13, v10, [F

    move v14, v6

    :goto_2
    if-ge v14, v10, :cond_6

    .line 398
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readFloat(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)F

    move-result v15

    aput v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 386
    :pswitch_2
    new-array v15, v10, [[I

    move v4, v6

    :goto_3
    if-ge v4, v10, :cond_1

    .line 388
    new-array v5, v13, [I

    aput-object v5, v15, v4

    .line 389
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v17

    aput v17, v5, v6

    .line 390
    aget-object v5, v15, v4

    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v17

    aput v17, v5, v14

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    move-object v13, v15

    goto/16 :goto_c

    .line 378
    :pswitch_3
    new-array v13, v10, [I

    move v4, v6

    :goto_4
    if-ge v4, v10, :cond_6

    .line 380
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v5

    aput v5, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 370
    :pswitch_4
    new-array v13, v10, [S

    move v4, v6

    :goto_5
    if-ge v4, v10, :cond_6

    .line 372
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)S

    move-result v5

    aput-short v5, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 360
    :pswitch_5
    new-array v4, v10, [[J

    move v5, v6

    :goto_6
    if-ge v5, v10, :cond_5

    .line 362
    new-array v15, v13, [J

    aput-object v15, v4, v5

    .line 363
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v17

    aput-wide v17, v15, v6

    .line 364
    aget-object v15, v4, v5

    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v17

    aput-wide v17, v15, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 352
    :pswitch_6
    new-array v13, v10, [J

    move v4, v6

    :goto_7
    if-ge v4, v10, :cond_6

    .line 354
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v14

    aput-wide v14, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 344
    :pswitch_7
    new-array v13, v10, [C

    move v4, v6

    :goto_8
    if-ge v4, v10, :cond_6

    .line 346
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 311
    :pswitch_8
    new-array v4, v10, [B

    .line 312
    invoke-virtual {v1, v4, v6, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([BII)V

    if-ne v9, v13, :cond_5

    .line 318
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v13, v6

    move v14, v13

    :goto_9
    if-ge v13, v10, :cond_4

    :goto_a
    if-ge v13, v10, :cond_3

    add-int/lit8 v15, v13, 0x1

    .line 322
    aget-byte v13, v4, v13

    if-eqz v13, :cond_2

    move v13, v15

    goto :goto_a

    :cond_2
    move v13, v15

    .line 325
    :cond_3
    new-instance v15, Ljava/lang/String;

    sub-int v6, v13, v14

    invoke-direct {v15, v4, v14, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v14, v13

    const/4 v6, 0x0

    goto :goto_9

    .line 330
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    .line 331
    new-array v13, v10, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v10, :cond_6

    .line 333
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_5
    move-object v13, v4

    .line 415
    :cond_6
    :goto_c
    iget-object v4, v0, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    new-instance v5, Lcom/itextpdf/io/codec/TIFFField;

    invoke-direct {v5, v8, v9, v10, v13}, Lcom/itextpdf/io/codec/TIFFField;-><init>(IIILjava/lang/Object;)V

    aput-object v5, v4, v7

    .line 418
    :catch_0
    :cond_7
    invoke-virtual {v1, v11, v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    add-int/lit8 v7, v7, 0x1

    move-wide v8, v11

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 423
    :cond_8
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/itextpdf/io/codec/TIFFDirectory;->nextIFDOffset:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    const-wide/16 v1, 0x0

    .line 426
    iput-wide v1, v0, Lcom/itextpdf/io/codec/TIFFDirectory;->nextIFDOffset:J

    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidEndianTag(I)Z
    .locals 1

    const/16 v0, 0x4949

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4d4d

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private readDouble(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readDouble()D

    move-result-wide v0

    return-wide v0

    .line 657
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readDoubleLE()D

    move-result-wide v0

    return-wide v0
.end method

.method private readFloat(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFloat()F

    move-result p1

    return p1

    .line 648
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFloatLE()F

    move-result p1

    return p1
.end method

.method private readInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result p1

    return p1

    .line 621
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result p1

    return p1
.end method

.method private readLong(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLong()J

    move-result-wide v0

    return-wide v0

    .line 639
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLongLE()J

    move-result-wide v0

    return-wide v0
.end method

.method private readShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result p1

    return p1

    .line 603
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result p1

    return p1
.end method

.method private readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0

    .line 630
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedIntLE()J

    move-result-wide v0

    return-wide v0
.end method

.method private static readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Z)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedInt()J

    move-result-wide p0

    return-wide p0

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedIntLE()J

    move-result-wide p0

    return-wide p0
.end method

.method private readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result p1

    return p1

    .line 612
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShortLE()I

    move-result p1

    return p1
.end method

.method private static readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result p0

    return p0

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShortLE()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getField(I)Lcom/itextpdf/io/codec/TIFFField;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFieldAsByte(I)B
    .locals 1

    const/4 v0, 0x0

    .line 511
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsByte(II)B

    move-result p1

    return p1
.end method

.method public getFieldAsByte(II)B
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 498
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/itextpdf/io/codec/TIFFField;->getAsBytes()[B

    move-result-object p1

    .line 499
    aget-byte p1, p1, p2

    return p1
.end method

.method public getFieldAsDouble(I)D
    .locals 2

    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldAsDouble(II)D
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 581
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/itextpdf/io/codec/TIFFField;->getAsDouble(I)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFieldAsFloat(I)F
    .locals 1

    const/4 v0, 0x0

    .line 566
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsFloat(II)F

    move-result p1

    return p1
.end method

.method public getFieldAsFloat(II)F
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 554
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/itextpdf/io/codec/TIFFField;->getAsFloat(I)F

    move-result p1

    return p1
.end method

.method public getFieldAsLong(I)J
    .locals 2

    const/4 v0, 0x0

    .line 539
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldAsLong(II)J
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 526
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/itextpdf/io/codec/TIFFField;->getAsLong(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getFields()[Lcom/itextpdf/io/codec/TIFFField;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    return-object v0
.end method

.method public getIFDOffset()J
    .locals 2

    .line 750
    iget-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->IFDOffset:J

    return-wide v0
.end method

.method public getNextIFDOffset()J
    .locals 2

    .line 761
    iget-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->nextIFDOffset:J

    return-wide v0
.end method

.method public getNumEntries()I
    .locals 1

    .line 435
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->numEntries:I

    return v0
.end method

.method public getTags()[I
    .locals 5

    .line 468
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 471
    iget-object v1, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v4, v2, 0x1

    .line 472
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isBigEndian()Z
    .locals 1

    .line 741
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    return v0
.end method

.method public isTagPresent(I)Z
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
