.class public Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
.source "StopSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/INoDrawSvgNodeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 93
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;-><init>()V

    .line 94
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 1

    .line 105
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The renderer cannot be drawn."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getOffset()D
    .locals 7

    .line 49
    const-string v0, "offset"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isPercentageValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_1

    :cond_2
    move-wide v3, v1

    :goto_1
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_3

    move-wide v1, v5

    goto :goto_2

    :cond_3
    cmpl-double v0, v3, v1

    if-lez v0, :cond_4

    move-wide v1, v3

    :cond_4
    :goto_2
    return-wide v1
.end method

.method public getStopColor()[F
    .locals 1

    .line 67
    const-string v0, "stop-color"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {v0}, Lcom/itextpdf/kernel/colors/WebColors;->getRGBAColor(Ljava/lang/String;)[F

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 72
    const-string v0, "black"

    invoke-static {v0}, Lcom/itextpdf/kernel/colors/WebColors;->getRGBAColor(Ljava/lang/String;)[F

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getStopOpacity()F
    .locals 2

    .line 84
    const-string v0, "stop-opacity"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    return v0
.end method
