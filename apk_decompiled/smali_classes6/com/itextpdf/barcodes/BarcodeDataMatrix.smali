.class public Lcom/itextpdf/barcodes/BarcodeDataMatrix;
.super Lcom/itextpdf/barcodes/Barcode2D;
.source "BarcodeDataMatrix.java"


# static fields
.field public static final DEFAULT_DATA_MATRIX_ENCODING:Ljava/lang/String; = "iso-8859-1"

.field public static final DM_ASCII:I = 0x1

.field public static final DM_AUTO:I = 0x0

.field public static final DM_B256:I = 0x4

.field public static final DM_C40:I = 0x2

.field public static final DM_EDIFACT:I = 0x6

.field public static final DM_ERROR_EXTENSION:I = 0x5

.field public static final DM_ERROR_INVALID_SQUARE:I = 0x3

.field public static final DM_ERROR_TEXT_TOO_BIG:I = 0x1

.field public static final DM_EXTENSION:I = 0x20

.field public static final DM_NO_ERROR:I = 0x0

.field public static final DM_RAW:I = 0x7

.field public static final DM_TEST:I = 0x40

.field public static final DM_TEXT:I = 0x3

.field public static final DM_X12:I = 0x5

.field private static final EXTENDED_ASCII:B = -0x15t

.field private static final LATCH_B256:B = -0x19t

.field private static final LATCH_C40:B = -0x1at

.field private static final LATCH_EDIFACT:B = -0x10t

.field private static final LATCH_TEXT:B = -0x11t

.field private static final LATCH_X12:B = -0x12t

.field private static final PADDING:B = -0x7ft

.field private static final UNLATCH:B = -0x2t

.field private static final X12:Ljava/lang/String; = "\r*> 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final dmSizes:[Lcom/itextpdf/barcodes/dmcode/DmParams;


# instance fields
.field private encoding:Ljava/lang/String;

.field private extOut:I

.field private f:[[I

.field private height:I

.field private image:[B

.field private options:I

.field private place:[S

.field private switchMode:[[I

.field private width:I

.field private ws:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x1e

    .line 140
    new-array v0, v0, [Lcom/itextpdf/barcodes/dmcode/DmParams;

    new-instance v9, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/4 v6, 0x3

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v16, 0x5

    const/16 v17, 0x7

    const/16 v11, 0xc

    const/16 v12, 0xc

    const/16 v13, 0xc

    const/16 v14, 0xc

    const/4 v15, 0x5

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/4 v9, 0x5

    const/4 v10, 0x7

    const/16 v4, 0x8

    const/16 v5, 0x12

    const/16 v6, 0x8

    const/16 v7, 0x12

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x8

    const/16 v10, 0xa

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/16 v6, 0xe

    const/16 v7, 0xe

    const/16 v8, 0x8

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0xa

    const/16 v10, 0xb

    const/16 v4, 0x8

    const/16 v5, 0x20

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/16 v8, 0xa

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0xc

    const/16 v10, 0xc

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v8, 0xc

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x10

    const/16 v10, 0xe

    const/16 v4, 0xc

    const/16 v5, 0x1a

    const/16 v6, 0xc

    const/16 v7, 0x1a

    const/16 v8, 0x10

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x12

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/16 v6, 0x12

    const/16 v7, 0x12

    const/16 v8, 0x12

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x16

    const/16 v10, 0x12

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/16 v6, 0x14

    const/16 v7, 0x14

    const/16 v8, 0x16

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0xc

    const/16 v5, 0x24

    const/16 v6, 0xc

    const/16 v7, 0x12

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x1e

    const/16 v10, 0x14

    const/16 v4, 0x16

    const/16 v5, 0x16

    const/16 v6, 0x16

    const/16 v7, 0x16

    const/16 v8, 0x1e

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x20

    const/16 v10, 0x18

    const/16 v4, 0x10

    const/16 v5, 0x24

    const/16 v6, 0x10

    const/16 v7, 0x12

    const/16 v8, 0x20

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x24

    const/16 v4, 0x18

    const/16 v5, 0x18

    const/16 v6, 0x18

    const/16 v7, 0x18

    const/16 v8, 0x24

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x2c

    const/16 v10, 0x1c

    const/16 v4, 0x1a

    const/16 v5, 0x1a

    const/16 v6, 0x1a

    const/16 v7, 0x1a

    const/16 v8, 0x2c

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x31

    const/16 v4, 0x10

    const/16 v5, 0x30

    const/16 v6, 0x10

    const/16 v7, 0x18

    const/16 v8, 0x31

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x3e

    const/16 v10, 0x24

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/16 v7, 0x10

    const/16 v8, 0x3e

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x56

    const/16 v10, 0x2a

    const/16 v4, 0x24

    const/16 v5, 0x24

    const/16 v6, 0x12

    const/16 v7, 0x12

    const/16 v8, 0x56

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x72

    const/16 v10, 0x30

    const/16 v4, 0x28

    const/16 v5, 0x28

    const/16 v6, 0x14

    const/16 v7, 0x14

    const/16 v8, 0x72

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x90

    const/16 v10, 0x38

    const/16 v4, 0x2c

    const/16 v5, 0x2c

    const/16 v6, 0x16

    const/16 v7, 0x16

    const/16 v8, 0x90

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0xae

    const/16 v10, 0x44

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x18

    const/16 v7, 0x18

    const/16 v8, 0xae

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x66

    const/16 v10, 0x2a

    const/16 v4, 0x34

    const/16 v5, 0x34

    const/16 v6, 0x1a

    const/16 v7, 0x1a

    const/16 v8, 0xcc

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x8c

    const/16 v10, 0x38

    const/16 v4, 0x40

    const/16 v5, 0x40

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/16 v8, 0x118

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x5c

    const/16 v10, 0x24

    const/16 v4, 0x48

    const/16 v5, 0x48

    const/16 v6, 0x12

    const/16 v7, 0x12

    const/16 v8, 0x170

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x72

    const/16 v10, 0x30

    const/16 v4, 0x50

    const/16 v5, 0x50

    const/16 v6, 0x14

    const/16 v7, 0x14

    const/16 v8, 0x1c8

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x90

    const/16 v10, 0x38

    const/16 v4, 0x58

    const/16 v5, 0x58

    const/16 v6, 0x16

    const/16 v7, 0x16

    const/16 v8, 0x240

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0xae

    const/16 v10, 0x44

    const/16 v4, 0x60

    const/16 v5, 0x60

    const/16 v6, 0x18

    const/16 v7, 0x18

    const/16 v8, 0x2b8

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x88

    const/16 v10, 0x38

    const/16 v4, 0x68

    const/16 v5, 0x68

    const/16 v6, 0x1a

    const/16 v7, 0x1a

    const/16 v8, 0x330

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0xaf

    const/16 v10, 0x44

    const/16 v4, 0x78

    const/16 v5, 0x78

    const/16 v6, 0x14

    const/16 v7, 0x14

    const/16 v8, 0x41a

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0xa3

    const/16 v10, 0x3e

    const/16 v4, 0x84

    const/16 v5, 0x84

    const/16 v6, 0x16

    const/16 v7, 0x16

    const/16 v8, 0x518

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v9, 0x9c

    const/16 v4, 0x90

    const/16 v5, 0x90

    const/16 v6, 0x18

    const/16 v7, 0x18

    const/16 v8, 0x616

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->dmSizes:[Lcom/itextpdf/barcodes/dmcode/DmParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/itextpdf/barcodes/Barcode2D;-><init>()V

    .line 190
    const-string v0, "iso-8859-1"

    iput-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->encoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 193
    invoke-direct {p0}, Lcom/itextpdf/barcodes/Barcode2D;-><init>()V

    .line 194
    const-string v0, "iso-8859-1"

    iput-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->encoding:Ljava/lang/String;

    .line 195
    invoke-virtual {p0, p1}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setCode(Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/itextpdf/barcodes/Barcode2D;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->encoding:Ljava/lang/String;

    .line 200
    invoke-virtual {p0, p1}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setCode(Ljava/lang/String;)I

    return-void
.end method

.method private C40OrTextEncodation([BII[BIIZIII)I
    .locals 22

    move/from16 v0, p5

    move/from16 v1, p8

    move/from16 v2, p9

    const/4 v3, 0x0

    if-nez p3, :cond_0

    return v3

    :cond_0
    if-eqz p7, :cond_1

    .line 1017
    const-string v4, " 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    const-string v5, "`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

    goto :goto_0

    .line 1020
    :cond_1
    const-string v4, " 0123456789abcdefghijklmnopqrstuvwxyz"

    const-string v5, "`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\u007f"

    :goto_0
    if-eqz p7, :cond_2

    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    const/4 v7, 0x3

    :goto_1
    const/4 v8, -0x2

    const/16 v9, 0x7f

    const/4 v11, 0x1

    if-ne v2, v7, :cond_1c

    add-int/lit8 v12, v1, -0x1

    :goto_2
    move-object/from16 v13, p0

    if-lez v12, :cond_3

    .line 1027
    iget-object v14, v13, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    add-int/lit8 v15, v7, -0x1

    aget-object v14, v14, v15

    aget v14, v14, v12

    if-ne v14, v7, :cond_3

    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_3
    sub-int v12, v1, v12

    const/4 v14, 0x5

    if-lt v12, v14, :cond_1b

    move v15, v3

    move v14, v12

    :goto_3
    if-lez v14, :cond_5

    sub-int v16, p2, v14

    .line 1034
    aget-byte v3, p1, v16

    and-int/lit16 v3, v3, 0xff

    if-le v3, v9, :cond_4

    add-int/lit8 v15, v15, 0x2

    goto :goto_4

    :cond_4
    add-int/lit8 v15, v15, 0x1

    :goto_4
    add-int/lit8 v14, v14, -0x1

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    move v3, v11

    :goto_5
    if-gt v3, v15, :cond_8

    if-le v3, v0, :cond_6

    goto :goto_6

    :cond_6
    sub-int v14, v0, v3

    .line 1043
    aget-byte v10, p4, v14

    if-ne v10, v8, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    const/4 v14, -0x1

    :goto_7
    if-ltz v14, :cond_b

    add-int/lit8 v3, v14, 0x1

    const/4 v12, 0x0

    :goto_8
    if-ge v3, v0, :cond_b

    .line 1051
    aget-byte v10, p4, v3

    const/16 v15, -0x15

    if-ne v10, v15, :cond_9

    add-int/lit8 v3, v3, 0x1

    .line 1053
    :cond_9
    aget-byte v10, p4, v3

    const/16 v15, -0x7f

    if-lt v10, v15, :cond_a

    const/16 v15, -0x1b

    if-gt v10, v15, :cond_a

    add-int/lit8 v12, v12, 0x1

    :cond_a
    add-int/2addr v12, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_b
    move v10, v11

    const/4 v3, 0x0

    :goto_9
    if-lez v12, :cond_1a

    move v10, v12

    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_a
    if-ltz v10, :cond_12

    sub-int v19, p2, v10

    .line 1064
    aget-byte v8, p1, v19

    and-int/lit16 v8, v8, 0xff

    if-le v8, v9, :cond_c

    add-int/lit8 v8, v8, -0x80

    add-int/lit8 v18, v18, 0x2

    :cond_c
    int-to-char v6, v8

    .line 1069
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_d

    move v6, v11

    goto :goto_b

    :cond_d
    const/4 v6, 0x2

    :goto_b
    add-int v18, v18, v6

    if-le v8, v9, :cond_e

    add-int/lit8 v15, v15, 0x2

    goto :goto_d

    :cond_e
    if-lez v10, :cond_10

    .line 1073
    invoke-static {v8}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v6

    if-eqz v6, :cond_10

    add-int/lit8 v19, v19, 0x1

    aget-byte v6, p1, v19

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1074
    aget-byte v3, p1, v19

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_f

    move v3, v11

    goto :goto_c

    :cond_f
    const/4 v3, 0x2

    :goto_c
    add-int v18, v18, v3

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v3, v15, 0x1

    :cond_10
    add-int/lit8 v15, v15, 0x1

    :goto_d
    if-ne v10, v11, :cond_11

    move v3, v15

    :cond_11
    add-int/lit8 v10, v10, -0x1

    const/4 v8, -0x2

    goto :goto_a

    :cond_12
    if-ltz v14, :cond_14

    sub-int v6, v0, v15

    if-eq v6, v14, :cond_13

    goto :goto_e

    :cond_13
    const/4 v10, 0x0

    goto :goto_f

    :cond_14
    :goto_e
    move v10, v11

    .line 1084
    :goto_f
    rem-int/lit8 v6, v18, 0x3

    if-nez v6, :cond_18

    div-int/lit8 v18, v18, 0x3

    const/4 v6, 0x2

    mul-int/lit8 v18, v18, 0x2

    if-eqz v10, :cond_15

    const/4 v6, 0x2

    goto :goto_10

    :cond_15
    const/4 v6, 0x0

    :goto_10
    add-int v6, v18, v6

    if-ge v6, v15, :cond_18

    add-int/lit8 v6, v12, 0x1

    sub-int v8, p2, v12

    if-eqz v10, :cond_16

    move v12, v3

    goto :goto_11

    :cond_16
    add-int/lit8 v12, v3, 0x1

    :goto_11
    sub-int/2addr v0, v12

    if-eqz v10, :cond_17

    goto :goto_12

    :cond_17
    add-int/lit8 v3, v3, 0x1

    :goto_12
    add-int v3, p6, v3

    move v12, v10

    const/4 v14, 0x0

    move v10, v3

    move v3, v0

    move v0, v6

    const/4 v6, -0x1

    goto :goto_13

    :cond_18
    sub-int v6, p2, v12

    .line 1093
    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_19

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v6

    if-eqz v6, :cond_19

    add-int/lit8 v12, v12, -0x1

    :cond_19
    const/4 v6, -0x1

    add-int/2addr v12, v6

    const/4 v8, -0x2

    goto/16 :goto_9

    :cond_1a
    const/4 v6, -0x1

    move/from16 v8, p2

    move v3, v0

    move v12, v10

    move v14, v11

    move/from16 v0, p3

    move/from16 v10, p6

    goto :goto_13

    :cond_1b
    const/4 v6, -0x1

    move/from16 v8, p2

    move/from16 v10, p6

    move v3, v0

    move v12, v11

    move v14, v12

    move/from16 v0, p3

    :goto_13
    move/from16 v21, v10

    move v10, v3

    move v3, v12

    move/from16 v12, v21

    goto :goto_15

    :cond_1c
    const/4 v6, -0x1

    move-object/from16 v13, p0

    move/from16 v8, p2

    move/from16 v12, p6

    move v10, v0

    move v3, v11

    if-eq v1, v6, :cond_1d

    move v14, v3

    goto :goto_14

    :cond_1d
    const/4 v14, 0x0

    :goto_14
    move/from16 v0, p3

    :goto_15
    if-gez v10, :cond_1e

    return v6

    :cond_1e
    if-eqz v14, :cond_20

    if-ne v2, v7, :cond_1f

    move v7, v11

    goto :goto_16

    :cond_1f
    const/4 v7, -0x1

    :goto_16
    const/4 v9, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move-object/from16 v4, p4

    move v5, v10

    move v6, v12

    move v8, v9

    move/from16 v9, p10

    .line 1104
    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    return v0

    :cond_20
    if-eqz v3, :cond_22

    if-eqz p7, :cond_21

    const/16 v2, -0x1a

    goto :goto_17

    :cond_21
    const/16 v2, -0x11

    .line 1107
    :goto_17
    aput-byte v2, p4, v10

    move v2, v11

    goto :goto_18

    :cond_22
    const/4 v2, 0x0

    :goto_18
    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0xa

    .line 1109
    new-array v3, v3, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_19
    if-ge v6, v0, :cond_29

    .line 1114
    rem-int/lit8 v18, v7, 0x3

    if-nez v18, :cond_23

    move v14, v6

    move v15, v7

    :cond_23
    add-int/lit8 v18, v6, 0x1

    add-int/2addr v6, v8

    .line 1118
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    if-le v6, v9, :cond_24

    add-int/lit8 v6, v6, -0x80

    add-int/lit8 v19, v7, 0x1

    .line 1121
    aput v11, v3, v7

    add-int/lit8 v7, v7, 0x2

    const/16 v20, 0x1e

    .line 1122
    aput v20, v3, v19

    :cond_24
    int-to-char v9, v6

    .line 1124
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    if-ltz v20, :cond_25

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v20, v20, 0x3

    .line 1126
    aput v20, v3, v7

    move v7, v6

    const/4 v11, 0x0

    goto :goto_1a

    :cond_25
    const/16 v11, 0x20

    if-ge v6, v11, :cond_26

    add-int/lit8 v9, v7, 0x1

    const/4 v11, 0x0

    .line 1128
    aput v11, v3, v7

    add-int/lit8 v7, v7, 0x2

    .line 1129
    aput v6, v3, v9

    goto :goto_1a

    :cond_26
    const/4 v11, 0x0

    .line 1130
    const-string v6, "!\"#$%&\'()*+,-./:;<=>?@[\\]^_"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_27

    add-int/lit8 v9, v7, 0x1

    const/16 v17, 0x1

    .line 1131
    aput v17, v3, v7

    add-int/lit8 v7, v7, 0x2

    .line 1132
    aput v6, v3, v9

    goto :goto_1a

    .line 1133
    :cond_27
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_28

    add-int/lit8 v9, v7, 0x1

    const/16 v17, 0x2

    .line 1134
    aput v17, v3, v7

    add-int/lit8 v7, v7, 0x2

    .line 1135
    aput v6, v3, v9

    :cond_28
    :goto_1a
    move/from16 v6, v18

    const/16 v9, 0x7f

    const/4 v11, 0x1

    goto :goto_19

    :cond_29
    const/4 v11, 0x0

    .line 1138
    rem-int/lit8 v4, v7, 0x3

    if-eqz v4, :cond_2a

    move v6, v14

    move v7, v15

    .line 1142
    :cond_2a
    div-int/lit8 v4, v7, 0x3

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    add-int/lit8 v5, v12, -0x2

    if-le v4, v5, :cond_2b

    const/4 v4, -0x1

    return v4

    :cond_2b
    :goto_1b
    if-ge v11, v7, :cond_2c

    .line 1147
    aget v4, v3, v11

    mul-int/lit16 v4, v4, 0x640

    add-int/lit8 v5, v11, 0x1

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0x28

    add-int/2addr v4, v5

    add-int/lit8 v5, v11, 0x2

    aget v5, v3, v5

    add-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/2addr v4, v5

    add-int/lit8 v9, v2, 0x1

    add-int v14, v10, v2

    .line 1148
    div-int/lit16 v15, v4, 0x100

    int-to-byte v15, v15

    aput-byte v15, p4, v14

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v9, v10

    int-to-byte v4, v4

    .line 1149
    aput-byte v4, p4, v9

    add-int/lit8 v11, v11, 0x3

    goto :goto_1b

    :cond_2c
    sub-int v3, v12, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_2d

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v10

    const/4 v4, -0x2

    .line 1152
    aput-byte v4, p4, v2

    move v2, v3

    :cond_2d
    if-gez v1, :cond_2e

    if-le v0, v6, :cond_2e

    add-int v3, v8, v6

    sub-int v4, v0, v6

    add-int v5, v10, v2

    sub-int v6, v12, v2

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move-object/from16 v4, p4

    move/from16 v9, p10

    .line 1154
    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    return v0

    :cond_2e
    add-int/2addr v2, v10

    sub-int v2, v2, p10

    return v2
.end method

.method private EdifactEncodation([BII[BIIIIIZ)I
    .locals 34

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v0, p5

    move/from16 v12, p7

    move/from16 v13, p8

    const/4 v14, 0x0

    if-nez p3, :cond_0

    return v14

    :cond_0
    const/16 v15, 0x5f

    const/16 v9, 0x20

    const/16 v8, 0x40

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    if-ne v13, v7, :cond_a

    .line 795
    aget-byte v1, v11, p2

    and-int/lit16 v2, v1, 0xe0

    if-eq v2, v8, :cond_1

    and-int/lit16 v2, v1, 0xe0

    if-ne v2, v9, :cond_a

    :cond_1
    and-int/lit16 v1, v1, 0xff

    if-eq v1, v15, :cond_a

    add-int/lit8 v1, p2, -0x1

    aget-byte v1, v11, v1

    and-int/lit16 v2, v1, 0xe0

    if-eq v2, v8, :cond_2

    and-int/lit16 v2, v1, 0xe0

    if-ne v2, v9, :cond_a

    :cond_2
    and-int/lit16 v1, v1, 0xff

    if-eq v1, v15, :cond_a

    add-int/lit8 v1, v12, -0x1

    :goto_0
    const/4 v2, 0x5

    if-lez v1, :cond_4

    .line 798
    iget-object v3, v10, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    if-ne v3, v7, :cond_4

    sub-int v3, v12, v1

    add-int/2addr v3, v4

    sub-int v3, p2, v3

    .line 799
    aget-byte v3, v11, v3

    and-int/lit16 v14, v3, 0xff

    and-int/lit16 v3, v3, 0xe0

    if-eq v3, v8, :cond_3

    if-ne v3, v9, :cond_4

    :cond_3
    if-eq v14, v15, :cond_4

    add-int/lit8 v1, v1, -0x1

    const/4 v14, 0x0

    goto :goto_0

    .line 805
    :cond_4
    iget-object v3, v10, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    if-eq v3, v6, :cond_6

    if-ne v3, v2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v5

    :cond_6
    :goto_1
    if-lez v3, :cond_7

    move v2, v1

    goto :goto_2

    :cond_7
    move v2, v5

    :goto_2
    if-lez v3, :cond_b

    if-lez v2, :cond_b

    .line 809
    iget-object v14, v10, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    add-int/lit8 v16, v3, -0x1

    aget-object v14, v14, v16

    aget v14, v14, v2

    if-ne v14, v3, :cond_b

    sub-int v14, v12, v2

    add-int/2addr v14, v4

    sub-int v14, p2, v14

    .line 810
    aget-byte v14, v11, v14

    and-int/lit16 v7, v14, 0xff

    and-int/lit16 v14, v14, 0xe0

    if-eq v14, v8, :cond_8

    if-ne v14, v9, :cond_9

    :cond_8
    if-eq v7, v15, :cond_9

    add-int/lit8 v2, v2, -0x1

    const/4 v7, 0x6

    goto :goto_2

    :cond_9
    move v2, v5

    goto :goto_3

    :cond_a
    move v1, v5

    move v2, v1

    move v3, v2

    :cond_b
    :goto_3
    add-int v7, v0, p6

    if-eq v12, v5, :cond_c

    move v14, v4

    goto :goto_4

    :cond_c
    const/4 v14, 0x0

    :goto_4
    const v17, 0x7fffffff

    const/16 v15, 0x9

    const/4 v9, 0x3

    if-ltz v2, :cond_17

    sub-int v2, v12, v2

    add-int/lit8 v8, v2, 0x1

    if-le v8, v15, :cond_17

    .line 828
    div-int/lit8 v1, v8, 0x4

    mul-int/2addr v1, v9

    add-int/2addr v1, v4

    if-nez p10, :cond_10

    .line 829
    array-length v15, v11

    sub-int/2addr v15, v4

    if-eq v12, v15, :cond_d

    if-gez v12, :cond_10

    :cond_d
    rem-int/lit8 v15, v8, 0x4

    if-ge v15, v9, :cond_10

    const/4 v7, 0x0

    .line 831
    :goto_5
    sget-object v5, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->dmSizes:[Lcom/itextpdf/barcodes/dmcode/DmParams;

    array-length v4, v5

    if-ge v7, v4, :cond_f

    .line 832
    aget-object v4, v5, v7

    iget v4, v4, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    add-int v9, v1, v15

    if-lt v4, v9, :cond_e

    .line 833
    aget-object v4, v5, v7

    iget v7, v4, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    goto :goto_6

    :cond_e
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x3

    goto :goto_5

    :cond_f
    move/from16 v7, v17

    :cond_10
    :goto_6
    sub-int v4, v7, v0

    sub-int/2addr v4, v1

    if-gt v4, v6, :cond_11

    .line 838
    rem-int/lit8 v4, v8, 0x4

    if-gt v4, v6, :cond_11

    add-int/2addr v1, v4

    goto :goto_7

    .line 841
    :cond_11
    rem-int/lit8 v4, v8, 0x4

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v1, v5

    const/4 v5, 0x3

    if-ne v4, v5, :cond_12

    add-int/lit8 v1, v1, -0x1

    :cond_12
    :goto_7
    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    :goto_8
    if-ltz v4, :cond_15

    add-int/lit8 v5, v5, 0x1

    .line 847
    aget-byte v9, p4, v4

    if-ne v3, v6, :cond_13

    const/16 v15, -0x1a

    goto :goto_9

    :cond_13
    const/16 v15, -0x12

    :goto_9
    if-ne v9, v15, :cond_14

    goto :goto_a

    :cond_14
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :cond_15
    :goto_a
    if-gt v1, v5, :cond_16

    sub-int v1, p2, v2

    sub-int/2addr v0, v5

    add-int v2, p6, v5

    move/from16 v26, v0

    move v15, v1

    move v9, v2

    move/from16 v27, v7

    move v14, v8

    :goto_b
    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_16
    move/from16 v15, p2

    move/from16 v9, p6

    move/from16 v26, v0

    move/from16 v27, v7

    move v0, v14

    move v14, v8

    goto/16 :goto_14

    :cond_17
    if-ltz v1, :cond_25

    sub-int v1, v12, v1

    add-int/lit8 v2, v1, 0x1

    if-le v2, v15, :cond_25

    .line 859
    div-int/lit8 v3, v2, 0x4

    const/4 v4, 0x3

    mul-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sub-int v4, v7, v0

    sub-int/2addr v4, v3

    if-gt v4, v6, :cond_18

    .line 860
    rem-int/lit8 v4, v2, 0x4

    if-gt v4, v6, :cond_18

    add-int/2addr v3, v4

    const/4 v9, 0x3

    goto :goto_c

    .line 863
    :cond_18
    rem-int/lit8 v4, v2, 0x4

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v3, v5

    const/4 v9, 0x3

    if-ne v4, v9, :cond_19

    add-int/lit8 v3, v3, -0x1

    :cond_19
    :goto_c
    move/from16 v4, p9

    :goto_d
    if-ge v4, v0, :cond_1b

    .line 870
    aget-byte v5, p4, v4

    const/16 v8, -0x10

    if-ne v5, v8, :cond_1a

    sub-int v5, v0, v4

    if-gt v5, v3, :cond_1a

    goto :goto_e

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1b
    const/4 v4, -0x1

    :goto_e
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1e

    sub-int v4, v0, v4

    .line 876
    aget-byte v8, v11, p2

    and-int/lit16 v15, v8, 0xff

    const/16 v5, 0x7f

    if-le v15, v5, :cond_1c

    add-int/lit8 v5, v4, 0x2

    goto/16 :goto_13

    :cond_1c
    and-int/lit16 v5, v8, 0xff

    .line 879
    invoke-static {v5}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, v11, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    add-int/lit8 v5, v0, -0x1

    aget-byte v5, p4, v5

    const/16 v8, 0x31

    if-lt v5, v8, :cond_1d

    const/16 v8, 0x3a

    if-gt v5, v8, :cond_1d

    add-int/lit8 v5, v4, -0x1

    goto :goto_f

    :cond_1d
    move v5, v4

    :goto_f
    const/4 v8, 0x1

    add-int/2addr v5, v8

    goto :goto_13

    :cond_1e
    move v8, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    if-ltz v8, :cond_23

    sub-int v15, p2, v8

    .line 888
    aget-byte v6, v11, v15

    and-int/lit16 v9, v6, 0xff

    move/from16 v26, v2

    const/16 v2, 0x7f

    if-le v9, v2, :cond_1f

    add-int/lit8 v5, v5, 0x2

    :goto_11
    const/4 v2, 0x1

    goto :goto_12

    :cond_1f
    if-lez v8, :cond_21

    and-int/lit16 v2, v6, 0xff

    .line 891
    invoke-static {v2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v15, v15, 0x1

    aget-byte v2, v11, v15

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    if-ne v8, v2, :cond_20

    move v4, v5

    :cond_20
    add-int/lit8 v8, v8, -0x1

    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :goto_12
    if-ne v8, v2, :cond_22

    move v4, v5

    :cond_22
    add-int/lit8 v8, v8, -0x1

    move/from16 v2, v26

    const/4 v6, 0x2

    const/4 v9, 0x3

    goto :goto_10

    :cond_23
    :goto_13
    move/from16 v26, v2

    if-gt v3, v5, :cond_24

    sub-int v1, p2, v1

    sub-int/2addr v0, v4

    add-int v2, p6, v4

    move v15, v1

    move v9, v2

    move/from16 v27, v7

    move/from16 v14, v26

    move/from16 v26, v0

    goto/16 :goto_b

    :cond_24
    move/from16 v15, p2

    move/from16 v9, p6

    move/from16 v27, v7

    move/from16 v33, v26

    move/from16 v26, v0

    move v0, v14

    move/from16 v14, v33

    goto :goto_14

    :cond_25
    move/from16 v15, p2

    move/from16 v9, p6

    move/from16 v26, v0

    move/from16 v27, v7

    move v0, v14

    move/from16 v14, p3

    :goto_14
    if-eqz v0, :cond_27

    .line 910
    aget-byte v0, v11, v15

    and-int/lit16 v0, v0, 0xff

    .line 911
    invoke-static {v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_26

    if-lez v15, :cond_26

    add-int/lit8 v1, v15, -0x1

    aget-byte v2, v11, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x6

    if-ne v13, v2, :cond_26

    add-int/lit8 v2, v26, -0x1

    aget-byte v2, p4, v2

    const/16 v3, 0x31

    if-lt v2, v3, :cond_26

    const/16 v3, 0x3a

    if-gt v2, v3, :cond_26

    add-int/lit8 v2, v26, -0x1

    .line 913
    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x52

    int-to-byte v0, v1

    aput-byte v0, p4, v2

    sub-int v26, v26, p9

    return v26

    :cond_26
    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v4, p4

    move/from16 v5, v26

    move v6, v9

    move/from16 v9, p9

    .line 916
    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    return v0

    :cond_27
    const/4 v0, 0x0

    const/16 v1, 0x12

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    :goto_15
    if-ge v7, v14, :cond_38

    add-int v5, v7, v15

    .line 920
    aget-byte v6, v11, v5

    and-int/lit16 v8, v6, 0xff

    and-int/lit16 v3, v6, 0xe0

    move/from16 p5, v7

    const/16 v7, 0x40

    if-eq v3, v7, :cond_29

    const/16 v7, 0x20

    if-ne v3, v7, :cond_28

    goto :goto_16

    :cond_28
    const/16 v3, 0x5f

    goto :goto_18

    :cond_29
    const/16 v7, 0x20

    :goto_16
    const/16 v3, 0x5f

    if-eq v8, v3, :cond_2e

    if-eqz v4, :cond_2b

    add-int/lit8 v5, v2, 0x1

    if-le v5, v9, :cond_2a

    goto :goto_19

    :cond_2a
    add-int v2, v26, v2

    const/16 v4, -0x10

    .line 925
    aput-byte v4, p4, v2

    move v2, v5

    const/4 v4, 0x0

    :cond_2b
    and-int/lit8 v5, v6, 0x3f

    shl-int/2addr v5, v1

    or-int/2addr v0, v5

    if-nez v1, :cond_2d

    add-int/lit8 v5, v2, 0x3

    if-le v5, v9, :cond_2c

    goto :goto_19

    :cond_2c
    add-int/lit8 v1, v2, 0x1

    add-int v5, v26, v2

    shr-int/lit8 v6, v0, 0x10

    int-to-byte v6, v6

    .line 933
    aput-byte v6, p4, v5

    add-int/lit8 v5, v2, 0x2

    add-int v1, v26, v1

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    .line 934
    aput-byte v6, p4, v1

    add-int/lit8 v2, v2, 0x3

    add-int v5, v26, v5

    int-to-byte v0, v0

    .line 935
    aput-byte v0, p4, v5

    move/from16 v32, p5

    move/from16 v31, v3

    move/from16 v20, v7

    move v10, v9

    const/4 v0, 0x0

    const/16 v1, 0x12

    goto :goto_17

    :cond_2d
    add-int/lit8 v1, v1, -0x6

    move/from16 v32, p5

    move/from16 v31, v3

    move/from16 v20, v7

    move v10, v9

    :goto_17
    const/16 v16, 0x31

    const/16 v18, 0x3a

    const/16 v22, 0x3

    const/16 v23, -0x1

    const/16 v24, 0x1

    const/16 v25, 0x40

    goto/16 :goto_1f

    :cond_2e
    :goto_18
    if-nez v4, :cond_32

    const/16 v6, 0x1f

    shl-int/2addr v6, v1

    or-int/2addr v0, v6

    add-int/lit8 v6, v2, 0x3

    .line 943
    div-int/lit8 v18, v1, 0x8

    sub-int v6, v6, v18

    if-le v6, v9, :cond_2f

    :goto_19
    move/from16 v3, p5

    :goto_1a
    move v10, v9

    const/16 v22, 0x3

    const/16 v23, -0x1

    const/16 v24, 0x1

    goto/16 :goto_20

    :cond_2f
    add-int/lit8 v4, v2, 0x1

    add-int v6, v26, v2

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    .line 945
    aput-byte v3, p4, v6

    const/16 v3, 0xc

    if-gt v1, v3, :cond_30

    add-int/lit8 v2, v2, 0x2

    add-int v4, v26, v4

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    .line 947
    aput-byte v3, p4, v4

    move v4, v2

    :cond_30
    const/4 v2, 0x6

    if-gt v1, v2, :cond_31

    add-int/lit8 v1, v4, 0x1

    add-int v4, v26, v4

    int-to-byte v0, v0

    .line 949
    aput-byte v0, p4, v4

    move v2, v1

    goto :goto_1b

    :cond_31
    move v2, v4

    :goto_1b
    move/from16 v29, v2

    const/16 v19, 0x0

    const/16 v28, 0x12

    const/16 v30, 0x1

    goto :goto_1c

    :cond_32
    move/from16 v19, v0

    move/from16 v28, v1

    move/from16 v29, v2

    move/from16 v30, v4

    .line 954
    :goto_1c
    invoke-static {v8}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_34

    if-lez v5, :cond_34

    add-int/lit8 v0, v5, -0x1

    aget-byte v0, v11, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v6, 0x6

    if-ne v13, v6, :cond_33

    add-int/lit8 v0, v26, -0x1

    aget-byte v0, p4, v0

    const/16 v4, 0x31

    const/16 v3, 0x3a

    if-lt v0, v4, :cond_35

    if-gt v0, v3, :cond_35

    add-int v0, v26, v29

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v15, -0x1

    .line 956
    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v8

    add-int/lit8 v1, v1, 0x52

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    add-int/lit8 v29, v29, -0x1

    move/from16 v32, p5

    move/from16 v18, v3

    move/from16 v20, v7

    move v10, v9

    move/from16 v24, v16

    move/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    const/16 v22, 0x3

    const/16 v23, -0x1

    const/16 v25, 0x40

    const/16 v31, 0x5f

    move/from16 v16, v4

    goto :goto_1e

    :cond_33
    const/16 v3, 0x3a

    const/16 v4, 0x31

    goto :goto_1d

    :cond_34
    const/16 v3, 0x3a

    const/16 v4, 0x31

    const/4 v6, 0x6

    :cond_35
    :goto_1d
    const/16 v16, 0x1

    add-int v21, v26, v29

    const/4 v8, -0x1

    const/16 v22, -0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v18, v3

    const/16 v31, 0x5f

    move/from16 v3, v24

    move/from16 v24, v16

    move/from16 v16, v4

    move-object/from16 v4, p4

    const/16 v23, -0x1

    move/from16 v5, v21

    move/from16 v25, v6

    move v6, v9

    move/from16 v32, p5

    move/from16 v20, v7

    const/16 v25, 0x40

    move v7, v8

    move/from16 v8, v22

    move v10, v9

    const/16 v22, 0x3

    move/from16 v9, p9

    .line 959
    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    if-gez v0, :cond_36

    return v23

    .line 962
    :cond_36
    aget-byte v0, p4, v21

    const/16 v1, -0x15

    if-ne v0, v1, :cond_37

    add-int/lit8 v29, v29, 0x1

    :cond_37
    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    :goto_1e
    move/from16 v4, v30

    :goto_1f
    move/from16 v3, v32

    add-int/lit8 v7, v3, 0x1

    move v9, v10

    move-object/from16 v10, p0

    goto/16 :goto_15

    :cond_38
    move v3, v7

    goto/16 :goto_1a

    :goto_20
    if-eq v3, v14, :cond_39

    return v23

    :cond_39
    if-nez p10, :cond_3c

    .line 970
    array-length v3, v11

    add-int/lit8 v3, v3, -0x1

    if-eq v12, v3, :cond_3a

    if-gez v12, :cond_3c

    :cond_3a
    const/4 v14, 0x0

    .line 972
    :goto_21
    sget-object v3, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->dmSizes:[Lcom/itextpdf/barcodes/dmcode/DmParams;

    array-length v5, v3

    if-ge v14, v5, :cond_3d

    .line 973
    aget-object v5, v3, v14

    iget v5, v5, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    add-int v6, v26, v2

    div-int/lit8 v7, v1, 0x6

    rsub-int/lit8 v9, v7, 0x3

    add-int/2addr v6, v9

    if-lt v5, v6, :cond_3b

    .line 974
    aget-object v3, v3, v14

    iget v3, v3, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    move/from16 v17, v3

    goto :goto_22

    :cond_3b
    add-int/lit8 v14, v14, 0x1

    goto :goto_21

    :cond_3c
    move/from16 v17, v27

    :cond_3d
    :goto_22
    sub-int v17, v17, v26

    sub-int v3, v17, v2

    const/4 v5, 0x2

    if-gt v3, v5, :cond_42

    const/4 v3, 0x6

    if-lt v1, v3, :cond_43

    const/16 v5, 0x12

    if-eq v1, v5, :cond_3e

    add-int/lit8 v4, v2, 0x2

    .line 980
    div-int/lit8 v5, v1, 0x8

    sub-int/2addr v4, v5

    if-le v4, v10, :cond_3e

    return v23

    :cond_3e
    const/16 v4, 0xc

    if-gt v1, v4, :cond_40

    shr-int/lit8 v4, v0, 0x12

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    and-int/lit8 v5, v4, 0x20

    if-nez v5, :cond_3f

    or-int/lit8 v4, v4, 0x40

    int-to-byte v4, v4

    :cond_3f
    add-int/lit8 v5, v2, 0x1

    add-int v2, v26, v2

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    .line 986
    aput-byte v4, p4, v2

    move v2, v5

    :cond_40
    if-gt v1, v3, :cond_46

    const/16 v1, 0xc

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_41

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    :cond_41
    add-int/lit8 v1, v2, 0x1

    add-int v2, v26, v2

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 992
    aput-byte v0, p4, v2

    goto :goto_24

    :cond_42
    const/4 v3, 0x6

    :cond_43
    if-nez v4, :cond_46

    const/16 v4, 0x1f

    shl-int/2addr v4, v1

    or-int/2addr v0, v4

    add-int/lit8 v4, v2, 0x3

    .line 996
    div-int/lit8 v5, v1, 0x8

    sub-int/2addr v4, v5

    if-le v4, v10, :cond_44

    return v23

    :cond_44
    add-int/lit8 v4, v2, 0x1

    add-int v5, v26, v2

    shr-int/lit8 v6, v0, 0x10

    int-to-byte v6, v6

    .line 998
    aput-byte v6, p4, v5

    const/16 v5, 0xc

    if-gt v1, v5, :cond_45

    add-int/lit8 v2, v2, 0x2

    add-int v4, v26, v4

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    .line 1000
    aput-byte v5, p4, v4

    goto :goto_23

    :cond_45
    move v2, v4

    :goto_23
    if-gt v1, v3, :cond_46

    add-int/lit8 v1, v2, 0x1

    add-int v2, v26, v2

    int-to-byte v0, v0

    .line 1002
    aput-byte v0, p4, v2

    :goto_24
    move v2, v1

    :cond_46
    add-int v2, v2, v26

    sub-int v2, v2, p9

    return v2
.end method

.method private X12Encodation([BII[BIIIII)I
    .locals 26

    move/from16 v0, p3

    move/from16 v10, p7

    const/4 v11, 0x0

    if-nez v0, :cond_0

    return v11

    .line 690
    :cond_0
    new-array v1, v0, [B

    move v2, v11

    move v3, v2

    :goto_0
    const/4 v4, 0x6

    const/16 v12, 0x64

    .line 692
    const-string v13, "\r*> 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    const/4 v14, 0x1

    if-ge v2, v0, :cond_4

    add-int v5, v2, p2

    .line 693
    aget-byte v5, p1, v5

    int-to-char v5, v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    int-to-byte v4, v5

    .line 695
    aput-byte v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 698
    :cond_1
    aput-byte v12, v1, v2

    if-lt v3, v4, :cond_2

    .line 700
    div-int/lit8 v4, v3, 0x3

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    :cond_2
    move v4, v11

    :goto_1
    if-ge v4, v3, :cond_3

    sub-int v5, v2, v4

    sub-int/2addr v5, v14

    .line 702
    aput-byte v12, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v3, v11

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-lt v3, v4, :cond_5

    .line 707
    div-int/lit8 v4, v3, 0x3

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    :cond_5
    move v4, v11

    :goto_3
    if-ge v4, v3, :cond_6

    sub-int v5, v2, v4

    sub-int/2addr v5, v14

    .line 709
    aput-byte v12, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move/from16 v2, p5

    move/from16 v3, p6

    move-object v4, v1

    move v5, v11

    move v6, v5

    move v7, v14

    move v1, v0

    move/from16 v0, p2

    :goto_4
    const/4 v8, -0x2

    const/16 v9, 0x28

    if-ge v5, v1, :cond_b

    .line 713
    aget-byte v15, v4, v5

    if-le v6, v3, :cond_7

    goto :goto_5

    :cond_7
    if-ge v15, v9, :cond_d

    if-nez v5, :cond_8

    if-nez v7, :cond_9

    :cond_8
    if-lez v5, :cond_a

    add-int/lit8 v15, v5, -0x1

    .line 717
    aget-byte v15, v4, v15

    if-le v15, v9, :cond_a

    :cond_9
    add-int/lit8 v15, v6, 0x1

    add-int/2addr v6, v2

    const/16 v16, -0x12

    .line 718
    aput-byte v16, p4, v6

    move v6, v15

    :cond_a
    add-int/lit8 v15, v6, 0x2

    if-le v15, v3, :cond_c

    :cond_b
    :goto_5
    move v11, v12

    goto/16 :goto_11

    .line 721
    :cond_c
    aget-byte v8, v4, v5

    mul-int/lit16 v8, v8, 0x640

    add-int/lit8 v15, v5, 0x1

    aget-byte v15, v4, v15

    mul-int/2addr v15, v9

    add-int/2addr v8, v15

    add-int/lit8 v5, v5, 0x2

    aget-byte v9, v4, v5

    add-int/2addr v8, v9

    add-int/2addr v8, v14

    add-int/lit8 v9, v6, 0x1

    add-int v15, v2, v6

    .line 722
    div-int/lit16 v11, v8, 0x100

    int-to-byte v11, v11

    aput-byte v11, p4, v15

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v9, v2

    int-to-byte v8, v8

    .line 723
    aput-byte v8, p4, v9

    move/from16 v15, p8

    move v11, v12

    const/4 v12, 0x0

    goto/16 :goto_10

    :cond_d
    if-gtz v10, :cond_e

    if-lez v5, :cond_1a

    add-int/lit8 v11, v5, -0x1

    .line 728
    aget-byte v11, v4, v11

    if-ge v11, v9, :cond_1a

    add-int/lit8 v9, v6, 0x1

    add-int/2addr v6, v2

    .line 729
    aput-byte v8, p4, v6

    move/from16 v15, p8

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    move/from16 v23, v7

    move/from16 v22, v9

    move v11, v12

    move v0, v14

    const/4 v12, 0x0

    move-object/from16 v7, p0

    goto/16 :goto_f

    :cond_e
    const/4 v9, 0x4

    if-le v10, v9, :cond_1a

    const/4 v11, 0x5

    move/from16 v15, p8

    if-ne v15, v11, :cond_1b

    .line 730
    aget-byte v12, p1, v0

    int-to-char v12, v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-ltz v12, :cond_19

    add-int/lit8 v12, v0, -0x1

    aget-byte v12, p1, v12

    int-to-char v12, v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-ltz v12, :cond_19

    add-int/lit8 v12, v10, -0x1

    :goto_6
    move/from16 p3, v7

    move-object/from16 v7, p0

    if-lez v12, :cond_f

    .line 732
    iget-object v8, v7, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v8, v8, v9

    aget v8, v8, v12

    if-ne v8, v11, :cond_f

    sub-int v8, v10, v12

    add-int/2addr v8, v14

    sub-int v8, v0, v8

    aget-byte v8, p1, v8

    int-to-char v8, v8

    .line 733
    invoke-virtual {v13, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_f

    add-int/lit8 v12, v12, -0x1

    move/from16 v7, p3

    const/4 v8, -0x2

    goto :goto_6

    :cond_f
    sub-int v8, v10, v12

    if-lt v8, v11, :cond_18

    move v4, v14

    :goto_7
    if-gt v4, v8, :cond_11

    sub-int v9, v2, v4

    .line 739
    aget-byte v11, p4, v9

    const/4 v12, -0x2

    if-ne v11, v12, :cond_10

    goto :goto_8

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_11
    const/4 v9, -0x1

    :goto_8
    if-ltz v9, :cond_12

    sub-int v4, v2, v9

    add-int/lit8 v8, v4, -0x1

    .line 745
    :cond_12
    rem-int/lit8 v4, v8, 0x3

    const/4 v11, 0x2

    if-ne v4, v11, :cond_17

    add-int/lit8 v1, v8, 0x1

    sub-int/2addr v0, v8

    if-gez v9, :cond_13

    move v4, v8

    goto :goto_9

    :cond_13
    move v4, v1

    :goto_9
    add-int/2addr v3, v4

    if-gez v9, :cond_14

    move v4, v8

    goto :goto_a

    :cond_14
    move v4, v1

    :goto_a
    sub-int/2addr v2, v4

    if-eq v9, v2, :cond_15

    move v4, v14

    goto :goto_b

    :cond_15
    const/4 v4, 0x0

    .line 753
    :goto_b
    new-array v5, v1, [B

    const/4 v9, 0x0

    :goto_c
    if-gt v9, v8, :cond_16

    add-int v11, v0, v9

    .line 755
    aget-byte v11, p1, v11

    int-to-char v11, v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_16
    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v23, v4

    move-object/from16 v20, v5

    move/from16 v22, v6

    const/4 v0, 0x0

    const/16 v11, 0x64

    const/4 v12, 0x0

    const/16 v21, -0x1

    goto :goto_f

    .line 758
    :cond_17
    new-array v4, v14, [B

    const/16 v11, 0x64

    const/4 v12, 0x0

    .line 759
    aput-byte v11, v4, v12

    goto :goto_e

    :cond_18
    const/16 v11, 0x64

    const/4 v12, 0x0

    goto :goto_e

    :cond_19
    move/from16 p3, v7

    const/16 v11, 0x64

    goto :goto_d

    :cond_1a
    move/from16 v15, p8

    :cond_1b
    move/from16 p3, v7

    move v11, v12

    :goto_d
    const/4 v12, 0x0

    move-object/from16 v7, p0

    :goto_e
    move/from16 v23, p3

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v0, v14

    :goto_f
    if-eqz v0, :cond_1e

    add-int v2, v16, v21

    add-int v24, v18, v22

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move/from16 v5, v24

    move/from16 v6, v19

    move v7, v8

    move v8, v9

    move/from16 v9, p9

    .line 764
    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    if-gez v0, :cond_1c

    const/4 v0, -0x1

    return v0

    .line 767
    :cond_1c
    aget-byte v0, p4, v24

    const/16 v1, -0x15

    if-ne v0, v1, :cond_1d

    add-int/lit8 v22, v22, 0x1

    :cond_1d
    add-int/lit8 v22, v22, 0x1

    :cond_1e
    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v23

    :goto_10
    add-int/2addr v5, v14

    move/from16 v25, v12

    move v12, v11

    move/from16 v11, v25

    goto/16 :goto_4

    :goto_11
    if-lez v1, :cond_1f

    add-int/lit8 v0, v1, -0x1

    .line 775
    aget-byte v12, v4, v0

    goto :goto_12

    :cond_1f
    move v12, v11

    :goto_12
    if-eq v5, v1, :cond_20

    const/4 v0, -0x1

    return v0

    :cond_20
    const/4 v0, -0x1

    if-ge v12, v9, :cond_21

    add-int/lit8 v1, v6, 0x1

    add-int/2addr v6, v2

    const/4 v4, -0x2

    .line 779
    aput-byte v4, p4, v6

    move v6, v1

    :cond_21
    if-le v6, v3, :cond_22

    return v0

    :cond_22
    add-int/2addr v6, v2

    sub-int v6, v6, p9

    return v6
.end method

.method private asciiEncodation([BII[BIIIII)I
    .locals 11

    add-int v0, p3, p2

    add-int v1, p6, p5

    move v2, p2

    move/from16 v3, p5

    :goto_0
    if-ge v2, v0, :cond_6

    add-int/lit8 v4, v2, 0x1

    .line 603
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    .line 604
    invoke-static {v5}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v6

    if-eqz v6, :cond_0

    if-lez p7, :cond_0

    const/4 v6, 0x1

    move/from16 v7, p8

    if-ne v7, v6, :cond_1

    add-int/lit8 v6, v2, -0x1

    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v8, p5, -0x1

    aget-byte v8, p4, v8

    const/16 v9, 0x30

    if-le v8, v9, :cond_1

    const/16 v10, 0x3b

    if-ge v8, v10, :cond_1

    add-int/lit8 v0, v3, -0x1

    .line 606
    aget-byte v1, p1, v6

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x52

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    sub-int v3, v3, p9

    return v3

    :cond_0
    move/from16 v7, p8

    :cond_1
    const/4 v6, -0x1

    if-lt v3, v1, :cond_2

    return v6

    .line 611
    :cond_2
    invoke-static {v5}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_3

    if-gez p7, :cond_3

    if-ge v4, v0, :cond_3

    aget-byte v8, p1, v4

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v2, v2, 0x2

    .line 612
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x52

    int-to-byte v4, v5

    aput-byte v4, p4, v3

    goto :goto_1

    :cond_3
    const/16 v2, 0x7f

    if-le v5, v2, :cond_5

    add-int/lit8 v2, v3, 0x1

    if-lt v2, v1, :cond_4

    return v6

    :cond_4
    const/16 v6, -0x15

    .line 616
    aput-byte v6, p4, v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v5, v5, -0x7f

    int-to-byte v5, v5

    .line 617
    aput-byte v5, p4, v2

    move v2, v4

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    int-to-byte v2, v5

    .line 619
    aput-byte v2, p4, v3

    move v2, v4

    :goto_1
    move v3, v6

    goto/16 :goto_0

    :cond_6
    sub-int v3, v3, p9

    return v3
.end method

.method private b256Encodation([BII[BIIIII)I
    .locals 13

    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p8

    const/4 v5, 0x0

    if-nez v1, :cond_0

    return v5

    :cond_0
    const/4 v6, 0x3

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/16 v10, 0xfa

    const/4 v11, 0x1

    if-eq v4, v9, :cond_3

    if-ge v1, v10, :cond_1

    add-int/lit8 v12, v1, 0x2

    if-le v12, v3, :cond_1

    return v7

    :cond_1
    if-lt v1, v10, :cond_2

    add-int/lit8 v12, v1, 0x3

    if-le v12, v3, :cond_2

    return v7

    :cond_2
    const/16 v3, -0x19

    .line 635
    aput-byte v3, v2, p5

    move v12, v1

    move/from16 v1, p5

    goto :goto_2

    :cond_3
    add-int/lit8 v1, p7, -0x1

    :goto_0
    if-lez v1, :cond_4

    .line 638
    iget-object v12, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v12, v12, v6

    aget v12, v12, v1

    if-ne v12, v9, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    sub-int v1, p7, v1

    add-int/lit8 v12, v1, 0x1

    if-eq v12, v10, :cond_5

    if-le v11, v3, :cond_5

    return v7

    :cond_5
    if-ne v12, v10, :cond_6

    if-le v8, v3, :cond_6

    return v7

    :cond_6
    if-ge v12, v10, :cond_7

    move v3, v8

    goto :goto_1

    :cond_7
    move v3, v6

    :goto_1
    add-int/2addr v1, v3

    sub-int v1, p5, v1

    :goto_2
    if-ge v12, v10, :cond_8

    add-int/lit8 v3, v1, 0x1

    int-to-byte v6, v12

    .line 649
    aput-byte v6, v2, v3

    if-eq v4, v9, :cond_b

    move v5, v8

    goto :goto_4

    :cond_8
    if-ne v12, v10, :cond_a

    if-ne v4, v9, :cond_a

    add-int/lit8 v3, v1, 0x1

    .line 652
    div-int/lit16 v5, v12, 0xfa

    add-int/lit16 v5, v5, 0xf9

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, p5, 0x1

    :goto_3
    add-int/lit8 v5, v1, 0x2

    if-le v3, v5, :cond_9

    add-int/lit8 v5, v3, -0x1

    .line 654
    aget-byte v5, v2, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 655
    :cond_9
    rem-int/lit16 v3, v12, 0xfa

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    move v5, v11

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v1, 0x1

    .line 658
    div-int/lit16 v7, v12, 0xfa

    add-int/lit16 v7, v7, 0xf9

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    add-int/lit8 v3, v1, 0x2

    .line 659
    rem-int/lit16 v7, v12, 0xfa

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    if-eq v4, v9, :cond_b

    move v5, v6

    :cond_b
    :goto_4
    if-ne v4, v9, :cond_c

    move v12, v11

    :cond_c
    add-int v3, v5, p5

    move-object v6, p1

    move v7, p2

    .line 664
    invoke-static {p1, p2, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eq v4, v9, :cond_d

    add-int/lit8 v3, p5, 0x1

    goto :goto_5

    :cond_d
    move/from16 v3, p5

    :goto_5
    add-int v6, v5, v12

    add-int v6, v6, p5

    if-ge v3, v6, :cond_e

    .line 666
    invoke-direct {p0, v2, v3}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->randomizationAlgorithm255([BI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_e
    if-ne v4, v9, :cond_f

    add-int/2addr v1, v11

    .line 669
    invoke-direct {p0, v2, v1}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->randomizationAlgorithm255([BI)V

    :cond_f
    add-int v12, v12, p5

    add-int/2addr v12, v5

    sub-int v12, v12, p9

    return v12
.end method

.method private draw([BILcom/itextpdf/barcodes/dmcode/DmParams;)V
    .locals 10

    .line 1166
    iget p2, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    .line 1167
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->image:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 1170
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    :goto_0
    iget v2, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 1171
    :goto_1
    iget v2, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v2, v4

    if-ge v3, v2, :cond_0

    .line 1172
    invoke-direct {p0, v3, v0, p2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setBit(III)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 1170
    :cond_0
    iget v2, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->heightSection:I

    add-int/2addr v0, v2

    goto :goto_0

    .line 1176
    :cond_1
    iget v0, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->heightSection:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    :goto_2
    add-int/2addr v0, v3

    iget v3, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_3

    .line 1177
    :goto_3
    iget v3, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v3, v5

    if-ge v4, v3, :cond_2

    .line 1178
    invoke-direct {p0, v4, v0, p2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setBit(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1176
    :cond_2
    iget v3, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->heightSection:I

    goto :goto_2

    .line 1182
    :cond_3
    :goto_4
    iget v0, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v0, v3

    if-ge v4, v0, :cond_5

    .line 1183
    :goto_5
    iget v0, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v0, v5

    if-ge v3, v0, :cond_4

    .line 1184
    invoke-direct {p0, v4, v3, p2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setBit(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1182
    :cond_4
    iget v0, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->widthSection:I

    add-int/2addr v4, v0

    goto :goto_4

    .line 1188
    :cond_5
    iget v0, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->widthSection:I

    sub-int/2addr v0, v2

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    :goto_6
    add-int/2addr v0, v3

    iget v3, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_7

    add-int/lit8 v4, v4, 0x1

    .line 1189
    :goto_7
    iget v3, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v3, v5

    if-ge v4, v3, :cond_6

    .line 1190
    invoke-direct {p0, v0, v4, p2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setBit(III)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_7

    .line 1188
    :cond_6
    iget v3, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->widthSection:I

    goto :goto_6

    :cond_7
    move v0, v1

    move v3, v0

    .line 1194
    :goto_8
    iget v4, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    if-ge v0, v4, :cond_d

    move v4, v2

    .line 1195
    :goto_9
    iget v5, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->heightSection:I

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_c

    move v5, v1

    .line 1196
    :goto_a
    iget v6, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    if-ge v5, v6, :cond_b

    move v6, v2

    .line 1197
    :goto_b
    iget v7, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->widthSection:I

    sub-int/2addr v7, v2

    if-ge v6, v7, :cond_a

    .line 1198
    iget-object v7, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->place:[S

    add-int/lit8 v8, v3, 0x1

    aget-short v3, v7, v3

    if-eq v3, v2, :cond_8

    if-le v3, v2, :cond_9

    .line 1199
    div-int/lit8 v7, v3, 0x8

    sub-int/2addr v7, v2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    rem-int/lit8 v3, v3, 0x8

    const/16 v9, 0x80

    shr-int v3, v9, v3

    and-int/2addr v3, v7

    if-eqz v3, :cond_9

    :cond_8
    add-int v3, v6, v5

    .line 1200
    iget v7, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v3, v7

    add-int v9, v4, v0

    add-int/2addr v9, v7

    invoke-direct {p0, v3, v9, p2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setBit(III)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    move v3, v8

    goto :goto_b

    .line 1196
    :cond_a
    iget v6, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->widthSection:I

    add-int/2addr v5, v6

    goto :goto_a

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1194
    :cond_c
    iget v4, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->heightSection:I

    add-int/2addr v0, v4

    goto :goto_8

    :cond_d
    return-void
.end method

.method private getEncodation([BII[BIIIZ)I
    .locals 29

    move-object/from16 v11, p0

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    move/from16 v10, p6

    const/16 v16, -0x1

    if-gez v10, :cond_0

    return v16

    :cond_0
    and-int/lit8 v0, p7, 0x7

    if-nez v0, :cond_10

    const/4 v9, 0x0

    if-nez v13, :cond_1

    return v9

    .line 1248
    :cond_1
    array-length v0, v14

    const/4 v8, 0x2

    new-array v1, v8, [I

    const/4 v7, 0x1

    aput v0, v1, v7

    const/4 v6, 0x6

    aput v6, v1, v9

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [[B

    move v0, v9

    :goto_0
    if-ge v0, v6, :cond_2

    .line 1250
    aget-object v1, v17, v0

    array-length v2, v14

    invoke-static {v14, v9, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1251
    iget-object v1, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput v0, v1, v9

    goto :goto_0

    .line 1253
    :cond_2
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v18, v0, v9

    aget-object v4, v17, v9

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, v19

    move/from16 v8, v20

    move v15, v9

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    aput v0, v18, v15

    .line 1254
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    const/4 v9, 0x1

    aget-object v18, v0, v9

    aget-object v4, v17, v9

    const/4 v8, 0x0

    const/16 v19, -0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v9, v19

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->C40OrTextEncodation([BII[BIIZIII)I

    move-result v0

    aput v0, v18, v15

    .line 1255
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    const/4 v10, 0x2

    aget-object v18, v0, v10

    aget-object v4, v17, v10

    const/4 v9, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->C40OrTextEncodation([BII[BIIZIII)I

    move-result v0

    aput v0, v18, v15

    .line 1256
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    const/4 v10, 0x3

    aget-object v18, v0, v10

    aget-object v4, v17, v10

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->b256Encodation([BII[BIIIII)I

    move-result v0

    aput v0, v18, v15

    .line 1257
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    const/4 v9, 0x4

    aget-object v18, v0, v9

    aget-object v4, v17, v9

    move-object/from16 v0, p0

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->X12Encodation([BII[BIIIII)I

    move-result v0

    aput v0, v18, v15

    .line 1258
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    const/4 v9, 0x5

    aget-object v18, v0, v9

    aget-object v4, v17, v9

    move-object/from16 v0, p0

    move/from16 v9, p5

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->EdifactEncodation([BII[BIIIIIZ)I

    move-result v0

    aput v0, v18, v15

    const/4 v10, 0x1

    :goto_1
    if-ge v10, v13, :cond_d

    const/4 v9, 0x6

    .line 1260
    new-array v8, v9, [I

    move v7, v15

    :goto_2
    if-ge v7, v9, :cond_c

    .line 1262
    array-length v0, v14

    const/4 v6, 0x2

    new-array v1, v6, [I

    const/4 v5, 0x1

    aput v0, v1, v5

    aput v9, v1, v15

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [[B

    move v4, v15

    :goto_3
    if-ge v4, v9, :cond_a

    .line 1264
    aget-object v0, v17, v4

    aget-object v1, v18, v4

    array-length v2, v14

    invoke-static {v0, v15, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1265
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, v4

    add-int/lit8 v19, v10, -0x1

    aget v0, v0, v19

    if-gez v0, :cond_3

    .line 1266
    aput v16, v8, v4

    move/from16 v15, p5

    move/from16 v24, v4

    move/from16 v25, v6

    move v12, v7

    move-object v13, v8

    move/from16 v21, v9

    move v14, v10

    const/16 v19, 0x5

    const/16 v23, 0x4

    :goto_4
    const/16 v26, 0x3

    goto/16 :goto_a

    :cond_3
    if-nez v7, :cond_4

    add-int v2, v12, v10

    .line 1269
    aget-object v20, v18, v4

    move v3, v15

    move/from16 v15, p5

    add-int v21, v0, v15

    move/from16 v1, p6

    sub-int v22, v1, v0

    add-int/lit8 v23, v4, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v13, v3

    move/from16 v3, v24

    move/from16 v24, v4

    move-object/from16 v4, v20

    move v13, v5

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v27, v7

    move v7, v10

    move-object v13, v8

    move/from16 v8, v23

    move/from16 v21, v9

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    aput v0, v13, v24

    move/from16 v9, v27

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    move/from16 v15, p5

    move/from16 v24, v4

    move-object v13, v8

    move/from16 v21, v9

    move v0, v5

    move v9, v7

    :goto_5
    if-ne v9, v0, :cond_5

    add-int v2, v12, v10

    .line 1271
    aget-object v4, v18, v24

    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, v24

    aget v0, v0, v19

    add-int v5, v0, v15

    move/from16 v8, p6

    sub-int v6, v8, v0

    add-int/lit8 v23, v24, 0x1

    const/4 v3, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v8, v10

    move/from16 v28, v9

    move/from16 v9, v23

    move v14, v10

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->C40OrTextEncodation([BII[BIIZIII)I

    move-result v0

    aput v0, v13, v24

    move/from16 v10, v28

    goto :goto_6

    :cond_5
    move v14, v10

    move v10, v9

    :goto_6
    const/4 v9, 0x2

    if-ne v10, v9, :cond_6

    add-int v2, v12, v14

    .line 1273
    aget-object v4, v18, v24

    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, v24

    aget v0, v0, v19

    add-int v5, v0, v15

    move/from16 v8, p6

    sub-int v6, v8, v0

    add-int/lit8 v23, v24, 0x1

    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v8, v14

    move/from16 v25, v9

    move/from16 v9, v23

    move v15, v10

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->C40OrTextEncodation([BII[BIIZIII)I

    move-result v0

    aput v0, v13, v24

    goto :goto_7

    :cond_6
    move/from16 v25, v9

    move v15, v10

    :goto_7
    const/4 v10, 0x3

    if-ne v15, v10, :cond_7

    add-int v2, v12, v14

    .line 1275
    aget-object v4, v18, v24

    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, v24

    aget v0, v0, v19

    move v9, v15

    move/from16 v15, p5

    add-int v5, v0, v15

    move/from16 v8, p6

    sub-int v6, v8, v0

    add-int/lit8 v23, v24, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v7, v14

    move/from16 v8, v23

    move v10, v9

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->b256Encodation([BII[BIIIII)I

    move-result v0

    aput v0, v13, v24

    goto :goto_8

    :cond_7
    move v10, v15

    move/from16 v15, p5

    :goto_8
    const/4 v9, 0x4

    if-ne v10, v9, :cond_8

    add-int v2, v12, v14

    .line 1277
    aget-object v4, v18, v24

    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, v24

    aget v0, v0, v19

    add-int v5, v0, v15

    move/from16 v8, p6

    sub-int v6, v8, v0

    add-int/lit8 v23, v24, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v7, v14

    move/from16 v8, v23

    move/from16 v23, v9

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->X12Encodation([BII[BIIIII)I

    move-result v0

    aput v0, v13, v24

    goto :goto_9

    :cond_8
    move/from16 v23, v9

    :goto_9
    const/4 v9, 0x5

    if-ne v10, v9, :cond_9

    add-int v2, v12, v14

    .line 1279
    aget-object v4, v18, v24

    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, v24

    aget v0, v0, v19

    add-int v5, v0, v15

    move/from16 v8, p6

    sub-int v6, v8, v0

    add-int/lit8 v19, v24, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v7, v14

    move/from16 v8, v19

    move/from16 v19, v9

    move/from16 v9, p5

    move v12, v10

    const/16 v26, 0x3

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->EdifactEncodation([BII[BIIIIIZ)I

    move-result v0

    aput v0, v13, v24

    goto :goto_a

    :cond_9
    move/from16 v19, v9

    move v12, v10

    goto/16 :goto_4

    :goto_a
    add-int/lit8 v4, v24, 0x1

    move v7, v12

    move-object v8, v13

    move v10, v14

    move/from16 v9, v21

    move/from16 v6, v25

    const/4 v5, 0x1

    const/4 v15, 0x0

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    goto/16 :goto_3

    :cond_a
    move/from16 v15, p5

    move/from16 v25, v6

    move v12, v7

    move-object v13, v8

    move/from16 v21, v9

    move v14, v10

    const/16 v19, 0x5

    const/16 v23, 0x4

    const/16 v26, 0x3

    .line 1282
    invoke-direct {v11, v13, v12, v14}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->solveFAndSwitchMode([III)V

    .line 1283
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v0, v0, v12

    aget v0, v0, v14

    if-eqz v0, :cond_b

    add-int/lit8 v0, v0, -0x1

    .line 1284
    aget-object v0, v18, v0

    aget-object v1, v17, v12

    move-object/from16 v4, p4

    move/from16 v24, v14

    array-length v2, v4

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    :cond_b
    move-object/from16 v4, p4

    move/from16 v24, v14

    const/4 v3, 0x0

    :goto_b
    add-int/lit8 v7, v12, 0x1

    move/from16 v12, p2

    move v15, v3

    move-object v14, v4

    move-object v8, v13

    move/from16 v9, v21

    move/from16 v10, v24

    move/from16 v13, p3

    goto/16 :goto_2

    :cond_c
    move/from16 v21, v9

    move/from16 v24, v10

    move-object v4, v14

    move v3, v15

    const/16 v19, 0x5

    const/16 v23, 0x4

    const/16 v25, 0x2

    const/16 v26, 0x3

    move/from16 v15, p5

    add-int/lit8 v10, v24, 0x1

    move/from16 v12, p2

    move/from16 v13, p3

    move v15, v3

    goto/16 :goto_1

    :cond_d
    move-object v4, v14

    move v3, v15

    .line 1287
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    move v2, v3

    const/4 v1, 0x1

    move/from16 v3, p3

    add-int/lit8 v1, v3, -0x1

    invoke-static {v0, v1}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->minValueInColumn([[II)I

    move-result v0

    move/from16 v6, p6

    if-gt v0, v6, :cond_f

    if-gez v0, :cond_e

    goto :goto_c

    .line 1290
    :cond_e
    iget-object v3, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    invoke-static {v3, v1, v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->valuePositionInColumn([[III)I

    move-result v1

    .line 1291
    aget-object v1, v17, v1

    array-length v3, v4

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0

    :cond_f
    :goto_c
    return v16

    :cond_10
    move v6, v10

    move v3, v13

    move-object v4, v14

    packed-switch v0, :pswitch_data_0

    return v16

    :pswitch_0
    if-le v3, v6, :cond_11

    return v16

    :cond_11
    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1310
    invoke-static {v1, v2, v4, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v3

    :pswitch_1
    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p5

    move/from16 v10, p8

    .line 1306
    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->EdifactEncodation([BII[BIIIIIZ)I

    move-result v0

    return v0

    :pswitch_2
    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p5

    .line 1304
    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->X12Encodation([BII[BIIIII)I

    move-result v0

    return v0

    :pswitch_3
    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p5

    .line 1302
    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->b256Encodation([BII[BIIIII)I

    move-result v0

    return v0

    :pswitch_4
    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p5

    .line 1300
    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->C40OrTextEncodation([BII[BIIZIII)I

    move-result v0

    return v0

    :pswitch_5
    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p5

    .line 1298
    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->C40OrTextEncodation([BII[BIIZIII)I

    move-result v0

    return v0

    :pswitch_6
    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p5

    .line 1296
    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getNumber([BII)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_2

    add-int/lit8 v2, p1, 0x1

    .line 1320
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v3, 0x30

    if-lt p1, v3, :cond_1

    const/16 v4, 0x39

    if-le p1, v4, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, p1

    sub-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    move p1, v2

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_2
    return v1
.end method

.method private static isDigit(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static makePadding([BII)V
    .locals 4

    if-gtz p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    const/16 v1, -0x7f

    .line 582
    aput-byte v1, p0, p1

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    add-int/lit8 p1, v0, 0x1

    mul-int/lit16 v1, p1, 0x95

    .line 584
    rem-int/lit16 v1, v1, 0xfd

    add-int/lit16 v2, v1, 0x82

    const/16 v3, 0xfe

    if-le v2, v3, :cond_1

    add-int/lit8 v2, v1, -0x7c

    :cond_1
    int-to-byte v1, v2

    .line 587
    aput-byte v1, p0, v0

    move v0, p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static minValueInColumn([[II)I
    .locals 4

    const v0, 0x7fffffff

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    .line 1210
    aget-object v3, p0, v1

    aget v3, v3, p1

    if-ge v3, v2, :cond_0

    if-ltz v3, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eq v2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    return v2
.end method

.method private processExtensions([BII[B)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1330
    iget v3, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->options:I

    and-int/lit8 v3, v3, 0x20

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    move v3, v4

    move v5, v3

    :goto_0
    const/4 v6, -0x1

    if-ge v4, v2, :cond_18

    const/16 v7, 0x14

    if-le v3, v7, :cond_1

    return v6

    :cond_1
    add-int/lit8 v7, v4, 0x1

    add-int v8, p2, v4

    .line 1338
    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v3, v3, 0x1

    const/16 v9, 0x2e

    if-eq v8, v9, :cond_17

    const/16 v9, -0x16

    const/16 v10, 0x6d

    const/4 v11, 0x1

    if-eq v8, v10, :cond_13

    const/16 v12, 0x70

    if-eq v8, v12, :cond_11

    const v9, 0xfc04

    const/16 v12, 0x73

    const/4 v13, 0x2

    if-eq v8, v12, :cond_a

    const/16 v14, 0x65

    if-eq v8, v14, :cond_5

    const/16 v4, 0x66

    if-eq v8, v4, :cond_2

    :goto_1
    move v4, v7

    goto :goto_0

    :cond_2
    if-eq v3, v11, :cond_4

    if-ne v3, v13, :cond_3

    .line 1402
    aget-byte v4, v1, p2

    if-eq v4, v12, :cond_4

    if-eq v4, v10, :cond_4

    :cond_3
    return v6

    :cond_4
    add-int/lit8 v4, v5, 0x1

    const/16 v6, -0x18

    .line 1404
    aput-byte v6, p4, v5

    :goto_2
    move v5, v4

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x7

    if-le v4, v2, :cond_6

    return v6

    :cond_6
    add-int v7, p2, v7

    const/4 v8, 0x6

    .line 1347
    invoke-static {v1, v7, v8}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->getNumber([BII)I

    move-result v7

    if-gez v7, :cond_7

    return v6

    :cond_7
    add-int/lit8 v6, v5, 0x1

    const/16 v8, -0xf

    .line 1351
    aput-byte v8, p4, v5

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_8

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    .line 1353
    aput-byte v7, p4, v6

    goto :goto_0

    :cond_8
    const/16 v8, 0x3fff

    if-ge v7, v8, :cond_9

    add-int/lit8 v8, v5, 0x2

    add-int/lit8 v7, v7, -0x7f

    .line 1355
    div-int/lit16 v9, v7, 0xfe

    add-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, p4, v6

    add-int/lit8 v5, v5, 0x3

    .line 1356
    rem-int/lit16 v7, v7, 0xfe

    add-int/2addr v7, v11

    int-to-byte v6, v7

    aput-byte v6, p4, v8

    goto :goto_0

    :cond_9
    add-int/lit8 v8, v5, 0x2

    add-int/lit16 v7, v7, -0x3fff

    .line 1358
    div-int v9, v7, v9

    add-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, p4, v6

    add-int/lit8 v6, v5, 0x3

    .line 1359
    div-int/lit16 v9, v7, 0xfe

    rem-int/lit16 v9, v9, 0xfe

    add-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, p4, v8

    add-int/lit8 v5, v5, 0x4

    .line 1360
    rem-int/lit16 v7, v7, 0xfe

    add-int/2addr v7, v11

    int-to-byte v7, v7

    aput-byte v7, p4, v6

    goto/16 :goto_0

    :cond_a
    if-eq v3, v11, :cond_b

    return v6

    :cond_b
    add-int/lit8 v8, v4, 0xa

    if-le v8, v2, :cond_c

    return v6

    :cond_c
    add-int v7, p2, v7

    .line 1368
    invoke-static {v1, v7, v13}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->getNumber([BII)I

    move-result v7

    if-lez v7, :cond_10

    const/16 v8, 0x10

    if-le v7, v8, :cond_d

    goto :goto_3

    :cond_d
    add-int/lit8 v10, v4, 0x3

    add-int v10, p2, v10

    .line 1372
    invoke-static {v1, v10, v13}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->getNumber([BII)I

    move-result v10

    if-le v10, v11, :cond_10

    if-le v10, v8, :cond_e

    goto :goto_3

    :cond_e
    add-int/lit8 v8, v4, 0x5

    add-int v8, p2, v8

    const/4 v12, 0x5

    .line 1376
    invoke-static {v1, v8, v12}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->getNumber([BII)I

    move-result v8

    if-ltz v8, :cond_10

    if-lt v7, v9, :cond_f

    goto :goto_3

    :cond_f
    add-int/lit8 v4, v4, 0xa

    add-int/lit8 v6, v5, 0x1

    const/16 v9, -0x17

    .line 1380
    aput-byte v9, p4, v5

    add-int/lit8 v9, v5, 0x2

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v7, v7, 0x4

    rsub-int/lit8 v10, v10, 0x11

    or-int/2addr v7, v10

    int-to-byte v7, v7

    .line 1381
    aput-byte v7, p4, v6

    add-int/lit8 v6, v5, 0x3

    .line 1382
    div-int/lit16 v7, v8, 0xfe

    add-int/2addr v7, v11

    int-to-byte v7, v7

    aput-byte v7, p4, v9

    add-int/lit8 v5, v5, 0x4

    .line 1383
    rem-int/lit16 v8, v8, 0xfe

    add-int/2addr v8, v11

    int-to-byte v7, v8

    aput-byte v7, p4, v6

    goto/16 :goto_0

    :cond_10
    :goto_3
    return v6

    :cond_11
    if-eq v3, v11, :cond_12

    return v6

    :cond_12
    add-int/lit8 v4, v5, 0x1

    .line 1388
    aput-byte v9, p4, v5

    goto/16 :goto_2

    :cond_13
    if-eq v3, v11, :cond_14

    return v6

    :cond_14
    add-int/lit8 v4, v4, 0x2

    if-le v4, v2, :cond_15

    return v6

    :cond_15
    add-int v7, p2, v7

    .line 1395
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x35

    if-eq v7, v8, :cond_16

    return v6

    :cond_16
    add-int/lit8 v6, v5, 0x1

    .line 1398
    aput-byte v9, p4, v5

    add-int/lit8 v5, v5, 0x2

    const/16 v7, -0x14

    .line 1399
    aput-byte v7, p4, v6

    goto/16 :goto_0

    .line 1342
    :cond_17
    iput v7, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->extOut:I

    return v5

    :cond_18
    return v6
.end method

.method private randomizationAlgorithm255([BI)V
    .locals 3

    .line 674
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    add-int/lit8 v2, p2, 0x1

    mul-int/lit16 v2, v2, 0x95

    .line 675
    rem-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    if-le v0, v1, :cond_0

    add-int/lit16 v0, v0, -0x100

    :cond_0
    int-to-byte v0, v0

    .line 679
    aput-byte v0, p1, p2

    return-void
.end method

.method private setBit(III)V
    .locals 2

    .line 1161
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->image:[B

    mul-int/2addr p2, p3

    div-int/lit8 p3, p1, 0x8

    add-int/2addr p2, p3

    aget-byte p3, v0, p2

    and-int/lit8 p1, p1, 0x7

    const/16 v1, 0x80

    shr-int p1, v1, p1

    int-to-byte p1, p1

    or-int/2addr p1, p3

    int-to-byte p1, p1

    aput-byte p1, v0, p2

    return-void
.end method

.method private solveFAndSwitchMode([III)V
    .locals 6

    .line 1223
    aget v0, p1, p2

    const v1, 0x7fffffff

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v2, v2, p2

    add-int/lit8 v3, p3, -0x1

    aget v3, v2, v3

    if-ltz v3, :cond_0

    .line 1224
    aput v0, v2, p3

    .line 1225
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v0, v0, p2

    add-int/lit8 v2, p2, 0x1

    aput v2, v0, p3

    goto :goto_0

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, p2

    aput v1, v0, p3

    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    .line 1230
    aget v2, p1, v0

    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v4, v3, p2

    aget v5, v4, p3

    if-ge v2, v5, :cond_1

    if-ltz v2, :cond_1

    aget-object v3, v3, v0

    add-int/lit8 v5, p3, -0x1

    aget v3, v3, v5

    if-ltz v3, :cond_1

    .line 1231
    aput v2, v4, p3

    .line 1232
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v2, v2, p2

    add-int/lit8 v3, v0, 0x1

    aput v3, v2, p3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1235
    :cond_2
    iget-object p1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object p1, p1, p2

    aget p2, p1, p3

    if-ne p2, v1, :cond_3

    const/4 p2, -0x1

    .line 1236
    aput p2, p1, p3

    :cond_3
    return-void
.end method

.method private static valuePositionInColumn([[III)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 1217
    aget-object v1, p0, v0

    aget v1, v1, p1

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 12

    .line 273
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->image:[B

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 275
    :cond_0
    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result p1

    .line 276
    invoke-virtual {p2}, Ljava/awt/Color;->getRGB()I

    move-result p2

    .line 277
    new-instance v0, Ljava/awt/Canvas;

    invoke-direct {v0}, Ljava/awt/Canvas;-><init>()V

    .line 279
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    mul-int/lit8 v3, v2, 0x2

    add-int v9, v1, v3

    .line 280
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    mul-int v1, v9, v6

    .line 281
    new-array v7, v1, [I

    add-int/lit8 v1, v9, 0x7

    .line 282
    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v6, :cond_3

    mul-int v5, v3, v1

    move v8, v2

    :goto_1
    if-ge v8, v9, :cond_2

    .line 287
    iget-object v10, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->image:[B

    div-int/lit8 v11, v8, 0x8

    add-int/2addr v11, v5

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    .line 288
    rem-int/lit8 v11, v8, 0x8

    shl-int/2addr v10, v11

    add-int/lit8 v11, v4, 0x1

    and-int/lit16 v10, v10, 0x80

    if-nez v10, :cond_1

    move v10, p2

    goto :goto_2

    :cond_1
    move v10, p1

    .line 289
    :goto_2
    aput v10, v7, v4

    add-int/lit8 v8, v8, 0x1

    move v4, v11

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    :cond_3
    new-instance p1, Ljava/awt/image/MemoryImageSource;

    const/4 v8, 0x0

    move-object v4, p1

    move v5, v9

    invoke-direct/range {v4 .. v9}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v0, p1}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object p1

    return-object p1
.end method

.method public createFormXObject(Lcom/itextpdf/kernel/colors/Color;FLcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 3

    .line 227
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 228
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v1, v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 229
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->setBBox(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    return-object v0
.end method

.method public createFormXObject(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 215
    invoke-virtual {p0, p1, v0, p2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->createFormXObject(Lcom/itextpdf/kernel/colors/Color;FLcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p1

    return-object p1
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4

    .line 205
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    int-to-float v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0
.end method

.method public getBarcodeSize(FF)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4

    .line 304
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget p1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-direct {v0, p2, p2, v1, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    return v0
.end method

.method public getOptions()I
    .locals 1

    .line 528
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->options:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 459
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    return v0
.end method

.method public getWs()I
    .locals 1

    .line 510
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    return v0
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 210
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 235
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->image:[B

    if-nez v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    .line 240
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 243
    :cond_1
    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    iget v3, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    .line 244
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    add-int/lit8 v3, v2, 0x7

    .line 245
    div-int/lit8 v3, v3, 0x8

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    mul-int v7, v6, v3

    move v8, v5

    :goto_1
    if-ge v8, v2, :cond_3

    .line 250
    iget-object v9, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->image:[B

    div-int/lit8 v10, v8, 0x8

    add-int/2addr v10, v7

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    .line 251
    rem-int/lit8 v10, v8, 0x8

    shl-int/2addr v9, v10

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_2

    int-to-float v9, v8

    mul-float/2addr v9, v1

    float-to-double v11, v9

    sub-int v9, v4, v6

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    mul-float/2addr v9, v1

    float-to-double v13, v9

    float-to-double v9, v1

    move-wide/from16 v17, v9

    move-object/from16 v10, p1

    move-wide/from16 v15, v17

    .line 253
    invoke-virtual/range {v10 .. v18}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 257
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    return-object v1
.end method

.method public setCode(Ljava/lang/String;)I
    .locals 2

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 325
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setCode([BII)I

    move-result p1

    return p1

    .line 323
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "text has to be encoded in iso-8859-1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCode([BII)I
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v1, p1

    move/from16 v0, p2

    move/from16 v2, p3

    .line 342
    const-string v3, ""

    if-ltz v0, :cond_c

    add-int v4, v0, v2

    .line 345
    array-length v5, v1

    if-gt v4, v5, :cond_b

    if-ltz v2, :cond_b

    const/16 v3, 0x9c4

    .line 350
    new-array v10, v3, [B

    const/4 v11, 0x0

    .line 351
    iput v11, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->extOut:I

    .line 352
    invoke-direct {v9, v1, v0, v2, v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->processExtensions([BII[B)I

    move-result v12

    if-gez v12, :cond_0

    const/4 v0, 0x5

    return v0

    .line 357
    :cond_0
    iget v3, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->extOut:I

    sub-int v3, v2, v3

    const/4 v13, 0x2

    new-array v4, v13, [I

    const/4 v14, 0x1

    aput v3, v4, v14

    const/4 v3, 0x6

    aput v3, v4, v11

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iput-object v4, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    .line 358
    iget v4, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->extOut:I

    sub-int v4, v2, v4

    new-array v5, v13, [I

    aput v4, v5, v14

    aput v3, v5, v11

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    .line 359
    iget v3, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    if-eqz v3, :cond_6

    iget v3, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move v3, v11

    .line 374
    :goto_0
    sget-object v4, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->dmSizes:[Lcom/itextpdf/barcodes/dmcode/DmParams;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 375
    iget v5, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    aget-object v6, v4, v3

    iget v6, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    if-ne v5, v6, :cond_2

    iget v5, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    aget-object v6, v4, v3

    iget v6, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    :cond_3
    :goto_1
    array-length v5, v4

    if-ne v3, v5, :cond_4

    const/4 v0, 0x3

    return v0

    .line 381
    :cond_4
    aget-object v15, v4, v3

    .line 382
    iget v3, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->extOut:I

    add-int v4, v0, v3

    sub-int v3, v2, v3

    iget v0, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    sub-int v6, v0, v12

    iget v7, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->options:I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move-object v4, v10

    move v5, v12

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->getEncodation([BII[BIIIZ)I

    move-result v0

    if-gez v0, :cond_5

    return v14

    :cond_5
    add-int/2addr v0, v12

    goto :goto_5

    .line 360
    :cond_6
    :goto_2
    sget-object v3, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->dmSizes:[Lcom/itextpdf/barcodes/dmcode/DmParams;

    array-length v4, v3

    sub-int/2addr v4, v14

    aget-object v3, v3, v4

    .line 361
    iget v4, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->extOut:I

    add-int v5, v0, v4

    sub-int v4, v2, v4

    iget v0, v3, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    sub-int v6, v0, v12

    iget v7, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->options:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v4

    move-object v4, v10

    move v5, v12

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->getEncodation([BII[BIIIZ)I

    move-result v0

    if-gez v0, :cond_7

    return v14

    :cond_7
    add-int/2addr v0, v12

    move v1, v11

    .line 366
    :goto_3
    sget-object v2, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->dmSizes:[Lcom/itextpdf/barcodes/dmcode/DmParams;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 367
    aget-object v3, v2, v1

    iget v3, v3, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    if-lt v3, v0, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 370
    :cond_9
    :goto_4
    aget-object v15, v2, v1

    .line 371
    iget v1, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iput v1, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    .line 372
    iget v1, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iput v1, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    .line 388
    :goto_5
    iget v1, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->options:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_a

    return v11

    .line 391
    :cond_a
    iget v1, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v2, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    mul-int/2addr v2, v13

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    iget v2, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iget v3, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    mul-int/2addr v3, v13

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->image:[B

    .line 392
    iget v1, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    sub-int/2addr v1, v0

    invoke-static {v10, v0, v1}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->makePadding([BII)V

    .line 393
    iget v0, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iget v1, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iget v2, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->heightSection:I

    div-int/2addr v1, v2

    mul-int/2addr v1, v13

    sub-int/2addr v0, v1

    iget v1, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v2, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v3, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->widthSection:I

    div-int/2addr v2, v3

    mul-int/2addr v2, v13

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->doPlacement(II)[S

    move-result-object v0

    iput-object v0, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->place:[S

    .line 394
    iget v0, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    iget v1, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    add-int/2addr v1, v13

    iget v2, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataBlock:I

    div-int/2addr v1, v2

    iget v2, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->errorBlock:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 395
    iget v1, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    iget v2, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataBlock:I

    iget v3, v15, Lcom/itextpdf/barcodes/dmcode/DmParams;->errorBlock:I

    invoke-static {v10, v1, v2, v3}, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->generateECC([BIII)V

    .line 396
    invoke-direct {v9, v10, v0, v15}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->draw([BILcom/itextpdf/barcodes/dmcode/DmParams;)V

    return v11

    .line 346
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 449
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    return-void
.end method

.method public setOptions(I)V
    .locals 0

    .line 561
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->options:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 501
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    return-void
.end method

.method public setWs(I)V
    .locals 0

    .line 519
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    return-void
.end method
