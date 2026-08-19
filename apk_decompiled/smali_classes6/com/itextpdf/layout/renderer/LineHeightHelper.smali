.class Lcom/itextpdf/layout/renderer/LineHeightHelper;
.super Ljava/lang/Object;
.source "LineHeightHelper.java"


# static fields
.field public static final ASCENDER_INDEX:I = 0x0

.field private static final DEFAULT_LINE_HEIGHT_COEFF:F = 1.15f

.field public static final DESCENDER_INDEX:I = 0x1

.field public static final LEADING_INDEX:I = 0x3

.field public static final XHEIGHT_INDEX:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateLineHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F
    .locals 4

    const/16 v0, 0x7c

    .line 80
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/LineHeight;

    const/16 v1, 0x18

    .line 81
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/LineHeight;->isNormalValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/LineHeight;->getValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/LineHeight;->isFixedValue()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 92
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/LineHeight;->getValue()F

    move-result p0

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/LineHeight;->getValue()F

    move-result p0

    mul-float/2addr p0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const v0, 0x3f933333    # 1.15f

    mul-float/2addr v1, v0

    .line 85
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/LineHeightHelper;->getFontAscenderDescenderNormalized(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F

    move-result-object p0

    const/4 v0, 0x0

    .line 86
    aget v0, p0, v0

    const/4 v2, 0x1

    aget p0, p0, v2

    sub-float/2addr v0, p0

    cmpl-float p0, v0, v1

    if-lez p0, :cond_3

    move p0, v0

    goto :goto_1

    :cond_3
    move p0, v1

    :goto_1
    return p0
.end method

.method static getActualAscenderDescender(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F
    .locals 4

    .line 47
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/LineHeightHelper;->getActualFontInfo(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F

    move-result-object p0

    const/4 v0, 0x0

    .line 48
    aget v1, p0, v0

    const/4 v2, 0x1

    aget p0, p0, v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v0

    aput p0, v3, v2

    return-object v3
.end method

.method static getActualFontInfo(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F
    .locals 7

    .line 59
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/LineHeightHelper;->calculateLineHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v0

    .line 60
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/LineHeightHelper;->getFontAscenderDescenderNormalized(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F

    move-result-object p0

    const/4 v1, 0x0

    .line 61
    aget v2, p0, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    sub-float v5, v2, v4

    sub-float/2addr v0, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v2, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x2

    .line 64
    aget p0, p0, v5

    const/4 v6, 0x4

    new-array v6, v6, [F

    aput v2, v6, v1

    aput v4, v6, v3

    aput p0, v6, v5

    const/4 p0, 0x3

    aput v0, v6, p0

    return-object v6
.end method

.method static getFontAscenderDescenderNormalized(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F
    .locals 6

    .line 68
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->resolveFirstPdfFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    const/16 v1, 0x18

    .line 69
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    .line 70
    sget-object v1, Lcom/itextpdf/layout/properties/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    invoke-static {v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->calculateAscenderDescender(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/layout/properties/RenderingMode;)[F

    move-result-object v1

    const/4 v2, 0x0

    .line 72
    aget v3, v1, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    mul-float/2addr v3, p0

    const/4 v5, 0x1

    .line 73
    aget v1, v1, v5

    div-float/2addr v1, v4

    mul-float/2addr v1, p0

    .line 74
    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getXHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    mul-float/2addr v0, p0

    const/4 p0, 0x3

    .line 76
    new-array p0, p0, [F

    aput v3, p0, v2

    aput v1, p0, v5

    const/4 v1, 0x2

    aput v0, p0, v1

    return-object p0
.end method
