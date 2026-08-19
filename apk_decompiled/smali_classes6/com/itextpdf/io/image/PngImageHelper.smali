.class Lcom/itextpdf/io/image/PngImageHelper;
.super Ljava/lang/Object;
.source "PngImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/image/PngImageHelper$PngParameters;
    }
.end annotation


# static fields
.field public static final IDAT:Ljava/lang/String; = "IDAT"

.field public static final IEND:Ljava/lang/String; = "IEND"

.field public static final IHDR:Ljava/lang/String; = "IHDR"

.field public static final PLTE:Ljava/lang/String; = "PLTE"

.field public static final PNGID:[I

.field private static final PNG_FILTER_AVERAGE:I = 0x3

.field private static final PNG_FILTER_NONE:I = 0x0

.field private static final PNG_FILTER_PAETH:I = 0x4

.field private static final PNG_FILTER_SUB:I = 0x1

.field private static final PNG_FILTER_UP:I = 0x2

.field private static final TRANSFERSIZE:I = 0x1000

.field public static final cHRM:Ljava/lang/String; = "cHRM"

.field public static final gAMA:Ljava/lang/String; = "gAMA"

.field public static final iCCP:Ljava/lang/String; = "iCCP"

.field private static final intents:[Ljava/lang/String;

.field public static final pHYs:Ljava/lang/String; = "pHYs"

.field public static final sRGB:Ljava/lang/String; = "sRGB"

.field public static final tRNS:Ljava/lang/String; = "tRNS"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    .line 100
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/image/PngImageHelper;->PNGID:[I

    const/4 v0, 0x4

    .line 158
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/Perceptual"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/RelativeColorimetric"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/Saturation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/AbsoluteColormetric"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/io/image/PngImageHelper;->intents:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x89
        0x50
        0x4e
        0x47
        0xd
        0xa
        0x1a
        0xa
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMarker(Ljava/lang/String;)Z
    .locals 5

    .line 434
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_4

    .line 437
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x5a

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private static decodeAverageFilter([B[BII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 720
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 721
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    .line 722
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_1
    if-ge v0, p2, :cond_1

    .line 726
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    sub-int v2, v0, p3

    .line 727
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 728
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 729
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static decodeIdat(Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)V
    .locals 12

    .line 445
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    const/16 v7, 0x8

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    move v0, v7

    .line 449
    :cond_0
    iget v2, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v2, v1, :cond_1

    move v1, v8

    goto :goto_0

    :cond_1
    move v1, v9

    :goto_0
    iput v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    .line 450
    iget-object v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v1}, Lcom/itextpdf/io/image/PngImageData;->getColorType()I

    move-result v1

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eqz v1, :cond_7

    const/4 v2, 0x6

    if-eq v1, v2, :cond_6

    if-eq v1, v8, :cond_5

    const/4 v2, -0x1

    if-eq v1, v11, :cond_3

    if-eq v1, v10, :cond_2

    goto :goto_1

    .line 464
    :cond_2
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    mul-int v2, v0, v1

    .line 465
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    mul-int/2addr v0, v8

    iput v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    goto :goto_1

    .line 459
    :cond_3
    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->interlaceMethod:I

    if-ne v1, v9, :cond_4

    .line 460
    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v7

    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    mul-int/2addr v0, v1

    move v2, v0

    .line 461
    :cond_4
    iput v9, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    goto :goto_1

    .line 455
    :cond_5
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    mul-int/2addr v0, v11

    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    mul-int v2, v0, v1

    .line 456
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    mul-int/2addr v0, v11

    iput v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    goto :goto_1

    .line 468
    :cond_6
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    mul-int/2addr v0, v11

    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    mul-int v2, v0, v1

    .line 469
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    mul-int/2addr v0, v10

    iput v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    goto :goto_1

    .line 452
    :cond_7
    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v7

    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    mul-int v2, v0, v1

    :goto_1
    if-ltz v2, :cond_8

    .line 473
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->imageData:[B

    .line 474
    :cond_8
    iget-boolean v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    if-eqz v0, :cond_9

    .line 475
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    goto :goto_2

    .line 476
    :cond_9
    iget-boolean v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->genBWMask:Z

    if-eqz v0, :cond_a

    .line 477
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v7

    iget v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    .line 478
    :cond_a
    :goto_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->idat:Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 479
    invoke-static {v0}, Lcom/itextpdf/io/util/FilterUtil;->getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->dataStream:Ljava/io/InputStream;

    .line 481
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->interlaceMethod:I

    if-eq v0, v9, :cond_b

    .line 482
    iget v4, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v5, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    goto :goto_3

    .line 484
    :cond_b
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v4, v0, 0x8

    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v5, v0, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 485
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/2addr v0, v11

    div-int/lit8 v4, v0, 0x8

    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v5, v0, 0x8

    const/4 v0, 0x4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 486
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/2addr v0, v11

    div-int/lit8 v4, v0, 0x4

    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    add-int/2addr v0, v11

    div-int/lit8 v5, v0, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 487
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/2addr v0, v9

    div-int/lit8 v4, v0, 0x4

    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    add-int/2addr v0, v11

    div-int/lit8 v5, v0, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 488
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/2addr v0, v9

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    add-int/2addr v0, v9

    div-int/lit8 v5, v0, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 489
    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    add-int/2addr v0, v9

    div-int/lit8 v5, v0, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 490
    iget v4, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    div-int/lit8 v5, v0, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/image/PngImageHelper;->decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    :goto_3
    return-void
.end method

.method private static decodePaethFilter([B[BII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 752
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 753
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-byte v1, v1

    .line 754
    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_1
    if-ge v0, p2, :cond_1

    .line 758
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    sub-int v2, v0, p3

    .line 759
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 760
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    .line 761
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 762
    invoke-static {v3, v4, v2}, Lcom/itextpdf/io/image/PngImageHelper;->paethPredictor(III)I

    move-result v2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static decodePass(IIIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V
    .locals 15

    move/from16 v6, p5

    move-object/from16 v7, p6

    if-eqz p4, :cond_6

    if-nez v6, :cond_0

    goto/16 :goto_3

    .line 501
    :cond_0
    iget v0, v7, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    mul-int v0, v0, p4

    iget v1, v7, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v8, v0, 0x8

    .line 502
    new-array v0, v8, [B

    .line 503
    new-array v1, v8, [B

    const/4 v9, 0x0

    move/from16 v10, p1

    move-object v11, v0

    move-object v12, v1

    move v13, v9

    :goto_0
    if-ge v13, v6, :cond_6

    .line 513
    :try_start_0
    iget-object v0, v7, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->dataStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :try_start_1
    iget-object v1, v7, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->dataStream:Ljava/io/InputStream;

    invoke-static {v1, v11, v9, v8}, Lcom/itextpdf/io/util/StreamUtil;->readFully(Ljava/io/InputStream;[BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v0, v9

    :catch_1
    :goto_1
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 532
    iget v0, v7, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    invoke-static {v11, v12, v8, v0}, Lcom/itextpdf/io/image/PngImageHelper;->decodePaethFilter([B[BII)V

    goto :goto_2

    .line 536
    :cond_1
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Unknown PNG filter."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_2
    iget v0, v7, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    invoke-static {v11, v12, v8, v0}, Lcom/itextpdf/io/image/PngImageHelper;->decodeAverageFilter([B[BII)V

    goto :goto_2

    .line 526
    :cond_3
    invoke-static {v11, v12, v8}, Lcom/itextpdf/io/image/PngImageHelper;->decodeUpFilter([B[BI)V

    goto :goto_2

    .line 523
    :cond_4
    iget v0, v7, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bytesPerPixel:I

    invoke-static {v11, v8, v0}, Lcom/itextpdf/io/image/PngImageHelper;->decodeSubFilter([BII)V

    :cond_5
    :goto_2
    move-object v0, v11

    move v1, p0

    move/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move-object/from16 v5, p6

    .line 539
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/io/image/PngImageHelper;->processPixels([BIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    add-int/lit8 v13, v13, 0x1

    add-int v10, v10, p3

    move-object v14, v12

    move-object v12, v11

    move-object v11, v14

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method private static decodeSubFilter([BII)V
    .locals 3

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    .line 702
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    sub-int v2, v0, p2

    .line 703
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-byte v1, v1

    .line 704
    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static decodeUpFilter([B[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 710
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 711
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-byte v1, v1

    .line 712
    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getExpectedNumberOfColorComponents(Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)I
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->isGrayscaleImage()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public static getInt(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 776
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static getPixel([BIIII)I
    .locals 2

    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    mul-int/2addr p4, p2

    add-int/2addr p4, p1

    .line 647
    aget-byte p0, p0, p4

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    mul-int/2addr p4, p2

    .line 649
    div-int p2, v0, p3

    div-int v1, p1, p2

    add-int/2addr p4, v1

    .line 650
    aget-byte p0, p0, p4

    rem-int/2addr p1, p2

    mul-int/2addr p1, p3

    sub-int/2addr v0, p1

    sub-int/2addr v0, p3

    shr-int/2addr p0, v0

    const/4 p1, 0x1

    shl-int p2, p1, p3

    sub-int/2addr p2, p1

    and-int/2addr p0, p2

    return p0
.end method

.method private static getPixel([BLcom/itextpdf/io/image/PngImageHelper$PngParameters;)[I
    .locals 10

    .line 672
    iget v0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2

    .line 686
    array-length v0, p0

    mul-int/2addr v0, v2

    iget v3, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    div-int/2addr v0, v3

    new-array v0, v0, [I

    .line 688
    iget v3, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    div-int/2addr v2, v3

    .line 689
    iget v3, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    shl-int v3, v4, v3

    sub-int/2addr v3, v4

    move v5, v1

    .line 690
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_1

    add-int/lit8 v6, v2, -0x1

    :goto_1
    if-ltz v6, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 692
    aget-byte v8, p0, v1

    iget v9, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    mul-int/2addr v9, v6

    ushr-int/2addr v8, v9

    and-int/2addr v8, v3

    aput v8, v0, v5

    add-int/lit8 v6, v6, -0x1

    move v5, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 680
    :cond_2
    array-length p1, p0

    div-int/lit8 p1, p1, 0x2

    new-array v0, p1, [I

    :goto_2
    if-ge v1, p1, :cond_3

    mul-int/lit8 v3, v1, 0x2

    .line 682
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v2

    add-int/2addr v3, v4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v5, v3

    aput v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object v0

    .line 674
    :cond_4
    array-length p1, p0

    new-array v0, p1, [I

    :goto_3
    if-ge v1, p1, :cond_5

    .line 676
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-object v0
.end method

.method public static getString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 798
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 800
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWord(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static paethPredictor(III)I
    .locals 3

    add-int v0, p0, p1

    sub-int/2addr v0, p2

    sub-int v1, v0, p0

    .line 735
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, v0, p1

    .line 736
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v0, p2

    .line 737
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v1, v2, :cond_0

    if-gt v1, v0, :cond_0

    return p0

    :cond_0
    if-gt v2, v0, :cond_1

    return p1

    :cond_1
    return p2
.end method

.method public static processImage(Lcom/itextpdf/io/image/ImageData;)V
    .locals 3

    .line 163
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->loadData()V

    .line 171
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 172
    :try_start_1
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/itextpdf/io/image/ImageData;->imageSize:I

    .line 173
    new-instance v0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;

    check-cast p0, Lcom/itextpdf/io/image/PngImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;-><init>(Lcom/itextpdf/io/image/PngImageData;)V

    .line 174
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/PngImageHelper;->processPng(Ljava/io/InputStream;Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    :catch_0
    iget-object p0, v0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iget-object v0, v0, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->additional:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/RawImageHelper;->updateImageAttributes(Lcom/itextpdf/io/image/RawImageData;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 176
    :goto_0
    :try_start_3
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "PNG image exception."

    invoke-direct {v1, v2, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v0, :cond_1

    .line 180
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 184
    :catch_3
    :cond_1
    throw p0

    .line 164
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PNG image expected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static processPixels([BIIIILcom/itextpdf/io/image/PngImageHelper$PngParameters;)V
    .locals 23

    move/from16 v0, p4

    move-object/from16 v1, p5

    .line 550
    iget-object v2, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v2}, Lcom/itextpdf/io/image/PngImageData;->getColorType()I

    move-result v2

    move-object/from16 v3, p0

    .line 552
    invoke-static {v3, v1}, Lcom/itextpdf/io/image/PngImageHelper;->getPixel([BLcom/itextpdf/io/image/PngImageHelper$PngParameters;)[I

    move-result-object v11

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v2, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    if-eq v2, v14, :cond_0

    if-eq v2, v13, :cond_1

    if-eq v2, v12, :cond_1

    move/from16 v17, v16

    goto :goto_0

    :cond_0
    move/from16 v17, v13

    goto :goto_0

    :cond_1
    move/from16 v17, v15

    .line 565
    :goto_0
    iget-object v3, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->imageData:[B

    const/16 v10, 0x10

    const/16 v18, 0x8

    if-eqz v3, :cond_3

    .line 567
    iget v3, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    mul-int v3, v3, v17

    iget v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    if-ne v4, v10, :cond_2

    move/from16 v4, v18

    goto :goto_1

    :cond_2
    iget v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    :goto_1
    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v19, v3, 0x8

    move/from16 v20, p1

    move/from16 v9, v16

    :goto_2
    if-ge v9, v0, :cond_3

    .line 569
    iget-object v3, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->imageData:[B

    iget v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    mul-int v5, v4, v9

    iget v8, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    move-object v4, v11

    move/from16 v6, v17

    move/from16 v7, v20

    move/from16 v21, v8

    move/from16 v8, p3

    move/from16 v22, v9

    move/from16 v9, v21

    move v13, v10

    move/from16 v10, v19

    invoke-static/range {v3 .. v10}, Lcom/itextpdf/io/image/PngImageHelper;->setPixel([B[IIIIIII)V

    add-int v20, v20, p2

    add-int/lit8 v9, v22, 0x1

    move v10, v13

    const/4 v13, 0x3

    goto :goto_2

    :cond_3
    move v13, v10

    .line 573
    iget-boolean v3, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    if-eqz v3, :cond_7

    and-int/2addr v2, v12

    if-eqz v2, :cond_5

    .line 575
    iget v2, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    if-ne v2, v13, :cond_4

    move/from16 v2, v16

    :goto_3
    if-ge v2, v0, :cond_4

    .line 577
    iget v3, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    mul-int/2addr v3, v2

    add-int v3, v3, v17

    aget v4, v11, v3

    ushr-int/lit8 v4, v4, 0x8

    aput v4, v11, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 579
    :cond_4
    iget v2, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    move/from16 v12, p1

    move/from16 v13, v16

    :goto_4
    if-ge v13, v0, :cond_e

    .line 582
    iget-object v3, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    iget v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    mul-int/2addr v4, v13

    add-int v5, v4, v17

    const/4 v6, 0x1

    const/16 v9, 0x8

    move-object v4, v11

    move v7, v12

    move/from16 v8, p3

    move v10, v2

    invoke-static/range {v3 .. v10}, Lcom/itextpdf/io/image/PngImageHelper;->setPixel([B[IIIIIII)V

    add-int v12, v12, p2

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 586
    :cond_5
    iget v2, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    .line 587
    new-array v12, v15, [I

    move/from16 v13, p1

    move/from16 v14, v16

    :goto_5
    if-ge v14, v0, :cond_e

    .line 590
    aget v3, v11, v14

    .line 591
    iget-object v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    array-length v4, v4

    if-ge v3, v4, :cond_6

    .line 592
    iget-object v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    aget-byte v3, v4, v3

    aput v3, v12, v16

    goto :goto_6

    :cond_6
    const/16 v3, 0xff

    .line 595
    aput v3, v12, v16

    .line 597
    :goto_6
    iget-object v3, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    const/4 v6, 0x1

    const/16 v9, 0x8

    const/4 v5, 0x0

    move-object v4, v12

    move v7, v13

    move/from16 v8, p3

    move v10, v2

    invoke-static/range {v3 .. v10}, Lcom/itextpdf/io/image/PngImageHelper;->setPixel([B[IIIIIII)V

    add-int v13, v13, p2

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 601
    :cond_7
    iget-boolean v3, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->genBWMask:Z

    if-eqz v3, :cond_e

    if-eqz v2, :cond_c

    if-eq v2, v14, :cond_a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    goto/16 :goto_d

    .line 604
    :cond_8
    iget v2, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    move/from16 v12, p1

    move/from16 v13, v16

    :goto_7
    if-ge v13, v0, :cond_e

    .line 608
    aget v3, v11, v13

    .line 609
    iget-object v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    array-length v4, v4

    if-ge v3, v4, :cond_9

    iget-object v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    aget-byte v3, v4, v3

    if-nez v3, :cond_9

    move v3, v15

    goto :goto_8

    :cond_9
    move/from16 v3, v16

    :goto_8
    filled-new-array {v3}, [I

    move-result-object v4

    .line 610
    iget-object v3, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    const/4 v6, 0x1

    const/4 v9, 0x1

    const/4 v5, 0x0

    move v7, v12

    move/from16 v8, p3

    move v10, v2

    invoke-static/range {v3 .. v10}, Lcom/itextpdf/io/image/PngImageHelper;->setPixel([B[IIIIIII)V

    add-int v12, v12, p2

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 628
    :cond_a
    iget v2, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    move/from16 v12, p1

    move/from16 v13, v16

    :goto_9
    if-ge v13, v0, :cond_e

    .line 632
    iget v3, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    mul-int/2addr v3, v13

    .line 633
    aget v4, v11, v3

    iget v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transRedGray:I

    if-ne v4, v5, :cond_b

    add-int/lit8 v4, v3, 0x1

    aget v4, v11, v4

    iget v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transGreen:I

    if-ne v4, v5, :cond_b

    add-int/lit8 v3, v3, 0x2

    aget v3, v11, v3

    iget v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transBlue:I

    if-ne v3, v4, :cond_b

    move v3, v15

    goto :goto_a

    :cond_b
    move/from16 v3, v16

    :goto_a
    filled-new-array {v3}, [I

    move-result-object v4

    .line 635
    iget-object v3, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    const/4 v6, 0x1

    const/4 v9, 0x1

    const/4 v5, 0x0

    move v7, v12

    move/from16 v8, p3

    move v10, v2

    invoke-static/range {v3 .. v10}, Lcom/itextpdf/io/image/PngImageHelper;->setPixel([B[IIIIIII)V

    add-int v12, v12, p2

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 616
    :cond_c
    iget v2, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    move/from16 v12, p1

    move/from16 v13, v16

    :goto_b
    if-ge v13, v0, :cond_e

    .line 620
    aget v3, v11, v13

    .line 621
    iget v4, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transRedGray:I

    if-ne v3, v4, :cond_d

    move v3, v15

    goto :goto_c

    :cond_d
    move/from16 v3, v16

    :goto_c
    filled-new-array {v3}, [I

    move-result-object v4

    .line 622
    iget-object v3, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    const/4 v6, 0x1

    const/4 v9, 0x1

    const/4 v5, 0x0

    move v7, v12

    move/from16 v8, p3

    move v10, v2

    invoke-static/range {v3 .. v10}, Lcom/itextpdf/io/image/PngImageHelper;->setPixel([B[IIIIIII)V

    add-int v12, v12, p2

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_e
    :goto_d
    return-void
.end method

.method private static processPng(Ljava/io/InputStream;Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-static {p0, p1}, Lcom/itextpdf/io/image/PngImageHelper;->readPng(Ljava/io/InputStream;Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 190
    iget-object p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->getColorType()I

    move-result p0

    .line 191
    iget-object v0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->iccProfile:Lcom/itextpdf/io/colors/IccProfile;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->iccProfile:Lcom/itextpdf/io/colors/IccProfile;

    invoke-virtual {v0}, Lcom/itextpdf/io/colors/IccProfile;->getNumComponents()I

    move-result v0

    invoke-static {p1}, Lcom/itextpdf/io/image/PngImageHelper;->getExpectedNumberOfColorComponents(Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 192
    const-class v0, Lcom/itextpdf/io/image/PngImageHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Png image has color profile with incompatible number of color components."

    .line 193
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 198
    :try_start_0
    iput-boolean v0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    .line 199
    iget-object v1, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    move v1, v0

    move v3, v1

    move v4, v3

    .line 200
    :goto_0
    iget-object v5, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 201
    iget-object v5, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    aget-byte v5, v5, v1

    const/16 v6, 0xff

    and-int/2addr v5, v6

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    move v4, v1

    :cond_1
    if-eqz v5, :cond_2

    if-eq v5, v6, :cond_2

    .line 207
    iput-boolean v2, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v3, v0

    move v4, v3

    :cond_4
    :goto_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_5

    .line 213
    iput-boolean v2, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    .line 214
    :cond_5
    iget-boolean v5, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    if-nez v5, :cond_7

    if-gt v3, v2, :cond_6

    iget v5, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transRedGray:I

    if-ltz v5, :cond_7

    :cond_6
    move v5, v2

    goto :goto_2

    :cond_7
    move v5, v0

    :goto_2
    iput-boolean v5, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->genBWMask:Z

    .line 215
    iget-boolean v5, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    if-nez v5, :cond_8

    iget-boolean v5, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->genBWMask:Z

    if-nez v5, :cond_8

    if-ne v3, v2, :cond_8

    .line 216
    iget-object v3, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->additional:Ljava/util/Map;

    const-string v5, "Mask"

    filled-new-array {v4, v4}, [I

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_8
    iget v3, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->interlaceMethod:I

    const/16 v4, 0x10

    if-eq v3, v2, :cond_9

    iget v3, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    if-eq v3, v4, :cond_9

    if-nez v1, :cond_9

    iget-boolean v3, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    if-nez v3, :cond_9

    iget-boolean v3, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->genBWMask:Z

    if-eqz v3, :cond_a

    :cond_9
    move v0, v2

    :cond_a
    const/4 v3, 0x3

    if-eqz p0, :cond_f

    const/4 v5, 0x6

    const/4 v6, 0x4

    if-eq p0, v5, :cond_e

    const/4 v5, 0x2

    if-eq p0, v5, :cond_d

    if-eq p0, v3, :cond_c

    if-eq p0, v6, :cond_b

    goto :goto_3

    .line 230
    :cond_b
    iput v5, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    goto :goto_3

    .line 227
    :cond_c
    iput v2, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    goto :goto_3

    .line 224
    :cond_d
    iput v3, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    goto :goto_3

    .line 233
    :cond_e
    iput v6, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    goto :goto_3

    .line 221
    :cond_f
    iput v2, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    :goto_3
    if-eqz v0, :cond_10

    .line 237
    invoke-static {p1}, Lcom/itextpdf/io/image/PngImageHelper;->decodeIdat(Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)V

    .line 238
    :cond_10
    iget p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->inputBands:I

    if-eqz v1, :cond_11

    add-int/lit8 p0, p0, -0x1

    :cond_11
    move v8, p0

    .line 241
    iget p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    if-ne p0, v4, :cond_12

    const/16 p0, 0x8

    :cond_12
    move v9, p0

    .line 244
    iget-object p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->imageData:[B

    if-eqz p0, :cond_14

    .line 245
    iget-object p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->isIndexed()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 246
    iget-object v5, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iget v6, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v7, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    iget-object v10, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->imageData:[B

    invoke-static/range {v5 .. v10}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    goto :goto_5

    .line 248
    :cond_13
    iget-object v5, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iget v6, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v7, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    iget-object v10, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->imageData:[B

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B[I)V

    goto :goto_5

    .line 251
    :cond_14
    iget-object v5, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iget v6, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v7, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    iget-object p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->idat:Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {p0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static/range {v5 .. v10}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 252
    iget-object p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/image/PngImageData;->setDeflated(Z)V

    .line 253
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 254
    const-string v0, "BitsPerComponent"

    iget v1, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "Predictor"

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "Columns"

    iget v1, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "Colors"

    iget-object v1, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v1}, Lcom/itextpdf/io/image/PngImageData;->isIndexed()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v1}, Lcom/itextpdf/io/image/PngImageData;->isGrayscaleImage()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_4

    :cond_15
    move v2, v3

    :cond_16
    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iput-object p0, v0, Lcom/itextpdf/io/image/PngImageData;->decodeParms:Ljava/util/Map;

    .line 260
    :goto_5
    iget-object p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->intent:Ljava/lang/String;

    if-eqz p0, :cond_17

    .line 261
    iget-object p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->additional:Ljava/util/Map;

    const-string v0, "Intent"

    iget-object v1, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->intent:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_17
    iget-object p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->iccProfile:Lcom/itextpdf/io/colors/IccProfile;

    if-eqz p0, :cond_18

    .line 263
    iget-object p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iget-object v0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->iccProfile:Lcom/itextpdf/io/colors/IccProfile;

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/PngImageData;->setProfile(Lcom/itextpdf/io/colors/IccProfile;)V

    .line 264
    :cond_18
    iget-boolean p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->palShades:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    .line 265
    invoke-static {v0}, Lcom/itextpdf/io/image/ImageDataFactory;->createRawImage([B)Lcom/itextpdf/io/image/ImageData;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/io/image/RawImageData;

    .line 266
    iget v2, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v3, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    iget-object v6, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    const/4 v4, 0x1

    const/16 v5, 0x8

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 267
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->makeMask()V

    .line 268
    iget-object v1, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v1, p0}, Lcom/itextpdf/io/image/PngImageData;->setImageMask(Lcom/itextpdf/io/image/ImageData;)V

    .line 270
    :cond_19
    iget-boolean p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->genBWMask:Z

    if-eqz p0, :cond_1a

    .line 271
    invoke-static {v0}, Lcom/itextpdf/io/image/ImageDataFactory;->createRawImage([B)Lcom/itextpdf/io/image/ImageData;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/io/image/RawImageData;

    .line 272
    iget v1, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    iget v2, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    iget-object v5, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->smask:[B

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 273
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->makeMask()V

    .line 274
    iget-object v0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v0, p0}, Lcom/itextpdf/io/image/PngImageData;->setImageMask(Lcom/itextpdf/io/image/ImageData;)V

    .line 276
    :cond_1a
    iget-object p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iget v0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->dpiX:I

    iget v1, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->dpiY:I

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/io/image/PngImageData;->setDpi(II)V

    .line 277
    iget-object p0, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    iget p1, p1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->XYRatio:F

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/image/PngImageData;->setXYRatio(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 279
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "PNG image exception."

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static readPng(Ljava/io/InputStream;Lcom/itextpdf/io/image/PngImageHelper$PngParameters;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    .line 288
    :goto_0
    sget-object v4, Lcom/itextpdf/io/image/PngImageHelper;->PNGID:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 289
    aget v4, v4, v3

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "file.is.not.a.valid.png"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v3, 0x1000

    .line 293
    new-array v4, v3, [B

    .line 295
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v5

    .line 296
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    if-ltz v5, :cond_1b

    .line 297
    invoke-static {v6}, Lcom/itextpdf/io/image/PngImageHelper;->checkMarker(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 299
    const-string v7, "IDAT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    if-eqz v5, :cond_1a

    .line 302
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v0, v4, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-gez v6, :cond_2

    return-void

    .line 305
    :cond_2
    iget-object v7, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->idat:Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v7, v4, v2, v6}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->write([BII)V

    sub-int/2addr v5, v6

    goto :goto_2

    .line 308
    :cond_3
    const-string v7, "tRNS"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 309
    iget-object v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v6}, Lcom/itextpdf/io/image/PngImageData;->getColorType()I

    move-result v6

    const-string v7, "Mask"

    const/16 v8, 0x10

    const/4 v9, 0x2

    if-eqz v6, :cond_8

    if-eq v6, v9, :cond_6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    goto/16 :goto_4

    :cond_4
    if-lez v5, :cond_a

    .line 337
    new-array v6, v5, [B

    iput-object v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_5

    .line 339
    iget-object v7, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->trans:[B

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    move v5, v2

    goto :goto_4

    :cond_6
    const/4 v6, 0x6

    if-lt v5, v6, :cond_a

    add-int/lit8 v5, v5, -0x6

    .line 324
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getWord(Ljava/io/InputStream;)I

    move-result v6

    .line 325
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getWord(Ljava/io/InputStream;)I

    move-result v9

    .line 326
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getWord(Ljava/io/InputStream;)I

    move-result v10

    .line 327
    iget v11, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    if-ne v11, v8, :cond_7

    .line 328
    iput v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transRedGray:I

    .line 329
    iput v9, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transGreen:I

    .line 330
    iput v10, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transBlue:I

    goto :goto_4

    .line 332
    :cond_7
    iget-object v8, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->additional:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Object;

    move-result-object v6

    const-string v9, "[{0} {1} {2} {3} {4} {5}]"

    invoke-static {v9, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    if-lt v5, v9, :cond_a

    add-int/lit8 v5, v5, -0x2

    .line 313
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getWord(Ljava/io/InputStream;)I

    move-result v6

    .line 314
    iget v9, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    if-ne v9, v8, :cond_9

    .line 315
    iput v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->transRedGray:I

    goto :goto_4

    .line 317
    :cond_9
    iget-object v8, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->additional:Ljava/util/Map;

    .line 318
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v9, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v9, "[{0} {1}]"

    invoke-static {v9, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 317
    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_4
    int-to-long v5, v5

    .line 344
    invoke-static {v0, v5, v6}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    goto/16 :goto_8

    .line 345
    :cond_b
    const-string v7, "IHDR"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 346
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->width:I

    .line 347
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->height:I

    .line 349
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->bitDepth:I

    .line 350
    iget-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/image/PngImageData;->setColorType(I)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->compressionMethod:I

    .line 352
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->filterMethod:I

    .line 353
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->interlaceMethod:I

    goto/16 :goto_8

    .line 354
    :cond_c
    const-string v7, "PLTE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 355
    iget-object v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v6}, Lcom/itextpdf/io/image/PngImageData;->isIndexed()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 356
    new-instance v6, Lcom/itextpdf/io/source/ByteBuffer;

    invoke-direct {v6}, Lcom/itextpdf/io/source/ByteBuffer;-><init>()V

    :goto_5
    add-int/lit8 v7, v5, -0x1

    if-lez v5, :cond_d

    .line 358
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    move v5, v7

    goto :goto_5

    .line 360
    :cond_d
    iget-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/image/PngImageData;->setColorPalette([B)V

    goto/16 :goto_8

    :cond_e
    int-to-long v5, v5

    .line 362
    invoke-static {v0, v5, v6}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    goto/16 :goto_8

    .line 364
    :cond_f
    const-string v7, "pHYs"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_11

    .line 365
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v5

    .line 366
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v6

    .line 367
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ne v7, v8, :cond_10

    int-to-float v5, v5

    const v7, 0x3cd013a9    # 0.0254f

    mul-float/2addr v5, v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v5, v8

    float-to-int v5, v5

    .line 369
    iput v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->dpiX:I

    int-to-float v5, v6

    mul-float/2addr v5, v7

    add-float/2addr v5, v8

    float-to-int v5, v5

    .line 370
    iput v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->dpiY:I

    goto/16 :goto_8

    :cond_10
    if-eqz v6, :cond_1a

    int-to-float v5, v5

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 373
    iput v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->XYRatio:F

    goto/16 :goto_8

    .line 375
    :cond_11
    const-string v7, "cHRM"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const v9, 0x47c35000    # 100000.0f

    if-eqz v7, :cond_12

    .line 376
    new-instance v5, Lcom/itextpdf/io/image/PngChromaticities;

    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v6

    int-to-float v6, v6

    div-float v11, v6, v9

    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v6

    int-to-float v6, v6

    div-float v12, v6, v9

    .line 377
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v6

    int-to-float v6, v6

    div-float v13, v6, v9

    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v6

    int-to-float v6, v6

    div-float v14, v6, v9

    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v6

    int-to-float v6, v6

    div-float v15, v6, v9

    .line 378
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v6

    int-to-float v6, v6

    div-float v16, v6, v9

    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v6

    int-to-float v6, v6

    div-float v17, v6, v9

    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v6

    int-to-float v6, v6

    div-float v18, v6, v9

    move-object v10, v5

    invoke-direct/range {v10 .. v18}, Lcom/itextpdf/io/image/PngChromaticities;-><init>(FFFFFFFF)V

    .line 379
    invoke-virtual {v5}, Lcom/itextpdf/io/image/PngChromaticities;->getXW()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x38d1b717    # 1.0E-4f

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1a

    invoke-virtual {v5}, Lcom/itextpdf/io/image/PngChromaticities;->getYW()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1a

    .line 380
    invoke-virtual {v5}, Lcom/itextpdf/io/image/PngChromaticities;->getXR()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1a

    invoke-virtual {v5}, Lcom/itextpdf/io/image/PngChromaticities;->getYR()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1a

    .line 381
    invoke-virtual {v5}, Lcom/itextpdf/io/image/PngChromaticities;->getXG()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1a

    invoke-virtual {v5}, Lcom/itextpdf/io/image/PngChromaticities;->getYG()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1a

    .line 382
    invoke-virtual {v5}, Lcom/itextpdf/io/image/PngChromaticities;->getXB()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1a

    invoke-virtual {v5}, Lcom/itextpdf/io/image/PngChromaticities;->getYB()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1a

    .line 383
    iget-object v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/image/PngImageData;->setPngChromaticities(Lcom/itextpdf/io/image/PngChromaticities;)V

    goto/16 :goto_8

    .line 385
    :cond_12
    const-string v7, "sRGB"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 386
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 387
    sget-object v6, Lcom/itextpdf/io/image/PngImageHelper;->intents:[Ljava/lang/String;

    aget-object v5, v6, v5

    iput-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->intent:Ljava/lang/String;

    .line 388
    iget-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    const v6, 0x400ccccd    # 2.2f

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/image/PngImageData;->setGamma(F)V

    .line 389
    new-instance v5, Lcom/itextpdf/io/image/PngChromaticities;

    const v14, 0x3e19999a    # 0.15f

    const v15, 0x3d75c28f    # 0.06f

    const v8, 0x3ea01a37    # 0.3127f

    const v9, 0x3ea872b0    # 0.329f

    const v10, 0x3f23d70a    # 0.64f

    const v11, 0x3ea8f5c3    # 0.33f

    const v12, 0x3e99999a    # 0.3f

    const v13, 0x3f19999a    # 0.6f

    move-object v7, v5

    invoke-direct/range {v7 .. v15}, Lcom/itextpdf/io/image/PngChromaticities;-><init>(FFFFFFFF)V

    .line 391
    iget-object v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/image/PngImageData;->setPngChromaticities(Lcom/itextpdf/io/image/PngChromaticities;)V

    goto/16 :goto_8

    .line 392
    :cond_13
    const-string v7, "gAMA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 393
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/PngImageHelper;->getInt(Ljava/io/InputStream;)I

    move-result v5

    if-eqz v5, :cond_1a

    .line 395
    iget-object v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    int-to-float v5, v5

    div-float/2addr v9, v5

    invoke-virtual {v6, v9}, Lcom/itextpdf/io/image/PngImageData;->setGamma(F)V

    .line 396
    iget-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v5}, Lcom/itextpdf/io/image/PngImageData;->isHasCHRM()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 397
    new-instance v5, Lcom/itextpdf/io/image/PngChromaticities;

    const v13, 0x3e19999a    # 0.15f

    const v14, 0x3d75c28f    # 0.06f

    const v7, 0x3ea01a37    # 0.3127f

    const v8, 0x3ea872b0    # 0.329f

    const v9, 0x3f23d70a    # 0.64f

    const v10, 0x3ea8f5c3    # 0.33f

    const v11, 0x3e99999a    # 0.3f

    const v12, 0x3f19999a    # 0.6f

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lcom/itextpdf/io/image/PngChromaticities;-><init>(FFFFFFFF)V

    .line 399
    iget-object v6, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->image:Lcom/itextpdf/io/image/PngImageData;

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/image/PngImageData;->setPngChromaticities(Lcom/itextpdf/io/image/PngChromaticities;)V

    goto :goto_8

    .line 402
    :cond_14
    const-string v7, "iCCP"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    :goto_6
    add-int/lit8 v6, v5, -0x1

    .line 405
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-nez v7, :cond_17

    .line 406
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    add-int/lit8 v5, v5, -0x2

    .line 408
    new-array v6, v5, [B

    move v7, v2

    :goto_7
    if-lez v5, :cond_16

    .line 411
    invoke-virtual {v0, v6, v7, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-ltz v9, :cond_15

    add-int/2addr v7, v9

    sub-int/2addr v5, v9

    goto :goto_7

    .line 413
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "premature.end.of.file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_16
    invoke-static {v6, v8}, Lcom/itextpdf/io/util/FilterUtil;->flateDecode([BZ)[B

    move-result-object v5

    .line 420
    :try_start_0
    invoke-static {v5}, Lcom/itextpdf/io/colors/IccProfile;->getInstance([B)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v5

    iput-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->iccProfile:Lcom/itextpdf/io/colors/IccProfile;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    const/4 v5, 0x0

    .line 422
    iput-object v5, v1, Lcom/itextpdf/io/image/PngImageHelper$PngParameters;->iccProfile:Lcom/itextpdf/io/colors/IccProfile;

    goto :goto_8

    :cond_17
    move v5, v6

    goto :goto_6

    .line 424
    :cond_18
    const-string v7, "IEND"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    return-void

    :cond_19
    int-to-long v5, v5

    .line 427
    invoke-static {v0, v5, v6}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    :cond_1a
    :goto_8
    const-wide/16 v5, 0x4

    .line 429
    invoke-static {v0, v5, v6}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    goto/16 :goto_1

    .line 298
    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted.png.file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static setPixel([B[IIIIIII)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p6, v1, :cond_0

    mul-int/2addr p7, p5

    mul-int/2addr p4, p3

    add-int/2addr p7, p4

    :goto_0
    if-ge v0, p3, :cond_2

    add-int p4, p7, v0

    add-int p5, v0, p2

    .line 659
    aget p5, p1, p5

    int-to-byte p5, p5

    aput-byte p5, p0, p4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    if-ne p6, v2, :cond_1

    mul-int/2addr p7, p5

    mul-int/2addr p4, p3

    add-int/2addr p7, p4

    :goto_1
    if-ge v0, p3, :cond_2

    add-int p4, p7, v0

    add-int p5, v0, p2

    .line 663
    aget p5, p1, p5

    ushr-int/2addr p5, v1

    int-to-byte p5, p5

    aput-byte p5, p0, p4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    mul-int/2addr p7, p5

    .line 665
    div-int p3, v1, p6

    div-int p5, p4, p3

    add-int/2addr p7, p5

    .line 666
    aget p1, p1, p2

    rem-int/2addr p4, p3

    mul-int/2addr p4, p6

    sub-int/2addr v1, p4

    sub-int/2addr v1, p6

    shl-int/2addr p1, v1

    .line 667
    aget-byte p2, p0, p7

    int-to-byte p1, p1

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, p0, p7

    :cond_2
    return-void
.end method
