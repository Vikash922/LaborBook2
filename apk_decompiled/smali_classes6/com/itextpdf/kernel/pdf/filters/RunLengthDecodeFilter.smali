.class public Lcom/itextpdf/kernel/pdf/filters/RunLengthDecodeFilter;
.super Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareFilter;
.source "RunLengthDecodeFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([BLcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)[B
    .locals 3

    .line 63
    invoke-virtual {p0, p4}, Lcom/itextpdf/kernel/pdf/filters/RunLengthDecodeFilter;->enableMemoryLimitsAwareHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    const/4 p3, 0x0

    move p4, p3

    .line 65
    :goto_0
    array-length v0, p1

    if-ge p4, v0, :cond_3

    .line 66
    aget-byte v0, p1, p4

    const/16 v1, -0x80

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p4, 0x1

    .line 74
    invoke-virtual {p2, p1, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr p4, v0

    goto :goto_2

    :cond_1
    add-int/lit8 p4, p4, 0x1

    move v1, p3

    :goto_1
    and-int/lit16 v2, v0, 0xff

    rsub-int v2, v2, 0x101

    if-ge v1, v2, :cond_2

    .line 81
    aget-byte v2, p1, p4

    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 85
    :cond_3
    :goto_3
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
