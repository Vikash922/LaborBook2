.class Lcom/itextpdf/io/font/woff2/Woff2Dec;
.super Ljava/lang/Object;
.source "Woff2Dec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;,
        Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;,
        Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;,
        Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;,
        Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;,
        Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;,
        Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;,
        Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FLAG_ARG_1_AND_2_ARE_WORDS:I = 0x1

.field private static final FLAG_MORE_COMPONENTS:I = 0x20

.field private static final FLAG_WE_HAVE_AN_X_AND_Y_SCALE:I = 0x40

.field private static final FLAG_WE_HAVE_A_SCALE:I = 0x8

.field private static final FLAG_WE_HAVE_A_TWO_BY_TWO:I = 0x80

.field private static final FLAG_WE_HAVE_INSTRUCTIONS:I = 0x100

.field private static final kDefaultGlyphBuf:I = 0x1400

.field private static final kEndPtsOfContoursOffset:I = 0xa

.field private static final kGlyfOnCurve:I = 0x1

.field private static final kGlyfRepeat:I = 0x8

.field private static final kGlyfThisXIsSame:I = 0x10

.field private static final kGlyfThisYIsSame:I = 0x20

.field private static final kGlyfXShort:I = 0x2

.field private static final kGlyfYShort:I = 0x4

.field private static final kMaxPlausibleCompressionRatio:F = 100.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeBbox(I[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;[B)V
    .locals 8

    const/4 v0, 0x0

    if-lez p0, :cond_0

    .line 326
    aget-object v1, p1, v0

    iget v1, v1, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->x:I

    .line 327
    aget-object v2, p1, v0

    iget v2, v2, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->x:I

    .line 328
    aget-object v3, p1, v0

    iget v3, v3, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->y:I

    .line 329
    aget-object v0, p1, v0

    iget v0, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->y:I

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0

    :cond_0
    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-ge v4, p0, :cond_1

    .line 332
    aget-object v5, p1, v4

    iget v5, v5, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->x:I

    .line 333
    aget-object v6, p1, v4

    iget v6, v6, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->y:I

    .line 334
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 335
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 336
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 337
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    .line 340
    invoke-static {p2, p0, v0}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result p0

    .line 341
    invoke-static {p2, p0, v3}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result p0

    .line 342
    invoke-static {p2, p0, v2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result p0

    .line 343
    invoke-static {p2, p0, v1}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    return-void
.end method

.method private static computeOffsetToFirstTable(Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;)I
    .locals 4

    .line 826
    iget-short v0, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->num_tables:S

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0xc

    .line 828
    iget v1, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    if-eqz v1, :cond_0

    .line 829
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    iget-object v1, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/woff2/Woff2Common;->collectionHeaderSize(II)I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 831
    iget-object p0, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 832
    iget-object v3, v3, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static computeWoff2FinalSize([BI)I
    .locals 2

    .line 1185
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    const/16 p0, 0x10

    .line 1186
    invoke-virtual {v0, p0}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    .line 1187
    invoke-virtual {v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result p0

    return p0
.end method

.method public static convertWoff2ToTtf([BILcom/itextpdf/io/font/woff2/Woff2Out;)V
    .locals 9

    .line 1194
    new-instance v7, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;-><init>(Lcom/itextpdf/io/font/woff2/Woff2Dec$1;)V

    .line 1195
    new-instance v8, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;

    invoke-direct {v8, v0}, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;-><init>(Lcom/itextpdf/io/font/woff2/Woff2Dec$1;)V

    .line 1196
    invoke-static {p0, p1, v8}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->readWoff2Header([BILcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;)V

    .line 1198
    invoke-static {p0, p1, v7, v8, p2}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->writeHeaders([BILcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;Lcom/itextpdf/io/font/woff2/Woff2Out;)V

    .line 1200
    iget v0, v8, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->uncompressed_size:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_1

    .line 1205
    iget p1, v8, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->uncompressed_size:I

    new-array p1, p1, [B

    .line 1206
    iget v2, v8, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->uncompressed_size:I

    iget v4, v8, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->compressed_offset:I

    iget v5, v8, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->compressed_length:I

    const/4 v1, 0x0

    move-object v0, p1

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->woff2Uncompress([BII[BII)V

    const/4 p0, 0x0

    .line 1208
    :goto_0
    iget-object v0, v7, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    const/4 v1, 0x0

    .line 1209
    iget v2, v8, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->uncompressed_size:I

    move-object v0, p1

    move-object v3, v7

    move-object v4, v8

    move v5, p0

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->reconstructFont([BIILcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;ILcom/itextpdf/io/font/woff2/Woff2Out;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1202
    :cond_1
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Implausible compression ratio {0}"

    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static findTable(Ljava/util/ArrayList;I)Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/io/font/woff2/Woff2Common$Table;",
            ">;I)",
            "Lcom/itextpdf/io/font/woff2/Woff2Common$Table;"
        }
    .end annotation

    .line 633
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    .line 634
    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static pad4(Lcom/itextpdf/io/font/woff2/Woff2Out;)V
    .locals 3

    const/4 v0, 0x3

    .line 389
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 390
    invoke-interface {p0}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-interface {p0}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 393
    invoke-interface {p0}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/Round;->round4(I)I

    move-result v0

    invoke-interface {p0}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_0

    const/4 v2, 0x0

    .line 395
    invoke-interface {p0, v1, v2, v0}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BII)V

    :cond_0
    return-void

    .line 391
    :cond_1
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    const-string v0, "woff2 padding overflow exception"

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static readNumHMetrics([BII)S
    .locals 1

    .line 644
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    const/16 p0, 0x22

    .line 645
    invoke-virtual {v0, p0}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    .line 646
    invoke-virtual {v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result p0

    return p0
.end method

.method private static readTableDirectory(Lcom/itextpdf/io/font/woff2/Buffer;[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;I)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_8

    .line 756
    new-instance v3, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    invoke-direct {v3}, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;-><init>()V

    .line 757
    aput-object v3, p1, v1

    .line 758
    invoke-virtual {p0}, Lcom/itextpdf/io/font/woff2/Buffer;->readByte()B

    move-result v4

    invoke-static {v4}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v4

    and-int/lit8 v5, v4, 0x3f

    const/16 v6, 0x3f

    if-ne v5, v6, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v5

    goto :goto_1

    .line 763
    :cond_0
    sget-object v6, Lcom/itextpdf/io/font/woff2/TableTags;->kKnownTags:[I

    aget v5, v6, v5

    :goto_1
    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v4, v4, 0x3

    const v6, 0x676c7966

    const v7, 0x6c6f6361

    const/16 v8, 0x100

    if-eq v5, v6, :cond_2

    if-ne v5, v7, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_2
    :goto_2
    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move v8, v0

    :goto_3
    or-int/2addr v4, v8

    .line 778
    invoke-static {p0}, Lcom/itextpdf/io/font/woff2/VariableLength;->readBase128(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v6

    and-int/lit16 v8, v4, 0x100

    .line 780
    const-string v9, "Reading woff2 tables directory exception"

    if-eqz v8, :cond_5

    .line 781
    invoke-static {p0}, Lcom/itextpdf/io/font/woff2/VariableLength;->readBase128(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v8

    if-ne v5, v7, :cond_6

    if-nez v8, :cond_4

    goto :goto_4

    .line 783
    :cond_4
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p0, v9}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move v8, v6

    :cond_6
    :goto_4
    add-int v7, v2, v8

    if-lt v7, v2, :cond_7

    .line 789
    iput v2, v3, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    .line 790
    iput v8, v3, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    .line 793
    iput v5, v3, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    .line 794
    iput v4, v3, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->flags:I

    .line 795
    iput v8, v3, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->transform_length:I

    .line 796
    iput v6, v3, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_length:I

    add-int/lit8 v1, v1, 0x1

    move v2, v7

    goto :goto_0

    .line 787
    :cond_7
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p0, v9}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-void
.end method

.method private static readWoff2Header([BILcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;)V
    .locals 19

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 962
    new-instance v2, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v3, 0x0

    move-object/from16 v4, p0

    invoke-direct {v2, v4, v3, v0}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 965
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v4

    const v5, 0x774f4632

    if-ne v4, v5, :cond_17

    .line 969
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v4

    iput v4, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->flavor:I

    .line 971
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v4

    .line 974
    const-string v5, "Reading woff2 header exception"

    if-ne v0, v4, :cond_16

    .line 978
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v4

    iput-short v4, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->num_tables:S

    .line 979
    iget-short v4, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->num_tables:S

    if-eqz v4, :cond_15

    const/4 v4, 0x6

    .line 986
    invoke-virtual {v2, v4}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    .line 988
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v4

    iput v4, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->compressed_length:I

    const/4 v4, 0x4

    .line 993
    invoke-virtual {v2, v4}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    .line 998
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v4

    .line 1000
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v6

    .line 1002
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    if-eqz v4, :cond_1

    if-ge v4, v0, :cond_0

    sub-int v7, v0, v4

    if-lt v7, v6, :cond_0

    goto :goto_0

    .line 1006
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v5}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1011
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v7

    .line 1013
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v8

    if-eqz v7, :cond_3

    if-ge v7, v0, :cond_2

    sub-int v9, v0, v7

    if-lt v9, v8, :cond_2

    goto :goto_1

    .line 1018
    :cond_2
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v5}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :cond_3
    :goto_1
    iget-short v9, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->num_tables:S

    new-array v9, v9, [Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    iput-object v9, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    .line 1022
    iget-object v9, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    iget-short v10, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->num_tables:S

    invoke-static {v2, v9, v10}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->readTableDirectory(Lcom/itextpdf/io/font/woff2/Buffer;[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;I)V

    .line 1025
    iget-object v9, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    iget-object v10, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    array-length v10, v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aget-object v9, v9, v10

    .line 1026
    iget v10, v9, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    iget v12, v9, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    add-int/2addr v10, v12

    iput v10, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->uncompressed_size:I

    .line 1028
    iget v10, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->uncompressed_size:I

    iget v9, v9, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    if-lt v10, v9, :cond_14

    .line 1032
    iput v3, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    .line 1034
    iget v9, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->flavor:I

    const v10, 0x74746366

    if-ne v9, v10, :cond_d

    .line 1035
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v9

    iput v9, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    .line 1036
    iget v9, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    const/high16 v10, 0x10000

    const-string v12, "Reading collection woff2 header exception"

    if-eq v9, v10, :cond_5

    iget v9, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    const/high16 v10, 0x20000

    if-ne v9, v10, :cond_4

    goto :goto_2

    .line 1037
    :cond_4
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_5
    :goto_2
    invoke-static {v2}, Lcom/itextpdf/io/font/woff2/VariableLength;->read255UShort(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v9

    .line 1041
    new-array v10, v9, [Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    iput-object v10, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    move v10, v3

    :goto_3
    if-ge v10, v9, :cond_d

    .line 1044
    new-instance v13, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;-><init>(Lcom/itextpdf/io/font/woff2/Woff2Dec$1;)V

    .line 1045
    iget-object v15, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    aput-object v13, v15, v10

    .line 1047
    invoke-static {v2}, Lcom/itextpdf/io/font/woff2/VariableLength;->read255UShort(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v15

    .line 1048
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v3

    iput v3, v13, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->flavor:I

    .line 1050
    new-array v3, v15, [S

    iput-object v3, v13, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    move-object v3, v14

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v15, :cond_9

    move/from16 v16, v9

    .line 1057
    invoke-static {v2}, Lcom/itextpdf/io/font/woff2/VariableLength;->read255UShort(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v9

    move/from16 v17, v15

    .line 1058
    iget-object v15, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    array-length v15, v15

    if-ge v9, v15, :cond_8

    .line 1061
    iget-object v15, v13, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    move-object/from16 v18, v13

    int-to-short v13, v9

    aput-short v13, v15, v11

    .line 1063
    iget-object v13, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    aget-object v9, v13, v9

    .line 1064
    iget v13, v9, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    const v15, 0x6c6f6361

    if-ne v13, v15, :cond_6

    move-object v3, v9

    .line 1067
    :cond_6
    iget v13, v9, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    const v15, 0x676c7966

    if-ne v13, v15, :cond_7

    move-object v14, v9

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v16

    move/from16 v15, v17

    move-object/from16 v13, v18

    goto :goto_4

    .line 1059
    :cond_8
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move/from16 v16, v9

    if-nez v14, :cond_a

    const/4 v9, 0x1

    goto :goto_5

    :cond_a
    const/4 v9, 0x0

    :goto_5
    if-nez v3, :cond_b

    const/4 v3, 0x1

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    :goto_6
    if-ne v9, v3, :cond_c

    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v16

    const/4 v3, 0x0

    const/4 v11, 0x1

    goto :goto_3

    .line 1074
    :cond_c
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1079
    :cond_d
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->getOffset()I

    move-result v2

    iput v2, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->compressed_offset:I

    .line 1080
    iget v2, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->compressed_offset:I

    iget v1, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->compressed_length:I

    add-int/2addr v2, v1

    invoke-static {v2}, Lcom/itextpdf/io/font/woff2/Round;->round4(I)I

    move-result v1

    if-gt v1, v0, :cond_13

    if-eqz v4, :cond_f

    if-ne v1, v4, :cond_e

    add-int/2addr v4, v6

    .line 1089
    invoke-static {v4}, Lcom/itextpdf/io/font/woff2/Round;->round4(I)I

    move-result v1

    goto :goto_7

    .line 1087
    :cond_e
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v5}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_7
    if-eqz v7, :cond_11

    if-ne v1, v7, :cond_10

    add-int/2addr v7, v8

    .line 1096
    invoke-static {v7}, Lcom/itextpdf/io/font/woff2/Round;->round4(I)I

    move-result v1

    goto :goto_8

    .line 1094
    :cond_10
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v5}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1099
    :cond_11
    :goto_8
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/io/font/woff2/Round;->round4(I)I

    move-result v0

    if-ne v1, v0, :cond_12

    return-void

    .line 1100
    :cond_12
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v5}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1083
    :cond_13
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v5}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_14
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v5}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_15
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v5}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_16
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v5}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 967
    :cond_17
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    const-string v1, "Incorrect woff2 signature"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static reconstructFont([BIILcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;ILcom/itextpdf/io/font/woff2/Woff2Out;)V
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v0, p4

    move-object/from16 v10, p6

    .line 857
    invoke-interface/range {p6 .. p6}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v1

    const/16 v11, 0xc

    .line 858
    new-array v12, v11, [B

    .line 859
    iget-object v2, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    aget-object v13, v2, p5

    .line 860
    invoke-static/range {p4 .. p5}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->tables(Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;I)Ljava/util/ArrayList;

    move-result-object v14

    const v15, 0x676c7966

    .line 863
    invoke-static {v14, v15}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->findTable(Ljava/util/ArrayList;I)Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const v6, 0x6c6f6361

    invoke-static {v14, v6}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->findTable(Ljava/util/ArrayList;I)Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v5, "Reconstructing woff2 table directory exception"

    if-eq v2, v3, :cond_12

    .line 867
    iget v2, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->header_checksum:I

    .line 868
    iget v3, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    if-eqz v3, :cond_2

    .line 869
    iget-object v0, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    aget-object v0, v0, p5

    iget v2, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->header_checksum:I

    :cond_2
    move/from16 v16, v2

    const/4 v4, 0x0

    const/16 v17, 0x0

    .line 873
    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v2, 0x68656164

    if-ge v4, v0, :cond_f

    .line 874
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    .line 876
    new-instance v15, Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;

    iget v6, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    iget v7, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    invoke-direct {v15, v6, v7}, Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;-><init>(II)V

    .line 877
    iget-object v6, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->checksums:Ljava/util/Map;

    invoke-interface {v6, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez p5, :cond_4

    if-nez v6, :cond_3

    goto :goto_3

    .line 879
    :cond_3
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v5}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :cond_4
    :goto_3
    iget v7, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    move/from16 v19, v4

    int-to-long v3, v7

    iget v7, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    move-object/from16 v20, v12

    int-to-long v11, v7

    add-long/2addr v3, v11

    move/from16 v11, p2

    move-object v12, v14

    move-object/from16 v21, v15

    int-to-long v14, v11

    cmp-long v3, v3, v14

    if-gtz v3, :cond_e

    .line 886
    iget v3, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    const v4, 0x68686561

    if-ne v3, v4, :cond_5

    .line 887
    iget v3, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    add-int v3, p1, v3

    iget v4, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    invoke-static {v8, v3, v4}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->readNumHMetrics([BII)S

    move-result v3

    iput-short v3, v13, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_hmetrics:S

    :cond_5
    if-nez v6, :cond_c

    .line 892
    iget v3, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->flags:I

    const/16 v4, 0x100

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_8

    .line 893
    iget v3, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    if-ne v3, v2, :cond_7

    .line 894
    iget v2, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_6

    .line 898
    iget v2, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    add-int v2, p1, v2

    const/16 v3, 0x8

    add-int/2addr v2, v3

    const/4 v7, 0x0

    invoke-static {v8, v2, v7}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    goto :goto_4

    .line 895
    :cond_6
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v5}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v3, 0x8

    const/4 v7, 0x0

    .line 900
    :goto_4
    iput v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    .line 901
    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    add-int v1, p1, v1

    iget v2, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    invoke-static {v8, v1, v2}, Lcom/itextpdf/io/font/woff2/Woff2Common;->computeULongSum([BII)I

    move-result v1

    .line 902
    iget v2, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    add-int v2, p1, v2

    iget v4, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    invoke-interface {v10, v8, v2, v4}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BII)V

    move-object v14, v5

    move v8, v7

    move/from16 v15, v19

    const v18, 0x6c6f6361

    move-object v7, v0

    move/from16 v0, v17

    move/from16 v17, v1

    goto/16 :goto_5

    :cond_8
    const/16 v3, 0x8

    const/4 v7, 0x0

    .line 904
    iget v2, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    const v14, 0x676c7966

    if-ne v2, v14, :cond_9

    .line 905
    iput v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    const v6, 0x6c6f6361

    .line 907
    invoke-static {v12, v6}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->findTable(Ljava/util/ArrayList;I)Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    move-result-object v4

    .line 909
    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    add-int v1, p1, v1

    const/4 v15, 0x0

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v2, v18

    move v14, v3

    move v3, v15

    move/from16 v15, v19

    move-object v14, v5

    move/from16 v5, v17

    move-object v6, v13

    move v8, v7

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->reconstructGlyf([BILcom/itextpdf/io/font/woff2/Woff2Common$Table;ILcom/itextpdf/io/font/woff2/Woff2Common$Table;ILcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;Lcom/itextpdf/io/font/woff2/Woff2Out;)Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;

    move-result-object v0

    .line 910
    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;->glyph_checksum:I

    .line 911
    iget v0, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;->loca_checksum:I

    move/from16 v17, v1

    move-object/from16 v7, v18

    const v18, 0x6c6f6361

    goto :goto_5

    :cond_9
    move-object v14, v5

    move v8, v7

    move/from16 v15, v19

    move-object v7, v0

    .line 912
    iget v0, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    const v6, 0x6c6f6361

    if-ne v0, v6, :cond_a

    move/from16 v18, v6

    move/from16 v0, v17

    goto :goto_5

    .line 915
    :cond_a
    iget v0, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    const v2, 0x686d7478

    if-ne v0, v2, :cond_b

    .line 916
    iput v1, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    .line 918
    iget v0, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    add-int v1, p1, v0

    iget v2, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    iget-short v0, v13, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_glyphs:S

    .line 920
    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v3

    iget-short v0, v13, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_hmetrics:S

    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v4

    iget-object v5, v13, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->x_mins:[S

    move-object/from16 v0, p0

    move/from16 v18, v6

    move-object/from16 v6, p6

    .line 918
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->reconstructTransformedHmtx([BIIII[SLcom/itextpdf/io/font/woff2/Woff2Out;)I

    move-result v0

    move/from16 v22, v17

    move/from16 v17, v0

    move/from16 v0, v22

    .line 926
    :goto_5
    iget-object v1, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->checksums:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v22, v17

    move/from16 v17, v0

    move/from16 v0, v22

    goto :goto_6

    .line 923
    :cond_b
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v14}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object v7, v0

    move-object v14, v5

    move/from16 v15, v19

    move-object/from16 v3, v21

    const/4 v8, 0x0

    const v18, 0x6c6f6361

    .line 928
    iget-object v0, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->checksums:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_6
    add-int v16, v16, v0

    move-object/from16 v1, v20

    .line 933
    invoke-static {v1, v8, v0}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    .line 934
    iget v0, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    const/4 v3, 0x4

    invoke-static {v1, v3, v0}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    .line 935
    iget v0, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_length:I

    const/16 v2, 0x8

    invoke-static {v1, v2, v0}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    .line 936
    iget-object v0, v13, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->table_entry_by_tag:Ljava/util/Map;

    iget v2, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    const/16 v2, 0xc

    invoke-interface {v10, v1, v8, v0, v2}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BIII)V

    .line 939
    invoke-static {v1, v8, v2}, Lcom/itextpdf/io/font/woff2/Woff2Common;->computeULongSum([BII)I

    move-result v0

    add-int v16, v16, v0

    .line 941
    invoke-static/range {p6 .. p6}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->pad4(Lcom/itextpdf/io/font/woff2/Woff2Out;)V

    .line 943
    iget v0, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    int-to-long v2, v0

    iget v0, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_length:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-interface/range {p6 .. p6}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_d

    .line 946
    invoke-interface/range {p6 .. p6}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v0

    add-int/lit8 v4, v15, 0x1

    move-object/from16 v8, p0

    move-object v5, v14

    move/from16 v6, v18

    const/16 v11, 0xc

    const v15, 0x676c7966

    move-object v14, v12

    move-object v12, v1

    move v1, v0

    goto/16 :goto_2

    .line 944
    :cond_d
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v14}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v14, v5

    .line 883
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v14}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object v12, v14

    const/4 v3, 0x4

    const/4 v8, 0x0

    move-object v14, v5

    .line 950
    invoke-static {v12, v2}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->findTable(Ljava/util/ArrayList;I)Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 952
    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_length:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_10

    .line 955
    new-array v1, v3, [B

    const v2, -0x4e4f5046

    sub-int v2, v2, v16

    .line 956
    invoke-static {v1, v8, v2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    .line 957
    iget v0, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    const/16 v2, 0x8

    add-int/2addr v0, v2

    invoke-interface {v10, v1, v8, v0, v3}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BIII)V

    goto :goto_7

    .line 953
    :cond_10
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v14}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_7
    return-void

    :cond_12
    move-object v14, v5

    .line 864
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v14}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static reconstructGlyf([BILcom/itextpdf/io/font/woff2/Woff2Common$Table;ILcom/itextpdf/io/font/woff2/Woff2Common$Table;ILcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;Lcom/itextpdf/io/font/woff2/Woff2Out;)Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;
    .locals 34

    move-object/from16 v6, p0

    move/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 427
    new-instance v1, Lcom/itextpdf/io/font/woff2/Buffer;

    iget v2, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->transform_length:I

    invoke-direct {v1, v6, v0, v2}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 428
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 429
    invoke-interface/range {p7 .. p7}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v11

    .line 432
    invoke-virtual {v1}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    .line 433
    invoke-virtual {v1}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v4

    iput-short v4, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_glyphs:S

    .line 434
    invoke-virtual {v1}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v4

    iput-short v4, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->index_format:S

    .line 437
    iget v4, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->transform_length:I

    const-string v12, "Reconstructing woff2 glyf table exception"

    const/16 v5, 0x24

    if-gt v5, v4, :cond_14

    const/4 v13, 0x0

    move v4, v13

    :goto_0
    if-ge v4, v3, :cond_1

    .line 443
    invoke-virtual {v1}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v14

    .line 444
    iget v15, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->transform_length:I

    sub-int/2addr v15, v5

    if-gt v14, v15, :cond_0

    .line 447
    new-instance v15, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    add-int v3, v0, v5

    invoke-direct {v15, v3, v14}, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;-><init>(II)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v14

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x7

    goto :goto_0

    .line 445
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_1
    new-instance v14, Lcom/itextpdf/io/font/woff2/Buffer;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v0, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v1, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    invoke-direct {v14, v6, v0, v1}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 451
    new-instance v15, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v0, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v1, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    invoke-direct {v15, v6, v0, v1}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 452
    new-instance v4, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v0, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v1, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    invoke-direct {v4, v6, v0, v1}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 453
    new-instance v1, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v3, v3, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v0, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    invoke-direct {v1, v6, v3, v0}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 454
    new-instance v3, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v13, v13, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v0, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    invoke-direct {v3, v6, v13, v0}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 455
    new-instance v13, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v5, v5, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v0, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    invoke-direct {v13, v6, v5, v0}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 456
    new-instance v5, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v8, v8, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v0, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    invoke-direct {v5, v6, v8, v0}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 458
    iget-short v0, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_glyphs:S

    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v0

    const/4 v8, 0x1

    add-int/2addr v0, v8

    new-array v2, v0, [I

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v2

    const/4 v8, 0x0

    .line 460
    new-array v2, v8, [Lcom/itextpdf/io/font/woff2/Woff2Common$Point;

    .line 462
    invoke-virtual {v13}, Lcom/itextpdf/io/font/woff2/Buffer;->getInitialOffset()I

    move-result v8

    move-object/from16 v19, v2

    .line 464
    iget-short v2, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_glyphs:S

    invoke-static {v2}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    const/16 v18, 0x5

    shr-int/lit8 v2, v2, 0x5

    const/16 v18, 0x2

    shl-int/lit8 v2, v2, 0x2

    .line 465
    invoke-virtual {v13, v2}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    const/16 v7, 0x1400

    .line 469
    new-array v10, v7, [B

    .line 471
    iget-short v7, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_glyphs:S

    invoke-static {v7}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v7

    new-array v7, v7, [S

    iput-object v7, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->x_mins:[S

    move/from16 p1, p3

    move-object/from16 v21, v10

    move/from16 v20, v11

    const/16 p3, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1400

    .line 472
    :goto_1
    iget-short v11, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_glyphs:S

    invoke-static {v11}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v11

    if-ge v7, v11, :cond_13

    .line 476
    new-array v11, v2, [B

    const/4 v9, 0x0

    .line 477
    invoke-static {v6, v8, v11, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shr-int/lit8 v9, v7, 0x3

    add-int/2addr v9, v8

    .line 478
    aget-byte v9, v6, v9

    and-int/lit8 v11, v7, 0x7

    const/16 v22, 0x80

    shr-int v11, v22, v11

    and-int/2addr v9, v11

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 481
    :goto_2
    invoke-virtual {v14}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v11

    invoke-static {v11}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v11

    move/from16 v22, v2

    const v2, 0xffff

    if-ne v11, v2, :cond_7

    if-eqz v9, :cond_6

    .line 493
    invoke-static {v3}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->sizeOfComposite(Lcom/itextpdf/io/font/woff2/Buffer;)Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;

    move-result-object v2

    .line 494
    iget-boolean v9, v2, Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;->have_instructions:Z

    .line 495
    iget v2, v2, Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;->size:I

    if-eqz v9, :cond_3

    .line 497
    invoke-static {v1}, Lcom/itextpdf/io/font/woff2/VariableLength;->read255UShort(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v23

    move/from16 v6, v23

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    add-int/lit8 v24, v2, 0xc

    move/from16 v28, v8

    add-int v8, v24, v6

    if-ge v10, v8, :cond_4

    .line 502
    new-array v10, v8, [B

    move/from16 v21, v8

    move-object v8, v10

    move-object/from16 v29, v14

    goto :goto_4

    :cond_4
    move-object/from16 v29, v14

    move-object/from16 v8, v21

    move/from16 v21, v10

    :goto_4
    const/4 v10, 0x0

    .line 506
    invoke-static {v8, v10, v11}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v14

    const/16 v10, 0x8

    .line 507
    invoke-virtual {v13, v8, v14, v10}, Lcom/itextpdf/io/font/woff2/Buffer;->read([BII)V

    add-int/2addr v14, v10

    .line 510
    invoke-virtual {v3, v8, v14, v2}, Lcom/itextpdf/io/font/woff2/Buffer;->read([BII)V

    add-int/2addr v14, v2

    if-eqz v9, :cond_5

    .line 513
    invoke-static {v8, v14, v6}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v2

    .line 514
    invoke-virtual {v5, v8, v2, v6}, Lcom/itextpdf/io/font/woff2/Buffer;->read([BII)V

    add-int/2addr v2, v6

    move v14, v2

    :cond_5
    move-object/from16 v18, v3

    move/from16 v31, v7

    move-object v2, v8

    move-object/from16 v30, v15

    move-object/from16 v32, v16

    move/from16 v10, v21

    move/from16 v16, v22

    const/16 v17, 0x1

    move-object v15, v0

    move-object v7, v1

    move-object v8, v5

    move v1, v14

    move/from16 v0, p3

    move-object v14, v4

    goto/16 :goto_a

    .line 489
    :cond_6
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move/from16 v28, v8

    move-object/from16 v29, v14

    if-lez v11, :cond_11

    .line 519
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_5
    if-ge v2, v11, :cond_9

    .line 527
    invoke-static {v15}, Lcom/itextpdf/io/font/woff2/VariableLength;->read255UShort(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v8

    .line 528
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v6

    if-lt v8, v6, :cond_8

    add-int/lit8 v2, v2, 0x1

    move v6, v8

    goto :goto_5

    .line 530
    :cond_8
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_9
    invoke-virtual {v4}, Lcom/itextpdf/io/font/woff2/Buffer;->getLength()I

    move-result v2

    invoke-virtual {v4}, Lcom/itextpdf/io/font/woff2/Buffer;->getOffset()I

    move-result v8

    sub-int/2addr v2, v8

    if-gt v6, v2, :cond_10

    .line 538
    invoke-virtual {v4}, Lcom/itextpdf/io/font/woff2/Buffer;->getInitialOffset()I

    move-result v2

    invoke-virtual {v4}, Lcom/itextpdf/io/font/woff2/Buffer;->getOffset()I

    move-result v8

    add-int/2addr v2, v8

    .line 539
    invoke-virtual {v1}, Lcom/itextpdf/io/font/woff2/Buffer;->getInitialOffset()I

    move-result v8

    invoke-virtual {v1}, Lcom/itextpdf/io/font/woff2/Buffer;->getOffset()I

    move-result v14

    add-int/2addr v8, v14

    .line 540
    invoke-virtual {v1}, Lcom/itextpdf/io/font/woff2/Buffer;->getLength()I

    move-result v14

    invoke-virtual {v1}, Lcom/itextpdf/io/font/woff2/Buffer;->getOffset()I

    move-result v24

    sub-int v14, v14, v24

    move-object/from16 v24, v0

    move/from16 v0, p3

    if-ge v0, v6, :cond_a

    .line 544
    new-array v0, v6, [Lcom/itextpdf/io/font/woff2/Woff2Common$Point;

    move-object/from16 p3, v0

    move/from16 v19, v6

    move-object/from16 v30, v15

    move-object/from16 v15, v24

    goto :goto_6

    :cond_a
    move-object/from16 v30, v15

    move-object/from16 p3, v19

    move-object/from16 v15, v24

    move/from16 v19, v0

    :goto_6
    move-object/from16 v0, p0

    move/from16 v31, v7

    move-object v7, v1

    move v1, v2

    move-object/from16 v32, v16

    move/from16 v16, v22

    move v2, v8

    move/from16 v8, v18

    move-object/from16 v18, v3

    move v3, v14

    move-object v14, v4

    move v4, v6

    move-object v8, v5

    const/16 v17, 0x1

    move-object/from16 v5, p3

    .line 546
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->tripletDecode([BIIII[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;)I

    move-result v0

    .line 549
    invoke-virtual {v14, v6}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    .line 550
    invoke-virtual {v7, v0}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    .line 552
    invoke-static {v7}, Lcom/itextpdf/io/font/woff2/VariableLength;->read255UShort(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v0

    const/high16 v1, 0x8000000

    if-ge v6, v1, :cond_f

    const/high16 v1, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_f

    mul-int/lit8 v1, v11, 0x2

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v2, v6, 0x5

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    if-ge v10, v1, :cond_b

    .line 560
    new-array v2, v1, [B

    move v10, v1

    goto :goto_7

    :cond_b
    move-object/from16 v2, v21

    :goto_7
    const/4 v1, 0x0

    .line 564
    invoke-static {v2, v1, v11}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v3

    if-eqz v9, :cond_c

    const/16 v1, 0x8

    .line 566
    invoke-virtual {v13, v2, v3, v1}, Lcom/itextpdf/io/font/woff2/Buffer;->read([BII)V

    move-object/from16 v1, p3

    goto :goto_8

    :cond_c
    move-object/from16 v1, p3

    .line 568
    invoke-static {v6, v1, v2}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->computeBbox(I[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;[B)V

    :goto_8
    const/16 v3, 0xa

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v11, :cond_e

    .line 573
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v4, v9

    const/high16 v9, 0x10000

    if-ge v4, v9, :cond_d

    .line 577
    invoke-static {v2, v3, v4}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 575
    :cond_d
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_e
    invoke-static {v2, v3, v0}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v3

    .line 581
    invoke-virtual {v8, v2, v3, v0}, Lcom/itextpdf/io/font/woff2/Buffer;->read([BII)V

    move/from16 v22, v6

    move-object/from16 v23, v1

    move/from16 v24, v11

    move/from16 v25, v0

    move-object/from16 v26, v2

    move/from16 v27, v10

    .line 584
    invoke-static/range {v22 .. v27}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->storePoints(I[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;II[BI)I

    move-result v0

    move-object/from16 v33, v1

    move v1, v0

    move/from16 v0, v19

    move-object/from16 v19, v33

    goto :goto_a

    .line 555
    :cond_f
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_10
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object/from16 v18, v3

    move-object v14, v4

    move-object v8, v5

    move/from16 v31, v7

    move-object/from16 v30, v15

    move-object/from16 v32, v16

    move/from16 v16, v22

    const/16 v17, 0x1

    move-object v15, v0

    move-object v7, v1

    move/from16 v0, p3

    move-object/from16 v2, v21

    const/4 v1, 0x0

    .line 587
    :goto_a
    invoke-interface/range {p7 .. p7}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v3

    sub-int v3, v3, v20

    move-object/from16 v4, v32

    aput v3, v4, v31

    move-object/from16 v3, p7

    const/4 v5, 0x0

    .line 588
    invoke-interface {v3, v2, v5, v1}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BII)V

    .line 590
    invoke-static/range {p7 .. p7}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->pad4(Lcom/itextpdf/io/font/woff2/Woff2Out;)V

    .line 592
    invoke-static {v2, v5, v1}, Lcom/itextpdf/io/font/woff2/Woff2Common;->computeULongSum([BII)I

    move-result v1

    add-int v1, p1, v1

    if-lez v11, :cond_12

    .line 596
    new-instance v6, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v9, 0x2

    invoke-direct {v6, v2, v9, v9}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    move-object/from16 v11, p6

    .line 597
    iget-object v5, v11, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->x_mins:[S

    invoke-virtual {v6}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v6

    aput-short v6, v5, v31

    goto :goto_b

    :cond_12
    move-object/from16 v11, p6

    const/4 v9, 0x2

    :goto_b
    add-int/lit8 v5, v31, 0x1

    move-object/from16 v6, p0

    move/from16 p3, v0

    move/from16 p1, v1

    move-object/from16 v21, v2

    move-object v1, v7

    move-object v0, v15

    move/from16 v2, v16

    move-object/from16 v3, v18

    move-object/from16 v15, v30

    move-object/from16 v16, v4

    move v7, v5

    move-object v5, v8

    move/from16 v18, v9

    move-object v9, v11

    move-object v4, v14

    move/from16 v8, v28

    move-object/from16 v14, v29

    goto/16 :goto_1

    :cond_13
    move-object/from16 v3, p7

    move-object v11, v9

    move-object/from16 v4, v16

    .line 602
    invoke-interface/range {p7 .. p7}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v0

    move-object/from16 v1, p2

    iget v2, v1, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_length:I

    .line 603
    invoke-interface/range {p7 .. p7}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v0

    move-object/from16 v2, p4

    iput v0, v2, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    .line 605
    iget-short v0, v11, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_glyphs:S

    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v0

    iget v1, v1, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_length:I

    aput v1, v4, v0

    .line 606
    iget-short v0, v11, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->index_format:S

    invoke-static {v4, v0, v3}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->storeLoca([IILcom/itextpdf/io/font/woff2/Woff2Out;)I

    move-result v0

    .line 607
    invoke-interface/range {p7 .. p7}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v1

    iget v3, v2, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    sub-int/2addr v1, v3

    iput v1, v2, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_length:I

    .line 609
    new-instance v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;

    move/from16 v2, p1

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;-><init>(II)V

    return-object v1

    .line 438
    :cond_14
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static reconstructTransformedHmtx([BIIII[SLcom/itextpdf/io/font/woff2/Woff2Out;)I
    .locals 5

    .line 656
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 658
    invoke-virtual {v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readByte()B

    move-result p0

    invoke-static {p0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result p0

    and-int/lit8 p1, p0, 0x1

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, p2

    .line 666
    :goto_1
    const-string v2, "Reconstructing woff2 hmtx table exception"

    if-eqz p1, :cond_3

    if-nez p0, :cond_2

    goto :goto_2

    .line 667
    :cond_2
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p0, v2}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    if-eqz p5, :cond_d

    .line 670
    array-length v3, p5

    if-ne v3, p3, :cond_d

    if-gt p4, p3, :cond_c

    if-lt p4, v1, :cond_b

    .line 685
    new-array v1, p4, [S

    move v2, p2

    :goto_3
    if-ge v2, p4, :cond_4

    .line 688
    invoke-virtual {v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v3

    .line 689
    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 692
    :cond_4
    new-array v2, p3, [S

    move v3, p2

    :goto_4
    if-ge v3, p4, :cond_6

    if-eqz p1, :cond_5

    .line 696
    invoke-virtual {v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v4

    goto :goto_5

    .line 698
    :cond_5
    aget-short v4, p5, v3

    .line 700
    :goto_5
    aput-short v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    move p1, p4

    :goto_6
    if-ge p1, p3, :cond_8

    if-eqz p0, :cond_7

    .line 706
    invoke-virtual {v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v3

    goto :goto_7

    .line 708
    :cond_7
    aget-short v3, p5, p1

    .line 710
    :goto_7
    aput-short v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_8
    mul-int/lit8 p0, p3, 0x2

    mul-int/lit8 p1, p4, 0x2

    add-int/2addr p0, p1

    .line 715
    new-array p1, p0, [B

    move p5, p2

    move v0, p5

    :goto_8
    if-ge p5, p3, :cond_a

    if-ge p5, p4, :cond_9

    .line 719
    aget-short v3, v1, p5

    invoke-static {p1, v0, v3}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v0

    .line 721
    :cond_9
    aget-short v3, v2, p5

    invoke-static {p1, v0, v3}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v0

    add-int/lit8 p5, p5, 0x1

    goto :goto_8

    .line 724
    :cond_a
    invoke-static {p1, p2, p0}, Lcom/itextpdf/io/font/woff2/Woff2Common;->computeULongSum([BII)I

    move-result p3

    .line 725
    invoke-interface {p6, p1, p2, p0}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BII)V

    return p3

    .line 682
    :cond_b
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p0, v2}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 676
    :cond_c
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p0, v2}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 671
    :cond_d
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p0, v2}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sizeOfComposite(Lcom/itextpdf/io/font/woff2/Buffer;)Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;
    .locals 7

    .line 348
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>(Lcom/itextpdf/io/font/woff2/Buffer;)V

    .line 349
    invoke-virtual {v0}, Lcom/itextpdf/io/font/woff2/Buffer;->getOffset()I

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0x20

    move v4, v1

    move v3, v2

    :goto_0
    and-int/2addr v3, v2

    if-eqz v3, :cond_5

    .line 354
    invoke-virtual {v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v3

    and-int/lit16 v5, v3, 0x100

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    or-int/2addr v4, v5

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x6

    goto :goto_2

    :cond_1
    const/4 v5, 0x4

    :goto_2
    and-int/lit8 v6, v3, 0x8

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_2
    and-int/lit8 v6, v3, 0x40

    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x4

    goto :goto_3

    :cond_3
    and-int/lit16 v6, v3, 0x80

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x8

    .line 369
    :cond_4
    :goto_3
    invoke-virtual {v0, v5}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    goto :goto_0

    .line 372
    :cond_5
    invoke-virtual {v0}, Lcom/itextpdf/io/font/woff2/Buffer;->getOffset()I

    move-result v0

    sub-int/2addr v0, p0

    .line 375
    new-instance p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;

    invoke-direct {p0, v0, v4}, Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;-><init>(IZ)V

    return-object p0
.end method

.method private static storeLoca([IILcom/itextpdf/io/font/woff2/Woff2Out;)I
    .locals 7

    .line 401
    array-length v0, p0

    int-to-long v0, v0

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2

    :goto_0
    const/4 v4, 0x2

    shl-long v5, v0, v4

    shr-long v4, v5, v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_3

    mul-long/2addr v0, v2

    long-to-int v0, v0

    .line 406
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 408
    :goto_1
    array-length v5, p0

    if-ge v3, v5, :cond_2

    .line 409
    aget v5, p0, v3

    if-eqz p1, :cond_1

    .line 411
    invoke-static {v1, v4, v5}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v4

    goto :goto_2

    :cond_1
    shr-int/lit8 v5, v5, 0x1

    .line 413
    invoke-static {v1, v4, v5}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 416
    :cond_2
    invoke-static {v1, v2, v0}, Lcom/itextpdf/io/font/woff2/Woff2Common;->computeULongSum([BII)I

    move-result p0

    .line 417
    invoke-interface {p2, v1, v2, v0}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BII)V

    return p0

    .line 404
    :cond_3
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    const-string p1, "woff2 loca table content size overflow exception"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static storeOffsetTable([BIII)I
    .locals 3

    .line 802
    invoke-static {p0, p1, p2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result p1

    .line 803
    invoke-static {p0, p1, p3}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    shl-int v2, v1, v0

    if-gt v2, p3, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    shl-int v0, v1, p2

    shl-int/lit8 v0, v0, 0x4

    .line 809
    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result p1

    .line 810
    invoke-static {p0, p1, p2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result p1

    shl-int/lit8 p2, p3, 0x4

    sub-int/2addr p2, v0

    .line 812
    invoke-static {p0, p1, p2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result p0

    return p0
.end method

.method private static storePoints(I[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;II[BI)I
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    mul-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0xc

    add-int v3, v3, p3

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v13, -0x100

    .line 231
    const-string v14, "Reconstructing woff2 glyph\'s point exception"

    if-ge v6, v0, :cond_a

    .line 232
    aget-object v15, p1, v6

    .line 233
    iget-boolean v5, v15, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->on_curve:Z

    .line 234
    iget v12, v15, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->x:I

    sub-int/2addr v12, v10

    .line 235
    iget v10, v15, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->y:I

    sub-int/2addr v10, v11

    if-nez v12, :cond_0

    or-int/lit8 v5, v5, 0x10

    goto :goto_2

    :cond_0
    if-le v12, v13, :cond_2

    const/16 v11, 0x100

    if-ge v12, v11, :cond_2

    if-lez v12, :cond_1

    const/16 v11, 0x10

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    or-int/lit8 v11, v11, 0x2

    or-int/2addr v5, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x2

    :goto_2
    if-nez v10, :cond_3

    or-int/lit8 v5, v5, 0x20

    goto :goto_4

    :cond_3
    if-le v10, v13, :cond_5

    const/16 v11, 0x100

    if-ge v10, v11, :cond_5

    if-lez v10, :cond_4

    const/16 v10, 0x20

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    or-int/lit8 v10, v10, 0x4

    or-int/2addr v5, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v9, v9, 0x2

    :goto_4
    if-ne v5, v4, :cond_6

    const/16 v4, 0xff

    if-eq v7, v4, :cond_6

    add-int/lit8 v4, v3, -0x1

    .line 254
    aget-byte v10, v1, v4

    or-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v1, v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_6
    if-eqz v7, :cond_8

    if-ge v3, v2, :cond_7

    add-int/lit8 v4, v3, 0x1

    int-to-byte v7, v7

    .line 261
    aput-byte v7, v1, v3

    move v3, v4

    goto :goto_5

    .line 259
    :cond_7
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v14}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_5
    if-ge v3, v2, :cond_9

    add-int/lit8 v4, v3, 0x1

    int-to-byte v7, v5

    .line 266
    aput-byte v7, v1, v3

    move v3, v4

    const/4 v7, 0x0

    .line 269
    :goto_6
    iget v10, v15, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->x:I

    .line 270
    iget v11, v15, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->y:I

    add-int/lit8 v6, v6, 0x1

    move v4, v5

    goto :goto_0

    .line 264
    :cond_9
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v14}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-eqz v7, :cond_c

    if-ge v3, v2, :cond_b

    add-int/lit8 v4, v3, 0x1

    int-to-byte v5, v7

    .line 278
    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_7

    .line 276
    :cond_b
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v14}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_7
    add-int/2addr v9, v8

    if-lt v9, v8, :cond_12

    add-int/2addr v9, v3

    if-lt v9, v3, :cond_12

    if-gt v9, v2, :cond_12

    add-int/2addr v8, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v0, :cond_11

    .line 292
    aget-object v6, p1, v5

    iget v6, v6, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->x:I

    sub-int/2addr v6, v2

    if-nez v6, :cond_d

    goto :goto_9

    :cond_d
    if-le v6, v13, :cond_e

    const/16 v7, 0x100

    if-ge v6, v7, :cond_e

    add-int/lit8 v7, v3, 0x1

    .line 296
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v1, v3

    move v3, v7

    goto :goto_9

    .line 299
    :cond_e
    invoke-static {v1, v3, v6}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v3

    :goto_9
    add-int/2addr v2, v6

    .line 302
    aget-object v6, p1, v5

    iget v6, v6, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->y:I

    sub-int/2addr v6, v4

    if-nez v6, :cond_f

    const/16 v7, 0x100

    goto :goto_a

    :cond_f
    const/16 v7, 0x100

    if-le v6, v13, :cond_10

    if-ge v6, v7, :cond_10

    add-int/lit8 v9, v8, 0x1

    .line 306
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v1, v8

    move v8, v9

    goto :goto_a

    .line 308
    :cond_10
    invoke-static {v1, v8, v6}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v8

    :goto_a
    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_11
    return v8

    .line 284
    :cond_12
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v14}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static storeTableEntry([BII)I
    .locals 0

    .line 817
    invoke-static {p0, p1, p2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result p1

    const/4 p2, 0x0

    .line 818
    invoke-static {p0, p1, p2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result p1

    .line 819
    invoke-static {p0, p1, p2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result p1

    .line 820
    invoke-static {p0, p1, p2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result p0

    return p0
.end method

.method private static tables(Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/io/font/woff2/Woff2Common$Table;",
            ">;"
        }
    .end annotation

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 840
    iget v1, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    if-eqz v1, :cond_0

    .line 841
    iget-object v1, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    aget-object p1, v1, p1

    iget-object p1, p1, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-short v3, p1, v2

    .line 842
    iget-object v4, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    invoke-static {v3}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v3

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 845
    :cond_0
    iget-object p0, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method private static tripletDecode([BIIII[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;)I
    .locals 20

    move/from16 v0, p3

    move/from16 v1, p4

    .line 157
    const-string v2, "Reconstructing woff2 glyph exception"

    if-gt v1, v0, :cond_b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v4, v1, :cond_a

    add-int v8, v4, p1

    .line 163
    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v8

    shr-int/lit8 v9, v8, 0x7

    const/4 v10, 0x1

    if-nez v9, :cond_0

    move v9, v10

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    and-int/lit8 v11, v8, 0x7f

    const/16 v13, 0x7c

    const/16 v14, 0x78

    const/16 v15, 0x54

    const/16 v16, 0x4

    const/16 v17, 0x2

    if-ge v11, v15, :cond_1

    move/from16 v18, v10

    goto :goto_2

    :cond_1
    if-ge v11, v14, :cond_2

    move/from16 v18, v17

    goto :goto_2

    :cond_2
    if-ge v11, v13, :cond_3

    const/16 v18, 0x3

    goto :goto_2

    :cond_3
    move/from16 v18, v16

    :goto_2
    add-int v3, v5, v18

    if-gt v3, v0, :cond_9

    if-lt v3, v5, :cond_9

    const/16 v12, 0xa

    if-ge v11, v12, :cond_4

    and-int/lit8 v8, v8, 0xe

    shl-int/lit8 v8, v8, 0x7

    add-int v5, p2, v5

    .line 183
    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v5

    add-int/2addr v8, v5

    invoke-static {v11, v8}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v5

    move v8, v5

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_4
    const/16 v8, 0x14

    if-ge v11, v8, :cond_5

    add-int/lit8 v8, v11, -0xa

    and-int/lit8 v8, v8, 0xe

    shl-int/lit8 v8, v8, 0x7

    add-int v5, p2, v5

    .line 185
    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v5

    add-int/2addr v8, v5

    invoke-static {v11, v8}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v5

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_5
    if-ge v11, v15, :cond_6

    add-int/lit8 v8, v11, -0x14

    add-int v5, p2, v5

    .line 189
    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v5

    and-int/lit8 v12, v8, 0x30

    add-int/2addr v12, v10

    shr-int/lit8 v13, v5, 0x4

    add-int/2addr v12, v13

    .line 190
    invoke-static {v11, v12}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v12

    shr-int/lit8 v11, v11, 0x1

    and-int/lit8 v8, v8, 0xc

    shl-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v10

    and-int/lit8 v5, v5, 0xf

    add-int/2addr v8, v5

    .line 191
    invoke-static {v11, v8}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v5

    :goto_3
    move v8, v5

    move v5, v12

    goto/16 :goto_4

    :cond_6
    if-ge v11, v14, :cond_7

    add-int/lit8 v8, v11, -0x54

    .line 194
    div-int/lit8 v12, v8, 0xc

    shl-int/lit8 v12, v12, 0x8

    add-int/2addr v12, v10

    add-int v5, p2, v5

    aget-byte v13, p0, v5

    invoke-static {v13}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v11, v12}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v12

    shr-int/lit8 v11, v11, 0x1

    .line 195
    rem-int/lit8 v8, v8, 0xc

    shr-int/lit8 v8, v8, 0x2

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v10

    add-int/2addr v5, v10

    aget-byte v5, p0, v5

    .line 196
    invoke-static {v5}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v5

    add-int/2addr v8, v5

    .line 195
    invoke-static {v11, v8}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v5

    goto :goto_3

    :cond_7
    if-ge v11, v13, :cond_8

    add-int v5, p2, v5

    add-int/lit8 v8, v5, 0x1

    .line 198
    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v8

    .line 199
    aget-byte v10, p0, v5

    invoke-static {v10}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    shr-int/lit8 v12, v8, 0x4

    add-int/2addr v10, v12

    invoke-static {v11, v10}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v10

    shr-int/lit8 v11, v11, 0x1

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v5, v5, 0x2

    .line 200
    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v5

    add-int/2addr v8, v5

    invoke-static {v11, v8}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v5

    move v8, v5

    move v5, v10

    goto :goto_4

    :cond_8
    add-int v5, p2, v5

    .line 202
    aget-byte v8, p0, v5

    invoke-static {v8}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v10, v5, 0x1

    aget-byte v10, p0, v10

    invoke-static {v10}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v10

    add-int/2addr v8, v10

    invoke-static {v11, v8}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v8

    shr-int/lit8 v10, v11, 0x1

    add-int/lit8 v11, v5, 0x2

    .line 203
    aget-byte v11, p0, v11

    .line 204
    invoke-static {v11}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    const/4 v12, 0x3

    add-int/2addr v5, v12

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v5

    add-int/2addr v11, v5

    .line 203
    invoke-static {v10, v11}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v5

    move/from16 v19, v8

    move v8, v5

    move/from16 v5, v19

    :goto_4
    add-int/2addr v6, v5

    add-int/2addr v7, v8

    .line 210
    new-instance v5, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;

    invoke-direct {v5, v6, v7, v9}, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;-><init>(IIZ)V

    aput-object v5, p5, v4

    add-int/lit8 v4, v4, 0x1

    move v5, v3

    goto/16 :goto_0

    .line 178
    :cond_9
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v2}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return v5

    .line 158
    :cond_b
    new-instance v0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {v0, v2}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static withSign(II)I
    .locals 0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    :goto_0
    return p1
.end method

.method private static woff2Uncompress([BII[BII)V
    .locals 3

    .line 731
    const-string v0, "Woff2 brotli decoding exception"

    .line 733
    :try_start_0
    new-instance v1, Lcom/itextpdf/io/codec/brotli/dec/BrotliInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p3, p4, p5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v1, v2}, Lcom/itextpdf/io/codec/brotli/dec/BrotliInputStream;-><init>(Ljava/io/InputStream;)V

    move p3, p2

    :goto_0
    if-lez p3, :cond_1

    .line 735
    invoke-virtual {v1, p0, p1, p2}, Lcom/itextpdf/io/codec/brotli/dec/BrotliInputStream;->read([BII)I

    move-result p4

    if-ltz p4, :cond_0

    sub-int/2addr p3, p4

    goto :goto_0

    .line 737
    :cond_0
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 742
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/brotli/dec/BrotliInputStream;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    if-nez p3, :cond_2

    return-void

    .line 749
    :cond_2
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 743
    :cond_3
    :try_start_1
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 746
    :catch_0
    new-instance p0, Lcom/itextpdf/io/exceptions/FontCompressionException;

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeHeaders([BILcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;Lcom/itextpdf/io/font/woff2/Woff2Out;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 1107
    invoke-static/range {p3 .. p3}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->computeOffsetToFirstTable(Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;)I

    move-result v2

    new-array v3, v2, [B

    .line 1110
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1112
    iget v5, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 1114
    iget-object v5, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v7, v5

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v9, v5, v8

    .line 1115
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 1116
    iget-object v11, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    array-length v12, v11

    move v13, v6

    :goto_1
    if-ge v13, v12, :cond_0

    aget-short v14, v11, v13

    .line 1117
    iget-object v15, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    aget-object v15, v15, v14

    iget v15, v15, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    invoke-interface {v10, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1120
    :cond_0
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v6

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1121
    iget-object v13, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    add-int/lit8 v14, v11, 0x1

    int-to-short v14, v14

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Short;

    invoke-virtual {v12}, Ljava/lang/Short;->shortValue()S

    move-result v12

    aput-short v12, v13, v11

    move v11, v14

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1126
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1131
    :cond_3
    iget v5, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    .line 1133
    iget v4, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->flavor:I

    invoke-static {v3, v6, v4}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v4

    .line 1134
    iget v5, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    invoke-static {v3, v4, v5}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v4

    .line 1135
    iget-object v5, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v5, v5

    invoke-static {v3, v4, v5}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v4

    move v8, v4

    move v5, v6

    .line 1138
    :goto_3
    iget-object v9, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v9, v9

    if-ge v5, v9, :cond_4

    .line 1139
    invoke-static {v3, v8, v6}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1142
    :cond_4
    iget v5, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    const/high16 v9, 0x20000

    if-ne v5, v9, :cond_5

    .line 1143
    invoke-static {v3, v8, v6}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v5

    .line 1144
    invoke-static {v3, v5, v6}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v5

    .line 1145
    invoke-static {v3, v5, v6}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v8

    .line 1149
    :cond_5
    iget-object v5, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v5, v5

    new-array v5, v5, [Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    iput-object v5, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    move v5, v6

    .line 1150
    :goto_4
    iget-object v9, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v9, v9

    if-ge v5, v9, :cond_8

    .line 1151
    iget-object v9, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    aget-object v9, v9, v5

    .line 1154
    invoke-static {v3, v4, v8}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v4

    .line 1157
    iput v8, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->dst_offset:I

    .line 1158
    iget v10, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->flavor:I

    iget-object v11, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    array-length v11, v11

    invoke-static {v3, v8, v10, v11}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->storeOffsetTable([BIII)I

    move-result v8

    .line 1160
    iget-object v10, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    new-instance v11, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    invoke-direct {v11, v7}, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;-><init>(Lcom/itextpdf/io/font/woff2/Woff2Dec$1;)V

    aput-object v11, v10, v5

    .line 1161
    iget-object v10, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    array-length v11, v10

    move v12, v6

    :goto_5
    if-ge v12, v11, :cond_6

    aget-short v13, v10, v12

    .line 1162
    iget-object v14, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    aget-object v13, v14, v13

    iget v13, v13, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    .line 1163
    iget-object v14, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    aget-object v14, v14, v5

    iget-object v14, v14, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->table_entry_by_tag:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v14, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    invoke-static {v3, v8, v13}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->storeTableEntry([BII)I

    move-result v8

    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    goto :goto_5

    .line 1167
    :cond_6
    iget v7, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->dst_offset:I

    iget v10, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->dst_offset:I

    sub-int v10, v8, v10

    invoke-static {v3, v7, v10}, Lcom/itextpdf/io/font/woff2/Woff2Common;->computeULongSum([BII)I

    move-result v7

    iput v7, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->header_checksum:I

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    const/4 v5, 0x1

    .line 1170
    new-array v5, v5, [Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    iput-object v5, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    .line 1171
    iget v5, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->flavor:I

    iget-short v7, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->num_tables:S

    invoke-static {v3, v6, v5, v7}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->storeOffsetTable([BIII)I

    move-result v5

    .line 1172
    iget-object v7, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    new-instance v8, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;-><init>(Lcom/itextpdf/io/font/woff2/Woff2Dec$1;)V

    aput-object v8, v7, v6

    move v7, v6

    .line 1173
    :goto_6
    iget-short v8, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->num_tables:S

    if-ge v7, v8, :cond_8

    .line 1174
    iget-object v8, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->table_entry_by_tag:Ljava/util/Map;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    iget v9, v9, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    iget v8, v8, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    invoke-static {v3, v5, v8}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->storeTableEntry([BII)I

    move-result v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v1, p4

    .line 1179
    invoke-interface {v1, v3, v6, v2}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BII)V

    .line 1180
    invoke-static {v3, v6, v2}, Lcom/itextpdf/io/font/woff2/Woff2Common;->computeULongSum([BII)I

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->header_checksum:I

    return-void
.end method
