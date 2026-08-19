.class final Lcom/itextpdf/barcodes/qrcode/Version;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/barcodes/qrcode/Version$ECB;,
        Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;
    }
.end annotation


# static fields
.field private static final VERSIONS:[Lcom/itextpdf/barcodes/qrcode/Version;

.field private static final VERSION_DECODE_INFO:[I


# instance fields
.field private final alignmentPatternCenters:[I

.field private final ecBlocks:[Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

.field private final totalCodewords:I

.field private final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    .line 58
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Version;->VERSION_DECODE_INFO:[I

    .line 68
    invoke-static {}, Lcom/itextpdf/barcodes/qrcode/Version;->buildVersions()[Lcom/itextpdf/barcodes/qrcode/Version;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Version;->VERSIONS:[Lcom/itextpdf/barcodes/qrcode/Version;

    return-void

    :array_0
    .array-data 4
        0x7c94
        0x85bc
        0x9a99
        0xa4d3
        0xbbf6
        0xc762
        0xd847
        0xe60d
        0xf928
        0x10b78
        0x1145d
        0x12a17
        0x13532
        0x149a6
        0x15683
        0x168c9
        0x177ec
        0x18ec4
        0x191e1
        0x1afab
        0x1b08e
        0x1cc1a
        0x1d33f
        0x1ed75
        0x1f250
        0x209d5
        0x216f0
        0x228ba
        0x2379f
        0x24b0b
        0x2542e
        0x26a64
        0x27541
        0x28c69
    .end array-data
.end method

.method private constructor <init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/Version;->versionNumber:I

    .line 82
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/Version;->alignmentPatternCenters:[I

    const/4 p1, 0x4

    .line 83
    new-array p1, p1, [Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    const/4 v0, 0x1

    aput-object p4, p1, v0

    const/4 p4, 0x2

    aput-object p5, p1, p4

    const/4 p4, 0x3

    aput-object p6, p1, p4

    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/Version;->ecBlocks:[Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    .line 85
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result p1

    .line 86
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->getECBlocks()[Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    move-result-object p3

    move p4, p2

    .line 87
    :goto_0
    array-length p5, p3

    if-ge p2, p5, :cond_0

    .line 88
    aget-object p5, p3, p2

    .line 89
    invoke-virtual {p5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;->getCount()I

    move-result p6

    invoke-virtual {p5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;->getDataCodewords()I

    move-result p5

    add-int/2addr p5, p1

    mul-int/2addr p6, p5

    add-int/2addr p4, p6

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 91
    :cond_0
    iput p4, p0, Lcom/itextpdf/barcodes/qrcode/Version;->totalCodewords:I

    return-void
.end method

.method private static buildVersions()[Lcom/itextpdf/barcodes/qrcode/Version;
    .locals 71

    .line 314
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object v7, v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v15, 0x1

    const/16 v14, 0x13

    invoke-direct {v1, v15, v14}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/4 v13, 0x7

    invoke-direct {v3, v13, v1}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v12, 0x10

    invoke-direct {v1, v15, v12}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v11, 0xa

    invoke-direct {v4, v11, v1}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v10, 0xd

    invoke-direct {v1, v15, v10}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v5, v10, v1}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v8, 0x9

    invoke-direct {v1, v15, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v9, 0x11

    invoke-direct {v6, v9, v1}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v16, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v8, v16

    const/16 v0, 0x12

    const/4 v1, 0x6

    filled-new-array {v1, v0}, [I

    move-result-object v18

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x22

    invoke-direct {v2, v15, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v0, v11, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x1c

    invoke-direct {v3, v15, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v2, v12, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x16

    invoke-direct {v5, v15, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v3, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v9, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    invoke-direct {v9, v15, v12}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v5, v4, v9}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v17, 0x2

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v24, Lcom/itextpdf/barcodes/qrcode/Version;

    const/16 v0, 0x11

    move-object/from16 v9, v24

    filled-new-array {v1, v6}, [I

    move-result-object v26

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x37

    invoke-direct {v3, v15, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0xf

    invoke-direct {v2, v5, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v11, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v13, 0x2c

    invoke-direct {v11, v15, v13}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v13, 0x1a

    invoke-direct {v3, v13, v11}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v11, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v14, 0x2

    invoke-direct {v4, v14, v0}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v0, 0x12

    invoke-direct {v11, v0, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    invoke-direct {v4, v14, v10}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v0, v6, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v25, 0x3

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v11

    move-object/from16 v30, v0

    invoke-direct/range {v24 .. v30}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v27, Lcom/itextpdf/barcodes/qrcode/Version;

    move v0, v10

    move-object/from16 v10, v27

    filled-new-array {v1, v13}, [I

    move-result-object v29

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x50

    invoke-direct {v3, v15, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x14

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v11, 0x20

    invoke-direct {v4, v14, v11}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v11, 0x12

    invoke-direct {v3, v11, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v11, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v0, 0x18

    invoke-direct {v11, v14, v0}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v13, v11}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v11, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x9

    const/4 v0, 0x4

    invoke-direct {v6, v0, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v11, v12, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v28, 0x4

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v11

    invoke-direct/range {v27 .. v33}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v19, Lcom/itextpdf/barcodes/qrcode/Version;

    const/16 v2, 0xa

    move-object/from16 v11, v19

    const/16 v3, 0x1e

    filled-new-array {v1, v3}, [I

    move-result-object v21

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x6c

    invoke-direct {v5, v15, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v13, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v13, 0x2b

    invoke-direct {v6, v14, v13}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v13, 0x18

    invoke-direct {v5, v13, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v13, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0xf

    invoke-direct {v13, v14, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    invoke-direct {v2, v14, v12}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v12, 0x12

    invoke-direct {v6, v12, v13, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v12, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v13, 0xb

    invoke-direct {v12, v14, v13}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0xc

    invoke-direct {v13, v14, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x16

    invoke-direct {v2, v3, v12, v13}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v20, 0x5

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v2

    invoke-direct/range {v19 .. v25}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v27, Lcom/itextpdf/barcodes/qrcode/Version;

    const/16 v2, 0x10

    move-object/from16 v12, v27

    const/16 v3, 0x22

    filled-new-array {v1, v3}, [I

    move-result-object v29

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x44

    invoke-direct {v4, v14, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x12

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x1b

    invoke-direct {v5, v0, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v2, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v13, 0x13

    invoke-direct {v6, v0, v13}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v13, 0x18

    invoke-direct {v5, v13, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v13, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0xf

    invoke-direct {v13, v0, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v2, 0x1c

    invoke-direct {v6, v2, v13}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v28, 0x6

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    invoke-direct/range {v27 .. v33}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v19, Lcom/itextpdf/barcodes/qrcode/Version;

    const/4 v2, 0x7

    const/16 v3, 0x13

    const/16 v4, 0x1a

    move-object/from16 v13, v19

    const/16 v5, 0x26

    const/16 v6, 0x16

    filled-new-array {v1, v6, v5}, [I

    move-result-object v21

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x4e

    invoke-direct {v6, v14, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x14

    invoke-direct {v5, v3, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x1f

    invoke-direct {v6, v0, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v2, 0x12

    invoke-direct {v3, v2, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v1, 0xe

    invoke-direct {v6, v14, v1}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0xf

    invoke-direct {v14, v0, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x12

    invoke-direct {v2, v4, v6, v14}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v14, 0xd

    invoke-direct {v6, v0, v14}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    invoke-direct {v14, v15, v1}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v15, 0x1a

    invoke-direct {v4, v15, v6, v14}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v20, 0x7

    move-object/from16 v22, v5

    move-object/from16 v23, v3

    move-object/from16 v24, v2

    move-object/from16 v25, v4

    invoke-direct/range {v19 .. v25}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v22, Lcom/itextpdf/barcodes/qrcode/Version;

    const/16 v2, 0x13

    const/4 v3, 0x2

    move-object/from16 v14, v22

    const/16 v4, 0x2a

    const/4 v5, 0x6

    const/16 v6, 0x18

    filled-new-array {v5, v6, v4}, [I

    move-result-object v24

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v15, 0x61

    invoke-direct {v5, v3, v15}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v15, 0x26

    invoke-direct {v6, v3, v15}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v15, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v1, 0x27

    invoke-direct {v15, v3, v1}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v1, 0x16

    invoke-direct {v5, v1, v6, v15}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v15, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v1, 0x12

    invoke-direct {v15, v0, v1}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v2, 0x16

    invoke-direct {v6, v2, v15, v1}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v15, 0xe

    invoke-direct {v2, v0, v15}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v15, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v0, 0xf

    invoke-direct {v15, v3, v0}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v0, 0x1a

    invoke-direct {v1, v0, v2, v15}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v23, 0x8

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v1

    invoke-direct/range {v22 .. v28}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v25, Lcom/itextpdf/barcodes/qrcode/Version;

    const/4 v0, 0x1

    move-object/from16 v15, v25

    const/16 v1, 0x2e

    const/4 v2, 0x6

    const/16 v4, 0x1a

    filled-new-array {v2, v4, v1}, [I

    move-result-object v27

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x74

    invoke-direct {v4, v3, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1e

    invoke-direct {v2, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x24

    const/4 v1, 0x3

    invoke-direct {v5, v1, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v1, 0x25

    invoke-direct {v6, v3, v1}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v1, 0x16

    invoke-direct {v4, v1, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v0, 0x4

    const/16 v6, 0x10

    invoke-direct {v5, v0, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x11

    invoke-direct {v6, v0, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x14

    invoke-direct {v1, v3, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0xc

    invoke-direct {v5, v0, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    move-object/from16 v47, v7

    const/16 v7, 0xd

    invoke-direct {v6, v0, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v0, 0x18

    invoke-direct {v3, v0, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v26, 0x9

    move-object/from16 v28, v2

    move-object/from16 v29, v4

    move-object/from16 v30, v1

    move-object/from16 v31, v3

    invoke-direct/range {v25 .. v31}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v17, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v16, v17

    const/16 v0, 0x32

    const/4 v1, 0x6

    const/16 v2, 0x1c

    filled-new-array {v1, v2, v0}, [I

    move-result-object v19

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x44

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x45

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x12

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x2b

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x2c

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1a

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x13

    const/4 v5, 0x6

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x14

    const/4 v7, 0x2

    invoke-direct {v4, v7, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x18

    invoke-direct {v2, v6, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0xf

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x10

    invoke-direct {v5, v7, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1c

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v18, 0xa

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-direct/range {v17 .. v23}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v20, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v17, v20

    const/16 v0, 0x36

    const/4 v1, 0x6

    const/16 v2, 0x1e

    filled-new-array {v1, v2, v0}, [I

    move-result-object v22

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x51

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v2, 0x14

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x32

    const/4 v5, 0x1

    invoke-direct {v2, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x33

    invoke-direct {v4, v3, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1e

    invoke-direct {v1, v5, v2, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x16

    invoke-direct {v4, v3, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x17

    invoke-direct {v5, v3, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x1c

    invoke-direct {v2, v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0xc

    const/4 v6, 0x3

    invoke-direct {v4, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x8

    const/16 v7, 0xd

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x18

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v21, 0xb

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    invoke-direct/range {v20 .. v26}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v23, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v18, v23

    const/16 v0, 0x20

    const/16 v1, 0x3a

    const/4 v2, 0x6

    filled-new-array {v2, v0, v1}, [I

    move-result-object v25

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x5c

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x5d

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x18

    invoke-direct {v0, v4, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x24

    const/4 v5, 0x6

    invoke-direct {v2, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x25

    invoke-direct {v4, v3, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x16

    invoke-direct {v1, v3, v2, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x14

    const/4 v6, 0x4

    invoke-direct {v3, v6, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x15

    invoke-direct {v4, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1a

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v5, 0x7

    const/16 v7, 0xe

    invoke-direct {v4, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0xf

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1c

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v24, 0xc

    move-object/from16 v26, v0

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    invoke-direct/range {v23 .. v29}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v26, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v19, v26

    const/16 v0, 0x22

    const/16 v1, 0x3e

    const/4 v2, 0x6

    filled-new-array {v2, v0, v1}, [I

    move-result-object v28

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x6b

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v2, 0x1a

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x8

    const/16 v4, 0x25

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x26

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x16

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x8

    const/16 v5, 0x14

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x15

    const/4 v6, 0x4

    invoke-direct {v4, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x18

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0xc

    const/16 v7, 0xb

    invoke-direct {v4, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0xc

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x16

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v27, 0xd

    move-object/from16 v29, v0

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    invoke-direct/range {v26 .. v32}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v29, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v20, v29

    const/16 v0, 0x42

    const/4 v1, 0x6

    const/16 v2, 0x1a

    const/16 v3, 0x2e

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v31

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x73

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x74

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x1e

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x28

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x29

    const/4 v5, 0x5

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x18

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0xb

    const/16 v6, 0x10

    invoke-direct {v3, v4, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x11

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x14

    invoke-direct {v2, v6, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0xb

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0xd

    invoke-direct {v6, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v7, 0x18

    invoke-direct {v3, v7, v4, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v30, 0xe

    move-object/from16 v32, v0

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    invoke-direct/range {v29 .. v35}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v22, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v21, v22

    const/16 v0, 0x30

    const/16 v1, 0x46

    const/4 v2, 0x6

    const/16 v3, 0x1a

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v24

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x57

    invoke-direct {v1, v5, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x58

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x16

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x29

    invoke-direct {v2, v5, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x2a

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x18

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x19

    const/4 v7, 0x7

    invoke-direct {v4, v7, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v2, v6, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0xb

    const/16 v5, 0xc

    invoke-direct {v4, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0xd

    invoke-direct {v5, v7, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x18

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v23, 0xf

    move-object/from16 v25, v0

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    invoke-direct/range {v22 .. v28}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v25, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v22, v25

    const/16 v0, 0x32

    const/16 v1, 0x4a

    const/4 v2, 0x6

    const/16 v3, 0x1a

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v27

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x62

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x63

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x18

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x2d

    const/4 v4, 0x7

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x2e

    const/4 v5, 0x3

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x13

    const/16 v6, 0xf

    invoke-direct {v3, v6, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x14

    const/4 v5, 0x2

    invoke-direct {v4, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x18

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x10

    const/16 v7, 0xd

    invoke-direct {v5, v7, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v26, 0x10

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    invoke-direct/range {v25 .. v31}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v28, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v23, v28

    const/16 v0, 0x36

    const/16 v1, 0x4e

    const/4 v2, 0x6

    const/16 v3, 0x1e

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v30

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x6b

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x6c

    const/4 v5, 0x5

    invoke-direct {v2, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1c

    invoke-direct {v0, v4, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0xa

    const/16 v6, 0x2e

    invoke-direct {v2, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x2f

    invoke-direct {v5, v3, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v1, v4, v2, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x16

    invoke-direct {v5, v3, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x17

    const/16 v6, 0xf

    invoke-direct {v3, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v2, v4, v5, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0xe

    const/4 v7, 0x2

    invoke-direct {v5, v7, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x11

    invoke-direct {v4, v7, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1c

    invoke-direct {v3, v6, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v29, 0x11

    move-object/from16 v31, v0

    move-object/from16 v32, v1

    move-object/from16 v33, v2

    move-object/from16 v34, v3

    invoke-direct/range {v28 .. v34}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v48, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v24, v48

    const/16 v0, 0x38

    const/16 v1, 0x52

    const/4 v2, 0x6

    const/16 v3, 0x1e

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v50

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x78

    const/4 v4, 0x5

    invoke-direct {v1, v4, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x79

    const/4 v5, 0x1

    invoke-direct {v2, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x9

    const/16 v4, 0x2b

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x2c

    const/4 v5, 0x4

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1a

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x11

    const/16 v5, 0x16

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x17

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v6, 0x2

    const/16 v7, 0xe

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    move-object/from16 v55, v8

    const/16 v7, 0x13

    const/16 v8, 0xf

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v3, v5, v4, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v49, 0x12

    move-object/from16 v51, v0

    move-object/from16 v52, v1

    move-object/from16 v53, v2

    move-object/from16 v54, v3

    invoke-direct/range {v48 .. v54}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v26, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v25, v26

    const/16 v0, 0x3a

    const/16 v1, 0x56

    const/4 v2, 0x6

    const/16 v3, 0x1e

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v28

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x71

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x72

    const/4 v5, 0x4

    invoke-direct {v2, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1c

    invoke-direct {v0, v4, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x2c

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0xb

    const/16 v5, 0x2d

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1a

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x15

    const/16 v6, 0x11

    invoke-direct {v3, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x16

    const/4 v7, 0x4

    invoke-direct {v5, v7, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v2, v4, v3, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x9

    const/16 v7, 0xd

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x10

    const/16 v8, 0xe

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v3, v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v27, 0x13

    move-object/from16 v29, v0

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    invoke-direct/range {v26 .. v32}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v29, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v26, v29

    const/16 v0, 0x3e

    const/16 v1, 0x5a

    const/16 v2, 0x22

    const/4 v3, 0x6

    filled-new-array {v3, v2, v0, v1}, [I

    move-result-object v31

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x6b

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x6c

    const/4 v5, 0x5

    invoke-direct {v2, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1c

    invoke-direct {v0, v4, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x29

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x2a

    const/16 v5, 0xd

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1a

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0xf

    const/16 v5, 0x18

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v6, 0x5

    const/16 v7, 0x19

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v2, v6, v3, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    invoke-direct {v5, v4, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0xa

    const/16 v7, 0x10

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1c

    invoke-direct {v3, v6, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v30, 0x14

    move-object/from16 v32, v0

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    invoke-direct/range {v29 .. v35}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v48, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v27, v48

    const/16 v0, 0x48

    const/16 v1, 0x5e

    const/16 v2, 0x32

    const/4 v3, 0x6

    const/16 v4, 0x1c

    filled-new-array {v3, v4, v2, v0, v1}, [I

    move-result-object v50

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x74

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x75

    invoke-direct {v2, v3, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v0, v4, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x2a

    const/16 v4, 0x11

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x1a

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x16

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x17

    const/4 v7, 0x6

    invoke-direct {v5, v7, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1c

    invoke-direct {v2, v6, v3, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x13

    const/16 v8, 0x10

    invoke-direct {v5, v6, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    invoke-direct {v6, v7, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1e

    invoke-direct {v3, v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v49, 0x15

    move-object/from16 v51, v0

    move-object/from16 v52, v1

    move-object/from16 v53, v2

    move-object/from16 v54, v3

    invoke-direct/range {v48 .. v54}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v29, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v28, v29

    const/16 v0, 0x4a

    const/16 v1, 0x62

    const/16 v2, 0x32

    const/4 v3, 0x6

    const/16 v4, 0x1a

    filled-new-array {v3, v4, v2, v0, v1}, [I

    move-result-object v31

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x6f

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x70

    const/4 v4, 0x7

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x1c

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x11

    const/16 v6, 0x2e

    invoke-direct {v2, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x18

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x10

    const/16 v7, 0x19

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v2, v6, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x22

    const/16 v7, 0xd

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v30, 0x16

    move-object/from16 v32, v0

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    invoke-direct/range {v29 .. v35}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v48, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v29, v48

    const/16 v0, 0x4a

    const/16 v1, 0x66

    const/16 v2, 0x36

    const/4 v3, 0x6

    const/16 v4, 0x1e

    filled-new-array {v3, v4, v2, v0, v1}, [I

    move-result-object v50

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x79

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x7a

    const/4 v6, 0x5

    invoke-direct {v2, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v0, v4, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x2f

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x30

    const/16 v5, 0xe

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0xb

    const/16 v6, 0x18

    invoke-direct {v3, v4, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x19

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v2, v6, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x10

    const/16 v8, 0xf

    invoke-direct {v4, v7, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    invoke-direct {v8, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v3, v6, v4, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v49, 0x17

    move-object/from16 v51, v0

    move-object/from16 v52, v1

    move-object/from16 v53, v2

    move-object/from16 v54, v3

    invoke-direct/range {v48 .. v54}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v56, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v30, v56

    const/16 v0, 0x50

    const/16 v1, 0x6a

    const/16 v2, 0x36

    const/4 v3, 0x6

    const/16 v4, 0x1c

    filled-new-array {v3, v4, v2, v0, v1}, [I

    move-result-object v58

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x75

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x76

    const/4 v5, 0x4

    invoke-direct {v2, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1e

    invoke-direct {v0, v4, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x2d

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0xe

    const/16 v5, 0x2e

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0xb

    const/16 v5, 0x18

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x10

    const/16 v6, 0x19

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v2, v6, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    invoke-direct {v4, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x11

    const/4 v8, 0x2

    invoke-direct {v5, v8, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v57, 0x18

    move-object/from16 v59, v0

    move-object/from16 v60, v1

    move-object/from16 v61, v2

    move-object/from16 v62, v3

    invoke-direct/range {v56 .. v62}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v48, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v31, v48

    const/16 v0, 0x54

    const/16 v1, 0x6e

    const/16 v2, 0x20

    const/16 v3, 0x3a

    const/4 v4, 0x6

    filled-new-array {v4, v2, v3, v0, v1}, [I

    move-result-object v50

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x8

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x6b

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x1a

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x8

    const/16 v4, 0x2f

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x30

    const/16 v5, 0xd

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v4, 0x7

    const/16 v5, 0x18

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x16

    const/16 v6, 0x19

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v2, v6, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0xf

    invoke-direct {v4, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x10

    const/16 v8, 0xd

    invoke-direct {v5, v8, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v49, 0x19

    move-object/from16 v51, v0

    move-object/from16 v52, v1

    move-object/from16 v53, v2

    move-object/from16 v54, v3

    invoke-direct/range {v48 .. v54}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v56, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v32, v56

    const/16 v0, 0x56

    const/16 v1, 0x72

    const/16 v2, 0x3a

    const/4 v3, 0x6

    const/16 v4, 0x1e

    filled-new-array {v3, v4, v2, v0, v1}, [I

    move-result-object v58

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x72

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x73

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x1c

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x13

    const/16 v5, 0x2e

    invoke-direct {v2, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v5, 0x4

    const/16 v6, 0x2f

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v1, v3, v2, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x16

    invoke-direct {v4, v3, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x17

    const/4 v7, 0x6

    invoke-direct {v5, v7, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v2, v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x21

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x11

    const/4 v7, 0x4

    invoke-direct {v5, v7, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v57, 0x1a

    move-object/from16 v59, v0

    move-object/from16 v60, v1

    move-object/from16 v61, v2

    move-object/from16 v62, v3

    invoke-direct/range {v56 .. v62}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v48, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v33, v48

    const/16 v0, 0x5a

    const/16 v1, 0x76

    const/16 v2, 0x22

    const/16 v3, 0x3e

    const/4 v4, 0x6

    filled-new-array {v4, v2, v3, v0, v1}, [I

    move-result-object v50

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v2, 0x8

    const/16 v3, 0x7a

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x7b

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x1e

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x2d

    const/16 v4, 0x16

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x2e

    const/4 v5, 0x3

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x8

    const/16 v5, 0x17

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x1a

    const/16 v6, 0x18

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1e

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0xc

    const/16 v7, 0xf

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x10

    const/16 v8, 0x1c

    invoke-direct {v6, v8, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v3, v5, v4, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v49, 0x1b

    move-object/from16 v51, v0

    move-object/from16 v52, v1

    move-object/from16 v53, v2

    move-object/from16 v54, v3

    invoke-direct/range {v48 .. v54}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v56, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v34, v56

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x75

    const/4 v4, 0x3

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x76

    const/16 v6, 0xa

    invoke-direct {v3, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1e

    invoke-direct {v0, v5, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x2d

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x17

    const/16 v6, 0x2e

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x18

    const/4 v6, 0x4

    invoke-direct {v4, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x1f

    const/16 v7, 0x19

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0xb

    const/16 v8, 0xf

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v8, 0x1f

    move-object/from16 v48, v9

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v6, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v57, 0x1c

    move-object/from16 v58, v1

    move-object/from16 v59, v0

    move-object/from16 v60, v2

    move-object/from16 v61, v3

    move-object/from16 v62, v4

    invoke-direct/range {v56 .. v62}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v58, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v35, v58

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x74

    const/4 v4, 0x7

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x75

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1e

    invoke-direct {v0, v5, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x15

    const/16 v6, 0x2d

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x2e

    invoke-direct {v5, v4, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1c

    invoke-direct {v2, v4, v3, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x17

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x25

    const/16 v7, 0x18

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x13

    const/16 v8, 0xf

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v8, 0x10

    const/16 v9, 0x1a

    invoke-direct {v7, v9, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v6, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v59, 0x1d

    move-object/from16 v60, v1

    move-object/from16 v61, v0

    move-object/from16 v62, v2

    move-object/from16 v63, v3

    move-object/from16 v64, v4

    invoke-direct/range {v58 .. v64}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v60, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v36, v60

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x73

    const/4 v4, 0x5

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x74

    const/16 v5, 0xa

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1e

    invoke-direct {v0, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x13

    const/16 v6, 0x2f

    invoke-direct {v3, v4, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x30

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0xf

    const/16 v6, 0x18

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x19

    invoke-direct {v6, v7, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v8, 0x1e

    invoke-direct {v3, v8, v4, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v9, 0x17

    invoke-direct {v6, v9, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v9, 0x10

    invoke-direct {v5, v7, v9}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v8, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v61, 0x1e

    move-object/from16 v62, v1

    move-object/from16 v63, v0

    move-object/from16 v64, v2

    move-object/from16 v65, v3

    move-object/from16 v66, v4

    invoke-direct/range {v60 .. v66}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v62, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v37, v62

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x73

    const/16 v4, 0xd

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x74

    const/4 v5, 0x3

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1e

    invoke-direct {v0, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v4, 0x2

    const/16 v5, 0x2e

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x1d

    const/16 v6, 0x2f

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x2a

    const/16 v6, 0x18

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v6, 0x1

    const/16 v7, 0x19

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x17

    const/16 v8, 0xf

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v8, 0x10

    const/16 v9, 0x1c

    invoke-direct {v7, v9, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v6, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v63, 0x1f

    move-object/from16 v64, v1

    move-object/from16 v65, v0

    move-object/from16 v66, v2

    move-object/from16 v67, v3

    move-object/from16 v68, v4

    invoke-direct/range {v62 .. v68}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v64, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v38, v64

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x73

    const/16 v4, 0x11

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v3, 0x1e

    invoke-direct {v0, v3, v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0xa

    const/16 v5, 0x2e

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x17

    const/16 v7, 0x2f

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1c

    invoke-direct {v2, v6, v3, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x18

    invoke-direct {v5, v4, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x23

    const/16 v7, 0x19

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v3, v6, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x13

    const/16 v8, 0xf

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v8, 0x23

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v6, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v65, 0x20

    move-object/from16 v66, v1

    move-object/from16 v67, v0

    move-object/from16 v68, v2

    move-object/from16 v69, v3

    move-object/from16 v70, v4

    invoke-direct/range {v64 .. v70}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v56, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v39, v56

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_5

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x73

    const/16 v4, 0x11

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x74

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1e

    invoke-direct {v0, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0xe

    const/16 v5, 0x2e

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x15

    const/16 v6, 0x2f

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x1d

    const/16 v6, 0x18

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x13

    const/16 v7, 0x19

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0xb

    const/16 v8, 0xf

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v8, 0x10

    const/16 v9, 0x2e

    invoke-direct {v7, v9, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v6, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v57, 0x21

    move-object/from16 v58, v1

    move-object/from16 v59, v0

    move-object/from16 v60, v2

    move-object/from16 v61, v3

    move-object/from16 v62, v4

    invoke-direct/range {v56 .. v62}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v58, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v40, v58

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_6

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x73

    const/16 v5, 0xd

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x74

    invoke-direct {v4, v0, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v0, 0x1e

    invoke-direct {v2, v0, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0xe

    const/16 v5, 0x2e

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x17

    const/16 v6, 0x2f

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1c

    invoke-direct {v0, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x2c

    const/16 v6, 0x18

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v6, 0x7

    const/16 v7, 0x19

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x3b

    const/16 v8, 0x10

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v8, 0x1

    const/16 v9, 0x11

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v6, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v59, 0x22

    move-object/from16 v60, v1

    move-object/from16 v61, v2

    move-object/from16 v62, v0

    move-object/from16 v63, v3

    move-object/from16 v64, v4

    invoke-direct/range {v58 .. v64}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v60, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v41, v60

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_7

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0xc

    const/16 v5, 0x79

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x7a

    invoke-direct {v4, v0, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v0, 0x1e

    invoke-direct {v2, v0, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0xc

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x30

    const/16 v6, 0x1a

    invoke-direct {v4, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1c

    invoke-direct {v0, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x27

    const/16 v6, 0x18

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0xe

    const/16 v7, 0x19

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x16

    const/16 v8, 0xf

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v8, 0x29

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v6, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v61, 0x23

    move-object/from16 v62, v1

    move-object/from16 v63, v2

    move-object/from16 v64, v0

    move-object/from16 v65, v3

    move-object/from16 v66, v4

    invoke-direct/range {v60 .. v66}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v62, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v42, v62

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_8

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x79

    const/4 v4, 0x6

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x7a

    const/16 v6, 0xe

    invoke-direct {v3, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1e

    invoke-direct {v0, v5, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x22

    const/16 v6, 0x30

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x18

    const/16 v6, 0x2e

    invoke-direct {v4, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0xa

    const/16 v7, 0x19

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0xf

    const/4 v8, 0x2

    invoke-direct {v5, v8, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v8, 0x40

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v6, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v63, 0x24

    move-object/from16 v64, v1

    move-object/from16 v65, v0

    move-object/from16 v66, v2

    move-object/from16 v67, v3

    move-object/from16 v68, v4

    invoke-direct/range {v62 .. v68}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v64, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v43, v64

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_9

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x7a

    const/16 v4, 0x11

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x7b

    const/4 v5, 0x4

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1e

    invoke-direct {v0, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x1d

    const/16 v5, 0x2e

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0xe

    const/16 v6, 0x2f

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x31

    const/16 v6, 0x18

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0xa

    const/16 v8, 0x19

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v7, 0x1e

    invoke-direct {v3, v7, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v8, 0xf

    invoke-direct {v5, v6, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v6, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v8, 0x10

    const/16 v9, 0x2e

    invoke-direct {v6, v9, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v7, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v65, 0x25

    move-object/from16 v66, v1

    move-object/from16 v67, v0

    move-object/from16 v68, v2

    move-object/from16 v69, v3

    move-object/from16 v70, v4

    invoke-direct/range {v64 .. v70}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v56, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v44, v56

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_a

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x7a

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x12

    const/16 v5, 0x7b

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1e

    invoke-direct {v0, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0xd

    const/16 v5, 0x2e

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x20

    const/16 v6, 0x2f

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x30

    const/16 v6, 0x18

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0xe

    const/16 v7, 0x19

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x2a

    const/16 v8, 0xf

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v8, 0x20

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v6, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v57, 0x26

    move-object/from16 v58, v1

    move-object/from16 v59, v0

    move-object/from16 v60, v2

    move-object/from16 v61, v3

    move-object/from16 v62, v4

    invoke-direct/range {v56 .. v62}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v58, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v45, v58

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_b

    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x14

    const/16 v4, 0x75

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x76

    const/4 v5, 0x4

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1e

    invoke-direct {v0, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x28

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x30

    const/4 v6, 0x7

    invoke-direct {v4, v6, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x2b

    const/16 v6, 0x18

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x16

    const/16 v7, 0x19

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0xa

    const/16 v8, 0xf

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v8, 0x43

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v6, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v59, 0x27

    move-object/from16 v60, v1

    move-object/from16 v61, v0

    move-object/from16 v62, v2

    move-object/from16 v63, v3

    move-object/from16 v64, v4

    invoke-direct/range {v58 .. v64}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    new-instance v60, Lcom/itextpdf/barcodes/qrcode/Version;

    move-object/from16 v46, v60

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    new-instance v1, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v3, 0x76

    const/16 v4, 0x13

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x77

    const/4 v5, 0x6

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v2, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v4, 0x12

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x1f

    const/16 v6, 0x30

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v3, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v5, 0x22

    const/16 v6, 0x18

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v6, 0x22

    const/16 v7, 0x19

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    const/16 v6, 0x1e

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    new-instance v4, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    new-instance v5, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v7, 0x14

    const/16 v8, 0xf

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/16 v8, 0x3d

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;-><init>(II)V

    invoke-direct {v4, v6, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;-><init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V

    const/16 v61, 0x28

    move-object/from16 v62, v0

    move-object/from16 v63, v1

    move-object/from16 v64, v2

    move-object/from16 v65, v3

    move-object/from16 v66, v4

    invoke-direct/range {v60 .. v66}, Lcom/itextpdf/barcodes/qrcode/Version;-><init>(I[ILcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;)V

    move-object/from16 v7, v47

    move-object/from16 v9, v48

    move-object/from16 v8, v55

    filled-new-array/range {v7 .. v46}, [Lcom/itextpdf/barcodes/qrcode/Version;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
    .end array-data

    :array_4
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
    .end array-data

    :array_7
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method static decodeVersionInformation(I)Lcom/itextpdf/barcodes/qrcode/Version;
    .locals 5

    const v0, 0x7fffffff

    const/4 v1, 0x0

    move v2, v1

    .line 167
    :goto_0
    sget-object v3, Lcom/itextpdf/barcodes/qrcode/Version;->VERSION_DECODE_INFO:[I

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 168
    aget v3, v3, v1

    if-ne v3, p0, :cond_0

    add-int/lit8 v1, v1, 0x7

    .line 171
    invoke-static {v1}, Lcom/itextpdf/barcodes/qrcode/Version;->getVersionForNumber(I)Lcom/itextpdf/barcodes/qrcode/Version;

    move-result-object p0

    return-object p0

    .line 175
    :cond_0
    invoke-static {p0, v3}, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->numBitsDiffering(II)I

    move-result v3

    if-ge v3, v0, :cond_1

    add-int/lit8 v0, v1, 0x7

    move v2, v0

    move v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    if-gt v0, p0, :cond_3

    .line 184
    invoke-static {v2}, Lcom/itextpdf/barcodes/qrcode/Version;->getVersionForNumber(I)Lcom/itextpdf/barcodes/qrcode/Version;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getProvisionalVersionForDimension(I)Lcom/itextpdf/barcodes/qrcode/Version;
    .locals 2

    .line 138
    rem-int/lit8 v0, p0, 0x4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p0, p0, -0x11

    shr-int/lit8 p0, p0, 0x2

    .line 142
    invoke-static {p0}, Lcom/itextpdf/barcodes/qrcode/Version;->getVersionForNumber(I)Lcom/itextpdf/barcodes/qrcode/Version;

    move-result-object p0

    return-object p0

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getVersionForNumber(I)Lcom/itextpdf/barcodes/qrcode/Version;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x28

    if-gt p0, v1, :cond_0

    .line 156
    sget-object v1, Lcom/itextpdf/barcodes/qrcode/Version;->VERSIONS:[Lcom/itextpdf/barcodes/qrcode/Version;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 154
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method buildFunctionPattern()Lcom/itextpdf/barcodes/qrcode/BitMatrix;
    .locals 10

    .line 195
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/Version;->getDimensionForVersion()I

    move-result v0

    .line 196
    new-instance v1, Lcom/itextpdf/barcodes/qrcode/BitMatrix;

    invoke-direct {v1, v0}, Lcom/itextpdf/barcodes/qrcode/BitMatrix;-><init>(I)V

    const/4 v2, 0x0

    const/16 v3, 0x9

    .line 199
    invoke-virtual {v1, v2, v2, v3, v3}, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v4, v0, -0x8

    const/16 v5, 0x8

    .line 201
    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->setRegion(IIII)V

    .line 203
    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->setRegion(IIII)V

    .line 206
    iget-object v4, p0, Lcom/itextpdf/barcodes/qrcode/Version;->alignmentPatternCenters:[I

    array-length v4, v4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_4

    .line 208
    iget-object v6, p0, Lcom/itextpdf/barcodes/qrcode/Version;->alignmentPatternCenters:[I

    aget v6, v6, v5

    add-int/lit8 v6, v6, -0x2

    move v7, v2

    :goto_1
    if-ge v7, v4, :cond_3

    if-nez v5, :cond_0

    if-eqz v7, :cond_2

    add-int/lit8 v8, v4, -0x1

    if-eq v7, v8, :cond_2

    :cond_0
    add-int/lit8 v8, v4, -0x1

    if-ne v5, v8, :cond_1

    if-nez v7, :cond_1

    goto :goto_2

    .line 214
    :cond_1
    iget-object v8, p0, Lcom/itextpdf/barcodes/qrcode/Version;->alignmentPatternCenters:[I

    aget v8, v8, v7

    add-int/lit8 v8, v8, -0x2

    const/4 v9, 0x5

    invoke-virtual {v1, v8, v6, v9, v9}, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->setRegion(IIII)V

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v0, -0x11

    const/4 v5, 0x6

    const/4 v6, 0x1

    .line 219
    invoke-virtual {v1, v5, v3, v6, v4}, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->setRegion(IIII)V

    .line 221
    invoke-virtual {v1, v3, v5, v4, v6}, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->setRegion(IIII)V

    .line 223
    iget v3, p0, Lcom/itextpdf/barcodes/qrcode/Version;->versionNumber:I

    if-le v3, v5, :cond_5

    add-int/lit8 v0, v0, -0xb

    const/4 v3, 0x3

    .line 225
    invoke-virtual {v1, v0, v2, v3, v5}, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->setRegion(IIII)V

    .line 227
    invoke-virtual {v1, v2, v0, v5, v3}, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->setRegion(IIII)V

    :cond_5
    return-object v1
.end method

.method public getAlignmentPatternCenters()[I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/Version;->alignmentPatternCenters:[I

    return-object v0
.end method

.method public getDimensionForVersion()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/Version;->versionNumber:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getECBlocksForLevel(Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;)Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/Version;->ecBlocks:[Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTotalCodewords()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/Version;->totalCodewords:I

    return v0
.end method

.method public getVersionNumber()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/Version;->versionNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 307
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/Version;->versionNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
