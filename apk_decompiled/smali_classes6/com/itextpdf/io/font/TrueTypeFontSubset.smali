.class Lcom/itextpdf/io/font/TrueTypeFontSubset;
.super Ljava/lang/Object;
.source "TrueTypeFontSubset.java"


# static fields
.field private static final ARG_1_AND_2_ARE_WORDS:I = 0x1

.field private static final HEAD_LOCA_FORMAT_OFFSET:I = 0x33

.field private static final MORE_COMPONENTS:I = 0x20

.field private static final TABLE_CHECKSUM:I = 0x0

.field private static final TABLE_LENGTH:I = 0x2

.field private static final TABLE_NAMES:[Ljava/lang/String;

.field private static final TABLE_NAMES_SUBSET:[Ljava/lang/String;

.field private static final TABLE_OFFSET:I = 0x1

.field private static final WE_HAVE_AN_X_AND_Y_SCALE:I = 0x40

.field private static final WE_HAVE_A_SCALE:I = 0x8

.field private static final WE_HAVE_A_TWO_BY_TWO:I = 0x80

.field private static final entrySelectors:[I


# instance fields
.field private directoryOffset:I

.field private fileName:Ljava/lang/String;

.field private fontPtr:I

.field private glyfTableRealSize:I

.field private glyphsInList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private glyphsUsed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private locaShortTable:Z

.field private locaTable:[I

.field private locaTableRealSize:I

.field private newGlyfTable:[B

.field private newLocaTable:[I

.field private newLocaTableOut:[B

.field private outFont:[B

.field protected rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field private tableDirectory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private tableGlyphOffset:I

.field private final tableNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const/16 v0, 0xb

    .line 66
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "cvt "

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "fpgm"

    aput-object v5, v1, v4

    const/4 v6, 0x2

    const-string v7, "glyf"

    aput-object v7, v1, v6

    const/4 v8, 0x3

    const-string v9, "head"

    aput-object v9, v1, v8

    const/4 v10, 0x4

    const-string v11, "hhea"

    aput-object v11, v1, v10

    const/4 v12, 0x5

    const-string v13, "hmtx"

    aput-object v13, v1, v12

    const/4 v14, 0x6

    const-string v15, "loca"

    aput-object v15, v1, v14

    const/16 v16, 0x7

    const-string v17, "maxp"

    aput-object v17, v1, v16

    const/16 v18, 0x8

    const-string v19, "prep"

    aput-object v19, v1, v18

    const/16 v20, 0x9

    const-string v21, "cmap"

    aput-object v21, v1, v20

    const-string v22, "OS/2"

    const/16 v23, 0xa

    aput-object v22, v1, v23

    sput-object v1, Lcom/itextpdf/io/font/TrueTypeFontSubset;->TABLE_NAMES_SUBSET:[Ljava/lang/String;

    const/16 v1, 0xd

    .line 70
    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    aput-object v7, v1, v6

    aput-object v9, v1, v8

    aput-object v11, v1, v10

    aput-object v13, v1, v12

    aput-object v15, v1, v14

    aput-object v17, v1, v16

    aput-object v19, v1, v18

    aput-object v21, v1, v20

    const-string v2, "OS/2"

    aput-object v2, v1, v23

    const-string v2, "name"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "post"

    aput-object v2, v1, v0

    sput-object v1, Lcom/itextpdf/io/font/TrueTypeFontSubset;->TABLE_NAMES:[Ljava/lang/String;

    const/16 v0, 0x15

    .line 72
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->entrySelectors:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/util/Set;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/io/source/RandomAccessFileOrArray;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fileName:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 125
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsUsed:Ljava/util/Set;

    .line 126
    iput p4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->directoryOffset:I

    if-eqz p5, :cond_0

    .line 129
    sget-object p1, Lcom/itextpdf/io/font/TrueTypeFontSubset;->TABLE_NAMES_SUBSET:[Ljava/lang/String;

    iput-object p1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableNames:[Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_0
    sget-object p1, Lcom/itextpdf/io/font/TrueTypeFontSubset;->TABLE_NAMES:[Ljava/lang/String;

    iput-object p1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableNames:[Ljava/lang/String;

    .line 133
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsInList:Ljava/util/List;

    return-void
.end method

.method private assembleFont()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    move v4, v2

    move v5, v4

    move v6, v3

    :goto_0
    const-string v7, "loca"

    const-string v8, "glyf"

    if-ge v4, v1, :cond_3

    aget-object v9, v0, v4

    .line 164
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    iget-object v7, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 172
    aget v7, v7, v3

    add-int/lit8 v7, v7, 0x3

    and-int/lit8 v7, v7, -0x4

    add-int/2addr v5, v7

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTableOut:[B

    array-length v0, v0

    add-int/2addr v5, v0

    .line 175
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newGlyfTable:[B

    array-length v0, v0

    add-int/2addr v5, v0

    mul-int/lit8 v0, v6, 0x10

    add-int/lit8 v0, v0, 0xc

    add-int/2addr v5, v0

    .line 178
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    .line 179
    iput v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    const/high16 v1, 0x10000

    .line 180
    invoke-direct {p0, v1}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontInt(I)V

    .line 181
    invoke-direct {p0, v6}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontShort(I)V

    .line 182
    sget-object v1, Lcom/itextpdf/io/font/TrueTypeFontSubset;->entrySelectors:[I

    aget v1, v1, v6

    const/4 v4, 0x1

    shl-int v5, v4, v1

    mul-int/lit8 v9, v5, 0x10

    .line 183
    invoke-direct {p0, v9}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontShort(I)V

    .line 184
    invoke-direct {p0, v1}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontShort(I)V

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x10

    .line 185
    invoke-direct {p0, v6}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontShort(I)V

    .line 186
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableNames:[Ljava/lang/String;

    array-length v5, v1

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_7

    aget-object v9, v1, v6

    .line 188
    iget-object v10, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    if-nez v10, :cond_4

    goto :goto_4

    .line 192
    :cond_4
    invoke-direct {p0, v9}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontString(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 203
    aget v9, v10, v2

    invoke-direct {p0, v9}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontInt(I)V

    .line 204
    aget v9, v10, v3

    goto :goto_3

    .line 199
    :cond_5
    iget-object v9, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTableOut:[B

    invoke-direct {p0, v9}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->calculateChecksum([B)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontInt(I)V

    .line 200
    iget v9, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTableRealSize:I

    goto :goto_3

    .line 195
    :cond_6
    iget-object v9, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newGlyfTable:[B

    invoke-direct {p0, v9}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->calculateChecksum([B)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontInt(I)V

    .line 196
    iget v9, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyfTableRealSize:I

    .line 207
    :goto_3
    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontInt(I)V

    .line 208
    invoke-direct {p0, v9}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontInt(I)V

    add-int/lit8 v9, v9, 0x3

    and-int/lit8 v9, v9, -0x4

    add-int/2addr v0, v9

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 211
    :cond_7
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableNames:[Ljava/lang/String;

    array-length v1, v0

    move v5, v2

    :goto_5
    if-ge v5, v1, :cond_b

    aget-object v6, v0, v5

    .line 212
    iget-object v9, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    if-nez v9, :cond_8

    goto :goto_6

    .line 216
    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_a

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 228
    iget-object v6, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v10, v9, v4

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 229
    iget-object v6, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v10, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    iget v11, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    aget v12, v9, v3

    invoke-virtual {v6, v10, v11, v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([BII)V

    .line 230
    iget v6, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    aget v9, v9, v3

    add-int/lit8 v9, v9, 0x3

    and-int/lit8 v9, v9, -0x4

    add-int/2addr v6, v9

    iput v6, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    goto :goto_6

    .line 223
    :cond_9
    iget-object v6, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTableOut:[B

    iget-object v9, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    iget v10, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    array-length v12, v6

    invoke-static {v6, v2, v9, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget v6, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    iget-object v9, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTableOut:[B

    array-length v9, v9

    add-int/2addr v6, v9

    iput v6, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    .line 225
    iput-object v11, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTableOut:[B

    goto :goto_6

    .line 218
    :cond_a
    iget-object v6, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newGlyfTable:[B

    iget-object v9, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    iget v10, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    array-length v12, v6

    invoke-static {v6, v2, v9, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget v6, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    iget-object v9, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newGlyfTable:[B

    array-length v9, v9

    add-int/2addr v6, v9

    iput v6, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    .line 220
    iput-object v11, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newGlyfTable:[B

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method

.method private calculateChecksum([B)I
    .locals 9

    .line 425
    array-length v0, p1

    div-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v7, v6, 0x1

    .line 432
    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    add-int/lit8 v8, v6, 0x2

    .line 433
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    add-int/lit8 v7, v6, 0x3

    .line 434
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v8

    add-int/lit8 v6, v6, 0x4

    .line 435
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v3, 0x8

    add-int/2addr v2, p1

    shl-int/lit8 p1, v4, 0x10

    add-int/2addr v2, p1

    shl-int/lit8 p1, v5, 0x18

    add-int/2addr v2, p1

    return v2
.end method

.method private checkGlyphComposite(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    aget v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 352
    aget p1, v0, p1

    if-ne v1, p1, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableGlyphOffset:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 356
    iget-object p1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result p1

    if-ltz p1, :cond_1

    return-void

    .line 360
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 362
    :goto_0
    iget-object p1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result p1

    .line 363
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 364
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsUsed:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsUsed:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsInList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_3

    return-void

    :cond_3
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    :goto_1
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_5
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x4

    :cond_6
    :goto_2
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_7

    add-int/lit8 v0, v0, 0x8

    .line 385
    :cond_7
    iget-object p1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    goto :goto_0
.end method

.method private createNewGlyphTables()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTable:[I

    .line 284
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsInList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 286
    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsInList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_1

    .line 290
    aget v5, v1, v3

    .line 291
    iget-object v6, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    add-int/lit8 v7, v5, 0x1

    aget v7, v6, v7

    aget v5, v6, v5

    sub-int/2addr v7, v5

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 293
    :cond_1
    iput v4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyfTableRealSize:I

    add-int/lit8 v4, v4, 0x3

    and-int/lit8 v3, v4, -0x4

    .line 295
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newGlyfTable:[B

    move v3, v2

    move v4, v3

    .line 298
    :goto_2
    iget-object v5, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTable:[I

    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 299
    aput v3, v5, v2

    if-ge v4, v0, :cond_2

    .line 300
    aget v6, v1, v4

    if-ne v6, v2, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 302
    aput v3, v5, v2

    .line 303
    iget-object v5, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    aget v6, v5, v2

    add-int/lit8 v7, v2, 0x1

    .line 304
    aget v5, v5, v7

    sub-int/2addr v5, v6

    if-lez v5, :cond_2

    .line 306
    iget-object v7, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v8, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableGlyphOffset:I

    add-int/2addr v8, v6

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 307
    iget-object v6, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v7, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newGlyfTable:[B

    invoke-virtual {v6, v7, v3, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([BII)V

    add-int/2addr v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private createTableDirectory()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    .line 238
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->directoryOffset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 239
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v2, 0x4

    .line 246
    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->readStandardString(I)Ljava/lang/String;

    move-result-object v2

    .line 248
    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v3

    .line 249
    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v4

    .line 250
    iget-object v5, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v5

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    .line 251
    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 241
    :cond_1
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "{0} is not a true type file"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fileName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0
.end method

.method private flatGlyphs()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    const-string v1, "glyf"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_2

    .line 336
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsUsed:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsUsed:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsInList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x1

    .line 340
    aget v0, v0, v1

    iput v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableGlyphOffset:I

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsInList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsInList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->checkGlyphComposite(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 334
    :cond_2
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "Table {0} does not exist in {1}"

    invoke-direct {v0, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fileName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0
.end method

.method private locaToBytes()V
    .locals 5

    .line 315
    iget-boolean v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaShortTable:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTable:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTableRealSize:I

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTable:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTableRealSize:I

    .line 320
    :goto_0
    iget v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTableRealSize:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTableOut:[B

    .line 321
    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    const/4 v0, 0x0

    .line 322
    iput v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    .line 323
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTable:[I

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget v3, v1, v0

    .line 324
    iget-boolean v4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaShortTable:Z

    if-eqz v4, :cond_1

    .line 325
    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontShort(I)V

    goto :goto_2

    .line 327
    :cond_1
    invoke-direct {p0, v3}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontInt(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private readLoca()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    const-string v1, "head"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 257
    const-string v2, "Table {0} does not exist in {1}"

    if-eqz v0, :cond_4

    .line 260
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v3, 0x1

    aget v0, v0, v3

    add-int/lit8 v0, v0, 0x33

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 261
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaShortTable:Z

    .line 262
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    const-string v4, "loca"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_3

    .line 266
    iget-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v3, v0, v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 267
    iget-boolean v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaShortTable:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 268
    aget v0, v0, v3

    div-int/2addr v0, v3

    .line 269
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    :goto_1
    if-ge v1, v0, :cond_2

    .line 271
    iget-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    mul-int/2addr v4, v3

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    :cond_1
    aget v0, v0, v3

    div-int/lit8 v0, v0, 0x4

    .line 275
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    :goto_2
    if-ge v1, v0, :cond_2

    .line 277
    iget-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void

    .line 264
    :cond_3
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {v0, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fileName:Ljava/lang/String;

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 258
    :cond_4
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {v0, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fileName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0
.end method

.method private readStandardString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    new-array p1, p1, [B

    .line 398
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 400
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "Cp1252"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 402
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "TrueType font"

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private writeFontInt(I)V
    .locals 5

    .line 412
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    iget v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    .line 413
    iput v3, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    .line 414
    iput v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    .line 415
    iput v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method private writeFontShort(I)V
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    iget v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    .line 408
    iput v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method private writeFontString(Ljava/lang/String;)V
    .locals 4

    .line 419
    const-string v0, "Cp1252"

    invoke-static {p1, v0}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 420
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    iget v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    iget v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    return-void
.end method


# virtual methods
.method process()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->createTableDirectory()V

    .line 145
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->readLoca()V

    .line 146
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->flatGlyphs()V

    .line 147
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->createNewGlyphTables()V

    .line 148
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaToBytes()V

    .line 149
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->assembleFont()V

    .line 150
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :try_start_1
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 156
    :catch_1
    throw v0
.end method
