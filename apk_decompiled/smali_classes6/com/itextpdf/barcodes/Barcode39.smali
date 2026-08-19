.class public Lcom/itextpdf/barcodes/Barcode39;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "Barcode39.java"


# static fields
.field private static final BARS:[[B

.field private static final CHARS:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%*"

.field private static final EXTENDED:Ljava/lang/String; = "%U$A$B$C$D$E$F$G$H$I$J$K$L$M$N$O$P$Q$R$S$T$U$V$W$X$Y$Z%A%B%C%D%E  /A/B/C/D/E/F/G/H/I/J/K/L - ./O 0 1 2 3 4 5 6 7 8 9/Z%F%G%H%I%J%V A B C D E F G H I J K L M N O P Q R S T U V W X Y Z%K%L%M%N%O%W+A+B+C+D+E+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+Z%P%Q%R%S%T"


# direct methods
.method static constructor <clinit>()V
    .locals 46

    const/16 v0, 0x9

    .line 59
    new-array v2, v0, [B

    move-object v1, v2

    fill-array-data v2, :array_0

    new-array v3, v0, [B

    move-object v2, v3

    fill-array-data v3, :array_1

    new-array v4, v0, [B

    move-object v3, v4

    fill-array-data v4, :array_2

    new-array v5, v0, [B

    move-object v4, v5

    fill-array-data v5, :array_3

    new-array v6, v0, [B

    move-object v5, v6

    fill-array-data v6, :array_4

    new-array v7, v0, [B

    move-object v6, v7

    fill-array-data v7, :array_5

    new-array v8, v0, [B

    move-object v7, v8

    fill-array-data v8, :array_6

    new-array v9, v0, [B

    move-object v8, v9

    fill-array-data v9, :array_7

    new-array v10, v0, [B

    move-object v9, v10

    fill-array-data v10, :array_8

    new-array v11, v0, [B

    move-object v10, v11

    fill-array-data v11, :array_9

    new-array v12, v0, [B

    move-object v11, v12

    fill-array-data v12, :array_a

    new-array v13, v0, [B

    move-object v12, v13

    fill-array-data v13, :array_b

    new-array v14, v0, [B

    move-object v13, v14

    fill-array-data v14, :array_c

    new-array v15, v0, [B

    move-object v14, v15

    fill-array-data v15, :array_d

    new-array v15, v0, [B

    move-object/from16 v16, v15

    fill-array-data v16, :array_e

    move-object/from16 v45, v1

    new-array v1, v0, [B

    move-object/from16 v16, v1

    fill-array-data v1, :array_f

    new-array v1, v0, [B

    move-object/from16 v17, v1

    fill-array-data v1, :array_10

    new-array v1, v0, [B

    move-object/from16 v18, v1

    fill-array-data v1, :array_11

    new-array v1, v0, [B

    move-object/from16 v19, v1

    fill-array-data v1, :array_12

    new-array v1, v0, [B

    move-object/from16 v20, v1

    fill-array-data v1, :array_13

    new-array v1, v0, [B

    move-object/from16 v21, v1

    fill-array-data v1, :array_14

    new-array v1, v0, [B

    move-object/from16 v22, v1

    fill-array-data v1, :array_15

    new-array v1, v0, [B

    move-object/from16 v23, v1

    fill-array-data v1, :array_16

    new-array v1, v0, [B

    move-object/from16 v24, v1

    fill-array-data v1, :array_17

    new-array v1, v0, [B

    move-object/from16 v25, v1

    fill-array-data v1, :array_18

    new-array v1, v0, [B

    move-object/from16 v26, v1

    fill-array-data v1, :array_19

    new-array v1, v0, [B

    move-object/from16 v27, v1

    fill-array-data v1, :array_1a

    new-array v1, v0, [B

    move-object/from16 v28, v1

    fill-array-data v1, :array_1b

    new-array v1, v0, [B

    move-object/from16 v29, v1

    fill-array-data v1, :array_1c

    new-array v1, v0, [B

    move-object/from16 v30, v1

    fill-array-data v1, :array_1d

    new-array v1, v0, [B

    move-object/from16 v31, v1

    fill-array-data v1, :array_1e

    new-array v1, v0, [B

    move-object/from16 v32, v1

    fill-array-data v1, :array_1f

    new-array v1, v0, [B

    move-object/from16 v33, v1

    fill-array-data v1, :array_20

    new-array v1, v0, [B

    move-object/from16 v34, v1

    fill-array-data v1, :array_21

    new-array v1, v0, [B

    move-object/from16 v35, v1

    fill-array-data v1, :array_22

    new-array v1, v0, [B

    move-object/from16 v36, v1

    fill-array-data v1, :array_23

    new-array v1, v0, [B

    move-object/from16 v37, v1

    fill-array-data v1, :array_24

    new-array v1, v0, [B

    move-object/from16 v38, v1

    fill-array-data v1, :array_25

    new-array v1, v0, [B

    move-object/from16 v39, v1

    fill-array-data v1, :array_26

    new-array v1, v0, [B

    move-object/from16 v40, v1

    fill-array-data v1, :array_27

    new-array v1, v0, [B

    move-object/from16 v41, v1

    fill-array-data v1, :array_28

    new-array v1, v0, [B

    move-object/from16 v42, v1

    fill-array-data v1, :array_29

    new-array v1, v0, [B

    move-object/from16 v43, v1

    fill-array-data v1, :array_2a

    new-array v0, v0, [B

    move-object/from16 v44, v0

    fill-array-data v0, :array_2b

    move-object/from16 v1, v45

    filled-new-array/range {v1 .. v44}, [[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/barcodes/Barcode39;->BARS:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_20
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_21
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_22
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_23
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_25
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_26
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_28
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_29
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2b
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 135
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/barcodes/Barcode39;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 146
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 147
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode39;->n:F

    .line 148
    iput-object p2, p0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/high16 p1, 0x41000000    # 8.0f

    .line 149
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode39;->size:F

    .line 150
    iget p1, p0, Lcom/itextpdf/barcodes/Barcode39;->size:F

    iput p1, p0, Lcom/itextpdf/barcodes/Barcode39;->baseline:F

    .line 151
    iget p1, p0, Lcom/itextpdf/barcodes/Barcode39;->size:F

    const/high16 p2, 0x40400000    # 3.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/itextpdf/barcodes/Barcode39;->barHeight:F

    const/4 p1, 0x0

    .line 152
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/Barcode39;->generateChecksum:Z

    .line 153
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/Barcode39;->checksumText:Z

    const/4 p2, 0x1

    .line 154
    iput-boolean p2, p0, Lcom/itextpdf/barcodes/Barcode39;->startStopText:Z

    .line 155
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/Barcode39;->extended:Z

    return-void
.end method

.method public static getBarsCode39(Ljava/lang/String;)[B
    .locals 8

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 167
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 168
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 169
    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v5, 0x2a

    .line 170
    const-string v6, " is illegal in code 39"

    const-string v7, "The character "

    if-ne v3, v5, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-ltz v4, :cond_2

    .line 176
    sget-object v3, Lcom/itextpdf/barcodes/Barcode39;->BARS:[[B

    aget-object v3, v3, v4

    mul-int/lit8 v4, v2, 0xa

    const/16 v5, 0x9

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v0
.end method

.method static getChecksum(Ljava/lang/String;)C
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 213
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%*"

    if-ge v0, v2, :cond_3

    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 215
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    .line 216
    const-string v5, " is illegal in code 39"

    const-string v6, "The character "

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-ltz v2, :cond_2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_3
    rem-int/lit8 v1, v1, 0x2b

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public static getCode39Ex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 190
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 191
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_1

    mul-int/lit8 v2, v2, 0x2

    .line 195
    const-string v3, "%U$A$B$C$D$E$F$G$H$I$J$K$L$M$N$O$P$Q$R$S$T$U$V$W$X$Y$Z%A%B%C%D%E  /A/B/C/D/E/F/G/H/I/J/K/L - ./O 0 1 2 3 4 5 6 7 8 9/Z%F%G%H%I%J%V A B C D E F G H I J K L M N O P Q R S T U V W X Y Z%K%L%M%N%O%W+A+B+C+D+E+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+Z%P%Q%R%S%T"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v2, v2, 0x1

    .line 196
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v4, v3, :cond_0

    .line 198
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The character "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is illegal in code 39"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 18

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 395
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode39;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    :goto_0
    if-nez p2, :cond_1

    .line 396
    iget-object v2, v0, Lcom/itextpdf/barcodes/Barcode39;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 397
    :goto_1
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 398
    iget-object v4, v0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    .line 399
    iget-boolean v5, v0, Lcom/itextpdf/barcodes/Barcode39;->extended:Z

    if-eqz v5, :cond_2

    .line 400
    iget-object v4, v0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/Barcode39;->getCode39Ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 402
    :cond_2
    iget-boolean v5, v0, Lcom/itextpdf/barcodes/Barcode39;->generateChecksum:Z

    if-eqz v5, :cond_3

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/itextpdf/barcodes/Barcode39;->getChecksum(Ljava/lang/String;)C

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 405
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v5, 0x2

    .line 406
    iget v7, v0, Lcom/itextpdf/barcodes/Barcode39;->n:F

    float-to-int v7, v7

    mul-int/lit8 v8, v7, 0x3

    add-int/lit8 v8, v8, 0x6

    mul-int/2addr v6, v8

    const/4 v8, 0x1

    add-int/2addr v5, v8

    add-int v14, v6, v5

    .line 408
    invoke-static {v4}, Lcom/itextpdf/barcodes/Barcode39;->getBarsCode39(Ljava/lang/String;)[B

    move-result-object v4

    .line 411
    iget v5, v0, Lcom/itextpdf/barcodes/Barcode39;->barHeight:F

    float-to-int v11, v5

    mul-int v5, v14, v11

    .line 412
    new-array v12, v5, [I

    const/4 v6, 0x0

    move v9, v6

    move v13, v9

    move v10, v8

    .line 413
    :goto_2
    array-length v15, v4

    if-ge v9, v15, :cond_7

    .line 414
    aget-byte v15, v4, v9

    if-nez v15, :cond_4

    move v15, v8

    goto :goto_3

    :cond_4
    move v15, v7

    :goto_3
    if-eqz v10, :cond_5

    move/from16 v16, v1

    goto :goto_4

    :cond_5
    move/from16 v16, v2

    :goto_4
    xor-int/lit8 v10, v10, 0x1

    move v8, v6

    :goto_5
    if-ge v8, v15, :cond_6

    add-int/lit8 v17, v13, 0x1

    .line 421
    aput v16, v12, v13

    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v17

    goto :goto_5

    :cond_6
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    move v1, v14

    :goto_6
    if-ge v1, v5, :cond_8

    .line 425
    invoke-static {v12, v6, v12, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v14

    goto :goto_6

    .line 427
    :cond_8
    new-instance v1, Ljava/awt/image/MemoryImageSource;

    const/4 v13, 0x0

    move-object v9, v1

    move v10, v14

    invoke-direct/range {v9 .. v14}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v3, v1}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v1

    return-object v1
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 8

    .line 237
    iget-object v0, p0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    .line 238
    iget-boolean v1, p0, Lcom/itextpdf/barcodes/Barcode39;->extended:Z

    if-eqz v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/barcodes/Barcode39;->getCode39Ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 242
    iget v1, p0, Lcom/itextpdf/barcodes/Barcode39;->baseline:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 243
    iget v1, p0, Lcom/itextpdf/barcodes/Barcode39;->baseline:F

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/Barcode39;->getDescender()F

    move-result v2

    sub-float/2addr v1, v2

    goto :goto_0

    .line 245
    :cond_1
    iget v1, p0, Lcom/itextpdf/barcodes/Barcode39;->baseline:F

    neg-float v1, v1

    iget v2, p0, Lcom/itextpdf/barcodes/Barcode39;->size:F

    add-float/2addr v1, v2

    :goto_0
    move v2, v1

    .line 247
    iget-object v1, p0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    .line 248
    iget-boolean v3, p0, Lcom/itextpdf/barcodes/Barcode39;->generateChecksum:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/itextpdf/barcodes/Barcode39;->checksumText:Z

    if-eqz v3, :cond_2

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/itextpdf/barcodes/Barcode39;->getChecksum(Ljava/lang/String;)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    :cond_2
    iget-boolean v3, p0, Lcom/itextpdf/barcodes/Barcode39;->startStopText:Z

    if-eqz v3, :cond_3

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/barcodes/Barcode39;->altText:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v1, p0, Lcom/itextpdf/barcodes/Barcode39;->altText:Ljava/lang/String;

    :cond_4
    iget v4, p0, Lcom/itextpdf/barcodes/Barcode39;->size:F

    invoke-virtual {v3, v1, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v1

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_1

    :cond_5
    move v1, v2

    .line 256
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, 0x2

    .line 257
    iget-boolean v4, p0, Lcom/itextpdf/barcodes/Barcode39;->generateChecksum:Z

    if-eqz v4, :cond_6

    add-int/lit8 v3, v0, 0x3

    :cond_6
    int-to-float v0, v3

    const/high16 v4, 0x40c00000    # 6.0f

    .line 260
    iget v5, p0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    mul-float/2addr v5, v4

    const/high16 v4, 0x40400000    # 3.0f

    iget v6, p0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    mul-float/2addr v6, v4

    iget v4, p0, Lcom/itextpdf/barcodes/Barcode39;->n:F

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    mul-float/2addr v0, v5

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 261
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 262
    iget v2, p0, Lcom/itextpdf/barcodes/Barcode39;->barHeight:F

    add-float/2addr v2, v1

    .line 263
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v1
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 307
    iget-object v2, v0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    .line 309
    iget-object v3, v0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    .line 310
    iget-boolean v4, v0, Lcom/itextpdf/barcodes/Barcode39;->extended:Z

    if-eqz v4, :cond_0

    .line 311
    iget-object v3, v0, Lcom/itextpdf/barcodes/Barcode39;->code:Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/barcodes/Barcode39;->getCode39Ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 313
    :cond_0
    iget-object v4, v0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 314
    iget-boolean v4, v0, Lcom/itextpdf/barcodes/Barcode39;->generateChecksum:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Lcom/itextpdf/barcodes/Barcode39;->checksumText:Z

    if-eqz v4, :cond_1

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Lcom/itextpdf/barcodes/Barcode39;->getChecksum(Ljava/lang/String;)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    :cond_1
    iget-boolean v4, v0, Lcom/itextpdf/barcodes/Barcode39;->startStopText:Z

    if-eqz v4, :cond_2

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "*"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    :cond_2
    iget-object v4, v0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v6, v0, Lcom/itextpdf/barcodes/Barcode39;->altText:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v2, v0, Lcom/itextpdf/barcodes/Barcode39;->altText:Ljava/lang/String;

    :cond_3
    iget v6, v0, Lcom/itextpdf/barcodes/Barcode39;->size:F

    invoke-virtual {v4, v2, v6}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v4

    goto :goto_0

    :cond_4
    move v4, v5

    .line 322
    :goto_0
    iget-boolean v6, v0, Lcom/itextpdf/barcodes/Barcode39;->generateChecksum:Z

    if-eqz v6, :cond_5

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/itextpdf/barcodes/Barcode39;->getChecksum(Ljava/lang/String;)C

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    const/high16 v8, 0x40c00000    # 6.0f

    .line 326
    iget v9, v0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    mul-float/2addr v9, v8

    const/high16 v8, 0x40400000    # 3.0f

    iget v10, v0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    mul-float/2addr v10, v8

    iget v8, v0, Lcom/itextpdf/barcodes/Barcode39;->n:F

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    mul-float/2addr v7, v9

    const/4 v8, 0x1

    add-int/2addr v6, v8

    int-to-float v6, v6

    iget v9, v0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    mul-float/2addr v6, v9

    add-float/2addr v7, v6

    .line 329
    iget v6, v0, Lcom/itextpdf/barcodes/Barcode39;->textAlignment:I

    if-eq v6, v8, :cond_9

    const/4 v9, 0x2

    if-eq v6, v9, :cond_7

    cmpl-float v6, v4, v7

    const/high16 v9, 0x40000000    # 2.0f

    if-lez v6, :cond_6

    sub-float/2addr v4, v7

    div-float/2addr v4, v9

    goto :goto_1

    :cond_6
    sub-float/2addr v7, v4

    div-float/2addr v7, v9

    goto :goto_2

    :cond_7
    cmpl-float v6, v4, v7

    if-lez v6, :cond_8

    sub-float/2addr v4, v7

    :goto_1
    move v7, v5

    goto :goto_3

    :cond_8
    sub-float/2addr v7, v4

    :goto_2
    move v4, v5

    goto :goto_3

    :cond_9
    move v4, v5

    move v7, v4

    .line 349
    :goto_3
    iget-object v6, v0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v6, :cond_b

    .line 350
    iget v6, v0, Lcom/itextpdf/barcodes/Barcode39;->baseline:F

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_a

    .line 351
    iget v6, v0, Lcom/itextpdf/barcodes/Barcode39;->barHeight:F

    iget v9, v0, Lcom/itextpdf/barcodes/Barcode39;->baseline:F

    sub-float/2addr v6, v9

    goto :goto_4

    .line 353
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/Barcode39;->getDescender()F

    move-result v5

    neg-float v5, v5

    .line 354
    iget v6, v0, Lcom/itextpdf/barcodes/Barcode39;->baseline:F

    add-float/2addr v6, v5

    move/from16 v24, v6

    move v6, v5

    move/from16 v5, v24

    goto :goto_4

    :cond_b
    move v6, v5

    .line 357
    :goto_4
    invoke-static {v3}, Lcom/itextpdf/barcodes/Barcode39;->getBarsCode39(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz p2, :cond_c

    .line 360
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_c
    const/4 v9, 0x0

    .line 362
    :goto_5
    array-length v10, v3

    if-ge v9, v10, :cond_f

    .line 363
    aget-byte v10, v3, v9

    if-nez v10, :cond_d

    iget v10, v0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    goto :goto_6

    :cond_d
    iget v10, v0, Lcom/itextpdf/barcodes/Barcode39;->x:F

    iget v11, v0, Lcom/itextpdf/barcodes/Barcode39;->n:F

    mul-float/2addr v10, v11

    :goto_6
    if-eqz v8, :cond_e

    float-to-double v12, v4

    float-to-double v14, v5

    .line 365
    iget v11, v0, Lcom/itextpdf/barcodes/Barcode39;->inkSpreading:F

    sub-float v11, v10, v11

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    float-to-double v2, v11

    iget v11, v0, Lcom/itextpdf/barcodes/Barcode39;->barHeight:F

    move/from16 v22, v5

    move/from16 v23, v6

    float-to-double v5, v11

    move-object/from16 v11, p1

    move-wide/from16 v16, v2

    move-wide/from16 v18, v5

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_7

    :cond_e
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v5

    move/from16 v23, v6

    :goto_7
    xor-int/lit8 v8, v8, 0x1

    add-float/2addr v4, v10

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v5, v22

    move/from16 v6, v23

    goto :goto_5

    :cond_f
    move-object/from16 v20, v2

    move/from16 v23, v6

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 371
    iget-object v2, v0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v2, :cond_11

    move-object/from16 v2, p1

    if-eqz v1, :cond_10

    .line 373
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 376
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    iget-object v2, v0, Lcom/itextpdf/barcodes/Barcode39;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v3, v0, Lcom/itextpdf/barcodes/Barcode39;->size:F

    .line 377
    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    move/from16 v5, v23

    .line 378
    invoke-virtual {v1, v7, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    move-object/from16 v2, v20

    .line 379
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 382
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/Barcode39;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    return-object v1
.end method
