.class public Lcom/itextpdf/kernel/pdf/filters/ASCII85DecodeFilter;
.super Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareFilter;
.source "ASCII85DecodeFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareFilter;-><init>()V

    return-void
.end method

.method public static ASCII85Decode([B)[B
    .locals 1

    .line 69
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/pdf/filters/ASCII85DecodeFilter;->ASCII85DecodeInternal([BLjava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static ASCII85DecodeInternal([BLjava/io/ByteArrayOutputStream;)[B
    .locals 8

    const/4 v0, 0x5

    .line 92
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 93
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_6

    .line 94
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x7e

    if-ne v5, v6, :cond_0

    goto :goto_3

    .line 98
    :cond_0
    invoke-static {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    const/16 v6, 0x7a

    if-ne v5, v6, :cond_2

    if-nez v4, :cond_2

    .line 102
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 103
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 104
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_2
    const/16 v6, 0x21

    if-lt v5, v6, :cond_5

    const/16 v6, 0x75

    if-gt v5, v6, :cond_5

    add-int/lit8 v5, v5, -0x21

    .line 111
    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_4

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v0, :cond_3

    mul-int/lit8 v5, v5, 0x55

    .line 117
    aget v6, v1, v4

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    shr-int/lit8 v4, v5, 0x18

    int-to-byte v4, v4

    .line 119
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v4, v5, 0x10

    int-to-byte v4, v4

    .line 120
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v4, v5, 0x8

    int-to-byte v4, v4

    .line 121
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v4, v5

    .line 122
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v4, v2

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_5
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Illegal character in ASCII85Decode."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    const p0, 0x95eed

    const v0, 0x31c84b1

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-ne v4, v3, :cond_7

    .line 126
    aget v2, v1, v2

    mul-int/2addr v2, v0

    aget v0, v1, v5

    mul-int/2addr v0, p0

    add-int/2addr v2, v0

    const p0, 0x97b7b

    add-int/2addr v2, p0

    shr-int/lit8 p0, v2, 0x18

    int-to-byte p0, p0

    .line 127
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_7
    const/4 v6, 0x3

    if-ne v4, v6, :cond_8

    .line 129
    aget v2, v1, v2

    mul-int/2addr v2, v0

    aget v0, v1, v5

    mul-int/2addr v0, p0

    add-int/2addr v2, v0

    aget p0, v1, v3

    mul-int/lit16 p0, p0, 0x1c39

    add-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x1c8e

    shr-int/lit8 p0, v2, 0x18

    int-to-byte p0, p0

    .line 130
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 p0, v2, 0x10

    int-to-byte p0, p0

    .line 131
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_8
    const/4 v7, 0x4

    if-ne v4, v7, :cond_9

    .line 133
    aget v2, v1, v2

    mul-int/2addr v2, v0

    aget v0, v1, v5

    mul-int/2addr v0, p0

    add-int/2addr v2, v0

    aget p0, v1, v3

    mul-int/lit16 p0, p0, 0x1c39

    add-int/2addr v2, p0

    aget p0, v1, v6

    mul-int/lit8 p0, p0, 0x55

    add-int/2addr v2, p0

    add-int/lit8 v2, v2, 0x55

    shr-int/lit8 p0, v2, 0x18

    int-to-byte p0, p0

    .line 134
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 p0, v2, 0x10

    int-to-byte p0, p0

    .line 135
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 p0, v2, 0x8

    int-to-byte p0, p0

    .line 136
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 138
    :cond_9
    :goto_4
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decode([BLcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)[B
    .locals 0

    .line 77
    invoke-virtual {p0, p4}, Lcom/itextpdf/kernel/pdf/filters/ASCII85DecodeFilter;->enableMemoryLimitsAwareHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    .line 78
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/pdf/filters/ASCII85DecodeFilter;->ASCII85DecodeInternal([BLjava/io/ByteArrayOutputStream;)[B

    move-result-object p1

    return-object p1
.end method
