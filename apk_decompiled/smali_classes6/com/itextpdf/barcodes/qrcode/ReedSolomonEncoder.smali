.class final Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;
.super Ljava/lang/Object;
.source "ReedSolomonEncoder.java"


# instance fields
.field private final cachedGenerators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/barcodes/qrcode/GF256Poly;",
            ">;"
        }
    .end annotation
.end field

.field private final field:Lcom/itextpdf/barcodes/qrcode/GF256;


# direct methods
.method public constructor <init>(Lcom/itextpdf/barcodes/qrcode/GF256;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/GF256;->QR_CODE_FIELD:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    .line 72
    new-instance v1, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    const/4 v2, 0x1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Only QR Code is supported at this time"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildGenerator(I)Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    .line 78
    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-gt v1, p1, :cond_0

    .line 79
    new-instance v3, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    iget-object v4, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Lcom/itextpdf/barcodes/qrcode/GF256;->exp(I)I

    move-result v5

    filled-new-array {v2, v5}, [I

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->multiply(Lcom/itextpdf/barcodes/qrcode/GF256Poly;)Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v0

    .line 80
    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    return-object p1
.end method


# virtual methods
.method public encode([II)V
    .locals 6

    if-eqz p2, :cond_2

    .line 97
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lez v0, :cond_1

    .line 101
    invoke-direct {p0, p2}, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->buildGenerator(I)Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v1

    .line 102
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 103
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    new-instance v4, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    iget-object v5, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-direct {v4, v5, v2}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    const/4 v2, 0x1

    .line 105
    invoke-virtual {v4, p2, v2}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->multiplyByMonomial(II)Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v4

    .line 106
    invoke-virtual {v4, v1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->divide(Lcom/itextpdf/barcodes/qrcode/GF256Poly;)[Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v1

    aget-object v1, v1, v2

    .line 107
    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->getCoefficients()[I

    move-result-object v1

    .line 108
    array-length v2, v1

    sub-int/2addr p2, v2

    move v2, v3

    :goto_0
    if-ge v2, p2, :cond_0

    add-int v4, v0, v2

    .line 110
    aput v3, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, p2

    .line 112
    array-length p2, v1

    invoke-static {v1, v3, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 99
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No data bytes provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No error correction bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
