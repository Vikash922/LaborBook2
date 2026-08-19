.class public Lcom/itextpdf/kernel/pdf/filters/LZWDecodeFilter;
.super Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareFilter;
.source "LZWDecodeFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareFilter;-><init>()V

    return-void
.end method

.method public static LZWDecode([B)[B
    .locals 1

    .line 65
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/pdf/filters/LZWDecodeFilter;->LZWDecodeInternal([BLjava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static LZWDecodeInternal([BLjava/io/ByteArrayOutputStream;)[B
    .locals 1

    .line 87
    new-instance v0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;-><init>()V

    .line 88
    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->decode([BLjava/io/OutputStream;)V

    .line 89
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decode([BLcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)[B
    .locals 0

    .line 73
    invoke-virtual {p0, p4}, Lcom/itextpdf/kernel/pdf/filters/LZWDecodeFilter;->enableMemoryLimitsAwareHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    .line 74
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/pdf/filters/LZWDecodeFilter;->LZWDecodeInternal([BLjava/io/ByteArrayOutputStream;)[B

    move-result-object p1

    .line 75
    invoke-static {p1, p3}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->decodePredictor([BLcom/itextpdf/kernel/pdf/PdfObject;)[B

    move-result-object p1

    return-object p1
.end method
