.class public final Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;
.super Ljava/lang/Object;
.source "ObjectFitCalculator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateRenderedImageSize(Lcom/itextpdf/layout/properties/ObjectFit;DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    .locals 1

    .line 71
    sget-object v0, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator$1;->$SwitchMap$com$itextpdf$layout$properties$ObjectFit:[I

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/ObjectFit;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 84
    invoke-static/range {p1 .. p8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processNone(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object p0

    return-object p0

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Object fit parameter cannot be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_1
    invoke-static/range {p1 .. p8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processScaleDown(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object p0

    return-object p0

    .line 78
    :cond_2
    invoke-static/range {p1 .. p8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processCover(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object p0

    return-object p0

    .line 75
    :cond_3
    invoke-static/range {p1 .. p8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processContain(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object p0

    return-object p0

    .line 73
    :cond_4
    invoke-static {p5, p6, p7, p8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processFill(DD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object p0

    return-object p0
.end method

.method private static processContain(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    .locals 9

    const/4 v8, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 98
    invoke-static/range {v0 .. v8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processToFitSide(DDDDZ)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object v0

    return-object v0
.end method

.method private static processCover(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    .locals 9

    const/4 v8, 0x1

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 104
    invoke-static/range {v0 .. v8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processToFitSide(DDDDZ)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object v0

    return-object v0
.end method

.method private static processFill(DD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    .locals 7

    .line 93
    new-instance v6, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;-><init>(DDZ)V

    return-object v6
.end method

.method private static processNone(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    .locals 6

    cmpg-double p4, p4, p0

    if-lez p4, :cond_1

    cmpg-double p4, p6, p2

    if-gtz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    move v5, p4

    .line 123
    new-instance p4, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-object v0, p4

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;-><init>(DDZ)V

    return-object p4
.end method

.method private static processScaleDown(DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    .locals 9

    cmpl-double v0, p4, p0

    if-ltz v0, :cond_0

    cmpl-double v0, p6, p2

    if-ltz v0, :cond_0

    .line 112
    new-instance v6, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;-><init>(DDZ)V

    return-object v6

    :cond_0
    const/4 v8, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 114
    invoke-static/range {v0 .. v8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->processToFitSide(DDDDZ)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object v0

    return-object v0
.end method

.method private static processToFitSide(DDDDZ)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;
    .locals 6

    div-double v0, p4, p0

    div-double v2, p6, p2

    cmpl-double v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, p8

    if-eqz v0, :cond_1

    mul-double/2addr p2, p4

    div-double p6, p2, p0

    goto :goto_1

    :cond_1
    mul-double/2addr p0, p6

    div-double p4, p0, p2

    :goto_1
    move-wide v1, p4

    move-wide v3, p6

    .line 146
    new-instance p0, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-object v0, p0

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;-><init>(DDZ)V

    return-object p0
.end method
