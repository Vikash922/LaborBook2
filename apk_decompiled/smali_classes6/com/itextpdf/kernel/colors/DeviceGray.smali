.class public Lcom/itextpdf/kernel/colors/DeviceGray;
.super Lcom/itextpdf/kernel/colors/Color;
.source "DeviceGray.java"


# static fields
.field public static final BLACK:Lcom/itextpdf/kernel/colors/DeviceGray;

.field public static final GRAY:Lcom/itextpdf/kernel/colors/DeviceGray;

.field public static final WHITE:Lcom/itextpdf/kernel/colors/DeviceGray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceGray;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceGray;->WHITE:Lcom/itextpdf/kernel/colors/DeviceGray;

    .line 63
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceGray;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceGray;->GRAY:Lcom/itextpdf/kernel/colors/DeviceGray;

    .line 67
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceGray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceGray;->BLACK:Lcom/itextpdf/kernel/colors/DeviceGray;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 6

    .line 79
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v3

    if-lez v1, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    invoke-direct {p0, v0, v4}, Lcom/itextpdf/kernel/colors/Color;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    if-gtz v2, :cond_2

    cmpg-float p1, p1, v3

    if-gez p1, :cond_3

    .line 81
    :cond_2
    const-class p1, Lcom/itextpdf/kernel/colors/DeviceGray;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 82
    const-string v0, "Some of colorant intensities are invalid: they are bigger than 1 or less than 0. We will force them to become 1 or 0 respectively."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static makeDarker(Lcom/itextpdf/kernel/colors/DeviceGray;)Lcom/itextpdf/kernel/colors/DeviceGray;
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceGray;->getColorValue()[F

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    const v0, 0x3ea8f5c3    # 0.33f

    sub-float v0, p0, v0

    div-float/2addr v0, p0

    const/4 v1, 0x0

    .line 118
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 120
    new-instance v1, Lcom/itextpdf/kernel/colors/DeviceGray;

    mul-float/2addr p0, v0

    invoke-direct {v1, p0}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    return-object v1
.end method

.method public static makeLighter(Lcom/itextpdf/kernel/colors/DeviceGray;)Lcom/itextpdf/kernel/colors/DeviceGray;
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceGray;->getColorValue()[F

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 103
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceGray;

    const v0, 0x3e99999a    # 0.3f

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    return-object p0

    :cond_0
    const v0, 0x3ea8f5c3    # 0.33f

    add-float/2addr v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 105
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, p0

    .line 107
    new-instance v1, Lcom/itextpdf/kernel/colors/DeviceGray;

    mul-float/2addr p0, v0

    invoke-direct {v1, p0}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    return-object v1
.end method
