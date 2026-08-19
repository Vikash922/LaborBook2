.class public Lcom/itextpdf/kernel/colors/DeviceRgb;
.super Lcom/itextpdf/kernel/colors/Color;
.source "DeviceRgb.java"


# static fields
.field public static final BLACK:Lcom/itextpdf/kernel/colors/Color;

.field public static final BLUE:Lcom/itextpdf/kernel/colors/Color;

.field public static final GREEN:Lcom/itextpdf/kernel/colors/Color;

.field public static final RED:Lcom/itextpdf/kernel/colors/Color;

.field public static final WHITE:Lcom/itextpdf/kernel/colors/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceRgb;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    .line 64
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    const/16 v2, 0xff

    invoke-direct {v0, v2, v2, v2}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceRgb;->WHITE:Lcom/itextpdf/kernel/colors/Color;

    .line 69
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {v0, v2, v1, v1}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceRgb;->RED:Lcom/itextpdf/kernel/colors/Color;

    .line 74
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {v0, v1, v2, v1}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceRgb;->GREEN:Lcom/itextpdf/kernel/colors/Color;

    .line 79
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {v0, v1, v1, v2}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceRgb;->BLUE:Lcom/itextpdf/kernel/colors/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0, v0, v0}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 10

    .line 107
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    cmpl-float v4, p1, v3

    if-lez v4, :cond_1

    move v4, p1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    cmpl-float v5, p2, v1

    if-lez v5, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    cmpl-float v6, p2, v3

    if-lez v6, :cond_3

    move v6, p2

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    cmpl-float v7, p3, v1

    if-lez v7, :cond_4

    goto :goto_2

    :cond_4
    cmpl-float v1, p3, v3

    if-lez v1, :cond_5

    move v1, p3

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    const/4 v8, 0x3

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v4, v8, v9

    const/4 v4, 0x1

    aput v6, v8, v4

    const/4 v4, 0x2

    aput v1, v8, v4

    invoke-direct {p0, v0, v8}, Lcom/itextpdf/kernel/colors/Color;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    if-gtz v2, :cond_6

    cmpg-float p1, p1, v3

    if-ltz p1, :cond_6

    if-gtz v5, :cond_6

    cmpg-float p1, p2, v3

    if-ltz p1, :cond_6

    if-gtz v7, :cond_6

    cmpg-float p1, p3, v3

    if-gez p1, :cond_7

    .line 113
    :cond_6
    const-class p1, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 114
    const-string p2, "Some of colorant intensities are invalid: they are bigger than 1 or less than 0. We will force them to become 1 or 0 respectively."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Color;)V
    .locals 3

    .line 127
    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    .line 128
    invoke-virtual {p1}, Ljava/awt/Color;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 129
    const-class v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Ljava/awt/Color;->getAlpha()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Alpha channel {0} was ignored during color creation. Note that opacity can be achieved in some places by using \'setOpacity\' method or \'TransparentColor\' class"

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static makeDarker(Lcom/itextpdf/kernel/colors/DeviceRgb;)Lcom/itextpdf/kernel/colors/DeviceRgb;
    .locals 4

    .line 173
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 174
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 175
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object p0

    const/4 v2, 0x2

    aget p0, p0, v2

    .line 177
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x3ea8f5c3    # 0.33f

    sub-float v3, v2, v3

    div-float/2addr v3, v2

    const/4 v2, 0x0

    .line 179
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v0, v2

    mul-float/2addr v1, v2

    mul-float/2addr v2, p0

    .line 184
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-object p0
.end method

.method public static makeLighter(Lcom/itextpdf/kernel/colors/DeviceRgb;)Lcom/itextpdf/kernel/colors/DeviceRgb;
    .locals 5

    .line 148
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 149
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 150
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object p0

    const/4 v2, 0x2

    aget p0, p0, v2

    .line 152
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    .line 155
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    const/16 v0, 0x54

    invoke-direct {p0, v0, v0, v0}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    return-object p0

    :cond_0
    const v3, 0x3ea8f5c3    # 0.33f

    add-float/2addr v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 158
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float/2addr v0, v3

    mul-float/2addr v1, v3

    mul-float/2addr v3, p0

    .line 163
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {p0, v0, v1, v3}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-object p0
.end method
