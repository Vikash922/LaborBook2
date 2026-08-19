.class public Lcom/itextpdf/kernel/pdf/filters/CCITTFaxDecodeFilter;
.super Ljava/lang/Object;
.source "CCITTFaxDecodeFilter.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([BLcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)[B
    .locals 9

    .line 64
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p4, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p2

    .line 65
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p4, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p4

    if-eqz p2, :cond_c

    if-eqz p4, :cond_c

    .line 69
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p2

    .line 70
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 72
    instance-of p4, p3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz p4, :cond_0

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 p4, 0x0

    if-eqz p3, :cond_4

    .line 77
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, p4

    .line 81
    :goto_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BlackIs1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v1

    goto :goto_2

    :cond_2
    move v1, p4

    .line 85
    :goto_2
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->EncodedByteAlign:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 87
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result p3

    goto :goto_3

    :cond_3
    move p3, p4

    :goto_3
    move v7, v1

    goto :goto_4

    :cond_4
    move p3, p4

    move v0, p3

    move v7, v0

    :goto_4
    add-int/lit8 v1, p2, 0x7

    .line 90
    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v1, v4

    new-array v8, v1, [B

    .line 91
    new-instance v2, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;

    invoke-direct {v2}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;-><init>()V

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-lez v0, :cond_5

    goto :goto_6

    :cond_5
    if-eqz p3, :cond_6

    const-wide/16 v0, 0x4

    goto :goto_5

    :cond_6
    const-wide/16 v0, 0x0

    :goto_5
    move-wide v5, v0

    .line 109
    new-instance v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;

    invoke-direct {v0, v3, p2, v4}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;-><init>(III)V

    const/4 v3, 0x0

    move-object v1, v8

    move-object v2, p1

    .line 110
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeT6([B[BIIJ)V

    goto :goto_9

    :cond_7
    :goto_6
    if-lez v0, :cond_8

    move v0, v3

    goto :goto_7

    :cond_8
    move v0, p4

    :goto_7
    if-eqz p3, :cond_9

    const/4 p3, 0x4

    goto :goto_8

    :cond_9
    move p3, p4

    :goto_8
    or-int/2addr p3, v0

    const/4 v0, 0x3

    .line 95
    invoke-virtual {v2, v3, v0, p3, p4}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->SetOptions(IIII)V

    .line 96
    invoke-virtual {v2, v8, p1, p2, v4}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeRaw([B[BII)V

    .line 97
    iget v0, v2, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    if-lez v0, :cond_a

    .line 98
    new-array v0, v1, [B

    .line 99
    iget v1, v2, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    const/4 v5, 0x2

    .line 100
    invoke-virtual {v2, v3, v5, p3, p4}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->SetOptions(IIII)V

    .line 101
    invoke-virtual {v2, v0, p1, p2, v4}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeRaw([B[BII)V

    .line 102
    iget p1, v2, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    if-ge p1, v1, :cond_a

    move-object v8, v0

    :cond_a
    :goto_9
    if-nez v7, :cond_b

    .line 113
    array-length p1, v8

    :goto_a
    if-ge p4, p1, :cond_b

    .line 115
    aget-byte p2, v8, p4

    xor-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v8, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_a

    :cond_b
    return-object v8

    .line 67
    :cond_c
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Filter CCITTFaxDecode is only supported for images"

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
