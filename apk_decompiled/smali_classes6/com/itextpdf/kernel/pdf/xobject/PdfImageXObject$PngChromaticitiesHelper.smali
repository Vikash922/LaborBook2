.class Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;
.super Ljava/lang/Object;
.source "PdfImageXObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PngChromaticitiesHelper"
.end annotation


# instance fields
.field matrix:[F

.field wp:[F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 607
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;->matrix:[F

    const/4 v0, 0x3

    .line 608
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;->wp:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$1;)V
    .locals 0

    .line 605
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public constructMatrix(Lcom/itextpdf/io/image/PngImageData;)V
    .locals 14

    .line 611
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngImageData;->getPngChromaticities()Lcom/itextpdf/io/image/PngChromaticities;

    move-result-object p1

    .line 612
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYW()F

    move-result v0

    .line 613
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXG()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXB()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYR()F

    move-result v2

    mul-float/2addr v1, v2

    .line 614
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXR()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXB()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYG()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 615
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXR()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXG()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYB()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 616
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYR()F

    move-result v1

    .line 617
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXG()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXB()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYW()F

    move-result v3

    mul-float/2addr v2, v3

    .line 618
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXW()F

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXB()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYG()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 619
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXW()F

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXG()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYB()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v1, v0

    .line 620
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXR()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYR()F

    move-result v3

    div-float/2addr v2, v3

    .line 621
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXR()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYR()F

    move-result v5

    div-float/2addr v3, v5

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    .line 622
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYG()F

    move-result v5

    neg-float v5, v5

    .line 623
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXR()F

    move-result v6

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXB()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYW()F

    move-result v7

    mul-float/2addr v6, v7

    .line 624
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXW()F

    move-result v7

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXB()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYR()F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 625
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXW()F

    move-result v7

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXR()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYB()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    div-float/2addr v5, v0

    .line 626
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXG()F

    move-result v6

    mul-float/2addr v6, v5

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYG()F

    move-result v7

    div-float/2addr v6, v7

    .line 627
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXG()F

    move-result v7

    sub-float v7, v4, v7

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYG()F

    move-result v8

    div-float/2addr v7, v8

    sub-float/2addr v7, v4

    mul-float/2addr v7, v5

    .line 628
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYB()F

    move-result v8

    .line 629
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXR()F

    move-result v9

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXG()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYW()F

    move-result v10

    mul-float/2addr v9, v10

    .line 630
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXW()F

    move-result v10

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXG()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYW()F

    move-result v11

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    .line 631
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXW()F

    move-result v10

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXR()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYG()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    div-float/2addr v8, v0

    .line 632
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXB()F

    move-result v0

    mul-float/2addr v0, v8

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYB()F

    move-result v9

    div-float/2addr v0, v9

    .line 633
    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getXB()F

    move-result v9

    sub-float v9, v4, v9

    invoke-virtual {p1}, Lcom/itextpdf/io/image/PngChromaticities;->getYB()F

    move-result p1

    div-float/2addr v9, p1

    sub-float/2addr v9, v4

    mul-float/2addr v9, v8

    add-float p1, v2, v6

    add-float/2addr p1, v0

    add-float v10, v3, v7

    add-float/2addr v10, v9

    const/4 v11, 0x3

    .line 640
    new-array v12, v11, [F

    const/4 v13, 0x0

    aput p1, v12, v13

    const/4 p1, 0x1

    aput v4, v12, p1

    const/4 v4, 0x2

    aput v10, v12, v4

    .line 641
    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v10

    iput-object v10, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;->wp:[F

    const/16 v10, 0x9

    .line 651
    new-array v12, v10, [F

    aput v2, v12, v13

    aput v1, v12, p1

    aput v3, v12, v4

    aput v6, v12, v11

    const/4 p1, 0x4

    aput v5, v12, p1

    const/4 p1, 0x5

    aput v7, v12, p1

    const/4 p1, 0x6

    aput v0, v12, p1

    const/4 p1, 0x7

    aput v8, v12, p1

    const/16 p1, 0x8

    aput v9, v12, p1

    .line 652
    invoke-static {v12, v10}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;->matrix:[F

    return-void
.end method
