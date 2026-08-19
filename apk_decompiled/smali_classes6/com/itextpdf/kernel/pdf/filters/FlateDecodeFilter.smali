.class public Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;
.super Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareFilter;
.source "FlateDecodeFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareFilter;-><init>()V

    return-void
.end method

.method public static decodePredictor([BLcom/itextpdf/kernel/pdf/PdfObject;)[B
    .locals 18

    move-object/from16 v0, p0

    if-eqz p1, :cond_10

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_a

    .line 86
    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 87
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Predictor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 88
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    goto/16 :goto_a

    .line 91
    :cond_1
    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v3

    const/16 v4, 0xa

    const/4 v6, 0x2

    if-ge v3, v4, :cond_2

    if-eq v3, v6, :cond_2

    return-object v0

    .line 95
    :cond_2
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Columns:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v7, 0x1

    invoke-static {v1, v4, v7}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->getNumberOrDefault(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;I)I

    move-result v4

    .line 96
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Colors:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v1, v8, v7}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->getNumberOrDefault(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;I)I

    move-result v8

    .line 97
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerComponent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v1, v9, v5}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->getNumberOrDefault(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;I)I

    move-result v1

    .line 98
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v9, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    array-length v11, v0

    invoke-direct {v10, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    mul-int v11, v8, v1

    .line 100
    div-int/2addr v11, v5

    mul-int/2addr v8, v4

    mul-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x7

    .line 101
    div-int/2addr v8, v5

    .line 102
    new-array v4, v8, [B

    .line 103
    new-array v12, v8, [B

    const/4 v13, 0x0

    if-ne v3, v6, :cond_5

    if-ne v1, v5, :cond_4

    .line 106
    array-length v1, v0

    div-int/2addr v1, v8

    :goto_0
    if-ge v13, v1, :cond_4

    mul-int v2, v13, v8

    move v3, v11

    :goto_1
    if-ge v3, v8, :cond_3

    add-int v4, v2, v3

    .line 110
    aget-byte v5, v0, v4

    sub-int v6, v4, v11

    aget-byte v6, v0, v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    .line 121
    :cond_5
    :goto_2
    :try_start_0
    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v0

    if-gez v0, :cond_6

    .line 123
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 125
    :cond_6
    invoke-virtual {v9, v4, v13, v8}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_f

    if-eq v0, v7, :cond_e

    if-eq v0, v6, :cond_d

    if-eq v0, v2, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    move v0, v13

    :goto_3
    if-ge v0, v11, :cond_7

    .line 153
    aget-byte v1, v4, v0

    aget-byte v3, v12, v0

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v0, v11

    :goto_4
    if-ge v0, v8, :cond_f

    sub-int v1, v0, v11

    .line 157
    aget-byte v3, v4, v1

    and-int/lit16 v3, v3, 0xff

    .line 158
    aget-byte v5, v12, v0

    and-int/lit16 v5, v5, 0xff

    .line 159
    aget-byte v1, v12, v1

    and-int/lit16 v1, v1, 0xff

    add-int v14, v3, v5

    sub-int/2addr v14, v1

    sub-int v15, v14, v3

    .line 162
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    sub-int v16, v14, v5

    .line 163
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v14, v1

    .line 164
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-gt v15, v2, :cond_8

    if-gt v15, v14, :cond_8

    goto :goto_5

    :cond_8
    if-gt v2, v14, :cond_9

    move v3, v5

    goto :goto_5

    :cond_9
    move v3, v1

    .line 175
    :goto_5
    aget-byte v1, v4, v0

    int-to-byte v2, v3

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x3

    goto :goto_4

    .line 180
    :cond_a
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "PNG filter unknown."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move v0, v13

    :goto_6
    if-ge v0, v11, :cond_c

    .line 145
    aget-byte v1, v4, v0

    aget-byte v2, v12, v0

    div-int/2addr v2, v6

    int-to-byte v2, v2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    move v0, v11

    :goto_7
    if-ge v0, v8, :cond_f

    .line 148
    aget-byte v1, v4, v0

    sub-int v2, v0, v11

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, v12, v0

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    div-int/2addr v2, v6

    int-to-byte v2, v2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    move v0, v13

    :goto_8
    if-ge v0, v8, :cond_f

    .line 140
    aget-byte v1, v4, v0

    aget-byte v2, v12, v0

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_e
    move v0, v11

    :goto_9
    if-ge v0, v8, :cond_f

    .line 135
    aget-byte v1, v4, v0

    sub-int v2, v0, v11

    aget-byte v2, v4, v2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 183
    :cond_f
    :try_start_1
    invoke-virtual {v10, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 v2, 0x3

    move-object/from16 v17, v12

    move-object v12, v4

    move-object/from16 v4, v17

    goto/16 :goto_2

    .line 127
    :catch_1
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :cond_10
    :goto_a
    return-object v0
.end method

.method public static flateDecode([BZ)[B
    .locals 1

    .line 74
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->flateDecodeInternal([BZLjava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method protected static flateDecodeInternal([BZLjava/io/ByteArrayOutputStream;)[B
    .locals 3

    .line 220
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 221
    new-instance p0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz p1, :cond_0

    const/16 v0, 0xffc

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 222
    :goto_0
    new-array v0, v0, [B

    .line 225
    :goto_1
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    .line 226
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 228
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 229
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 230
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Lcom/itextpdf/kernel/exceptions/MemoryLimitsAwareException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    if-eqz p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 237
    :cond_2
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 232
    throw p0
.end method

.method private static getNumberOrDefault(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;I)I
    .locals 1

    .line 243
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 246
    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p2

    :cond_0
    return p2
.end method


# virtual methods
.method public decode([BLcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)[B
    .locals 0

    .line 201
    invoke-virtual {p0, p4}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->enableMemoryLimitsAwareHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    const/4 p4, 0x1

    .line 202
    invoke-static {p1, p4, p2}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->flateDecodeInternal([BZLjava/io/ByteArrayOutputStream;)[B

    move-result-object p4

    if-nez p4, :cond_0

    .line 204
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 p4, 0x0

    .line 205
    invoke-static {p1, p4, p2}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->flateDecodeInternal([BZLjava/io/ByteArrayOutputStream;)[B

    move-result-object p4

    .line 207
    :cond_0
    invoke-static {p4, p3}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->decodePredictor([BLcom/itextpdf/kernel/pdf/PdfObject;)[B

    move-result-object p1

    return-object p1
.end method
