.class public Lcom/itextpdf/kernel/pdf/filters/FlateDecodeStrictFilter;
.super Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;
.source "FlateDecodeStrictFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;-><init>()V

    return-void
.end method

.method private static flateDecode([BLjava/io/ByteArrayOutputStream;)[B
    .locals 1

    const/4 v0, 0x1

    .line 75
    invoke-static {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeStrictFilter;->flateDecodeInternal([BZLjava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decode([BLcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)[B
    .locals 0

    .line 61
    invoke-virtual {p0, p4}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeStrictFilter;->enableMemoryLimitsAwareHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    .line 62
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeStrictFilter;->flateDecode([BLjava/io/ByteArrayOutputStream;)[B

    move-result-object p1

    .line 63
    invoke-static {p1, p3}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeStrictFilter;->decodePredictor([BLcom/itextpdf/kernel/pdf/PdfObject;)[B

    move-result-object p1

    return-object p1
.end method
