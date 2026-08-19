.class final Lcom/itextpdf/barcodes/qrcode/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final ALPHANUMERIC_TABLE:[I

.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    .line 60
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Encoder;->ALPHANUMERIC_TABLE:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/exceptions/WriterException;
        }
    .end annotation

    .line 594
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    .line 598
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_0

    .line 599
    aget-byte v0, p0, p2

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 596
    new-instance p1, Lcom/itextpdf/barcodes/exceptions/WriterException;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static appendAlphanumericBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/exceptions/WriterException;
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 570
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/barcodes/qrcode/Encoder;->getAlphanumericCode(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_1

    .line 575
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/itextpdf/barcodes/qrcode/Encoder;->getAlphanumericCode(I)I

    move-result v4

    if-eq v4, v3, :cond_0

    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v4

    const/16 v3, 0xb

    .line 580
    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 577
    :cond_0
    new-instance p0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    invoke-direct {p0}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>()V

    throw p0

    :cond_1
    const/4 v1, 0x6

    .line 584
    invoke-virtual {p1, v2, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    move v1, v4

    goto :goto_0

    .line 572
    :cond_2
    new-instance p0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    invoke-direct {p0}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method static appendBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/BitVector;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/exceptions/WriterException;
        }
    .end annotation

    .line 529
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->NUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-static {p0, p2}, Lcom/itextpdf/barcodes/qrcode/Encoder;->appendNumericBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    goto :goto_0

    .line 531
    :cond_0
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->ALPHANUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    invoke-static {p0, p2}, Lcom/itextpdf/barcodes/qrcode/Encoder;->appendAlphanumericBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    goto :goto_0

    .line 533
    :cond_1
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    invoke-static {p0, p2, p3}, Lcom/itextpdf/barcodes/qrcode/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_2
    sget-object p3, Lcom/itextpdf/barcodes/qrcode/Mode;->KANJI:Lcom/itextpdf/barcodes/qrcode/Mode;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 536
    invoke-static {p0, p2}, Lcom/itextpdf/barcodes/qrcode/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    :goto_0
    return-void

    .line 538
    :cond_3
    new-instance p0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid mode: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static appendECI(Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 2

    .line 630
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->ECI:Lcom/itextpdf/barcodes/qrcode/Mode;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 632
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->getValue()I

    move-result p0

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/exceptions/WriterException;
        }
    .end annotation

    .line 606
    :try_start_0
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 612
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    .line 613
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    const v3, 0x8140

    const/4 v4, -0x1

    if-lt v2, v3, :cond_0

    const v5, 0x9ffc

    if-gt v2, v5, :cond_0

    :goto_1
    sub-int/2addr v2, v3

    goto :goto_2

    :cond_0
    const v3, 0xe040

    if-lt v2, v3, :cond_1

    const v3, 0xebbf

    if-gt v2, v3, :cond_1

    const v3, 0xc140

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_2
    if-eq v2, v4, :cond_2

    shr-int/lit8 v3, v2, 0x8

    mul-int/lit16 v3, v3, 0xc0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    const/16 v2, 0xd

    .line 625
    invoke-virtual {p1, v3, v2}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 622
    :cond_2
    new-instance p0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 608
    new-instance p1, Lcom/itextpdf/barcodes/exceptions/WriterException;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static appendLengthInfo(IILcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/exceptions/WriterException;
        }
    .end annotation

    .line 517
    invoke-static {p1}, Lcom/itextpdf/barcodes/qrcode/Version;->getVersionForNumber(I)Lcom/itextpdf/barcodes/qrcode/Version;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/barcodes/qrcode/Mode;->getCharacterCountBits(Lcom/itextpdf/barcodes/qrcode/Version;)I

    move-result p1

    const/4 p2, 0x1

    shl-int v0, p2, p1

    sub-int/2addr v0, p2

    if-gt p0, v0, :cond_0

    .line 521
    invoke-virtual {p3, p0, p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    return-void

    .line 519
    :cond_0
    new-instance p1, Lcom/itextpdf/barcodes/exceptions/WriterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "is bigger than"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static appendModeInfo(Lcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 1

    .line 508
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/Mode;->getBits()I

    move-result p0

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    return-void
.end method

.method static appendNumericBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 6

    .line 543
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 546
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 549
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 550
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v2, v2, 0x64

    const/16 v5, 0xa

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 551
    invoke-virtual {p1, v2, v5}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 555
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    const/4 v1, 0x7

    .line 556
    invoke-virtual {p1, v2, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    .line 560
    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static calculateMaskPenalty(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I
    .locals 2

    .line 90
    invoke-static {p0}, Lcom/itextpdf/barcodes/qrcode/MaskUtil;->applyMaskPenaltyRule1(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I

    move-result v0

    .line 91
    invoke-static {p0}, Lcom/itextpdf/barcodes/qrcode/MaskUtil;->applyMaskPenaltyRule2(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    invoke-static {p0}, Lcom/itextpdf/barcodes/qrcode/MaskUtil;->applyMaskPenaltyRule3(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    invoke-static {p0}, Lcom/itextpdf/barcodes/qrcode/MaskUtil;->applyMaskPenaltyRule4(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static chooseMaskPattern(Lcom/itextpdf/barcodes/qrcode/BitVector;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/barcodes/qrcode/ByteMatrix;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/exceptions/WriterException;
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 279
    invoke-static {p0, p1, p2, v2, p3}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->buildMatrix(Lcom/itextpdf/barcodes/qrcode/BitVector;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 280
    invoke-static {p3}, Lcom/itextpdf/barcodes/qrcode/Encoder;->calculateMaskPenalty(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)I

    move-result v3

    if-ge v3, v0, :cond_0

    move v1, v2

    move v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/itextpdf/barcodes/qrcode/Mode;
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-static {p0, v0}, Lcom/itextpdf/barcodes/qrcode/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/barcodes/qrcode/Mode;

    move-result-object p0

    return-object p0
.end method

.method public static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/barcodes/qrcode/Mode;
    .locals 5

    .line 226
    const-string v0, "Shift_JIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 228
    invoke-static {p0}, Lcom/itextpdf/barcodes/qrcode/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->KANJI:Lcom/itextpdf/barcodes/qrcode/Mode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    :goto_0
    return-object p0

    :cond_1
    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    .line 232
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 233
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_2

    move v1, v4

    goto :goto_2

    .line 236
    :cond_2
    invoke-static {v2}, Lcom/itextpdf/barcodes/qrcode/Encoder;->getAlphanumericCode(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    move v0, v4

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 239
    :cond_3
    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object p0

    :cond_4
    if-eqz v0, :cond_5

    .line 243
    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->ALPHANUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object p0

    :cond_5
    if-eqz v1, :cond_6

    .line 245
    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->NUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object p0

    .line 247
    :cond_6
    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;Lcom/itextpdf/barcodes/qrcode/QRCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/exceptions/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 115
    invoke-static {p0, p1, v0, p2}, Lcom/itextpdf/barcodes/qrcode/Encoder;->encode(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;Ljava/util/Map;Lcom/itextpdf/barcodes/qrcode/QRCode;)V

    return-void
.end method

.method public static encode(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;Ljava/util/Map;Lcom/itextpdf/barcodes/qrcode/QRCode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/barcodes/qrcode/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/itextpdf/barcodes/qrcode/QRCode;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/exceptions/WriterException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :cond_0
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;->CHARACTER_SET:Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    :goto_0
    const-string v1, "ISO-8859-1"

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 142
    sget-object v3, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;->MIN_VERSION_NR:Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;->MIN_VERSION_NR:Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    :cond_3
    :goto_1
    move p2, v2

    :goto_2
    if-ge p2, v2, :cond_4

    goto :goto_3

    :cond_4
    move v2, p2

    :goto_3
    const/16 p2, 0x28

    if-le v2, p2, :cond_5

    move v2, p2

    .line 147
    :cond_5
    invoke-static {p0, v0}, Lcom/itextpdf/barcodes/qrcode/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/barcodes/qrcode/Mode;

    move-result-object p2

    .line 150
    new-instance v3, Lcom/itextpdf/barcodes/qrcode/BitVector;

    invoke-direct {v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;-><init>()V

    .line 151
    invoke-static {p0, p2, v3, v0}, Lcom/itextpdf/barcodes/qrcode/Encoder;->appendBytes(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/BitVector;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBytes()I

    move-result v4

    .line 154
    invoke-static {v4, p1, v2, p2, p3}, Lcom/itextpdf/barcodes/qrcode/Encoder;->initQRCode(ILcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/QRCode;)V

    .line 157
    new-instance p1, Lcom/itextpdf/barcodes/qrcode/BitVector;

    invoke-direct {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;-><init>()V

    .line 160
    sget-object v2, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    if-ne p2, v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 161
    invoke-static {v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 163
    invoke-static {v0, p1}, Lcom/itextpdf/barcodes/qrcode/Encoder;->appendECI(Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 167
    :cond_6
    invoke-static {p2, p1}, Lcom/itextpdf/barcodes/qrcode/Encoder;->appendModeInfo(Lcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 169
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBytes()I

    move-result p0

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 170
    :goto_4
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getVersion()I

    move-result v0

    invoke-static {p0, v0, p2, p1}, Lcom/itextpdf/barcodes/qrcode/Encoder;->appendLengthInfo(IILcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 171
    invoke-virtual {p1, v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBitVector(Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 174
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getNumDataBytes()I

    move-result p0

    invoke-static {p0, p1}, Lcom/itextpdf/barcodes/qrcode/Encoder;->terminateBits(ILcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 177
    new-instance p0, Lcom/itextpdf/barcodes/qrcode/BitVector;

    invoke-direct {p0}, Lcom/itextpdf/barcodes/qrcode/BitVector;-><init>()V

    .line 178
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getNumTotalBytes()I

    move-result p2

    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getNumDataBytes()I

    move-result v0

    .line 179
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getNumRSBlocks()I

    move-result v1

    .line 178
    invoke-static {p1, p2, v0, v1, p0}, Lcom/itextpdf/barcodes/qrcode/Encoder;->interleaveWithECBytes(Lcom/itextpdf/barcodes/qrcode/BitVector;IIILcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 182
    new-instance p1, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getMatrixWidth()I

    move-result p2

    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getMatrixWidth()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;-><init>(II)V

    .line 183
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getECLevel()Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    move-result-object p2

    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getVersion()I

    move-result v0

    invoke-static {p0, p2, v0, p1}, Lcom/itextpdf/barcodes/qrcode/Encoder;->chooseMaskPattern(Lcom/itextpdf/barcodes/qrcode/BitVector;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/barcodes/qrcode/ByteMatrix;)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setMaskPattern(I)V

    .line 187
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getECLevel()Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    move-result-object p2

    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getVersion()I

    move-result v0

    .line 188
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getMaskPattern()I

    move-result v1

    .line 187
    invoke-static {p0, p2, v0, v1, p1}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->buildMatrix(Lcom/itextpdf/barcodes/qrcode/BitVector;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 189
    invoke-virtual {p3, p1}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setMatrix(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 191
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->isValid()Z

    move-result p0

    if-eqz p0, :cond_8

    return-void

    .line 192
    :cond_8
    new-instance p0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid QR code: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static generateECBytes(Lcom/itextpdf/barcodes/qrcode/ByteArray;I)Lcom/itextpdf/barcodes/qrcode/ByteArray;
    .locals 5

    .line 490
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size()I

    move-result v0

    add-int v1, v0, p1

    .line 491
    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 493
    invoke-virtual {p0, v3}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->at(I)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 495
    :cond_0
    new-instance p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;

    sget-object v3, Lcom/itextpdf/barcodes/qrcode/GF256;->QR_CODE_FIELD:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-direct {p0, v3}, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;)V

    invoke-virtual {p0, v1, p1}, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->encode([II)V

    .line 497
    new-instance p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;

    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/qrcode/ByteArray;-><init>(I)V

    :goto_1
    if-ge v2, p1, :cond_1

    add-int v3, v0, v2

    .line 499
    aget v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->set(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method static getAlphanumericCode(I)I
    .locals 2

    .line 201
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 202
    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/exceptions/WriterException;
        }
    .end annotation

    if-ge p3, p2, :cond_4

    .line 380
    rem-int v0, p0, p2

    sub-int v1, p2, v0

    .line 384
    div-int v2, p0, p2

    add-int/lit8 v3, v2, 0x1

    .line 388
    div-int/2addr p1, p2

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v2, p1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_3

    add-int v5, v1, v0

    if-ne p2, v5, :cond_2

    add-int p2, p1, v2

    mul-int/2addr p2, v1

    add-int v5, v4, v3

    mul-int/2addr v5, v0

    add-int/2addr p2, v5

    if-ne p0, p2, :cond_1

    const/4 p0, 0x0

    if-ge p3, v1, :cond_0

    .line 414
    aput p1, p4, p0

    .line 415
    aput v2, p5, p0

    goto :goto_0

    .line 417
    :cond_0
    aput v4, p4, p0

    .line 418
    aput v3, p5, p0

    :goto_0
    return-void

    .line 410
    :cond_1
    new-instance p0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    const-string p1, "Total bytes mismatch"

    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 402
    :cond_2
    new-instance p0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    const-string p1, "RS blocks mismatch"

    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 398
    :cond_3
    new-instance p0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    const-string p1, "EC bytes mismatch"

    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 377
    :cond_4
    new-instance p0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    const-string p1, "Block ID too large"

    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initQRCode(ILcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/barcodes/qrcode/Mode;Lcom/itextpdf/barcodes/qrcode/QRCode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/exceptions/WriterException;
        }
    .end annotation

    .line 295
    invoke-virtual {p4, p1}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setECLevel(Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;)V

    .line 296
    invoke-virtual {p4, p3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setMode(Lcom/itextpdf/barcodes/qrcode/Mode;)V

    :goto_0
    const/16 p3, 0x28

    if-gt p2, p3, :cond_1

    .line 300
    invoke-static {p2}, Lcom/itextpdf/barcodes/qrcode/Version;->getVersionForNumber(I)Lcom/itextpdf/barcodes/qrcode/Version;

    move-result-object p3

    .line 302
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/Version;->getTotalCodewords()I

    move-result v0

    .line 304
    invoke-virtual {p3, p1}, Lcom/itextpdf/barcodes/qrcode/Version;->getECBlocksForLevel(Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;)Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->getTotalECCodewords()I

    move-result v2

    .line 307
    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->getNumBlocks()I

    move-result v1

    sub-int v3, v0, v2

    add-int/lit8 v4, p0, 0x3

    if-lt v3, v4, :cond_0

    .line 315
    invoke-virtual {p4, p2}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setVersion(I)V

    .line 316
    invoke-virtual {p4, v0}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setNumTotalBytes(I)V

    .line 317
    invoke-virtual {p4, v3}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setNumDataBytes(I)V

    .line 318
    invoke-virtual {p4, v1}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setNumRSBlocks(I)V

    .line 320
    invoke-virtual {p4, v2}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setNumECBytes(I)V

    .line 322
    invoke-virtual {p3}, Lcom/itextpdf/barcodes/qrcode/Version;->getDimensionForVersion()I

    move-result p0

    invoke-virtual {p4, p0}, Lcom/itextpdf/barcodes/qrcode/QRCode;->setMatrixWidth(I)V

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 326
    :cond_1
    new-instance p0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    const-string p1, "Cannot find proper rs block info (input data too big?)"

    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static interleaveWithECBytes(Lcom/itextpdf/barcodes/qrcode/BitVector;IIILcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/exceptions/WriterException;
        }
    .end annotation

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBytes()I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 441
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_0
    if-ge v12, v8, :cond_0

    const/4 v0, 0x1

    .line 444
    new-array v5, v0, [I

    .line 445
    new-array v4, v0, [I

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v12

    move-object/from16 v16, v4

    move-object v4, v5

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    .line 446
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/barcodes/qrcode/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    .line 450
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/ByteArray;

    invoke-direct {v0}, Lcom/itextpdf/barcodes/qrcode/ByteArray;-><init>()V

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->getArray()[B

    move-result-object v1

    aget v2, v17, v11

    invoke-virtual {v0, v1, v13, v2}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->set([BII)V

    .line 452
    aget v1, v16, v11

    invoke-static {v0, v1}, Lcom/itextpdf/barcodes/qrcode/Encoder;->generateECBytes(Lcom/itextpdf/barcodes/qrcode/ByteArray;I)Lcom/itextpdf/barcodes/qrcode/ByteArray;

    move-result-object v1

    .line 453
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/BlockPair;

    invoke-direct {v2, v0, v1}, Lcom/itextpdf/barcodes/qrcode/BlockPair;-><init>(Lcom/itextpdf/barcodes/qrcode/ByteArray;Lcom/itextpdf/barcodes/qrcode/ByteArray;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 456
    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size()I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 457
    aget v0, v17, v11

    add-int/2addr v13, v0

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    if-ne v7, v13, :cond_8

    move v0, v11

    :goto_1
    const/16 v1, 0x8

    if-ge v0, v14, :cond_3

    move v2, v11

    .line 465
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 466
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/barcodes/qrcode/BlockPair;

    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/BlockPair;->getDataBytes()Lcom/itextpdf/barcodes/qrcode/ByteArray;

    move-result-object v3

    .line 467
    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 468
    invoke-virtual {v3, v0}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->at(I)I

    move-result v3

    invoke-virtual {v9, v3, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v11

    :goto_3
    if-ge v0, v15, :cond_6

    move v2, v11

    .line 474
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 475
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/barcodes/qrcode/BlockPair;

    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/BlockPair;->getErrorCorrectionBytes()Lcom/itextpdf/barcodes/qrcode/ByteArray;

    move-result-object v3

    .line 476
    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 477
    invoke-virtual {v3, v0}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->at(I)I

    move-result v3

    invoke-virtual {v9, v3, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 483
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBytes()I

    move-result v0

    if-ne v6, v0, :cond_7

    return-void

    .line 484
    :cond_7
    new-instance v0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interleaving error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 485
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " differ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_8
    new-instance v0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_9
    new-instance v0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 253
    :try_start_0
    const-string v1, "Shift_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    array-length v1, p0

    .line 258
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 262
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x81

    if-lt v3, v4, :cond_1

    const/16 v4, 0x9f

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_3

    const/16 v4, 0xeb

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method static terminateBits(ILcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/exceptions/WriterException;
        }
    .end annotation

    shl-int/lit8 v0, p0, 0x3

    .line 334
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v1

    if-gt v1, v0, :cond_6

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 340
    invoke-virtual {p1, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBit(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v2

    const/16 v3, 0x8

    rem-int/2addr v2, v3

    if-lez v2, :cond_1

    rsub-int/lit8 v2, v2, 0x8

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_1

    .line 347
    invoke-virtual {p1, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBit(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v2

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    .line 355
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBytes()I

    move-result v2

    sub-int/2addr p0, v2

    :goto_2
    if-ge v1, p0, :cond_3

    .line 357
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_2

    const/16 v2, 0xec

    .line 358
    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    goto :goto_3

    :cond_2
    const/16 v2, 0x11

    .line 360
    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 363
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result p0

    if-ne p0, v0, :cond_4

    return-void

    .line 364
    :cond_4
    new-instance p0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 352
    :cond_5
    new-instance p0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    const-string p1, "Number of bits is not a multiple of 8"

    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 335
    :cond_6
    new-instance p0, Lcom/itextpdf/barcodes/exceptions/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " > "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/exceptions/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
