.class public Lcom/itextpdf/barcodes/BarcodeEAN;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "BarcodeEAN.java"


# static fields
.field private static final BARS:[[B

.field public static final EAN13:I = 0x1

.field public static final EAN8:I = 0x2

.field private static final EVEN:I = 0x1

.field private static final GUARD_EAN13:[I

.field private static final GUARD_EAN8:[I

.field private static final GUARD_EMPTY:[I

.field private static final GUARD_UPCA:[I

.field private static final GUARD_UPCE:[I

.field private static final ODD:I = 0x0

.field private static final PARITY13:[[B

.field private static final PARITY2:[[B

.field private static final PARITY5:[[B

.field private static final PARITYE:[[B

.field public static final SUPP2:I = 0x5

.field public static final SUPP5:I = 0x6

.field private static final TEXTPOS_EAN13:[F

.field private static final TEXTPOS_EAN8:[F

.field private static final TOTALBARS_EAN13:I = 0x3b

.field private static final TOTALBARS_EAN8:I = 0x2b

.field private static final TOTALBARS_SUPP2:I = 0xd

.field private static final TOTALBARS_SUPP5:I = 0x1f

.field private static final TOTALBARS_UPCE:I = 0x21

.field public static final UPCA:I = 0x3

.field public static final UPCE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x0

    .line 73
    new-array v1, v0, [I

    sput-object v1, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_EMPTY:[I

    const/16 v1, 0xa

    .line 77
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_UPCA:[I

    const/4 v1, 0x6

    .line 81
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_EAN13:[I

    .line 85
    new-array v2, v1, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_EAN8:[I

    const/16 v2, 0x20

    const/4 v3, 0x2

    const/16 v4, 0x1c

    const/16 v5, 0x1e

    .line 89
    filled-new-array {v0, v3, v4, v5, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_UPCE:[I

    const/16 v0, 0xc

    .line 93
    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeEAN;->TEXTPOS_EAN13:[F

    const/16 v0, 0x8

    .line 97
    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeEAN;->TEXTPOS_EAN8:[F

    const/4 v0, 0x4

    .line 101
    new-array v4, v0, [B

    fill-array-data v4, :array_5

    new-array v5, v0, [B

    fill-array-data v5, :array_6

    new-array v6, v0, [B

    fill-array-data v6, :array_7

    new-array v7, v0, [B

    fill-array-data v7, :array_8

    new-array v8, v0, [B

    fill-array-data v8, :array_9

    new-array v9, v0, [B

    fill-array-data v9, :array_a

    new-array v10, v0, [B

    fill-array-data v10, :array_b

    new-array v11, v0, [B

    fill-array-data v11, :array_c

    new-array v12, v0, [B

    fill-array-data v12, :array_d

    new-array v13, v0, [B

    fill-array-data v13, :array_e

    filled-new-array/range {v4 .. v13}, [[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    .line 166
    new-array v4, v1, [B

    fill-array-data v4, :array_f

    new-array v5, v1, [B

    fill-array-data v5, :array_10

    new-array v6, v1, [B

    fill-array-data v6, :array_11

    new-array v7, v1, [B

    fill-array-data v7, :array_12

    new-array v8, v1, [B

    fill-array-data v8, :array_13

    new-array v9, v1, [B

    fill-array-data v9, :array_14

    new-array v10, v1, [B

    fill-array-data v10, :array_15

    new-array v11, v1, [B

    fill-array-data v11, :array_16

    new-array v12, v1, [B

    fill-array-data v12, :array_17

    new-array v13, v1, [B

    fill-array-data v13, :array_18

    filled-new-array/range {v4 .. v13}, [[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITY13:[[B

    .line 203
    new-array v0, v3, [B

    fill-array-data v0, :array_19

    new-array v2, v3, [B

    fill-array-data v2, :array_1a

    new-array v4, v3, [B

    fill-array-data v4, :array_1b

    new-array v3, v3, [B

    fill-array-data v3, :array_1c

    filled-new-array {v0, v2, v4, v3}, [[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITY2:[[B

    const/4 v0, 0x5

    .line 222
    new-array v2, v0, [B

    fill-array-data v2, :array_1d

    new-array v3, v0, [B

    fill-array-data v3, :array_1e

    new-array v4, v0, [B

    fill-array-data v4, :array_1f

    new-array v5, v0, [B

    fill-array-data v5, :array_20

    new-array v6, v0, [B

    fill-array-data v6, :array_21

    new-array v7, v0, [B

    fill-array-data v7, :array_22

    new-array v8, v0, [B

    fill-array-data v8, :array_23

    new-array v9, v0, [B

    fill-array-data v9, :array_24

    new-array v10, v0, [B

    fill-array-data v10, :array_25

    new-array v11, v0, [B

    fill-array-data v11, :array_26

    filled-new-array/range {v2 .. v11}, [[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITY5:[[B

    .line 259
    new-array v2, v1, [B

    fill-array-data v2, :array_27

    new-array v3, v1, [B

    fill-array-data v3, :array_28

    new-array v4, v1, [B

    fill-array-data v4, :array_29

    new-array v5, v1, [B

    fill-array-data v5, :array_2a

    new-array v6, v1, [B

    fill-array-data v6, :array_2b

    new-array v7, v1, [B

    fill-array-data v7, :array_2c

    new-array v8, v1, [B

    fill-array-data v8, :array_2d

    new-array v9, v1, [B

    fill-array-data v9, :array_2e

    new-array v10, v1, [B

    fill-array-data v10, :array_2f

    new-array v11, v1, [B

    fill-array-data v11, :array_30

    filled-new-array/range {v2 .. v11}, [[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITYE:[[B

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x4
        0x6
        0x1c
        0x1e
        0x34
        0x36
        0x38
        0x3a
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x1c
        0x1e
        0x38
        0x3a
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x14
        0x16
        0x28
        0x2a
    .end array-data

    :array_3
    .array-data 4
        0x40d00000    # 6.5f
        0x41580000    # 13.5f
        0x41a40000    # 20.5f
        0x41dc0000    # 27.5f
        0x420a0000    # 34.5f
        0x42260000    # 41.5f
        0x42560000    # 53.5f
        0x42720000    # 60.5f
        0x42870000    # 67.5f
        0x42950000    # 74.5f
        0x42a30000    # 81.5f
        0x42b10000    # 88.5f
    .end array-data

    :array_4
    .array-data 4
        0x40d00000    # 6.5f
        0x41580000    # 13.5f
        0x41a40000    # 20.5f
        0x41dc0000    # 27.5f
        0x421e0000    # 39.5f
        0x423a0000    # 46.5f
        0x42560000    # 53.5f
        0x42720000    # 60.5f
    .end array-data

    :array_5
    .array-data 1
        0x3t
        0x2t
        0x1t
        0x1t
    .end array-data

    :array_6
    .array-data 1
        0x2t
        0x2t
        0x2t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x2t
        0x1t
        0x2t
        0x2t
    .end array-data

    :array_8
    .array-data 1
        0x1t
        0x4t
        0x1t
        0x1t
    .end array-data

    :array_9
    .array-data 1
        0x1t
        0x1t
        0x3t
        0x2t
    .end array-data

    :array_a
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x1t
    .end array-data

    :array_b
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x4t
    .end array-data

    :array_c
    .array-data 1
        0x1t
        0x3t
        0x1t
        0x2t
    .end array-data

    :array_d
    .array-data 1
        0x1t
        0x2t
        0x1t
        0x3t
    .end array-data

    :array_e
    .array-data 1
        0x3t
        0x1t
        0x1t
        0x2t
    .end array-data

    :array_f
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_20
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_21
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_22
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_23
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_25
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_26
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_27
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_28
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_2b
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2d
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_2e
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2f
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_30
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 301
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/barcodes/BarcodeEAN;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 312
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    .line 313
    iput-object p2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/high16 p1, 0x41000000    # 8.0f

    .line 314
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    .line 315
    iget p1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    .line 316
    iget p1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    const/high16 p2, 0x40400000    # 3.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->barHeight:F

    const/4 p1, 0x1

    .line 317
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->guardBars:Z

    .line 318
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->codeType:I

    .line 319
    const-string p1, ""

    iput-object p1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    return-void
.end method

.method public static calculateEANParity(Ljava/lang/String;)I
    .locals 4

    .line 331
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 332
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    xor-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 336
    :cond_0
    rem-int/lit8 v2, v2, 0xa

    rsub-int/lit8 p0, v2, 0xa

    rem-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public static convertUPCAtoUPCE(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x3

    const/4 v3, 0x6

    .line 350
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "00"

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/16 v9, 0xb

    const/4 v10, 0x1

    if-nez v4, :cond_4

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v11, "100"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 351
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v11, "200"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    .line 355
    :cond_1
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    .line 356
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x5

    .line 359
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "0000"

    const/16 v5, 0xa

    if-eqz v0, :cond_3

    .line 360
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 363
    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x35

    if-lt v0, v1, :cond_5

    .line 364
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/16 v0, 0x8

    .line 352
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object v2
.end method

.method public static getBarsEAN13(Ljava/lang/String;)[B
    .locals 12

    .line 378
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 380
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x3b

    .line 382
    new-array p0, p0, [B

    const/4 v0, 0x1

    .line 384
    aput-byte v0, p0, v2

    .line 385
    aput-byte v0, p0, v0

    const/4 v3, 0x2

    .line 386
    aput-byte v0, p0, v3

    .line 387
    sget-object v4, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITY13:[[B

    aget v5, v1, v2

    aget-object v4, v4, v5

    const/4 v5, 0x3

    move v6, v2

    move v7, v5

    .line 388
    :goto_1
    array-length v8, v4

    if-ge v6, v8, :cond_2

    add-int/lit8 v8, v6, 0x1

    .line 389
    aget v9, v1, v8

    .line 390
    sget-object v10, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    aget-object v9, v10, v9

    .line 391
    aget-byte v6, v4, v6

    if-nez v6, :cond_1

    add-int/lit8 v6, v7, 0x1

    .line 392
    aget-byte v10, v9, v2

    aput-byte v10, p0, v7

    add-int/lit8 v10, v7, 0x2

    .line 393
    aget-byte v11, v9, v0

    aput-byte v11, p0, v6

    add-int/lit8 v6, v7, 0x3

    .line 394
    aget-byte v11, v9, v3

    aput-byte v11, p0, v10

    add-int/lit8 v7, v7, 0x4

    .line 395
    aget-byte v9, v9, v5

    aput-byte v9, p0, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v7, 0x1

    .line 397
    aget-byte v10, v9, v5

    aput-byte v10, p0, v7

    add-int/lit8 v10, v7, 0x2

    .line 398
    aget-byte v11, v9, v3

    aput-byte v11, p0, v6

    add-int/lit8 v6, v7, 0x3

    .line 399
    aget-byte v11, v9, v0

    aput-byte v11, p0, v10

    add-int/lit8 v7, v7, 0x4

    .line 400
    aget-byte v9, v9, v2

    aput-byte v9, p0, v6

    :goto_2
    move v6, v8

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v7, 0x1

    .line 403
    aput-byte v0, p0, v7

    add-int/lit8 v6, v7, 0x2

    .line 404
    aput-byte v0, p0, v4

    add-int/lit8 v4, v7, 0x3

    .line 405
    aput-byte v0, p0, v6

    add-int/lit8 v6, v7, 0x4

    .line 406
    aput-byte v0, p0, v4

    add-int/lit8 v7, v7, 0x5

    .line 407
    aput-byte v0, p0, v6

    const/4 v4, 0x7

    :goto_3
    const/16 v6, 0xd

    if-ge v4, v6, :cond_3

    .line 409
    aget v6, v1, v4

    .line 410
    sget-object v8, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    aget-object v6, v8, v6

    add-int/lit8 v8, v7, 0x1

    .line 411
    aget-byte v9, v6, v2

    aput-byte v9, p0, v7

    add-int/lit8 v9, v7, 0x2

    .line 412
    aget-byte v10, v6, v0

    aput-byte v10, p0, v8

    add-int/lit8 v8, v7, 0x3

    .line 413
    aget-byte v10, v6, v3

    aput-byte v10, p0, v9

    add-int/lit8 v7, v7, 0x4

    .line 414
    aget-byte v6, v6, v5

    aput-byte v6, p0, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v7, 0x1

    .line 416
    aput-byte v0, p0, v7

    add-int/2addr v7, v3

    .line 417
    aput-byte v0, p0, v1

    .line 418
    aput-byte v0, p0, v7

    return-object p0
.end method

.method public static getBarsEAN8(Ljava/lang/String;)[B
    .locals 11

    .line 429
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 431
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x2b

    .line 433
    new-array p0, p0, [B

    const/4 v0, 0x1

    .line 435
    aput-byte v0, p0, v2

    .line 436
    aput-byte v0, p0, v0

    const/4 v3, 0x2

    .line 437
    aput-byte v0, p0, v3

    const/4 v4, 0x3

    move v5, v2

    move v6, v4

    :goto_1
    const/4 v7, 0x4

    if-ge v5, v7, :cond_1

    .line 439
    aget v7, v1, v5

    .line 440
    sget-object v8, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    aget-object v7, v8, v7

    add-int/lit8 v8, v6, 0x1

    .line 441
    aget-byte v9, v7, v2

    aput-byte v9, p0, v6

    add-int/lit8 v9, v6, 0x2

    .line 442
    aget-byte v10, v7, v0

    aput-byte v10, p0, v8

    add-int/lit8 v8, v6, 0x3

    .line 443
    aget-byte v10, v7, v3

    aput-byte v10, p0, v9

    add-int/lit8 v6, v6, 0x4

    .line 444
    aget-byte v7, v7, v4

    aput-byte v7, p0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v6, 0x1

    .line 446
    aput-byte v0, p0, v6

    add-int/lit8 v8, v6, 0x2

    .line 447
    aput-byte v0, p0, v5

    add-int/lit8 v5, v6, 0x3

    .line 448
    aput-byte v0, p0, v8

    add-int/lit8 v8, v6, 0x4

    .line 449
    aput-byte v0, p0, v5

    add-int/lit8 v6, v6, 0x5

    .line 450
    aput-byte v0, p0, v8

    :goto_2
    const/16 v5, 0x8

    if-ge v7, v5, :cond_2

    .line 452
    aget v5, v1, v7

    .line 453
    sget-object v8, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    aget-object v5, v8, v5

    add-int/lit8 v8, v6, 0x1

    .line 454
    aget-byte v9, v5, v2

    aput-byte v9, p0, v6

    add-int/lit8 v9, v6, 0x2

    .line 455
    aget-byte v10, v5, v0

    aput-byte v10, p0, v8

    add-int/lit8 v8, v6, 0x3

    .line 456
    aget-byte v10, v5, v3

    aput-byte v10, p0, v9

    add-int/lit8 v6, v6, 0x4

    .line 457
    aget-byte v5, v5, v4

    aput-byte v5, p0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v6, 0x1

    .line 459
    aput-byte v0, p0, v6

    add-int/2addr v6, v3

    .line 460
    aput-byte v0, p0, v1

    .line 461
    aput-byte v0, p0, v6

    return-object p0
.end method

.method public static getBarsSupplemental2(Ljava/lang/String;)[B
    .locals 12

    const/4 v0, 0x2

    .line 514
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 516
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0xd

    .line 518
    new-array p0, p0, [B

    .line 520
    aget v3, v1, v2

    mul-int/lit8 v3, v3, 0xa

    const/4 v4, 0x1

    aget v5, v1, v4

    add-int/2addr v3, v5

    rem-int/lit8 v3, v3, 0x4

    .line 521
    aput-byte v4, p0, v2

    .line 522
    aput-byte v4, p0, v4

    .line 523
    aput-byte v0, p0, v0

    .line 524
    sget-object v5, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITY2:[[B

    aget-object v3, v5, v3

    const/4 v5, 0x3

    move v6, v2

    move v7, v5

    .line 525
    :goto_1
    array-length v8, v3

    if-ge v6, v8, :cond_3

    if-ne v6, v4, :cond_1

    add-int/lit8 v8, v7, 0x1

    .line 527
    aput-byte v4, p0, v7

    add-int/lit8 v7, v7, 0x2

    .line 528
    aput-byte v4, p0, v8

    .line 530
    :cond_1
    aget v8, v1, v6

    .line 531
    sget-object v9, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    aget-object v8, v9, v8

    .line 532
    aget-byte v9, v3, v6

    if-nez v9, :cond_2

    add-int/lit8 v9, v7, 0x1

    .line 533
    aget-byte v10, v8, v2

    aput-byte v10, p0, v7

    add-int/lit8 v10, v7, 0x2

    .line 534
    aget-byte v11, v8, v4

    aput-byte v11, p0, v9

    add-int/lit8 v9, v7, 0x3

    .line 535
    aget-byte v11, v8, v0

    aput-byte v11, p0, v10

    add-int/lit8 v7, v7, 0x4

    .line 536
    aget-byte v8, v8, v5

    aput-byte v8, p0, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v7, 0x1

    .line 538
    aget-byte v10, v8, v5

    aput-byte v10, p0, v7

    add-int/lit8 v10, v7, 0x2

    .line 539
    aget-byte v11, v8, v0

    aput-byte v11, p0, v9

    add-int/lit8 v9, v7, 0x3

    .line 540
    aget-byte v11, v8, v4

    aput-byte v11, p0, v10

    add-int/lit8 v7, v7, 0x4

    .line 541
    aget-byte v8, v8, v2

    aput-byte v8, p0, v9

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static getBarsSupplemental5(Ljava/lang/String;)[B
    .locals 12

    const/4 v0, 0x5

    .line 554
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 556
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x1f

    .line 558
    new-array p0, p0, [B

    .line 560
    aget v0, v1, v2

    const/4 v3, 0x2

    aget v4, v1, v3

    add-int/2addr v0, v4

    const/4 v4, 0x4

    aget v4, v1, v4

    add-int/2addr v0, v4

    const/4 v4, 0x3

    mul-int/2addr v0, v4

    const/4 v5, 0x1

    aget v6, v1, v5

    aget v7, v1, v4

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x9

    add-int/2addr v0, v6

    rem-int/lit8 v0, v0, 0xa

    .line 561
    aput-byte v5, p0, v2

    .line 562
    aput-byte v5, p0, v5

    .line 563
    aput-byte v3, p0, v3

    .line 564
    sget-object v6, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITY5:[[B

    aget-object v0, v6, v0

    move v6, v2

    move v7, v4

    .line 565
    :goto_1
    array-length v8, v0

    if-ge v6, v8, :cond_3

    if-eqz v6, :cond_1

    add-int/lit8 v8, v7, 0x1

    .line 567
    aput-byte v5, p0, v7

    add-int/lit8 v7, v7, 0x2

    .line 568
    aput-byte v5, p0, v8

    .line 570
    :cond_1
    aget v8, v1, v6

    .line 571
    sget-object v9, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    aget-object v8, v9, v8

    .line 572
    aget-byte v9, v0, v6

    if-nez v9, :cond_2

    add-int/lit8 v9, v7, 0x1

    .line 573
    aget-byte v10, v8, v2

    aput-byte v10, p0, v7

    add-int/lit8 v10, v7, 0x2

    .line 574
    aget-byte v11, v8, v5

    aput-byte v11, p0, v9

    add-int/lit8 v9, v7, 0x3

    .line 575
    aget-byte v11, v8, v3

    aput-byte v11, p0, v10

    add-int/lit8 v7, v7, 0x4

    .line 576
    aget-byte v8, v8, v4

    aput-byte v8, p0, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v7, 0x1

    .line 578
    aget-byte v10, v8, v4

    aput-byte v10, p0, v7

    add-int/lit8 v10, v7, 0x2

    .line 579
    aget-byte v11, v8, v3

    aput-byte v11, p0, v9

    add-int/lit8 v9, v7, 0x3

    .line 580
    aget-byte v11, v8, v5

    aput-byte v11, p0, v10

    add-int/lit8 v7, v7, 0x4

    .line 581
    aget-byte v8, v8, v2

    aput-byte v8, p0, v9

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static getBarsUPCE(Ljava/lang/String;)[B
    .locals 14

    .line 472
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 474
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x21

    .line 476
    new-array p0, p0, [B

    .line 477
    aget v3, v1, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    .line 479
    :goto_1
    aput-byte v4, p0, v2

    .line 480
    aput-byte v4, p0, v4

    const/4 v5, 0x2

    .line 481
    aput-byte v4, p0, v5

    .line 482
    sget-object v6, Lcom/itextpdf/barcodes/BarcodeEAN;->PARITYE:[[B

    sub-int/2addr v0, v4

    aget v7, v1, v0

    aget-object v6, v6, v7

    const/4 v7, 0x3

    move v8, v4

    move v9, v7

    :goto_2
    if-ge v8, v0, :cond_3

    .line 484
    aget v10, v1, v8

    .line 485
    sget-object v11, Lcom/itextpdf/barcodes/BarcodeEAN;->BARS:[[B

    aget-object v10, v11, v10

    add-int/lit8 v11, v8, -0x1

    .line 486
    aget-byte v11, v6, v11

    if-ne v11, v3, :cond_2

    add-int/lit8 v11, v9, 0x1

    .line 487
    aget-byte v12, v10, v2

    aput-byte v12, p0, v9

    add-int/lit8 v12, v9, 0x2

    .line 488
    aget-byte v13, v10, v4

    aput-byte v13, p0, v11

    add-int/lit8 v11, v9, 0x3

    .line 489
    aget-byte v13, v10, v5

    aput-byte v13, p0, v12

    add-int/lit8 v9, v9, 0x4

    .line 490
    aget-byte v10, v10, v7

    aput-byte v10, p0, v11

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v9, 0x1

    .line 492
    aget-byte v12, v10, v7

    aput-byte v12, p0, v9

    add-int/lit8 v12, v9, 0x2

    .line 493
    aget-byte v13, v10, v5

    aput-byte v13, p0, v11

    add-int/lit8 v11, v9, 0x3

    .line 494
    aget-byte v13, v10, v4

    aput-byte v13, p0, v12

    add-int/lit8 v9, v9, 0x4

    .line 495
    aget-byte v10, v10, v2

    aput-byte v10, p0, v11

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v9, 0x1

    .line 498
    aput-byte v4, p0, v9

    add-int/lit8 v1, v9, 0x2

    .line 499
    aput-byte v4, p0, v0

    add-int/lit8 v0, v9, 0x3

    .line 500
    aput-byte v4, p0, v1

    add-int/lit8 v1, v9, 0x4

    .line 501
    aput-byte v4, p0, v0

    add-int/lit8 v9, v9, 0x5

    .line 502
    aput-byte v4, p0, v1

    .line 503
    aput-byte v4, p0, v9

    return-object p0
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 17

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 831
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    :goto_0
    if-nez p2, :cond_1

    .line 832
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 833
    :goto_1
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 837
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->codeType:I

    const/16 v5, 0x5f

    packed-switch v4, :pswitch_data_0

    .line 863
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "Invalid code type"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 859
    :pswitch_0
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsSupplemental5(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v5, 0x2f

    goto :goto_2

    .line 855
    :pswitch_1
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsSupplemental2(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v5, 0x14

    goto :goto_2

    .line 851
    :pswitch_2
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsUPCE(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v5, 0x33

    goto :goto_2

    .line 847
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsEAN13(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_2

    .line 843
    :pswitch_4
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsEAN8(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v5, 0x43

    goto :goto_2

    .line 839
    :pswitch_5
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsEAN13(Ljava/lang/String;)[B

    move-result-object v4

    :goto_2
    move v10, v5

    .line 868
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->barHeight:F

    float-to-int v7, v5

    mul-int v5, v10, v7

    .line 869
    new-array v8, v5, [I

    const/4 v6, 0x0

    const/4 v9, 0x1

    move v11, v6

    move v12, v11

    .line 870
    :goto_3
    array-length v13, v4

    if-ge v11, v13, :cond_4

    .line 871
    aget-byte v13, v4, v11

    if-eqz v9, :cond_2

    move v14, v1

    goto :goto_4

    :cond_2
    move v14, v2

    :goto_4
    xor-int/lit8 v9, v9, 0x1

    move v15, v6

    :goto_5
    if-ge v15, v13, :cond_3

    add-int/lit8 v16, v12, 0x1

    .line 878
    aput v14, v8, v12

    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v16

    goto :goto_5

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    move v1, v10

    :goto_6
    if-ge v1, v5, :cond_5

    .line 882
    invoke-static {v8, v6, v8, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v10

    goto :goto_6

    .line 884
    :cond_5
    new-instance v1, Ljava/awt/image/MemoryImageSource;

    const/4 v9, 0x0

    move-object v5, v1

    move v6, v10

    invoke-direct/range {v5 .. v10}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v3, v1}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 6

    .line 596
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->barHeight:F

    .line 597
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_1

    .line 598
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 599
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    neg-float v1, v1

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    add-float/2addr v1, v2

    goto :goto_0

    .line 601
    :cond_0
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodeEAN;->getDescender()F

    move-result v2

    sub-float/2addr v1, v2

    :goto_0
    add-float/2addr v0, v1

    .line 604
    :cond_1
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->codeType:I

    const/high16 v2, 0x42be0000    # 95.0f

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 633
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Invalid code type"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :pswitch_0
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    const/high16 v2, 0x423c0000    # 47.0f

    goto :goto_2

    .line 627
    :pswitch_1
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    const/high16 v2, 0x41a00000    # 20.0f

    goto :goto_2

    .line 621
    :pswitch_2
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    const/high16 v2, 0x424c0000    # 51.0f

    mul-float/2addr v1, v2

    .line 622
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v2, :cond_2

    .line 623
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(IF)F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(IF)F

    move-result v3

    goto :goto_1

    .line 615
    :pswitch_3
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float/2addr v1, v2

    .line 616
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v2, :cond_2

    .line 617
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(IF)F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(IF)F

    move-result v3

    :goto_1
    add-float/2addr v2, v3

    goto :goto_3

    .line 612
    :pswitch_4
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    const/high16 v2, 0x42860000    # 67.0f

    :goto_2
    mul-float/2addr v1, v2

    goto :goto_4

    .line 606
    :pswitch_5
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float/2addr v1, v2

    .line 607
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v2, :cond_2

    .line 608
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(IF)F

    move-result v2

    :goto_3
    add-float/2addr v1, v2

    .line 635
    :cond_2
    :goto_4
    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v2, v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    .line 683
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 v13, 0x0

    if-eqz v1, :cond_1

    .line 684
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    cmpg-float v1, v1, v13

    if-gtz v1, :cond_0

    .line 685
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->barHeight:F

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    sub-float/2addr v1, v2

    move v14, v1

    move v15, v13

    goto :goto_0

    .line 687
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeEAN;->getDescender()F

    move-result v1

    neg-float v1, v1

    .line 688
    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    add-float/2addr v2, v1

    move v14, v1

    move v15, v2

    goto :goto_0

    :cond_1
    move v14, v13

    move v15, v14

    .line 691
    :goto_0
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->codeType:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v1, v9, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 695
    :cond_2
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_3

    .line 696
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(IF)F

    move-result v1

    add-float/2addr v1, v13

    move/from16 v16, v1

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v16, v13

    .line 701
    :goto_2
    sget-object v1, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_EMPTY:[I

    .line 702
    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->codeType:I

    packed-switch v2, :pswitch_data_0

    .line 726
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "Invalid code type"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 723
    :pswitch_0
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsSupplemental5(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_3

    .line 720
    :pswitch_1
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsSupplemental2(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_3

    .line 716
    :pswitch_2
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsUPCE(Ljava/lang/String;)[B

    move-result-object v2

    .line 717
    sget-object v1, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_UPCE:[I

    goto :goto_3

    .line 712
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsEAN13(Ljava/lang/String;)[B

    move-result-object v2

    .line 713
    sget-object v1, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_UPCA:[I

    goto :goto_3

    .line 708
    :pswitch_4
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsEAN8(Ljava/lang/String;)[B

    move-result-object v2

    .line 709
    sget-object v1, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_EAN8:[I

    goto :goto_3

    .line 704
    :pswitch_5
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeEAN;->getBarsEAN13(Ljava/lang/String;)[B

    move-result-object v2

    .line 705
    sget-object v1, Lcom/itextpdf/barcodes/BarcodeEAN;->GUARD_EAN13:[I

    :goto_3
    move-object v6, v1

    move-object v7, v2

    .line 731
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/high16 v17, 0x40000000    # 2.0f

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    cmpl-float v1, v1, v13

    if-lez v1, :cond_4

    iget-boolean v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->guardBars:Z

    if-eqz v1, :cond_4

    .line 732
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->baseline:F

    div-float v1, v1, v17

    move/from16 v18, v1

    goto :goto_4

    :cond_4
    move/from16 v18, v13

    :goto_4
    if-eqz p2, :cond_5

    .line 735
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_5
    move v4, v8

    move/from16 v19, v9

    move/from16 v5, v16

    .line 737
    :goto_5
    array-length v1, v7

    if-ge v4, v1, :cond_8

    .line 738
    aget-byte v1, v7, v4

    int-to-float v1, v1

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float v20, v1, v2

    if-eqz v19, :cond_7

    .line 740
    invoke-static {v6, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_6

    float-to-double v2, v5

    sub-float v1, v15, v18

    float-to-double v8, v1

    .line 741
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->inkSpreading:F

    sub-float v1, v20, v1

    move/from16 v21, v14

    float-to-double v13, v1

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->barHeight:F

    add-float v1, v1, v18

    float-to-double v10, v1

    move-object/from16 v1, p1

    move/from16 v22, v4

    move-object/from16 v23, v12

    move v12, v5

    move-wide v4, v8

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-wide v6, v13

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-wide v8, v10

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_6

    :cond_6
    move/from16 v22, v4

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move v13, v8

    move-object/from16 v23, v12

    move/from16 v21, v14

    move v12, v5

    move v14, v9

    float-to-double v2, v12

    float-to-double v4, v15

    .line 743
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->inkSpreading:F

    sub-float v1, v20, v1

    float-to-double v6, v1

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->barHeight:F

    float-to-double v8, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_6

    :cond_7
    move/from16 v22, v4

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move v13, v8

    move-object/from16 v23, v12

    move/from16 v21, v14

    move v12, v5

    move v14, v9

    :goto_6
    xor-int/lit8 v19, v19, 0x1

    add-float v5, v12, v20

    add-int/lit8 v4, v22, 0x1

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move v8, v13

    move v9, v14

    move/from16 v14, v21

    move-object/from16 v12, v23

    move-object/from16 v6, v24

    move-object/from16 v7, v25

    const/4 v13, 0x0

    goto :goto_5

    :cond_8
    move v13, v8

    move-object/from16 v23, v12

    move/from16 v21, v14

    move v14, v9

    .line 749
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 750
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_d

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    if-eqz v1, :cond_9

    .line 752
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 754
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 755
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v2, v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 756
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->codeType:I

    const/16 v3, 0x8

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_c

    :pswitch_6
    move v8, v13

    .line 805
    :goto_7
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v8, v1, :cond_c

    .line 806
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    add-int/lit8 v3, v8, 0x1

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 807
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v4, v1, v5}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v4

    mul-int/lit8 v8, v8, 0x9

    int-to-float v5, v8

    const/high16 v6, 0x40f00000    # 7.5f

    add-float/2addr v5, v6

    .line 808
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float/2addr v5, v6

    div-float v4, v4, v17

    sub-float/2addr v5, v4

    move/from16 v4, v21

    .line 809
    invoke-virtual {v2, v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 810
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move v8, v3

    goto :goto_7

    :pswitch_7
    move/from16 v4, v21

    const/4 v1, 0x0

    .line 791
    invoke-virtual {v2, v1, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 792
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move v9, v14

    :goto_8
    const/4 v1, 0x7

    if-ge v9, v1, :cond_a

    .line 794
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 795
    iget-object v6, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v7, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v6, v1, v7}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v6

    .line 796
    sget-object v7, Lcom/itextpdf/barcodes/BarcodeEAN;->TEXTPOS_EAN13:[F

    add-int/lit8 v9, v9, -0x1

    aget v7, v7, v9

    iget v8, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float/2addr v7, v8

    add-float v7, v16, v7

    div-float v6, v6, v17

    sub-float/2addr v7, v6

    .line 797
    invoke-virtual {v2, v7, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 798
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move v9, v5

    goto :goto_8

    .line 800
    :cond_a
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    const/high16 v6, 0x424c0000    # 51.0f

    mul-float/2addr v5, v6

    add-float v5, v16, v5

    invoke-virtual {v2, v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 801
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto/16 :goto_c

    :pswitch_8
    move/from16 v4, v21

    const/4 v1, 0x0

    .line 778
    invoke-virtual {v2, v1, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 779
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move v9, v14

    :goto_9
    const/16 v1, 0xb

    if-ge v9, v1, :cond_b

    .line 781
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 782
    iget-object v5, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v6, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v5, v1, v6}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v5

    .line 783
    sget-object v6, Lcom/itextpdf/barcodes/BarcodeEAN;->TEXTPOS_EAN13:[F

    aget v6, v6, v9

    iget v7, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float/2addr v6, v7

    add-float v6, v16, v6

    div-float v5, v5, v17

    sub-float/2addr v6, v5

    .line 784
    invoke-virtual {v2, v6, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 785
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move v9, v3

    goto :goto_9

    .line 787
    :cond_b
    iget v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    const/high16 v5, 0x42be0000    # 95.0f

    mul-float/2addr v3, v5

    add-float v3, v16, v3

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 788
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_c

    :pswitch_9
    move/from16 v4, v21

    move v8, v13

    :goto_a
    if-ge v8, v3, :cond_c

    .line 770
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 771
    iget-object v6, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v7, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v6, v1, v7}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v6

    .line 772
    sget-object v7, Lcom/itextpdf/barcodes/BarcodeEAN;->TEXTPOS_EAN8:[F

    aget v7, v7, v8

    iget v8, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float/2addr v7, v8

    div-float v6, v6, v17

    sub-float/2addr v7, v6

    .line 773
    invoke-virtual {v2, v7, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 774
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move v8, v5

    goto :goto_a

    :pswitch_a
    move/from16 v4, v21

    const/4 v1, 0x0

    .line 758
    invoke-virtual {v2, v1, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 759
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move v9, v14

    :goto_b
    const/16 v1, 0xd

    if-ge v9, v1, :cond_c

    .line 761
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->code:Ljava/lang/String;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 762
    iget-object v5, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v6, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->size:F

    invoke-virtual {v5, v1, v6}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v5

    .line 763
    sget-object v6, Lcom/itextpdf/barcodes/BarcodeEAN;->TEXTPOS_EAN13:[F

    add-int/lit8 v9, v9, -0x1

    aget v6, v6, v9

    iget v7, v0, Lcom/itextpdf/barcodes/BarcodeEAN;->x:F

    mul-float/2addr v6, v7

    add-float v6, v16, v6

    div-float v5, v5, v17

    sub-float/2addr v6, v5

    .line 764
    invoke-virtual {v2, v6, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 765
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move v9, v3

    goto :goto_b

    .line 814
    :cond_c
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_d
    return-object v23

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
