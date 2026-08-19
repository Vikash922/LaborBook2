.class public Lcom/itextpdf/kernel/pdf/filters/ASCIIHexDecodeFilter;
.super Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareFilter;
.source "ASCIIHexDecodeFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareFilter;-><init>()V

    return-void
.end method

.method public static ASCIIHexDecode([B)[B
    .locals 1

    .line 69
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/pdf/filters/ASCIIHexDecodeFilter;->ASCIIHexDecodeInternal([BLjava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static ASCIIHexDecodeInternal([BLjava/io/ByteArrayOutputStream;)[B
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    .line 92
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 93
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 97
    :cond_0
    invoke-static {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 100
    :cond_1
    invoke-static {v3}, Lcom/itextpdf/io/source/ByteBuffer;->getHex(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-eqz v0, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    shl-int/lit8 v4, v2, 0x4

    add-int/2addr v4, v3

    int-to-byte v3, v4

    .line 107
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    xor-int/lit8 v0, v0, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_3
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "illegal character in ASCIIHexDecode."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_3
    if-nez v0, :cond_5

    shl-int/lit8 p0, v2, 0x4

    int-to-byte p0, p0

    .line 112
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 114
    :cond_5
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decode([BLcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)[B
    .locals 0

    .line 77
    invoke-virtual {p0, p4}, Lcom/itextpdf/kernel/pdf/filters/ASCIIHexDecodeFilter;->enableMemoryLimitsAwareHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    .line 78
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/pdf/filters/ASCIIHexDecodeFilter;->ASCIIHexDecodeInternal([BLjava/io/ByteArrayOutputStream;)[B

    move-result-object p1

    return-object p1
.end method
