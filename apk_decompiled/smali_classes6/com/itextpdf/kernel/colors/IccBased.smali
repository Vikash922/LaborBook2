.class public Lcom/itextpdf/kernel/colors/IccBased;
.super Lcom/itextpdf/kernel/colors/Color;
.source "IccBased.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;)V
    .locals 1

    .line 56
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;->getNumberOfComponents()I

    move-result v0

    new-array v0, v0, [F

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/colors/IccBased;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;[F)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;[F)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/colors/Color;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 69
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/colors/IccBased;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;[F)V

    .line 70
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/IccBased;->getNumberOfComponents()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/itextpdf/kernel/colors/IccBased;->colorValue:[F

    const/4 p1, 0x0

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/IccBased;->getNumberOfComponents()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/IccBased;->colorValue:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[F)V
    .locals 1

    .line 82
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/kernel/colors/IccBased;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;[F)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[F[F)V
    .locals 1

    .line 86
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;-><init>(Ljava/io/InputStream;[F)V

    invoke-direct {p0, v0, p3}, Lcom/itextpdf/kernel/colors/IccBased;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;[F)V

    .line 87
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/IccBased;->getNumberOfComponents()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    array-length p2, p2

    if-ne p1, p2, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Invalid range array."

    invoke-direct {p1, p2, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method
